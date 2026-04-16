import jsPDF from "jspdf";

interface ProgressData {
  userName: string;
  currentScore: number;
  targetScore: number;
  totalQuestions: number;
  totalCorrect: number;
  accuracy: number;
  studyTimeMinutes: number;
  streak: number;
  testDate?: Date;
  scoreHistory: { date: string; score: number }[];
  topicMastery: { topic: string; accuracy: number; total: number }[];
  blindSpots: { topic: string; accuracy: number; confidence: string }[];
}

// TutorZero brand colors
const COLORS = {
  navy: [0, 51, 102] as [number, number, number],
  blue: [0, 107, 182] as [number, number, number],
  green: [0, 166, 81] as [number, number, number],
  orange: [244, 121, 32] as [number, number, number],
  gray: [71, 85, 105] as [number, number, number],
  lightGray: [148, 163, 184] as [number, number, number],
  white: [255, 255, 255] as [number, number, number],
};

function generateProgressReport(data: ProgressData): jsPDF {
  const doc = new jsPDF();
  const pageWidth = doc.internal.pageSize.getWidth();
  const margin = 20;
  let y = margin;

  // Helper functions
  const addText = (text: string, x: number, yPos: number, options?: { 
    size?: number; 
    style?: "normal" | "bold" | "italic";
    color?: [number, number, number];
    align?: "left" | "center" | "right";
  }) => {
    const { size = 12, style = "normal", color = COLORS.navy, align = "left" } = options || {};
    doc.setFontSize(size);
    doc.setFont("helvetica", style);
    doc.setTextColor(...color);
    
    let xPos = x;
    if (align === "center") {
      xPos = pageWidth / 2;
    } else if (align === "right") {
      xPos = pageWidth - margin;
    }
    
    doc.text(text, xPos, yPos, { align });
  };

  const drawLine = (y: number, color: [number, number, number] = COLORS.lightGray) => {
    doc.setDrawColor(...color);
    doc.setLineWidth(0.5);
    doc.line(margin, y, pageWidth - margin, y);
  };

  const drawProgressBar = (x: number, yPos: number, width: number, height: number, value: number, color: [number, number, number]) => {
    // Background
    doc.setFillColor(230, 230, 230);
    doc.roundedRect(x, yPos, width, height, 2, 2, "F");
    
    // Fill
    const fillWidth = (value / 100) * width;
    if (fillWidth > 0) {
      doc.setFillColor(...color);
      doc.roundedRect(x, yPos, Math.max(fillWidth, 4), height, 2, 2, "F");
    }
  };

  // Header
  doc.setFillColor(...COLORS.navy);
  doc.rect(0, 0, pageWidth, 45, "F");
  
  addText("TutorZero", margin, 20, { size: 24, style: "bold", color: COLORS.white });
  addText("Progress Report", margin, 32, { size: 14, color: [180, 200, 220] as [number, number, number] });
  
  const today = new Date().toLocaleDateString("en-US", { 
    year: "numeric", 
    month: "long", 
    day: "numeric" 
  });
  addText(today, 0, 20, { size: 10, color: COLORS.white, align: "right" });
  
  if (data.userName) {
    addText(`Prepared for: ${data.userName}`, 0, 32, { size: 10, color: [180, 200, 220] as [number, number, number], align: "right" });
  }

  y = 60;

  // Score Summary Section
  addText("Score Summary", margin, y, { size: 16, style: "bold" });
  y += 12;
  
  // Score boxes
  const boxWidth = (pageWidth - margin * 2 - 30) / 4;
  const boxes = [
    { label: "Current Score", value: data.currentScore.toString(), color: COLORS.blue },
    { label: "Target Score", value: data.targetScore.toString(), color: COLORS.green },
    { label: "Accuracy", value: `${Math.round(data.accuracy)}%`, color: COLORS.navy },
    { label: "Study Time", value: `${data.studyTimeMinutes}m`, color: COLORS.orange },
  ];

  boxes.forEach((box, i) => {
    const x = margin + i * (boxWidth + 10);
    
    doc.setFillColor(247, 249, 252);
    doc.roundedRect(x, y, boxWidth, 35, 3, 3, "F");
    
    addText(box.value, x + boxWidth / 2, y + 15, { 
      size: 18, 
      style: "bold", 
      color: box.color,
      align: "center" 
    });
    doc.text(box.value, x + boxWidth / 2, y + 15, { align: "center" });
    
    addText(box.label, x + boxWidth / 2, y + 28, { 
      size: 8, 
      color: COLORS.gray,
      align: "center"
    });
    doc.text(box.label, x + boxWidth / 2, y + 28, { align: "center" });
  });

  y += 50;

  // Score to Target Progress
  const scoreProgress = Math.min(100, Math.round((data.currentScore / data.targetScore) * 100));
  addText(`Progress to Target: ${scoreProgress}%`, margin, y, { size: 10, color: COLORS.gray });
  y += 5;
  drawProgressBar(margin, y, pageWidth - margin * 2, 8, scoreProgress, COLORS.green);
  y += 20;

  // Questions & Accuracy
  addText(`Questions Answered: ${data.totalQuestions} (${data.totalCorrect} correct)`, margin, y, { size: 10, color: COLORS.gray });
  y += 8;
  addText(`Current Streak: ${data.streak} days`, margin, y, { size: 10, color: COLORS.gray });
  
  if (data.testDate) {
    const daysUntil = Math.ceil((data.testDate.getTime() - Date.now()) / (1000 * 60 * 60 * 24));
    addText(`Days until test: ${daysUntil}`, pageWidth - margin, y, { size: 10, color: COLORS.orange, align: "right" });
  }
  
  y += 15;
  drawLine(y);
  y += 15;

  // Score Trend
  if (data.scoreHistory.length > 1) {
    addText("Score Trend", margin, y, { size: 16, style: "bold" });
    y += 12;
    
    const chartWidth = pageWidth - margin * 2;
    const chartHeight = 50;
    const chartX = margin;
    const chartY = y;
    
    // Chart background
    doc.setFillColor(250, 250, 250);
    doc.rect(chartX, chartY, chartWidth, chartHeight, "F");
    
    // Find min/max for scaling
    const scores = data.scoreHistory.map(h => h.score);
    const minScore = Math.min(...scores) - 50;
    const maxScore = Math.max(...scores) + 50;
    const range = maxScore - minScore;
    
    // Draw gridlines
    doc.setDrawColor(230, 230, 230);
    doc.setLineWidth(0.3);
    for (let i = 0; i <= 4; i++) {
      const lineY = chartY + (i * chartHeight / 4);
      doc.line(chartX, lineY, chartX + chartWidth, lineY);
    }
    
    // Draw score line
    doc.setDrawColor(...COLORS.blue);
    doc.setLineWidth(2);
    
    const points: [number, number][] = data.scoreHistory.map((h, i) => {
      const x = chartX + (i / (data.scoreHistory.length - 1)) * chartWidth;
      const yPos = chartY + chartHeight - ((h.score - minScore) / range) * chartHeight;
      return [x, yPos];
    });
    
    for (let i = 1; i < points.length; i++) {
      doc.line(points[i - 1][0], points[i - 1][1], points[i][0], points[i][1]);
    }
    
    // Draw points
    doc.setFillColor(...COLORS.blue);
    points.forEach(([px, py]) => {
      doc.circle(px, py, 2, "F");
    });
    
    // Labels
    addText(maxScore.toString(), chartX - 3, chartY + 3, { size: 7, color: COLORS.lightGray, align: "right" });
    addText(minScore.toString(), chartX - 3, chartY + chartHeight, { size: 7, color: COLORS.lightGray, align: "right" });
    
    // Date labels
    if (data.scoreHistory.length > 0) {
      addText(data.scoreHistory[0].date, chartX, chartY + chartHeight + 8, { size: 7, color: COLORS.lightGray });
      addText(data.scoreHistory[data.scoreHistory.length - 1].date, chartX + chartWidth, chartY + chartHeight + 8, { size: 7, color: COLORS.lightGray, align: "right" });
    }
    
    y += chartHeight + 20;
    drawLine(y);
    y += 15;
  }

  // Topic Mastery
  addText("Topic Mastery", margin, y, { size: 16, style: "bold" });
  y += 12;

  const topicsPerRow = 2;
  const topicWidth = (pageWidth - margin * 2 - 15) / topicsPerRow;
  
  data.topicMastery.slice(0, 8).forEach((topic, i) => {
    const col = i % topicsPerRow;
    const row = Math.floor(i / topicsPerRow);
    const x = margin + col * (topicWidth + 15);
    const topicY = y + row * 20;
    
    // Topic name (truncate if needed)
    const displayName = topic.topic.length > 25 ? topic.topic.substring(0, 22) + "..." : topic.topic;
    addText(displayName, x, topicY, { size: 9, color: COLORS.navy });
    
    // Percentage
    const color = topic.accuracy >= 80 ? COLORS.green : topic.accuracy >= 60 ? COLORS.orange : [220, 50, 50] as [number, number, number];
    addText(`${topic.accuracy}%`, x + topicWidth - 5, topicY, { size: 9, style: "bold", color, align: "right" });
    
    // Progress bar
    drawProgressBar(x, topicY + 3, topicWidth, 5, topic.accuracy, color);
  });

  const topicRows = Math.ceil(Math.min(data.topicMastery.length, 8) / topicsPerRow);
  y += topicRows * 20 + 10;

  // Blind Spots Section (if any)
  if (data.blindSpots.length > 0) {
    if (y > 230) {
      doc.addPage();
      y = margin;
    }
    
    drawLine(y);
    y += 15;
    
    addText("Areas for Improvement", margin, y, { size: 16, style: "bold" });
    y += 4;
    addText("Topics where confident answers were incorrect", margin, y + 8, { size: 9, color: COLORS.gray });
    y += 18;

    data.blindSpots.slice(0, 5).forEach((spot) => {
      doc.setFillColor(255, 247, 237);
      doc.roundedRect(margin, y, pageWidth - margin * 2, 14, 2, 2, "F");
      
      addText(spot.topic, margin + 5, y + 9, { size: 9, color: COLORS.navy });
      addText(`${spot.accuracy}% accuracy`, pageWidth - margin - 60, y + 9, { size: 9, color: COLORS.orange });
      
      y += 18;
    });
  }

  // Footer
  const footerY = doc.internal.pageSize.getHeight() - 15;
  doc.setDrawColor(...COLORS.lightGray);
  doc.setLineWidth(0.3);
  doc.line(margin, footerY - 5, pageWidth - margin, footerY - 5);
  
  addText("Generated by TutorZero - Free Adaptive SAT Prep", pageWidth / 2, footerY, { 
    size: 8, 
    color: COLORS.lightGray,
    align: "center"
  });
  
  addText("tutorzero.app", pageWidth / 2, footerY + 6, { 
    size: 8, 
    color: COLORS.blue,
    align: "center"
  });

  return doc;
}

export function downloadProgressReport(data: ProgressData) {
  const doc = generateProgressReport(data);
  const fileName = `TutorZero-Progress-${new Date().toISOString().split("T")[0]}.pdf`;
  doc.save(fileName);
}
