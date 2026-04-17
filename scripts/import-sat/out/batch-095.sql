-- batch 95/138 (25 rows)
INSERT INTO sat_questions (question_id, external_id, vault_id, disclosed_item_id, source, program, test_type, test_type_desc, domain, primary_class_cd, skill_cd, skill_desc, difficulty, score_band_range_cd, question_type, stimulus_html, stem_html, answer_options, correct_answer, answer_keys, rationale_html, correct_answer_extracted_from_rationale, image_count, parent_template_name, parent_template_id, template_cluster_id, template_cluster_name, origin, position, answer_style, section, raw_payload, created_date, updated_date) VALUES
    ($SATQ$270cf326$SATQ$, $SATQ$5291f5d1-e675-4632-9051-76a6be583d50$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">Which of the following functions has(have) a minimum value at <math alttext="negative 3"><mo>-</mo><mn>3</mn>
</math>?</p>
<ol style="list-style-type: upper-roman;">
<li style="text-align: left;"><math alttext="f left parenthesis x right parenthesis equals minus 6 left parenthesis 3 right parenthesis Superscript x Baseline minus 3"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mo>-</mo><mrow><mn>6</mn></mrow><msup><mrow><mo>(</mo><mrow><mn>3</mn></mrow><mo>)</mo></mrow><mi>x</mi></msup><mo>-</mo><mrow><mn>3</mn></mrow></math></li>
<li style="text-align: left;"><math alttext="g left parenthesis x right parenthesis equals minus 3 left parenthesis 6 right parenthesis Superscript x"><mi>g</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mo>-</mo><mrow><mn>3</mn></mrow><msup><mrow><mo>(</mo><mrow><mn>6</mn></mrow><mo>)</mo></mrow><mi>x</mi></msup></math></li>
</ol>
<p>&nbsp;</p>$SATQ$, $SATQ$[{"id":"68236951-ab71-4de2-8ec1-3ac8c12be388","content":"<p style=\"text-align: left;\">I only</p>"},{"id":"b003572a-89e3-4b76-bc27-83f0cd4cc53b","content":"<p style=\"text-align: left;\">II only</p>"},{"id":"1a3f96f3-51ee-4b71-ace8-4ccc90bf3a8b","content":"<p style=\"text-align: left;\">I and II</p>"},{"id":"c0d19f37-3d72-47f5-82c6-5339483c8924","content":"<p style=\"text-align: left;\">Neither I nor II</p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["c0d19f37-3d72-47f5-82c6-5339483c8924"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. A function of the form <math alttext="f left parenthesis x right parenthesis equals a left parenthesis b right parenthesis Superscript x Baseline plus c"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mi>b</mi></mfenced><mi>x</mi></msup><mo>+</mo><mi>c</mi></math>, where <math alttext="a less than 0"><mi>a</mi><mo>&#60;</mo><mn>0</mn></math> and <math alttext="b greater than 1"><mi>b</mi><mo>&#62;</mo><mn>1</mn></math>, is a decreasing function. Both of the given functions are of this form; therefore, both are decreasing functions. If a function <math alttext="f"><mi>f</mi>
</math> is decreasing as the value of <math alttext="x"><mi>x</mi>
</math> increases, the corresponding value of <math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> decreases; therefore, the function doesn&rsquo;t have a minimum value. Thus, neither of the given functions has a minimum value.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"270cf326","external_id":"5291f5d1-e675-4632-9051-76a6be583d50","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"72cf55d4-b355-434f-bdf6-fc5390399298","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">Which of the following functions has(have) a minimum value at <math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math>?</p>\n<ol style=\"list-style-type: upper-roman;\">\n<li style=\"text-align: left;\"><math alttext=\"f left parenthesis x right parenthesis equals minus 6 left parenthesis 3 right parenthesis Superscript x Baseline minus 3\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mo>-</mo><mrow><mn>6</mn></mrow><msup><mrow><mo>(</mo><mrow><mn>3</mn></mrow><mo>)</mo></mrow><mi>x</mi></msup><mo>-</mo><mrow><mn>3</mn></mrow></math></li>\n<li style=\"text-align: left;\"><math alttext=\"g left parenthesis x right parenthesis equals minus 3 left parenthesis 6 right parenthesis Superscript x\"><mi>g</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mo>-</mo><mrow><mn>3</mn></mrow><msup><mrow><mo>(</mo><mrow><mn>6</mn></mrow><mo>)</mo></mrow><mi>x</mi></msup></math></li>\n</ol>\n<p>&nbsp;</p>","answerOptions":[{"id":"68236951-ab71-4de2-8ec1-3ac8c12be388","content":"<p style=\"text-align: left;\">I only</p>"},{"id":"b003572a-89e3-4b76-bc27-83f0cd4cc53b","content":"<p style=\"text-align: left;\">II only</p>"},{"id":"1a3f96f3-51ee-4b71-ace8-4ccc90bf3a8b","content":"<p style=\"text-align: left;\">I and II</p>"},{"id":"c0d19f37-3d72-47f5-82c6-5339483c8924","content":"<p style=\"text-align: left;\">Neither I nor II</p>"}],"keys":["c0d19f37-3d72-47f5-82c6-5339483c8924"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. A function of the form <math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis b right parenthesis Superscript x Baseline plus c\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mi>b</mi></mfenced><mi>x</mi></msup><mo>+</mo><mi>c</mi></math>, where <math alttext=\"a less than 0\"><mi>a</mi><mo>&#60;</mo><mn>0</mn></math> and <math alttext=\"b greater than 1\"><mi>b</mi><mo>&#62;</mo><mn>1</mn></math>, is a decreasing function. Both of the given functions are of this form; therefore, both are decreasing functions. If a function <math alttext=\"f\"><mi>f</mi>\n</math> is decreasing as the value of <math alttext=\"x\"><mi>x</mi>\n</math> increases, the corresponding value of <math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> decreases; therefore, the function doesn&rsquo;t have a minimum value. Thus, neither of the given functions has a minimum value.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357400,"pPcc":"SAT#P","questionId":"270cf326","skill_cd":"P.C.","score_band_range_cd":7,"skill_desc":"Nonlinear functions","createDate":1730147357400,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"5291f5d1-e675-4632-9051-76a6be583d50","primary_class_cd":"P","uId":"72cf55d4-b355-434f-bdf6-fc5390399298","difficulty":"H"},"raw_detail":{"answerOptions":[{"content":"<p style=\"text-align: left;\">I only</p>","id":"68236951-ab71-4de2-8ec1-3ac8c12be388"},{"content":"<p style=\"text-align: left;\">II only</p>","id":"b003572a-89e3-4b76-bc27-83f0cd4cc53b"},{"content":"<p style=\"text-align: left;\">I and II</p>","id":"1a3f96f3-51ee-4b71-ace8-4ccc90bf3a8b"},{"content":"<p style=\"text-align: left;\">Neither I nor II</p>","id":"c0d19f37-3d72-47f5-82c6-5339483c8924"}],"externalid":"5291f5d1-e675-4632-9051-76a6be583d50","keys":["c0d19f37-3d72-47f5-82c6-5339483c8924"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. A function of the form <math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis b right parenthesis Superscript x Baseline plus c\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mi>b</mi></mfenced><mi>x</mi></msup><mo>+</mo><mi>c</mi></math>, where <math alttext=\"a less than 0\"><mi>a</mi><mo>&#60;</mo><mn>0</mn></math> and <math alttext=\"b greater than 1\"><mi>b</mi><mo>&#62;</mo><mn>1</mn></math>, is a decreasing function. Both of the given functions are of this form; therefore, both are decreasing functions. If a function <math alttext=\"f\"><mi>f</mi>\n</math> is decreasing as the value of <math alttext=\"x\"><mi>x</mi>\n</math> increases, the corresponding value of <math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> decreases; therefore, the function doesn&rsquo;t have a minimum value. Thus, neither of the given functions has a minimum value.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>","stem":"<p style=\"text-align: left;\">Which of the following functions has(have) a minimum value at <math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math>?</p>\n<ol style=\"list-style-type: upper-roman;\">\n<li style=\"text-align: left;\"><math alttext=\"f left parenthesis x right parenthesis equals minus 6 left parenthesis 3 right parenthesis Superscript x Baseline minus 3\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mo>-</mo><mrow><mn>6</mn></mrow><msup><mrow><mo>(</mo><mrow><mn>3</mn></mrow><mo>)</mo></mrow><mi>x</mi></msup><mo>-</mo><mrow><mn>3</mn></mrow></math></li>\n<li style=\"text-align: left;\"><math alttext=\"g left parenthesis x right parenthesis equals minus 3 left parenthesis 6 right parenthesis Superscript x\"><mi>g</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mo>-</mo><mrow><mn>3</mn></mrow><msup><mrow><mo>(</mo><mrow><mn>6</mn></mrow><mo>)</mo></mrow><mi>x</mi></msup></math></li>\n</ol>\n<p>&nbsp;</p>","type":"mcq","correct_answer":["D"]},"createDate":1730147357400,"updateDate":1730147357400}$SATQ$::jsonb, 1730147357400, 1730147357400),
    ($SATQ$271ffad7$SATQ$, $SATQ$e4d534f2-3a87-4887-9602-3feff6694dcb$SATQ$::uuid, $SATQ$1244f8db-a38e-4d0e-b979-05e63e7cecd7$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">A quadratic function models a projectile's height, in meters, above the ground in terms of the time, in seconds, after it was launched. The model estimates that the projectile was launched from an initial height of <math alttext="7"><mn>7</mn>
</math> meters above the ground and reached a maximum height of <math alttext="51.1"><mn>51.1</mn>
</math> meters above the ground <math alttext="3"><mn>3</mn>
</math> seconds after the launch. How many seconds after the launch does the model estimate that the projectile will return to a height of <math alttext="7"><mn>7</mn>
</math> meters?</p>$SATQ$, $SATQ$[{"id":"affa4ef9-4aed-4fa8-a983-a42d30eac26d","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"fe8cca48-f742-44c5-85f8-9499e772eeb8","content":"<p><math alttext=\"6\"><mn>6</mn>\n</math></p>"},{"id":"cbed3a05-302e-4363-9b35-44e63e7085ea","content":"<p><math alttext=\"7\"><mn>7</mn>\n</math></p>"},{"id":"024edbc5-dbd5-4d0f-929e-05fc15726e9f","content":"<p><math alttext=\"9\"><mn>9</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["fe8cca48-f742-44c5-85f8-9499e772eeb8"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. It's given that a quadratic function models the projectile's height, in meters, above the ground in terms of the time, in seconds, after it was launched. It follows that an equation representing the model can be written in the form&nbsp;<math alttext="f left parenthesis x right parenthesis equals a left parenthesis x minus h right parenthesis squared plus k"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>h</mi></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mi>k</mi></math>, where&nbsp;<math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> is the projectile's estimated height above the ground, in meters, <math alttext="x"><mi>x</mi>
</math> seconds after the launch, <math alttext="a"><mi>a</mi>
</math> is a constant, and <math alttext="k"><mi>k</mi>
</math> is the maximum height above the ground, in meters, the model estimates the projectile reached <math alttext="h"><mi>h</mi>
</math> seconds after the launch. It's given that the model estimates the projectile reached a maximum height of <math alttext="51.1"><mn>51.1</mn>
</math> meters above the ground <math alttext="3"><mn>3</mn>
</math> seconds after the launch. Therefore, <math alttext="k equals 51.1"><mrow>
	<mi>k</mi>
	<mo>=</mo>
	<mn>51.1</mn>
</mrow>
</math> and <math alttext="h equals 3"><mrow>
	<mi>h</mi>
	<mo>=</mo>
	<mn>3</mn>
</mrow>
</math>. Substituting <math alttext="51.1"><mn>51.1</mn>
</math> for <math alttext="k"><mi>k</mi>
</math> and <math alttext="3"><mn>3</mn>
</math> for <math alttext="h"><mi>h</mi>
</math> in the equation <math alttext="f left parenthesis x right parenthesis equals a left parenthesis x minus h right parenthesis squared plus k"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>h</mi></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mi>k</mi></math>&nbsp;yields&nbsp;<math alttext="f left parenthesis x right parenthesis equals a left parenthesis x minus 3 right parenthesis squared plus 51.1"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>. It's also given that the model estimates that the projectile was launched from an initial height of <math alttext="7"><mn>7</mn>
</math> meters above the ground. Therefore, when <math alttext="x equals 0"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>,&nbsp;<math alttext="f left parenthesis x right parenthesis equals 7"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>7</mn></math>. Substituting <math alttext="0"><mn>0</mn>
</math> for <math alttext="x"><mi>x</mi>
</math> and <math alttext="7"><mn>7</mn>
</math> for&nbsp;<math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>&nbsp;in the equation&nbsp;<math alttext="f left parenthesis x right parenthesis equals a left parenthesis x minus 3 right parenthesis squared plus 51.1"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;yields&nbsp;<math alttext="7 equals a left parenthesis 0 minus 3 right parenthesis squared plus 51.1"><mn>7</mn><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mn>0</mn><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>, or&nbsp;<math alttext="7 equals 9 a plus 51.1"><mn>7</mn><mo>=</mo><mn>9</mn><mi>a</mi><mo>+</mo><mn>51.1</mn></math>. Subtracting <math alttext="51.1"><mn>51.1</mn>
</math> from both sides of this equation yields <math alttext="negative 44.1 equals 9 a"><mrow>
	<mo>-</mo><mn>44.1</mn>
	<mo>=</mo>
	<mrow>
		<mn>9</mn>
		<mi>a</mi>
	</mrow>
</mrow>
</math>. Dividing both sides of this equation by <math alttext="9"><mn>9</mn>
</math> yields <math alttext="negative 4.9 equals a"><mrow>
	<mo>-</mo><mn>4.9</mn>
	<mo>=</mo>
	<mi>a</mi>
</mrow>
</math>. Substituting <math alttext="negative 4.9"><mo>-</mo><mn>4.9</mn>
</math> for <math alttext="a"><mi>a</mi>
</math> in the equation&nbsp;<math alttext="f left parenthesis x right parenthesis equals a left parenthesis x minus 3 right parenthesis squared plus 51.1"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;yields&nbsp;<math alttext="f left parenthesis x right parenthesis equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>. Therefore, the equation&nbsp;<math alttext="f left parenthesis x right parenthesis equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;models the projectile's height, in meters, above the ground <math alttext="x"><mi>x</mi>
</math> seconds after it was launched. The number of seconds after the launch that the model estimates that the projectile will return to a height of <math alttext="7"><mn>7</mn>
</math> meters is the value of <math alttext="x"><mi>x</mi>
</math> when&nbsp;<math alttext="f left parenthesis x right parenthesis equals 7"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>7</mn></math>. Substituting <math alttext="7"><mn>7</mn>
</math> for&nbsp;<math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>&nbsp;in&nbsp;<math alttext="f left parenthesis x right parenthesis equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;yields&nbsp;<math alttext="7 equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1"><mn>7</mn><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>. Subtracting <math alttext="51.1"><mn>51.1</mn>
</math> from both sides of this equation yields&nbsp;<math alttext="negative 44.1 equals minus 4.9 left parenthesis x minus 3 right parenthesis squared"><mo>-</mo><mn>44.1</mn><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup></math>. Dividing both sides of this equation by <math alttext="negative 4.9"><mo>-</mo><mn>4.9</mn>
</math> yields&nbsp;<math alttext="9 equals left parenthesis x minus 3 right parenthesis squared"><mn>9</mn><mo>=</mo><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup></math>. Taking the square root of both sides of this equation yields two equations: <math alttext="3 equals x minus 3"><mrow>
	<mn>3</mn>
	<mo>=</mo>
	<mrow>
		<mi>x</mi>
		<mo>-</mo>
		<mn>3</mn>
	</mrow>
</mrow>
</math> and <math alttext="negative 3 equals x minus 3"><mrow>
	<mo>-</mo><mn>3</mn>
	<mo>=</mo>
	<mrow>
		<mi>x</mi>
		<mo>-</mo>
		<mn>3</mn>
	</mrow>
</mrow>
</math>. Adding <math alttext="3"><mn>3</mn>
</math> to both sides of the equation <math alttext="3 equals x minus 3"><mrow>
	<mn>3</mn>
	<mo>=</mo>
	<mrow>
		<mi>x</mi>
		<mo>-</mo>
		<mn>3</mn>
	</mrow>
</mrow>
</math> yields <math alttext="6 equals x"><mrow>
	<mn>6</mn>
	<mo>=</mo>
	<mi>x</mi>
</mrow>
</math>. Adding <math alttext="3"><mn>3</mn>
</math> to both sides of the equation <math alttext="negative 3 equals x minus 3"><mrow>
	<mo>-</mo><mn>3</mn>
	<mo>=</mo>
	<mrow>
		<mi>x</mi>
		<mo>-</mo>
		<mn>3</mn>
	</mrow>
</mrow>
</math> yields <math alttext="0 equals x"><mrow>
	<mn>0</mn>
	<mo>=</mo>
	<mi>x</mi>
</mrow>
</math>. Since <math alttext="0"><mn>0</mn>
</math> seconds after the launch represents the time at which the projectile was launched, <math alttext="6"><mn>6</mn>
</math> must be the number of seconds the model estimates that the projectile will return to a height of <math alttext="7"><mn>7</mn>
</math> meters.</p>
<p style="text-align: left;">Alternate approach: It's given that a quadratic function models the projectile's height, in meters, above the ground in terms of the time, in seconds, after it was launched. It's also given that the model estimates that the projectile was launched from an initial height of <math alttext="7"><mn>7</mn>
</math> meters above the ground and reached a maximum height of <math alttext="51.1"><mn>51.1</mn>
</math> meters above the ground <math alttext="3"><mn>3</mn>
</math> seconds after the launch. Since the model is quadratic, and quadratic functions are symmetric, the model estimates that for any given height less than the maximum height, the time the projectile takes to travel from the given height to the maximum height is the same as the time the projectile takes to travel from the maximum height back to the given height. Thus, since the model estimates the projectile took <math alttext="3"><mn>3</mn>
</math> seconds to travel from <math alttext="7"><mn>7</mn>
</math> meters above the ground to its maximum height of <math alttext="51.1"><mn>51.1</mn>
</math> meters above the ground, the model also estimates the projectile will take <math alttext="3"><mn>3</mn>
</math> more seconds to travel from its maximum height of <math alttext="51.1"><mn>51.1</mn>
</math> meters above the ground back to <math alttext="7"><mn>7</mn>
</math> meters above the ground. Thus, the model estimates that the projectile will return to a height of <math alttext="7"><mn>7</mn>
</math> meters <math alttext="3"><mn>3</mn>
</math> seconds after it reaches its maximum height, which is <math alttext="6"><mn>6</mn>
</math> seconds after the launch.</p>
<p style="text-align: left;">Choice A is incorrect. The model estimates that <math alttext="3"><mn>3</mn>
</math> seconds after the launch, the projectile reached a height of <math alttext="51.1"><mn>51.1</mn>
</math> meters, not <math alttext="7"><mn>7</mn>
</math> meters.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"271ffad7","external_id":"e4d534f2-3a87-4887-9602-3feff6694dcb","disclosed_item_id":null,"source":"qbank","vaultid":"1244f8db-a38e-4d0e-b979-05e63e7cecd7","uId":"37a4c609-fe01-4fba-8544-6d0a71e0f360","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">A quadratic function models a projectile's height, in meters, above the ground in terms of the time, in seconds, after it was launched. The model estimates that the projectile was launched from an initial height of <math alttext=\"7\"><mn>7</mn>\n</math> meters above the ground and reached a maximum height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters above the ground <math alttext=\"3\"><mn>3</mn>\n</math> seconds after the launch. How many seconds after the launch does the model estimate that the projectile will return to a height of <math alttext=\"7\"><mn>7</mn>\n</math> meters?</p>","answerOptions":[{"id":"affa4ef9-4aed-4fa8-a983-a42d30eac26d","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"fe8cca48-f742-44c5-85f8-9499e772eeb8","content":"<p><math alttext=\"6\"><mn>6</mn>\n</math></p>"},{"id":"cbed3a05-302e-4363-9b35-44e63e7085ea","content":"<p><math alttext=\"7\"><mn>7</mn>\n</math></p>"},{"id":"024edbc5-dbd5-4d0f-929e-05fc15726e9f","content":"<p><math alttext=\"9\"><mn>9</mn>\n</math></p>"}],"keys":["fe8cca48-f742-44c5-85f8-9499e772eeb8"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. It's given that a quadratic function models the projectile's height, in meters, above the ground in terms of the time, in seconds, after it was launched. It follows that an equation representing the model can be written in the form&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis x minus h right parenthesis squared plus k\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>h</mi></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mi>k</mi></math>, where&nbsp;<math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> is the projectile's estimated height above the ground, in meters, <math alttext=\"x\"><mi>x</mi>\n</math> seconds after the launch, <math alttext=\"a\"><mi>a</mi>\n</math> is a constant, and <math alttext=\"k\"><mi>k</mi>\n</math> is the maximum height above the ground, in meters, the model estimates the projectile reached <math alttext=\"h\"><mi>h</mi>\n</math> seconds after the launch. It's given that the model estimates the projectile reached a maximum height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters above the ground <math alttext=\"3\"><mn>3</mn>\n</math> seconds after the launch. Therefore, <math alttext=\"k equals 51.1\"><mrow>\n\t<mi>k</mi>\n\t<mo>=</mo>\n\t<mn>51.1</mn>\n</mrow>\n</math> and <math alttext=\"h equals 3\"><mrow>\n\t<mi>h</mi>\n\t<mo>=</mo>\n\t<mn>3</mn>\n</mrow>\n</math>. Substituting <math alttext=\"51.1\"><mn>51.1</mn>\n</math> for <math alttext=\"k\"><mi>k</mi>\n</math> and <math alttext=\"3\"><mn>3</mn>\n</math> for <math alttext=\"h\"><mi>h</mi>\n</math> in the equation <math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis x minus h right parenthesis squared plus k\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>h</mi></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mi>k</mi></math>&nbsp;yields&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>. It's also given that the model estimates that the projectile was launched from an initial height of <math alttext=\"7\"><mn>7</mn>\n</math> meters above the ground. Therefore, when <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>,&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals 7\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>7</mn></math>. Substituting <math alttext=\"0\"><mn>0</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"7\"><mn>7</mn>\n</math> for&nbsp;<math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>&nbsp;in the equation&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;yields&nbsp;<math alttext=\"7 equals a left parenthesis 0 minus 3 right parenthesis squared plus 51.1\"><mn>7</mn><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mn>0</mn><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>, or&nbsp;<math alttext=\"7 equals 9 a plus 51.1\"><mn>7</mn><mo>=</mo><mn>9</mn><mi>a</mi><mo>+</mo><mn>51.1</mn></math>. Subtracting <math alttext=\"51.1\"><mn>51.1</mn>\n</math> from both sides of this equation yields <math alttext=\"negative 44.1 equals 9 a\"><mrow>\n\t<mo>-</mo><mn>44.1</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>9</mn>\n\t\t<mi>a</mi>\n\t</mrow>\n</mrow>\n</math>. Dividing both sides of this equation by <math alttext=\"9\"><mn>9</mn>\n</math> yields <math alttext=\"negative 4.9 equals a\"><mrow>\n\t<mo>-</mo><mn>4.9</mn>\n\t<mo>=</mo>\n\t<mi>a</mi>\n</mrow>\n</math>. Substituting <math alttext=\"negative 4.9\"><mo>-</mo><mn>4.9</mn>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math> in the equation&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;yields&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>. Therefore, the equation&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;models the projectile's height, in meters, above the ground <math alttext=\"x\"><mi>x</mi>\n</math> seconds after it was launched. The number of seconds after the launch that the model estimates that the projectile will return to a height of <math alttext=\"7\"><mn>7</mn>\n</math> meters is the value of <math alttext=\"x\"><mi>x</mi>\n</math> when&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals 7\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>7</mn></math>. Substituting <math alttext=\"7\"><mn>7</mn>\n</math> for&nbsp;<math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>&nbsp;in&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;yields&nbsp;<math alttext=\"7 equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mn>7</mn><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>. Subtracting <math alttext=\"51.1\"><mn>51.1</mn>\n</math> from both sides of this equation yields&nbsp;<math alttext=\"negative 44.1 equals minus 4.9 left parenthesis x minus 3 right parenthesis squared\"><mo>-</mo><mn>44.1</mn><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup></math>. Dividing both sides of this equation by <math alttext=\"negative 4.9\"><mo>-</mo><mn>4.9</mn>\n</math> yields&nbsp;<math alttext=\"9 equals left parenthesis x minus 3 right parenthesis squared\"><mn>9</mn><mo>=</mo><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup></math>. Taking the square root of both sides of this equation yields two equations: <math alttext=\"3 equals x minus 3\"><mrow>\n\t<mn>3</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>-</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n</mrow>\n</math> and <math alttext=\"negative 3 equals x minus 3\"><mrow>\n\t<mo>-</mo><mn>3</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>-</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n</mrow>\n</math>. Adding <math alttext=\"3\"><mn>3</mn>\n</math> to both sides of the equation <math alttext=\"3 equals x minus 3\"><mrow>\n\t<mn>3</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>-</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n</mrow>\n</math> yields <math alttext=\"6 equals x\"><mrow>\n\t<mn>6</mn>\n\t<mo>=</mo>\n\t<mi>x</mi>\n</mrow>\n</math>. Adding <math alttext=\"3\"><mn>3</mn>\n</math> to both sides of the equation <math alttext=\"negative 3 equals x minus 3\"><mrow>\n\t<mo>-</mo><mn>3</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>-</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n</mrow>\n</math> yields <math alttext=\"0 equals x\"><mrow>\n\t<mn>0</mn>\n\t<mo>=</mo>\n\t<mi>x</mi>\n</mrow>\n</math>. Since <math alttext=\"0\"><mn>0</mn>\n</math> seconds after the launch represents the time at which the projectile was launched, <math alttext=\"6\"><mn>6</mn>\n</math> must be the number of seconds the model estimates that the projectile will return to a height of <math alttext=\"7\"><mn>7</mn>\n</math> meters.</p>\n<p style=\"text-align: left;\">Alternate approach: It's given that a quadratic function models the projectile's height, in meters, above the ground in terms of the time, in seconds, after it was launched. It's also given that the model estimates that the projectile was launched from an initial height of <math alttext=\"7\"><mn>7</mn>\n</math> meters above the ground and reached a maximum height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters above the ground <math alttext=\"3\"><mn>3</mn>\n</math> seconds after the launch. Since the model is quadratic, and quadratic functions are symmetric, the model estimates that for any given height less than the maximum height, the time the projectile takes to travel from the given height to the maximum height is the same as the time the projectile takes to travel from the maximum height back to the given height. Thus, since the model estimates the projectile took <math alttext=\"3\"><mn>3</mn>\n</math> seconds to travel from <math alttext=\"7\"><mn>7</mn>\n</math> meters above the ground to its maximum height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters above the ground, the model also estimates the projectile will take <math alttext=\"3\"><mn>3</mn>\n</math> more seconds to travel from its maximum height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters above the ground back to <math alttext=\"7\"><mn>7</mn>\n</math> meters above the ground. Thus, the model estimates that the projectile will return to a height of <math alttext=\"7\"><mn>7</mn>\n</math> meters <math alttext=\"3\"><mn>3</mn>\n</math> seconds after it reaches its maximum height, which is <math alttext=\"6\"><mn>6</mn>\n</math> seconds after the launch.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. The model estimates that <math alttext=\"3\"><mn>3</mn>\n</math> seconds after the launch, the projectile reached a height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters, not <math alttext=\"7\"><mn>7</mn>\n</math> meters.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959825,"pPcc":"SAT#P","questionId":"271ffad7","skill_cd":"P.C.","score_band_range_cd":6,"skill_desc":"Nonlinear functions","createDate":1691007959825,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"e4d534f2-3a87-4887-9602-3feff6694dcb","primary_class_cd":"P","uId":"37a4c609-fe01-4fba-8544-6d0a71e0f360","difficulty":"H"},"raw_detail":{"keys":["fe8cca48-f742-44c5-85f8-9499e772eeb8"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. It's given that a quadratic function models the projectile's height, in meters, above the ground in terms of the time, in seconds, after it was launched. It follows that an equation representing the model can be written in the form&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis x minus h right parenthesis squared plus k\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>h</mi></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mi>k</mi></math>, where&nbsp;<math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> is the projectile's estimated height above the ground, in meters, <math alttext=\"x\"><mi>x</mi>\n</math> seconds after the launch, <math alttext=\"a\"><mi>a</mi>\n</math> is a constant, and <math alttext=\"k\"><mi>k</mi>\n</math> is the maximum height above the ground, in meters, the model estimates the projectile reached <math alttext=\"h\"><mi>h</mi>\n</math> seconds after the launch. It's given that the model estimates the projectile reached a maximum height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters above the ground <math alttext=\"3\"><mn>3</mn>\n</math> seconds after the launch. Therefore, <math alttext=\"k equals 51.1\"><mrow>\n\t<mi>k</mi>\n\t<mo>=</mo>\n\t<mn>51.1</mn>\n</mrow>\n</math> and <math alttext=\"h equals 3\"><mrow>\n\t<mi>h</mi>\n\t<mo>=</mo>\n\t<mn>3</mn>\n</mrow>\n</math>. Substituting <math alttext=\"51.1\"><mn>51.1</mn>\n</math> for <math alttext=\"k\"><mi>k</mi>\n</math> and <math alttext=\"3\"><mn>3</mn>\n</math> for <math alttext=\"h\"><mi>h</mi>\n</math> in the equation <math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis x minus h right parenthesis squared plus k\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>h</mi></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mi>k</mi></math>&nbsp;yields&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>. It's also given that the model estimates that the projectile was launched from an initial height of <math alttext=\"7\"><mn>7</mn>\n</math> meters above the ground. Therefore, when <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>,&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals 7\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>7</mn></math>. Substituting <math alttext=\"0\"><mn>0</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"7\"><mn>7</mn>\n</math> for&nbsp;<math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>&nbsp;in the equation&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;yields&nbsp;<math alttext=\"7 equals a left parenthesis 0 minus 3 right parenthesis squared plus 51.1\"><mn>7</mn><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mn>0</mn><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>, or&nbsp;<math alttext=\"7 equals 9 a plus 51.1\"><mn>7</mn><mo>=</mo><mn>9</mn><mi>a</mi><mo>+</mo><mn>51.1</mn></math>. Subtracting <math alttext=\"51.1\"><mn>51.1</mn>\n</math> from both sides of this equation yields <math alttext=\"negative 44.1 equals 9 a\"><mrow>\n\t<mo>-</mo><mn>44.1</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>9</mn>\n\t\t<mi>a</mi>\n\t</mrow>\n</mrow>\n</math>. Dividing both sides of this equation by <math alttext=\"9\"><mn>9</mn>\n</math> yields <math alttext=\"negative 4.9 equals a\"><mrow>\n\t<mo>-</mo><mn>4.9</mn>\n\t<mo>=</mo>\n\t<mi>a</mi>\n</mrow>\n</math>. Substituting <math alttext=\"negative 4.9\"><mo>-</mo><mn>4.9</mn>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math> in the equation&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals a left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;yields&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>. Therefore, the equation&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;models the projectile's height, in meters, above the ground <math alttext=\"x\"><mi>x</mi>\n</math> seconds after it was launched. The number of seconds after the launch that the model estimates that the projectile will return to a height of <math alttext=\"7\"><mn>7</mn>\n</math> meters is the value of <math alttext=\"x\"><mi>x</mi>\n</math> when&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals 7\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>7</mn></math>. Substituting <math alttext=\"7\"><mn>7</mn>\n</math> for&nbsp;<math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>&nbsp;in&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>&nbsp;yields&nbsp;<math alttext=\"7 equals minus 4.9 left parenthesis x minus 3 right parenthesis squared plus 51.1\"><mn>7</mn><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>51.1</mn></math>. Subtracting <math alttext=\"51.1\"><mn>51.1</mn>\n</math> from both sides of this equation yields&nbsp;<math alttext=\"negative 44.1 equals minus 4.9 left parenthesis x minus 3 right parenthesis squared\"><mo>-</mo><mn>44.1</mn><mo>=</mo><mo>-</mo><mn>4.9</mn><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup></math>. Dividing both sides of this equation by <math alttext=\"negative 4.9\"><mo>-</mo><mn>4.9</mn>\n</math> yields&nbsp;<math alttext=\"9 equals left parenthesis x minus 3 right parenthesis squared\"><mn>9</mn><mo>=</mo><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfenced><mn>2</mn></msup></math>. Taking the square root of both sides of this equation yields two equations: <math alttext=\"3 equals x minus 3\"><mrow>\n\t<mn>3</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>-</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n</mrow>\n</math> and <math alttext=\"negative 3 equals x minus 3\"><mrow>\n\t<mo>-</mo><mn>3</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>-</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n</mrow>\n</math>. Adding <math alttext=\"3\"><mn>3</mn>\n</math> to both sides of the equation <math alttext=\"3 equals x minus 3\"><mrow>\n\t<mn>3</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>-</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n</mrow>\n</math> yields <math alttext=\"6 equals x\"><mrow>\n\t<mn>6</mn>\n\t<mo>=</mo>\n\t<mi>x</mi>\n</mrow>\n</math>. Adding <math alttext=\"3\"><mn>3</mn>\n</math> to both sides of the equation <math alttext=\"negative 3 equals x minus 3\"><mrow>\n\t<mo>-</mo><mn>3</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>-</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n</mrow>\n</math> yields <math alttext=\"0 equals x\"><mrow>\n\t<mn>0</mn>\n\t<mo>=</mo>\n\t<mi>x</mi>\n</mrow>\n</math>. Since <math alttext=\"0\"><mn>0</mn>\n</math> seconds after the launch represents the time at which the projectile was launched, <math alttext=\"6\"><mn>6</mn>\n</math> must be the number of seconds the model estimates that the projectile will return to a height of <math alttext=\"7\"><mn>7</mn>\n</math> meters.</p>\n<p style=\"text-align: left;\">Alternate approach: It's given that a quadratic function models the projectile's height, in meters, above the ground in terms of the time, in seconds, after it was launched. It's also given that the model estimates that the projectile was launched from an initial height of <math alttext=\"7\"><mn>7</mn>\n</math> meters above the ground and reached a maximum height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters above the ground <math alttext=\"3\"><mn>3</mn>\n</math> seconds after the launch. Since the model is quadratic, and quadratic functions are symmetric, the model estimates that for any given height less than the maximum height, the time the projectile takes to travel from the given height to the maximum height is the same as the time the projectile takes to travel from the maximum height back to the given height. Thus, since the model estimates the projectile took <math alttext=\"3\"><mn>3</mn>\n</math> seconds to travel from <math alttext=\"7\"><mn>7</mn>\n</math> meters above the ground to its maximum height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters above the ground, the model also estimates the projectile will take <math alttext=\"3\"><mn>3</mn>\n</math> more seconds to travel from its maximum height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters above the ground back to <math alttext=\"7\"><mn>7</mn>\n</math> meters above the ground. Thus, the model estimates that the projectile will return to a height of <math alttext=\"7\"><mn>7</mn>\n</math> meters <math alttext=\"3\"><mn>3</mn>\n</math> seconds after it reaches its maximum height, which is <math alttext=\"6\"><mn>6</mn>\n</math> seconds after the launch.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. The model estimates that <math alttext=\"3\"><mn>3</mn>\n</math> seconds after the launch, the projectile reached a height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters, not <math alttext=\"7\"><mn>7</mn>\n</math> meters.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">A quadratic function models a projectile's height, in meters, above the ground in terms of the time, in seconds, after it was launched. The model estimates that the projectile was launched from an initial height of <math alttext=\"7\"><mn>7</mn>\n</math> meters above the ground and reached a maximum height of <math alttext=\"51.1\"><mn>51.1</mn>\n</math> meters above the ground <math alttext=\"3\"><mn>3</mn>\n</math> seconds after the launch. How many seconds after the launch does the model estimate that the projectile will return to a height of <math alttext=\"7\"><mn>7</mn>\n</math> meters?</p>","externalid":"e4d534f2-3a87-4887-9602-3feff6694dcb","templateid":"3ca5b284-0426-4671-a352-2ffcf5c56cd9","vaultid":"1244f8db-a38e-4d0e-b979-05e63e7cecd7","type":"mcq","answerOptions":[{"id":"affa4ef9-4aed-4fa8-a983-a42d30eac26d","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"fe8cca48-f742-44c5-85f8-9499e772eeb8","content":"<p><math alttext=\"6\"><mn>6</mn>\n</math></p>"},{"id":"cbed3a05-302e-4363-9b35-44e63e7085ea","content":"<p><math alttext=\"7\"><mn>7</mn>\n</math></p>"},{"id":"024edbc5-dbd5-4d0f-929e-05fc15726e9f","content":"<p><math alttext=\"9\"><mn>9</mn>\n</math></p>"}],"correct_answer":["B"]},"createDate":1691007959825,"updateDate":1691007959825}$SATQ$::jsonb, 1691007959825, 1691007959825),
    ($SATQ$281a4f3b$SATQ$, NULL, NULL, $SATQ$025038-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">A certain college had 3,000 students enrolled in 2015. The college predicts that after 2015, the number of students enrolled each year will be 2%&nbsp;less than the number of students enrolled the year before. Which of the following functions models the relationship between the number of students enrolled, <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_004_175381e2.png" alt="f of x"></span>, and the number of years after 2015, <span class="italic">x</span>&nbsp;?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_000_75adf9b9.png\" alt=\"f of x equals, 0 point 0 2, times open parenthesis, 3,000, close parenthesis, to the x power\"></span></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_001_3dea7a3c.png\" alt=\"f of x equals, 0 point 9 8, times open parenthesis, 3,000, close parenthesis, to the x power\"></span></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_002_4e15e960.png\" alt=\"f of x equals, 3,000, times open parenthesis, 0 point 0 2, close parenthesis, to the x power\"></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_003_702d8a81.png\" alt=\"f of x equals, 3,000, times open parenthesis, 0 point 9 8, close parenthesis, to the x power, \"></span></span></p>\n"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice D is correct. Because the change in the number of students decreases by the same percentage each year, the relationship between the number of students and the number of years can be modeled with a decreasing exponential function in the form <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_005_df247992.png" alt="f of x equals, a, times, open parenthesis, 1 minus r, close parenthesis, to the x power "></span>, where <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_006_09ff893b.png" alt="f of x "></span> is the number of students, <span class="italic">a</span> is the number of students in 2015, <span class="italic">r</span> is the rate of decrease each year, and <span class="italic">x</span> is the number of years since 2015. It&rsquo;s given that 3,000 students were enrolled in 2015 and that the rate of decrease is predicted to be 2%, or 0.02. Substituting these values into the decreasing exponential function yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_007_b02fc3f8.png" alt="f of x equals, 3,000 times, open parenthesis, 1 minus 0 point 0 2, close parenthesis, to the x power"></span>, which is equivalent to <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_008_c80cbb11.png" alt="f of x equals, 3,000 times, open parenthesis, 0 point 9 8, close parenthesis, to the x power"></span>.<p>Choices A, B, and C are incorrect and may result from conceptual errors when translating the given information into a decreasing exponential function.</p><p>&nbsp;</p></p>
$SATQ$, false, 9, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"281a4f3b","external_id":null,"disclosed_item_id":"025038-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">A certain college had 3,000 students enrolled in 2015. The college predicts that after 2015, the number of students enrolled each year will be 2%&nbsp;less than the number of students enrolled the year before. Which of the following functions models the relationship between the number of students enrolled, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_004_175381e2.png\" alt=\"f of x\"></span>, and the number of years after 2015, <span class=\"italic\">x</span>&nbsp;?</p>\n","answerOptions":[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_000_75adf9b9.png\" alt=\"f of x equals, 0 point 0 2, times open parenthesis, 3,000, close parenthesis, to the x power\"></span></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_001_3dea7a3c.png\" alt=\"f of x equals, 0 point 9 8, times open parenthesis, 3,000, close parenthesis, to the x power\"></span></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_002_4e15e960.png\" alt=\"f of x equals, 3,000, times open parenthesis, 0 point 0 2, close parenthesis, to the x power\"></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_003_702d8a81.png\" alt=\"f of x equals, 3,000, times open parenthesis, 0 point 9 8, close parenthesis, to the x power, \"></span></span></p>\n"}],"keys":null,"correct_answer":["D"],"rationale":"<p>Choice D is correct. Because the change in the number of students decreases by the same percentage each year, the relationship between the number of students and the number of years can be modeled with a decreasing exponential function in the form <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_005_df247992.png\" alt=\"f of x equals, a, times, open parenthesis, 1 minus r, close parenthesis, to the x power \"></span>, where <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_006_09ff893b.png\" alt=\"f of x \"></span> is the number of students, <span class=\"italic\">a</span> is the number of students in 2015, <span class=\"italic\">r</span> is the rate of decrease each year, and <span class=\"italic\">x</span> is the number of years since 2015. It&rsquo;s given that 3,000 students were enrolled in 2015 and that the rate of decrease is predicted to be 2%, or 0.02. Substituting these values into the decreasing exponential function yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_007_b02fc3f8.png\" alt=\"f of x equals, 3,000 times, open parenthesis, 1 minus 0 point 0 2, close parenthesis, to the x power\"></span>, which is equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/281a4f3b/img_008_c80cbb11.png\" alt=\"f of x equals, 3,000 times, open parenthesis, 0 point 9 8, close parenthesis, to the x power\"></span>.<p>Choices A, B, and C are incorrect and may result from conceptual errors when translating the given information into a decreasing exponential function.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":9,"raw_list":{"updateDate":1691007959618,"pPcc":"SAT#P","questionId":"281a4f3b","skill_cd":"P.C.","score_band_range_cd":5,"skill_desc":"Nonlinear functions","createDate":1691007959618,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"025038-DC","external_id":null,"primary_class_cd":"P","uId":"9495f164-54e1-408c-81b0-ccad66bb1132","difficulty":"M"},"raw_detail":{"item_id":"025038-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">A certain college had 3,000 students enrolled in 2015. The college predicts that after 2015, the number of students enrolled each year will be 2%&nbsp;less than the number of students enrolled the year before. Which of the following functions models the relationship between the number of students enrolled, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAaCAYAAACgoey0AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABHUlEQVRIS+2U0Q3EIAiGHc+BHMddXMVNOIGjsRSo3tM9+CVNLhbk54dr+hXoFXLKUDvA98gEoEPNCUqL45YAaFAWigpb8aIUf9KT6zjhxFYS5HEL/l4FWrndYXIVHf58j1LvXIgtLqOHPeuWLCd1zuW95pugHejeKBet9ALwnVZN8cpGOlNzdd3iJcCE6ZkEsF3PJZE8EUSuGMvkLhmMOfbA5mg7r66pK3v5POFEZHNUmG18ujTjFtaWaaLCCM/V33jf6sBmJPpL8FyxsC+MCxv3RzYLGKPnx4L5PBwVxumPyJvNgk6WPCnGIuyuLdGvNguz3VfRKU/e667d+a7YLJiWvYA7cOuWCpJqfyksvI+E5nJgU+jhcDj8Gyl9ABUB6G+g05PDAAAAAElFTkSuQmCC\" alt=\"f of x\"></span>, and the number of years after 2015, <span class=\"italic\">x</span>&nbsp;?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIYAAAAaCAYAAABy3SSpAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADDElEQVRoQ+2XAY6EMAhFPZ4H8jhzl7mKN+kWkFoRWuo22bjhJWZnKq3w+a2zy1PS/knrsqbPntIxpJLSnj7rkrZvO+6teHX4S6we0PiZe/pu+e8vaknpm7aBBUbj38Kb6rJyRTOAY/C+YwOzy+AjXusnj9Ck77akNT8BPnvBBKo1ZkJO51z7jerF32rPl1avpgOM5T/H5TONJ/8ZMXhf9IBPjTXX2+1pESbb5xha9p0m0dG5ZX/1C67hNWe/UkiMUwT5XdKLP01x1kgxV+E0HcgUcp6dC9DLB5gWY/Rg/6y+TUuL6s3HRSrDjIDrPpyrwYWqu1Z5jife+s2AdVeaSB1o3lV063mMK59JMYzsAectTaRiCQvAvXzrcg/jheNwTDr24WljoTUDkE1kRuNr5GbRdJBwwywtPfnMijmGLj2of1dArGXgXAgFwsdyVUVRoXdnyR8ulJAVZ8+Hj61LFk5FKusZJ95ofE1tfksHiaUD48lnVswxVPWANGczWL1BUv4dsTdEak0uwmGS+vHpFdQLFW4J8vtxhu6fxmyKmCFD6Gau8eQzK+YYet4DbHB1StS0BCHXkhj2/PcZg+5da+oZgymaWHo48pkVcww96wEVbLu8Jwj9rrCPZGs+Pxc+ti6Z18gRCozGl50vGtvToab1OvHkMyvmGBrKvWAJxJDbdOOcx6f9UErKXn8UEuSeD+Vyf85IPJm89Uq0N1ANaapr4slnVswx9KwHrdcIAzFSLCqexpuvIojz/L/shBsk87Fy8MaToLopGKkDa+BpDuPJZ1YMM9wDPs5lYRK5MM8rSaJA+g6RYs5APk9+l03uxfPu6+WJ8y46UHMuY7h2e61ePsCsGGC4B7RQ/4hhAcBAxRTVvCKQdCrG3hOdATefrusztN3videve531Riq1V3PkRsP1xY5t5cPMiHnUA+3YsUATjRxHGUh6yKkv4IkOaJ5tbM4shnqAhjAc1oLc2Z9TdtGggG/BqwODryrnBpzFf+/BvwCMJF8vQRAEQRAEQRAEQRAEQRBMZVl+AB3g8hGKrpyZAAAAAElFTkSuQmCC\" alt=\"f of x equals, 0 point 0 2, times open parenthesis, 3,000, close parenthesis, to the x power\"></span></span></p>\n"},"b":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIYAAAAaCAYAAABy3SSpAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADMUlEQVRoQ+2XAW6FMAiGPZ4H8jje5V3Fm3QFiiJCS12T5S39EjNF2sIPrW/LW9Kxp3VZ036kVEwmKR1pX5e0fep+30pUh7/EqwHZr9jTZ8t/f5FLSp+0dUzQ6/8tfFNeXqzYDNAx+D6wgbnL4Bavdc8WGvTZlrTmFeA+CgYg5hgJdTrH2i7Usa9Nf8gx/zkvSzBLh/u4WNNE4h/hY9WAT40117pZ07MpshrFtBwHDaKjc8v91U5Y4h1nv4XEuETQzxoqnPa/x0U+V46Wj6WDPc6PBYjEP8zHqQFulMimpUnt4uMkomF6wHlfjrXgRM1da6xDxXz6S2G8I1XPqXXgueU4Lz4mEv8oH0bXgOPWTWTiCQvAu/zq9g79VcehTXfsy9PGwyoGQJ+K5zrWLgKk3ZtTa2LpoOGCeVpG4h/lU0y3GshNAL5eA+dEyBFuz0skRYkawooF4JkC8vz88XBbu3TilKRX6HeNAc/U1Nd4en+t7+mg8XRgIvGP8ikmUQPSnJvBqw2S8u+Iw5iMqQ0+Tw0M0j4+o4JG0QVlXHuJTTeYVUCycVPe31VFzMixei1JJP5RPsX0vgb6yJTUBGHR4dYf/7eNATxOgzNu8qcYbZ/Q7hKcc3t6BOIf5VNM72pACftd3hJEi67xxvO6cFu7dFwkvCeIHwfFyVf2E/NwMfVadArQnC0dJLXPSST+UT7F1KyhSUtQ3k1W41zHp78oBeXP30ukiMVU5SYy3nsik72mg8abDwg14SCfYnpXg9pnhAEf/fuBkid7bQ70i/y/HIQLpOPxYiBR6v6eyJTjJajWgTXQ42pNGol/lA/TXQMWTSem0RPzuDNIFMjeIVrMEej19DMV5loXxRKFsuJ9+JRmkbE/daDi3Gw4dz3nVvzAKB+guwY0UfuIYQGggc6mkCKyQLpT0fcZ6Ai4+HTd19CNAVDh+bJzvvs8xZQ6FNOVuxinNxrGo3ZsLX5mhM+rGqAQqpge2EQ9x1EGgu7q1C/gjQ7YPFvfmFF01eDaGX2dRN3ZHnPuok4Bv4WoDgx+loIbcBT/vQb/Amgk/XmZTCaTyWQymUwmk8lkMplMJkNZlh+JMRUpfevJ0AAAAABJRU5ErkJggg==\" alt=\"f of x equals, 0 point 9 8, times open parenthesis, 3,000, close parenthesis, to the x power\"></span></span></p>\n"},"c":{"body":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIgAAAAcCAYAAAC6TfcHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADHUlEQVRoQ+2YjZG0IAyGLc+CLGd72VbshI8kRDEmEFy+25u5PDPMuZjImx/QuSX4GdL+SuuypteeUpn6cVLa02td0va+aqD5U1t6b/nvh1q9AVui/hIpvdP25eZgLC3YFFAkvP9hvUYD/k0J+gbvbUlrDr78/DrYDOsrb92zHnyKrHkzu7TyzodLHNUDnwSsiZoF6Ml/yvA1Ih2jbZ8ZNnTSbnmLiHnHszW668m65SFrZZ3q+2v11ehYJD+hTC37TotYAfewRH0KNcephxLYTri00Xxm2WDSqzwCHj+Nnt/ZHDIfSpPAfKWL6gq+fR3loXoTaAF7kaI+hYOqm46TZJ1w1n1stKJtlg0Avz36pJ/Epcn4LsSaiXrWG73+7gBbucaNllgZMID24mjCOSG2FlWmpsOJtPRrTQXUSZxmg1q0HLT9ytSFp36AtuHP70JqDm6K5vcidxJcHiMrgnuAFjBQdyD8JtGWne0Pl60hk6Nhrc1QohUNVRKn2SjxevzK1IWnfoC2ga1aNkn5O2NvLGgVGDhEYCD3oxB4JMoJNUa/kSihVqJpfpqN1iAOvzJ14TO/e04e1wILXZ0aNa0GoQ6nAtn+/69BmEOHpcGR6Gk2X24QuqfnolVLE3Kyd2DvofTd0TgmDX9eFy5bw9Ilab1mXK+GWTa4Ia66PX5l6sKo33GiWhsle2yN9VS6IpWAmfOIvwfBPBL1AIpD10GJvsdA+knbLBv4DZumft16/SQjfrRR9dc8gzka/b9U6/XCyIABKgjNt57xSFQDXnck2dzkMoZa9ywbQMbs9ZN4/Sj2u50E/Ho2F/iYz2s1ne4Bl9cDJw6Lpu/eYVEdOGkXPaVpWutIjZrmaTZFY51Xj59W6J4fnzK9HFPNrut1ocXsI46pAz6ao/I7ilZ1NfBIlINjPdRBQzY5JlucXFwAGrquWTaY28H1+b4sdsvvek+Os0ZgN7xRe0dcjRZwj0eiJoFNtI3pnQ0VT2+gn+LYTCO1w8bADhsT7w34kajJ4NHrbP7gDwLNLF87QRAEQRAEQRAEQRAEQRAEQTCDZfkHU+PyEbCd9TEAAAAASUVORK5CYII=\" alt=\"f of x equals, 3,000, times open parenthesis, 0 point 0 2, close parenthesis, to the x power\"></span></p>\n"},"d":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIYAAAAcCAYAAACkhMe0AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADQ0lEQVRoQ+2YC5KDIAyGPZ4H8jjepVfxJixJiIaYIFp2uzPNN8OspQH+vLCzU/A3pG1N8zSndUupTP0ZKW1pnae0vOqzaf7QlF5L/vumxl5HPVHfREqvtHyoKBhPAxYDJAe/fzNPdx39D4H5JK9lSnN2vnz8GFgE85pb9cgD3xpzbt4ujdzp8IhDbPjEUUvUKEBP/lNGXwHStdleM8KGbtYlt4aa79hbsq3zpX0dB+/VcZ7HvXtysxdF3qFMTdtGheA5esVvvVIoGIceCng70NrGWjPKBoMu4gj0rJOQj9q+jqUdB6M4YF7ooXzW+7vQpnbyLUd70aLehZ2SznMBejea9z0GtmgbZQPA5x59eh3DPmp72eXe7wNrT9nYch3sp8844YkEtKMA2qurCOdUFUpRZWo4HHhPv1VMAAaaAzbKBrVYMWivK1MINem5m+W8t6dZGPkE+r1HRcHF0PwdyBUEj/sQG1uOArpiyUnPzl8Pj62hHbfwzmYoiIYGcUsOszH87VlXphBZAGUK0fPUiMd6+v4cMy+HTVL+HbE5AgEvscB+a5Tqta6lR6I6oYK4LqCeQA+zsQqjY12ZQrzbwGoAGQNrL+BxDqzrh2kVBjsAj/763ysMZtfhaehJ6CibAYUBnG6DPdZ8DsTVttEN2sqhCy3yO+5qU+2AxlvP58Jja3i6NK3XCQXM0ICJIe3DbErCpO6edWWqgmLLI9uJfbgIdHwoDvWeFGv/HJMrcZajzHGNnZ1mHol6APlh6+gJ4igb+AwJlV17J4ktqgJ0/LXmce7u/5NarxFGOwqQAJpv7fFIVAM+906Qubi1D1L3KBtA+9y7juHbtKnFKTaKTx0HWKf3asIC9Oaas6PlNcAiUYzdrbdFXcBBrvSUYmmdozVamofZFI0yrlfrqLAPH7AIRIKtc042pVhkHChX9bpL6DC7yyTS0b0opCBOVikU5pGoDvbzUAcNXdwYaHVTcfBp2LpG2WBsb5zP38mkUuJ52Hmqbc7NAfu2GsYEN1XJ9LAcveKRqEFg8Sz39I6Gkj2+MXrYm+dOzo4quye619FHogaD12pn0QdfBBSxfr0EQRAEQRAEQRAEQRAEQRAE38U0/QAH4BUpKcULugAAAABJRU5ErkJggg==\" alt=\"f of x equals, 3,000, times open parenthesis, 0 point 9 8, close parenthesis, to the x power, \"></span></span></p>\n"}},"correct_choice":"d","rationale":"<p>Choice D is correct. Because the change in the number of students decreases by the same percentage each year, the relationship between the number of students and the number of years can be modeled with a decreasing exponential function in the form <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGgAAAAaCAYAAABb9hlrAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACY0lEQVRoQ+2X65WEIAyFLc+CLMdebMVOWJIQzWRCEEZ0f/Cd41lRHpebEGenwfuEsId1nsO6h4DtbYl/z3YTYV/DfGESWnwKy/bDYjdyVXcPPC8wKPAibGGJzaJfPBnc4jWv8QkNokmub7K2fy88HdsyhTm+SM1u5DTwKZqj50UdR3BiGNOjad/PQS2bwQwRQX6DnG4qKc8ECMh5sa/zNY9I8BJj/d2RSoT9zuPtUpfTjabE13A9FiDDC9IHOi5UGsg0eXokuCH1DvuryOMztRjX2dS8na+yLNa3dFMiQh+q+3cHiPXAvORHvJIG6YX87oDOrA7uCLfHpTYFC8FEqYnIBaBNWWnU2UwWm+sal15XQmaffbQmSzfDfe8PEMxL3xW99unF59o8RnuHhPid2b3yhhlhDz5OUTqq1mbdxX+ANvs5r0wGTzfQLUA9vECjY7hT8wNvUhYDt/nxvlGtWJplSSuZUQoQv4db7/o6JUcJNfxq8YKF6IWY0kbRqMzpA3KiWg0AzNOT5rtUNiK6/11gkmR+lbUFyClvgLdR+u6AkSUjKkUVsDTrzH0jQBSA0qms9MIrbwAvah9lElMukfkEaAHXFlnKGq1nfmW4O0A0p79mhRelCRkIgNwIjzvqvcpeiTbzDvjbx7o5WXSSaN2SLgEySq+k2gvaWDmicuIjOGLckcHKIMAz6Rf0DxQOEgcN8AzpEqCCn9VeeKVJUioXOciEypp7I626e1DlBQYmjvE+7hovG3O4/yE/RIvuHjziBf1qKwfV+mi/yVXdPfhvXgwGg8FgMBgMBoPBYFDJNP0BpLKxMdFcR9gAAAAASUVORK5CYII=\" alt=\"f of x equals, a, times, open parenthesis, 1 minus r, close parenthesis, to the x power \"></span>, where <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAaCAYAAACgoey0AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAZhJREFUeNrtlUsoRFEYxy9CeeQxC49YKCsLZbJTs/GIJDspTVGTDXaWzEJIbGymWc3CmrCxkiIak6WNRKJQysqjGM//rb86nc5373QXVudfv8U955vznfu/3/eN48gqBHFwBbJgF5Q7/6BNcAI6QAhMgQcwEOCsDJjJJXCQb9morC3xIkHUC15AjV+ga+u68lwBnkA0YOI8cAHmvYKOwDd4BY9gDcTAOyjTYpvBB5jT1pPgGbQra4vgjpcwahXc0+YGFtQWSAvxSboR4nOcl+zS4rrBDwhLllyCZW39BqSExHV0Z4XOfIEhQ1w9E8dMh0S42aKtZ1lckhbAG/gEEx7t6Z49a9pMCZXrl3iUhx76zAVj4hJ+K9ONvazu5DdNsyhbhTjR6ijtqjb8aFsorjAvmwBF4BrsCIn/iqtN39jTelfVON+qVGsld5JtgHyujfHwiFAHt3o7NdGmPiFxJSfPCJ9rOcP3QbESVwDOBHfO9QEyCU7BgVdzs10yASdXj2lkDoPpHP55qmhtf4DEx1IbWVlZWVn56hcjaF5Ucn4LLAAAAABJRU5ErkJggg==\" alt=\"f of x \"></span> is the number of students, <span class=\"italic\">a</span> is the number of students in 2015, <span class=\"italic\">r</span> is the rate of decrease each year, and <span class=\"italic\">x</span> is the number of years since 2015. It&rsquo;s given that 3,000 students were enrolled in 2015 and that the rate of decrease is predicted to be 2%, or 0.02. Substituting these values into the decreasing exponential function yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAAAaCAYAAAAwnlc+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADVElEQVR4Xu2Yi5HcIAyGtzwX5HK2l23FnRCELIxlScgczmUz+mY8ORuEfj2AnbyC4GlS2tJ7WdJ7S6m8f9b87/E+RNreaXEsgs5faf38wNl/gDdf34xV69J0MJA+ac2v3X6gxeDP8izv/AWNcBF/Mu/Ov8tnbXQ6/eAutG2mzTHiB+1LHthfp+HRJdGzu/RFflr9Wqx0Ci7ZthtvdZLbdP/02rbDaCRpJbCmiWeBzbfmsHFdTKCdcD5Hspk1B9DyhfPnN6BXF6dndzQfzzdrQvgm1Hp7L74ewEUPJy14lchjFiR+5lWMWs5rkh+tqNp4aeR9w82aA2j5KsXIw/BoWkfw6uK4YlZ+RmAsTVPua2WzOo9q5dkIptjijI2V+ayzyzfmrDS2kYQZUPCaH6lpgTaJs+bUd6blOFnw99DUBnTq4ozaAdKB1da6/d0H66nx0kT4sz4sedBYXGTrAN5R9LXTMchrMKJf4eF+JTTfBGoQtDVJnDUH3qV8ERT3/Abs6+KM2gHSAYTrgd05Roz56qeQ8u+8zXCYs55PF9m4iiiO5aSazn8INl6/UTGhWqLx+7Q5Rr6ARxrQoWv/dOJndtqhpNuplEbKq+2vJ6xFseOxAXR7uyAzqDo0DY5ET5vTKQKO6w1I4/Cn9bTF9+jaP50YscOxrEHI9VCtKeA2oJZeQkvzWse8Imok0RbWNey5aqbNKXHJOgCK+xuv4HrjaBt9qAF7Io2EHldgL+E3RQ2Acch+MNHXZkb9bXNNmNOJ97kGtHXtn07cscODxtY9VGvr+gWwq68iseAoqH+F60m4C/m9k2yKgSev1T17DtdHPNKADl0SXjvMbV/z7VpTMrRkESCodU52NenW6QNjnv+IdEJJa9dsNwO8S3CNkuZZc3i+Wp5oQMCjS2qknh2dkh69xfZOrdFZv2PbhWvzNXa1KYTdZhVjlOqv6MCHb6KSbJYMKgA+5+IQM+ZYhXiqAYGeLhrnvi278xh/zr1zu9b8qNWggvdOSg4mWy7i0xTN643dOJHRfH0zt2pdGi/baDtc4vbxmoHd88RO91CuDsfmeoqRfH0zf6XWeBz3m7Zekb9YAND62yeQN1/fzL9Q6yAIgiAIgiAIgiAIgiAIgiBoeL3+AN1nYVx0ip7tAAAAAElFTkSuQmCC\" alt=\"f of x equals, 3,000 times, open parenthesis, 1 minus 0 point 0 2, close parenthesis, to the x power\"></span>, which is equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIgAAAAaCAYAAABsFBQaAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADOklEQVRoQ+1YC7KkIAz0eB7I43iXuYo3YUliEGICwcF9b7foKmtHyLfT4KtdJiZCOMK+rmE/QsD3zxb/vd4fIRx7WB1BKPkSts8Xyf4DePl6E7VZoChgI3zCFl+b8+Jg8BOfdY8r5ERB/M322vfis2V1OvPQKan7DLNR+vf4aTj2telX8lEO25oF3yJrnPkaN89lHUkcMfK5tBzH5QQFNIMIICGZyEaByNhi2xSXiK8TLm00n1E2AMmX10+CepV+pQB0PoRIYE2ZBYrPMyMKeiXJQVelvlfDG58aqkWeEMpjCdjaR2LPAzHKBiD58vpJcK/SLx+q9Xm41XTWkNtxfI9Qq8ViQWIP7YXycE0kQ+EZcUeBm7fyaKIC0NVNgxxlk96zWrx+EnRo78PL163Y2jzzWeTCgjqkCBPYEH6mRwSGZLIAqVxqVmkGG7iToOZVHplXg5WbQTVYROfD/94G3iVfXj8J2rf8rnU6mFcc2ldmlmZB3LMoaBb3PIgQ/844KoVGVuLp1J2xMLhFMPH9KgRUk38JEkZbSB6ih9kofHn8zqUCNNB7b9qByLmwYj6ehXYdMWpBuQH4afvbAhuFVIdVg2ewo2wUvjx+59INt9shcc75zs+rYiMP7KNZUEP2CawJBCAbkLCK4rzws/ZYdUnUPjNEmFIDDohqH2aDfZU2Hr9zSQVxzE+0z+KxGCRPxEcZ+5lAGkXWBHJda3bSlsBGgfrQ83hIHGaj9NszRA8KQRp9a+uPZlH7vABIdffmqAC6xtqfqH4SLHDeHrK5B3nl5nWPtsnr8/hpIO4a+QzxEU8lH92z4AJkcAkoKC+S/VKRhooBuOf5jxgnmOw8JotGEplD1qjVPMpG8gXw+JHIS18UQzZUK19hc4pGraFnFpSsrag8cBJHXhAPTTkNGlnfIuXDOuiRIkeyBRk8AHpKkhkjbKxBtPx4X/JFAuBHn1dpo3PePQsMqgxVQrs2PSAx6SS/Dax56zgtA/GUrzfRNYtLbf7hdV9PEXAiRt8eXuA16xD/W3jC15v4K7OgK7AtqvQJ+EGCoNafPsFevt7Eb5jFxMTExMTExMTExMTExMTExMTEP4hl+QOmMRUp7n4yNgAAAABJRU5ErkJggg==\" alt=\"f of x equals, 3,000 times, open parenthesis, 0 point 9 8, close parenthesis, to the x power\"></span>.<p>Choices A, B, and C are incorrect and may result from conceptual errors when translating the given information into a decreasing exponential function.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959618,"updateDate":1691007959618}$SATQ$::jsonb, 1691007959618, 1691007959618),
    ($SATQ$290cdc2c$SATQ$, $SATQ$2f0bba12-b9f1-460c-b120-0adaf38cf4db$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">Which expression is equivalent to <math alttext="left parenthesis x right parenthesis Superscript one fourteenth"><msup><mfenced><mi>x</mi></mfenced><mfrac><mn>1</mn><mrow><mn>14</mn></mrow></mfrac></msup></math>, where <math alttext="x greater than 0"><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>?</p>$SATQ$, $SATQ$[{"id":"09684994-ade5-4f24-8caa-78c9c55083c0","content":"<p><math alttext=\"one fourteenth dot x\"><mfrac><mn>1</mn><mrow><mn>14</mn></mrow></mfrac><mo>&#183;</mo><mi>x</mi></math></p>"},{"id":"d25dabcf-f12d-4de8-a458-c7a7e16d75ac","content":"<p><math alttext=\"RootIndex 14 StartRoot x EndRoot\"><mroot><mi>x</mi><mrow><mn>14</mn></mrow></mroot></math></p>"},{"id":"a149ee23-0c58-4071-8493-8281e6fb112a","content":"<p><math alttext=\"14 dot x\"><mrow><mn>14</mn></mrow><mo>&#183;</mo><mi>x</mi></math></p>"},{"id":"72f10f8d-66e9-4053-8860-88207a2580a6","content":"<p><math alttext=\"left parenthesis x right parenthesis Superscript 14\"><msup><mfenced><mi>x</mi></mfenced><mrow><mn>14</mn></mrow></msup></math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["d25dabcf-f12d-4de8-a458-c7a7e16d75ac"]$SATQ$::jsonb, $SATQ$<p>Choice B is correct. An expression in the form&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x Superscript StartFraction 1 Over k EndFraction"><msup><mi>x</mi><mfrac><mn>1</mn><mi>k</mi></mfrac></msup></math>, where&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x greater than 0"><mi>x</mi><mo>&#62;</mo><mn>0</mn></math> and&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k greater than 0"><mi>k</mi><mo>&#62;</mo><mn>0</mn></math>, is equivalent to&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="RootIndex k StartRoot x EndRoot"><mroot><mi>x</mi><mi>k</mi></mroot></math>. It follows that&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x Superscript one fourteenth"><msup><mi>x</mi><mfrac><mn>1</mn><mn>14</mn></mfrac></msup></math>, where&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x greater than 0"><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, is equivalent to&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="RootIndex 14 StartRoot x EndRoot"><mroot><mi>x</mi><mn>14</mn></mroot></math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"290cdc2c","external_id":"2f0bba12-b9f1-460c-b120-0adaf38cf4db","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"ae11caf5-f035-4ad1-a62c-9afa99f8b13b","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">Which expression is equivalent to <math alttext=\"left parenthesis x right parenthesis Superscript one fourteenth\"><msup><mfenced><mi>x</mi></mfenced><mfrac><mn>1</mn><mrow><mn>14</mn></mrow></mfrac></msup></math>, where <math alttext=\"x greater than 0\"><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>?</p>","answerOptions":[{"id":"09684994-ade5-4f24-8caa-78c9c55083c0","content":"<p><math alttext=\"one fourteenth dot x\"><mfrac><mn>1</mn><mrow><mn>14</mn></mrow></mfrac><mo>&#183;</mo><mi>x</mi></math></p>"},{"id":"d25dabcf-f12d-4de8-a458-c7a7e16d75ac","content":"<p><math alttext=\"RootIndex 14 StartRoot x EndRoot\"><mroot><mi>x</mi><mrow><mn>14</mn></mrow></mroot></math></p>"},{"id":"a149ee23-0c58-4071-8493-8281e6fb112a","content":"<p><math alttext=\"14 dot x\"><mrow><mn>14</mn></mrow><mo>&#183;</mo><mi>x</mi></math></p>"},{"id":"72f10f8d-66e9-4053-8860-88207a2580a6","content":"<p><math alttext=\"left parenthesis x right parenthesis Superscript 14\"><msup><mfenced><mi>x</mi></mfenced><mrow><mn>14</mn></mrow></msup></math></p>"}],"keys":["d25dabcf-f12d-4de8-a458-c7a7e16d75ac"],"correct_answer":["B"],"rationale":"<p>Choice B is correct. An expression in the form&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x Superscript StartFraction 1 Over k EndFraction\"><msup><mi>x</mi><mfrac><mn>1</mn><mi>k</mi></mfrac></msup></math>, where&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x greater than 0\"><mi>x</mi><mo>&#62;</mo><mn>0</mn></math> and&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k greater than 0\"><mi>k</mi><mo>&#62;</mo><mn>0</mn></math>, is equivalent to&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"RootIndex k StartRoot x EndRoot\"><mroot><mi>x</mi><mi>k</mi></mroot></math>. It follows that&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x Superscript one fourteenth\"><msup><mi>x</mi><mfrac><mn>1</mn><mn>14</mn></mfrac></msup></math>, where&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x greater than 0\"><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, is equivalent to&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"RootIndex 14 StartRoot x EndRoot\"><mroot><mi>x</mi><mn>14</mn></mroot></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1755117017717,"pPcc":"SAT#P","questionId":"290cdc2c","skill_cd":"P.A.","score_band_range_cd":3,"skill_desc":"Equivalent expressions","createDate":1755117017717,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"2f0bba12-b9f1-460c-b120-0adaf38cf4db","primary_class_cd":"P","uId":"ae11caf5-f035-4ad1-a62c-9afa99f8b13b","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">Which expression is equivalent to <math alttext=\"left parenthesis x right parenthesis Superscript one fourteenth\"><msup><mfenced><mi>x</mi></mfenced><mfrac><mn>1</mn><mrow><mn>14</mn></mrow></mfrac></msup></math>, where <math alttext=\"x greater than 0\"><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>?</p>","keys":["d25dabcf-f12d-4de8-a458-c7a7e16d75ac"],"answerOptions":[{"id":"09684994-ade5-4f24-8caa-78c9c55083c0","content":"<p><math alttext=\"one fourteenth dot x\"><mfrac><mn>1</mn><mrow><mn>14</mn></mrow></mfrac><mo>&#183;</mo><mi>x</mi></math></p>"},{"id":"d25dabcf-f12d-4de8-a458-c7a7e16d75ac","content":"<p><math alttext=\"RootIndex 14 StartRoot x EndRoot\"><mroot><mi>x</mi><mrow><mn>14</mn></mrow></mroot></math></p>"},{"id":"a149ee23-0c58-4071-8493-8281e6fb112a","content":"<p><math alttext=\"14 dot x\"><mrow><mn>14</mn></mrow><mo>&#183;</mo><mi>x</mi></math></p>"},{"id":"72f10f8d-66e9-4053-8860-88207a2580a6","content":"<p><math alttext=\"left parenthesis x right parenthesis Superscript 14\"><msup><mfenced><mi>x</mi></mfenced><mrow><mn>14</mn></mrow></msup></math></p>"}],"rationale":"<p>Choice B is correct. An expression in the form&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x Superscript StartFraction 1 Over k EndFraction\"><msup><mi>x</mi><mfrac><mn>1</mn><mi>k</mi></mfrac></msup></math>, where&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x greater than 0\"><mi>x</mi><mo>&#62;</mo><mn>0</mn></math> and&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k greater than 0\"><mi>k</mi><mo>&#62;</mo><mn>0</mn></math>, is equivalent to&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"RootIndex k StartRoot x EndRoot\"><mroot><mi>x</mi><mi>k</mi></mroot></math>. It follows that&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x Superscript one fourteenth\"><msup><mi>x</mi><mfrac><mn>1</mn><mn>14</mn></mfrac></msup></math>, where&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x greater than 0\"><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, is equivalent to&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"RootIndex 14 StartRoot x EndRoot\"><mroot><mi>x</mi><mn>14</mn></mroot></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"2f0bba12-b9f1-460c-b120-0adaf38cf4db","correct_answer":["B"]},"createDate":1755117017717,"updateDate":1755117017717}$SATQ$::jsonb, 1755117017717, 1755117017717),
    ($SATQ$2926cc6d$SATQ$, $SATQ$4f0d6e7c-87b5-4c6c-85c3-06cd2c4aedbe$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="left parenthesis 5 x plus 4 right parenthesis left parenthesis 2 x minus 5 right parenthesis equals 0"><mfenced><mrow><mrow><mn>5</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mfenced><mrow><mrow><mn>2</mn></mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mo>=</mo><mn>0</mn></math></p>
<p style="text-align: left;">Which of the following is a solution to the given equation?</p>$SATQ$, $SATQ$[{"id":"778fed86-b1b7-4b0f-a933-bb1f3cb7f36d","content":"<p><math alttext=\"negative five halves\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>5</mn>\n\t\t<mn>2</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"e60664f8-1c4e-45a3-aa36-d5d35c8e5f9e","content":"<p><math alttext=\"negative five fourths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>5</mn>\n\t\t<mn>4</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"8696ada9-d905-4ac8-879b-aa6d251da162","content":"<p><math alttext=\"negative four fifths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>4</mn>\n\t\t<mn>5</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"76d822f3-918f-403e-90bb-6da3e9d5620c","content":"<p><math alttext=\"negative two fifths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>2</mn>\n\t\t<mn>5</mn>\n\t</mfrac>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["8696ada9-d905-4ac8-879b-aa6d251da162"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. Since a product of two factors is equal to <math alttext="0"><mn>0</mn>
</math> if and only if at least one of the factors is <math alttext="0"><mn>0</mn>
</math>, either <math alttext="5 x plus 4 equals 0"><mrow>
<mrow>
<mrow>
<mn>5</mn>
<mi>x</mi>
</mrow>
<mo>+</mo>
<mn>4</mn>
</mrow>
<mo>=</mo>
<mn>0</mn>
</mrow>
</math> or <math alttext="2 x minus 5 equals 0"><mrow>
<mrow>
<mrow>
<mn>2</mn>
<mi>x</mi>
</mrow>
<mo>-</mo>
<mn>5</mn>
</mrow>
<mo>=</mo>
<mn>0</mn>
</mrow>
</math>. Subtracting <math alttext="4"><mn>4</mn>
</math> from each side of the equation <math alttext="5 x plus 4 equals 0"><mrow>
<mrow>
<mrow>
<mn>5</mn>
<mi>x</mi>
</mrow>
<mo>+</mo>
<mn>4</mn>
</mrow>
<mo>=</mo>
<mn>0</mn>
</mrow>
</math> yields <math alttext="5 x equals negative 4"><mrow>
<mrow>
<mn>5</mn>
<mi>x</mi>
</mrow>
<mo>=</mo>
<mrow>
<mo>-</mo>
<mn>4</mn>
</mrow>
</mrow>
</math>. Dividing each side of this equation by <math alttext="5"><mn>5</mn>
</math> yields <math alttext="x equals negative four fifths"><mi>x</mi><mo>=</mo><mo>-</mo><mfrac><mn>4</mn><mn>5</mn></mfrac></math>. Adding <math alttext="5"><mn>5</mn>
</math> to each side of the equation <math alttext="2 x minus 5 equals 0"><mrow>
<mrow>
<mrow>
<mn>2</mn>
<mi>x</mi>
</mrow>
<mo>-</mo>
<mn>5</mn>
</mrow>
<mo>=</mo>
<mn>0</mn>
</mrow>
</math> yields <math alttext="2 x equals 5"><mrow>
<mrow>
<mn>2</mn>
<mi>x</mi>
</mrow>
<mo>=</mo>
<mn>5</mn>
</mrow>
</math>. Dividing each side of this equation by <math alttext="2"><mn>2</mn>
</math> yields <math alttext="x equals five halves"><mi>x</mi><mo>=</mo><mfrac><mn>5</mn><mn>2</mn></mfrac></math>. It follows that the solutions to the given equation are <math alttext="negative four fifths"><mo>-</mo><mfrac><mn>4</mn><mn>5</mn></mfrac></math> and <math alttext="five halves"><mfrac><mn>5</mn><mn>2</mn></mfrac></math>. Therefore, <math alttext="negative four fifths"><mo>-</mo><mfrac><mn>4</mn><mn>5</mn></mfrac></math> is a solution to the given equation.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"2926cc6d","external_id":"4f0d6e7c-87b5-4c6c-85c3-06cd2c4aedbe","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"8990b1b6-664f-4df4-8cba-ce8cafeecb89","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"left parenthesis 5 x plus 4 right parenthesis left parenthesis 2 x minus 5 right parenthesis equals 0\"><mfenced><mrow><mrow><mn>5</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mfenced><mrow><mrow><mn>2</mn></mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mo>=</mo><mn>0</mn></math></p>\n<p style=\"text-align: left;\">Which of the following is a solution to the given equation?</p>","answerOptions":[{"id":"778fed86-b1b7-4b0f-a933-bb1f3cb7f36d","content":"<p><math alttext=\"negative five halves\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>5</mn>\n\t\t<mn>2</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"e60664f8-1c4e-45a3-aa36-d5d35c8e5f9e","content":"<p><math alttext=\"negative five fourths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>5</mn>\n\t\t<mn>4</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"8696ada9-d905-4ac8-879b-aa6d251da162","content":"<p><math alttext=\"negative four fifths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>4</mn>\n\t\t<mn>5</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"76d822f3-918f-403e-90bb-6da3e9d5620c","content":"<p><math alttext=\"negative two fifths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>2</mn>\n\t\t<mn>5</mn>\n\t</mfrac>\n</mrow>\n</math></p>"}],"keys":["8696ada9-d905-4ac8-879b-aa6d251da162"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. Since a product of two factors is equal to <math alttext=\"0\"><mn>0</mn>\n</math> if and only if at least one of the factors is <math alttext=\"0\"><mn>0</mn>\n</math>, either <math alttext=\"5 x plus 4 equals 0\"><mrow>\n<mrow>\n<mrow>\n<mn>5</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mn>4</mn>\n</mrow>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math> or <math alttext=\"2 x minus 5 equals 0\"><mrow>\n<mrow>\n<mrow>\n<mn>2</mn>\n<mi>x</mi>\n</mrow>\n<mo>-</mo>\n<mn>5</mn>\n</mrow>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"4\"><mn>4</mn>\n</math> from each side of the equation <math alttext=\"5 x plus 4 equals 0\"><mrow>\n<mrow>\n<mrow>\n<mn>5</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mn>4</mn>\n</mrow>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math> yields <math alttext=\"5 x equals negative 4\"><mrow>\n<mrow>\n<mn>5</mn>\n<mi>x</mi>\n</mrow>\n<mo>=</mo>\n<mrow>\n<mo>-</mo>\n<mn>4</mn>\n</mrow>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"5\"><mn>5</mn>\n</math> yields <math alttext=\"x equals negative four fifths\"><mi>x</mi><mo>=</mo><mo>-</mo><mfrac><mn>4</mn><mn>5</mn></mfrac></math>. Adding <math alttext=\"5\"><mn>5</mn>\n</math> to each side of the equation <math alttext=\"2 x minus 5 equals 0\"><mrow>\n<mrow>\n<mrow>\n<mn>2</mn>\n<mi>x</mi>\n</mrow>\n<mo>-</mo>\n<mn>5</mn>\n</mrow>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math> yields <math alttext=\"2 x equals 5\"><mrow>\n<mrow>\n<mn>2</mn>\n<mi>x</mi>\n</mrow>\n<mo>=</mo>\n<mn>5</mn>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"2\"><mn>2</mn>\n</math> yields <math alttext=\"x equals five halves\"><mi>x</mi><mo>=</mo><mfrac><mn>5</mn><mn>2</mn></mfrac></math>. It follows that the solutions to the given equation are <math alttext=\"negative four fifths\"><mo>-</mo><mfrac><mn>4</mn><mn>5</mn></mfrac></math> and <math alttext=\"five halves\"><mfrac><mn>5</mn><mn>2</mn></mfrac></math>. Therefore, <math alttext=\"negative four fifths\"><mo>-</mo><mfrac><mn>4</mn><mn>5</mn></mfrac></math> is a solution to the given equation.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554982,"pPcc":"SAT#P","questionId":"2926cc6d","skill_cd":"P.B.","score_band_range_cd":4,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1743430554982,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"4f0d6e7c-87b5-4c6c-85c3-06cd2c4aedbe","primary_class_cd":"P","uId":"8990b1b6-664f-4df4-8cba-ce8cafeecb89","difficulty":"M"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: center;\"><math alttext=\"left parenthesis 5 x plus 4 right parenthesis left parenthesis 2 x minus 5 right parenthesis equals 0\"><mfenced><mrow><mrow><mn>5</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mfenced><mrow><mrow><mn>2</mn></mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mo>=</mo><mn>0</mn></math></p>\n<p style=\"text-align: left;\">Which of the following is a solution to the given equation?</p>","keys":["8696ada9-d905-4ac8-879b-aa6d251da162"],"answerOptions":[{"id":"778fed86-b1b7-4b0f-a933-bb1f3cb7f36d","content":"<p><math alttext=\"negative five halves\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>5</mn>\n\t\t<mn>2</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"e60664f8-1c4e-45a3-aa36-d5d35c8e5f9e","content":"<p><math alttext=\"negative five fourths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>5</mn>\n\t\t<mn>4</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"8696ada9-d905-4ac8-879b-aa6d251da162","content":"<p><math alttext=\"negative four fifths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>4</mn>\n\t\t<mn>5</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"76d822f3-918f-403e-90bb-6da3e9d5620c","content":"<p><math alttext=\"negative two fifths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>2</mn>\n\t\t<mn>5</mn>\n\t</mfrac>\n</mrow>\n</math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice C is correct. Since a product of two factors is equal to <math alttext=\"0\"><mn>0</mn>\n</math> if and only if at least one of the factors is <math alttext=\"0\"><mn>0</mn>\n</math>, either <math alttext=\"5 x plus 4 equals 0\"><mrow>\n<mrow>\n<mrow>\n<mn>5</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mn>4</mn>\n</mrow>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math> or <math alttext=\"2 x minus 5 equals 0\"><mrow>\n<mrow>\n<mrow>\n<mn>2</mn>\n<mi>x</mi>\n</mrow>\n<mo>-</mo>\n<mn>5</mn>\n</mrow>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"4\"><mn>4</mn>\n</math> from each side of the equation <math alttext=\"5 x plus 4 equals 0\"><mrow>\n<mrow>\n<mrow>\n<mn>5</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mn>4</mn>\n</mrow>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math> yields <math alttext=\"5 x equals negative 4\"><mrow>\n<mrow>\n<mn>5</mn>\n<mi>x</mi>\n</mrow>\n<mo>=</mo>\n<mrow>\n<mo>-</mo>\n<mn>4</mn>\n</mrow>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"5\"><mn>5</mn>\n</math> yields <math alttext=\"x equals negative four fifths\"><mi>x</mi><mo>=</mo><mo>-</mo><mfrac><mn>4</mn><mn>5</mn></mfrac></math>. Adding <math alttext=\"5\"><mn>5</mn>\n</math> to each side of the equation <math alttext=\"2 x minus 5 equals 0\"><mrow>\n<mrow>\n<mrow>\n<mn>2</mn>\n<mi>x</mi>\n</mrow>\n<mo>-</mo>\n<mn>5</mn>\n</mrow>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math> yields <math alttext=\"2 x equals 5\"><mrow>\n<mrow>\n<mn>2</mn>\n<mi>x</mi>\n</mrow>\n<mo>=</mo>\n<mn>5</mn>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"2\"><mn>2</mn>\n</math> yields <math alttext=\"x equals five halves\"><mi>x</mi><mo>=</mo><mfrac><mn>5</mn><mn>2</mn></mfrac></math>. It follows that the solutions to the given equation are <math alttext=\"negative four fifths\"><mo>-</mo><mfrac><mn>4</mn><mn>5</mn></mfrac></math> and <math alttext=\"five halves\"><mfrac><mn>5</mn><mn>2</mn></mfrac></math>. Therefore, <math alttext=\"negative four fifths\"><mo>-</mo><mfrac><mn>4</mn><mn>5</mn></mfrac></math> is a solution to the given equation.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"4f0d6e7c-87b5-4c6c-85c3-06cd2c4aedbe","correct_answer":["C"]},"createDate":1743430554982,"updateDate":1743430554982}$SATQ$::jsonb, 1743430554982, 1743430554982),
    ($SATQ$294db8ec$SATQ$, NULL, NULL, $SATQ$031616-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">Which of the following is equivalent to <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_004_050170f3.png" alt="2 x cubed, plus 4 "></span></span>?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_000_cce4a085.png\" alt=\"4 times open parenthesis, x cubed, plus 4, close parenthesis\"></span></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_001_1af12624.png\" alt=\"4 times open parenthesis, x cubed, plus 2, close parenthesis\"></span></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_002_9067f525.png\" alt=\"2 times open parenthesis, x cubed, plus 4, close parenthesis\"></span></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_003_26b5a057.png\" alt=\"2 times open parenthesis, x cubed, plus 2, close parenthesis\"></span></p>\n"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice D is correct. The expression <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_005_050170f3.png" alt="2 x cubed, plus 4 "></span> has two terms, <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_006_2f4f91df.png" alt="2 x cubed "></span> and 4. The greatest common factor of these two terms is 2. Factoring 2 from each of these terms yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_007_49dcac7c.png" alt="2 times x cubed, plus, 2 times 2"></span>, or <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_008_26b5a057.png" alt="2 times, open parenthesis, x cubed plus 2, close parenthesis"></span>.<p>Choices A and B are incorrect because 4 is not a factor of the term <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_009_2f4f91df.png" alt="2 x cubed"></span>. Choice C is incorrect and may result from factoring 2 from <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_010_2f4f91df.png" alt="2 x cubed "></span> but not from 4.</p><p>&nbsp;</p></p>
$SATQ$, false, 11, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"294db8ec","external_id":null,"disclosed_item_id":"031616-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">Which of the following is equivalent to <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_004_050170f3.png\" alt=\"2 x cubed, plus 4 \"></span></span>?</p>\n","answerOptions":[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_000_cce4a085.png\" alt=\"4 times open parenthesis, x cubed, plus 4, close parenthesis\"></span></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_001_1af12624.png\" alt=\"4 times open parenthesis, x cubed, plus 2, close parenthesis\"></span></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_002_9067f525.png\" alt=\"2 times open parenthesis, x cubed, plus 4, close parenthesis\"></span></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_003_26b5a057.png\" alt=\"2 times open parenthesis, x cubed, plus 2, close parenthesis\"></span></p>\n"}],"keys":null,"correct_answer":["D"],"rationale":"<p>Choice D is correct. The expression <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_005_050170f3.png\" alt=\"2 x cubed, plus 4 \"></span> has two terms, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_006_2f4f91df.png\" alt=\"2 x cubed \"></span> and 4. The greatest common factor of these two terms is 2. Factoring 2 from each of these terms yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_007_49dcac7c.png\" alt=\"2 times x cubed, plus, 2 times 2\"></span>, or <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_008_26b5a057.png\" alt=\"2 times, open parenthesis, x cubed plus 2, close parenthesis\"></span>.<p>Choices A and B are incorrect because 4 is not a factor of the term <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_009_2f4f91df.png\" alt=\"2 x cubed\"></span>. Choice C is incorrect and may result from factoring 2 from <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/294db8ec/img_010_2f4f91df.png\" alt=\"2 x cubed \"></span> but not from 4.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":11,"raw_list":{"updateDate":1691007959626,"pPcc":"SAT#P","questionId":"294db8ec","skill_cd":"P.A.","score_band_range_cd":1,"skill_desc":"Equivalent expressions","createDate":1691007959626,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"031616-DC","external_id":null,"primary_class_cd":"P","uId":"921cf21a-cf52-4948-be8e-c7489d24cfe3","difficulty":"E"},"raw_detail":{"item_id":"031616-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">Which of the following is equivalent to <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADEAAAAeCAYAAACFZvb/AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABSUlEQVRYR+2Vga2EIAyGHY+BGIddXMVNetBSwR5XEfUSkn4JecaHpX//llueZAsO4p+8PKwA6XkeYPWHxFGQX+cSIYEtgJvRjZq/OwGwQXDcy7Rc2IYSoLZ6bybI4QVifUrsIqAcyomMCkmsPsZ8wQmM+yUClTmI+R4OpJtmvJpYiBMREKN7mZBCcbnzG3nbYAVciL6Vj6kqVAAUnf/P7p45eUUEx/Sh0U6/kEnLA8mpo4NsNa64EV8qXBGxF6k1Ey3YNrlxF5YD3ZmZRK+Iel9zsCV738Vd9KbAAdLjyNByMulRWzJBLF4+71QEtUj5oAW1zDPXZ48T8uJRRXA/ay2yi2zcZiP0iChntlaVB2/UBHCbpT21vXfonYmaphP8UhXAvZwTJ0H33XhMhG5X6v0soP5Fz3f2E25cRZ0JwzAMwzAMw5iEZfkA76AEkd1tnqsAAAAASUVORK5CYII=\" alt=\"2 x cubed, plus 4 \"></span></span>?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADsAAAAeCAYAAACSRGY2AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABn0lEQVRYR+2V4bWDIAyFmerNwECOwy5dxU3ySEIUgSAU2x89+c7x1CqEG3KJbhbYA3jnIewA6VGXPXgcl64NXjA2bwWAHYJ3sMXF0qN5IErdJhKF13ZJkBKPCujlh5nVWvHaHPg4O/2dhl3xneoitNk+xDpPrveE0G9WFrm1MydVD1gRynb+3JnVNCO0tqYbrRp/qon4vBVsBor95ob10DQjqiPPClwnsh0WDnuiu8sJbizjG6tpFpqN6vB3qC2hdTba0aIB8C7zWLJ+ei/x7xrcTLI9zUKzUIewhv+1ZEthFKMYJxajKw6khx1mku1pFqpk8wVah11LFjmqm+atfJqQ0WTvNAuVdhIcR9LLZrLJLq1gaTzevtN8RDTe9q5y7TvNAsdPDYoHnplrEzG4VjW26jOflZHKjmpGqIFJX+Fzdt3F88oC5pMyzvltm88ykuyoZqRXJHWXWlaWto/BclutMJJsia4ZY3WKMGoJEXWcG0p8vbpPJosO6DbMXrIIW+iPxuTnVCr/RHVnKTUfWhrHzjAMwzAMwzAM41dx7h+ykBZeYw6AYQAAAABJRU5ErkJggg==\" alt=\"4 times open parenthesis, x cubed, plus 4, close parenthesis\"></span></span></p>\n"},"b":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADsAAAAeCAYAAACSRGY2AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABu0lEQVRYR+2W7ZGEIAyGqepqoCDLoRdbsZMcSQgihCiytz9ueGacdTVA3nztulHgCOCdh3AApEcmR/Bol64Ndni2bgaAA4J3sMXD0qNxILq6DQiFfbsIJOHRA3r5x4z62rBvDnxcnb4Ow1XxnewiFGwfYp4Hz/uEo9/MLHJbziyqNZhxlMv5sz0rQvBWLq3q6Oye31iq8aMRi8+7EXoI7f0yYCWn0DN4EtBacLcizwxchfHmE82eMKOc4MFiB7b3i8CT/ypMHVS5vkNbxr3JRpmqBgBXBtvS4em97H834J6I7cHJqsUqicqOKT3bE1s7xpG92klb0BUN6aHBjFgt+I3Y8gBtQPXEIvmAtG7mpwl5K1ZasF7X+E4ORyt6qYpNJa44IPZ4+2b4iDi8tS7tbCHPGuV83j+Vdt3smlgEA9LLGpeqMvFeMJpZbh1dKEKBkNLOxupVBKFcVHCu18t8lBGxHGS7dawkdTOrlbKUD25WtsIMT8VKkC2hvJeRhJ5YpMyuOJV7nYTPZ/eJWPHREopgQEwbSyzCEf0hm8s/mJT5T2T3Drv10Kfki9J2i8VisVgsFovFYvFfce4X3vQDqgsYSUkAAAAASUVORK5CYII=\" alt=\"4 times open parenthesis, x cubed, plus 2, close parenthesis\"></span></span></p>\n"},"c":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADsAAAAeCAYAAACSRGY2AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABtElEQVRYR+1W0bHEIAi0qleDBVmOvaSVdMITkGgMGj2T+7hxZ5zJGUGWBXJmFLB7sMaC3wHiVhO7t3guLgcb9NnNAGAHbw24cFncGgeEUN0AUdjciSARDxHQy5cxGusFmzNgg3X8OQyuiu+oi6BkWx90HrzviUC/qSxCLWfZxEdZpYIzgXI5v9ezLITeo3S3xJ2IpkAkuJwwlrDmbATo4w1lyW+NbF6RtenKU5QPcUImmj3ilOUKeLD0JzZVTYUs+buJnZ0IWd2AMloMAM4yn6WExfdSQXcDboSs+HS+UcY9QuVEamTLwLgazuekxGiFg7TZwAjZI5mtnr0jK6UhxjWyiCMp8cKZTxOil2x+rjmgGrGnHgiWvIMGsVw0Z/EifPxk+EjQ+Nha5d2U5HjfPVnlK8BlmJzkQOc11bhUFYcfoEfZcqg2yaJ4xVw5eqtGSDUKOBJUK5VB9JBNd2rrHMdFJDFu9ZtWylLyaJeX1Qx6yJaoKcu+MvJysEVUkKsrQR19Q8Tn1X2SLIqoqqqvax/y+T9yfvrXFZV/Qt1RlGSPWJS2W1hYWFhYWFhYWFhY+FUY8w+F2AemvL7EawAAAABJRU5ErkJggg==\" alt=\"2 times open parenthesis, x cubed, plus 4, close parenthesis\"></span></span></p>\n"},"d":{"body":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADsAAAAeCAYAAACSRGY2AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABo0lEQVRYR+2U67GEIAyFqWproCDLsRdbsZNc8lJAnurujzv5ZpjZRQLnJAE3C+wreOdh3QFkqsm+elwnY4ENxuKeALDD6h0s4TCZmgeC1GXCKGxLYpCMBwX08cvMar2wLQ58iJa/03BX/Ka6CCXbr6HOk+e9IfSXlUWK7ayT+FNHXsEnQrmd372zI5oROlt1n0GnEBUXB2MLJxm6Ae7xRmVHNSNJR9ZeV35FeRFv/uCyC0mWK/DD0k7siGaZkv062jlTarYcQJXKHgCak7V0uHzXavQeuBGzNWLNMiVd0DEbG6mZzYVxZtN1bF7GQAs/MVtKftes9r8eWDOLHAdQa/Ur1+Ou2Vyz0tJ+BMVV0BYsCeD7M165HDWHP1ujZb6kWeH909YmuA3LQVjBWtW4VQsb3mC2si3NCCUia+3jbtUMFYMCx2G1VplkxmxPM3IpkgpuBZVaWdsH4+jgSnZnGDU7phn3ioqgd64VpMTVVVFqkI0/r+6I2VHNmJBkzdmGpXG9h7z+I4/S+V0r/0Z1e/Q1i5bCtTMMwzAMwzAMw/ivOPcHsjz041eqjDwAAAAASUVORK5CYII=\" alt=\"2 times open parenthesis, x cubed, plus 2, close parenthesis\"></span></p>\n"}},"correct_choice":"d","rationale":"<p>Choice D is correct. The expression <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADEAAAAeCAYAAACFZvb/AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABSUlEQVRYR+2Vga2EIAyGHY+BGIddXMVNetBSwR5XEfUSkn4JecaHpX//llueZAsO4p+8PKwA6XkeYPWHxFGQX+cSIYEtgJvRjZq/OwGwQXDcy7Rc2IYSoLZ6bybI4QVifUrsIqAcyomMCkmsPsZ8wQmM+yUClTmI+R4OpJtmvJpYiBMREKN7mZBCcbnzG3nbYAVciL6Vj6kqVAAUnf/P7p45eUUEx/Sh0U6/kEnLA8mpo4NsNa64EV8qXBGxF6k1Ey3YNrlxF5YD3ZmZRK+Iel9zsCV738Vd9KbAAdLjyNByMulRWzJBLF4+71QEtUj5oAW1zDPXZ48T8uJRRXA/ay2yi2zcZiP0iChntlaVB2/UBHCbpT21vXfonYmaphP8UhXAvZwTJ0H33XhMhG5X6v0soP5Fz3f2E25cRZ0JwzAMwzAMw5iEZfkA76AEkd1tnqsAAAAASUVORK5CYII=\" alt=\"2 x cubed, plus 4 \"></span> has two terms, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAeCAYAAADZ7LXbAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA5ElEQVRIS+1U7RXDIAh0PAZyHHdxFTehCBI/ajWxtr+893gmJuGOg2h2IjhAWlJY9Ijxeh/Q2yoxE1q/l6QFBofwi2pKvFWCGNCBeikBLiwpENuanmSCvKkvrhJFeEs5tRLxDpDyVQllUtY9ZaGzxrfTwsrAUd2ZlPeSQBaVnqs7UyfapEh0lhYSx/dSae2AkKa4V0VOqLiI2eIvenZNR0eJ9O+m0k8QC8YJxJLFgVA/RxZcIjrTOIV+PCIo/x0W9MQu9XlIkCZLEwvhg2qyBb2I3ieC8kTQU2K1+QcHBwcHf4MxL3n9Lqk+Ao56AAAAAElFTkSuQmCC\" alt=\"2 x cubed \"></span> and 4. The greatest common factor of these two terms is 2. Factoring 2 from each of these terms yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAE4AAAAeCAYAAACCJCjqAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB7UlEQVRoQ+2VAY6tIAxFXZ4Lcjnuxa24E76lVKAUKMhkJvk9iXk+tNB7aXH7ae5zd89PuA53OQf3Rgt3HZlZ3sTj+j+Nc/fp9m135z1eORgLRt7u3Df3ePhrJmp1uBW5ukfyMWkakFbc17m+MLp29X1yFW7p2p+34FnKdcjjPbBlyzPOj+/ns/oa82Z1aOKKXGNQFEVCs8nfNpsXCQmnZ9ySNgjM6lDH8VxrvY5fwzjZioPdJ8TmkMY42Cptg2d1aOMATa7B9RgI1cIT9xXEWs2PhUT84uE57VjRAopK1hhXQ6NDgscBmlwzU1B0uStcEO5S/h4aGS5htzQH9RfjNDok0rgw1M8V3Y6JtgLeBfxulBXVQyNm1rgRHSk8jmjmSkHZOdBYEMv3eZ/FaJGSIaPgtnW1jBzVQUhxRNU4bLUyqLcgtmOn9yuoxAQjW0alzOqoxRFiPJ1FUquh03Li72Id8TUwmXUfh1kdrTiiyJXEt4JgYv6cyhrG/cKVnWrh52CHMEdr3KwOTRyQ5Upn1FAQ/A9iyCw0cbzqJCEcjXHTOgY+almusdWkK5ZlWuavacLzkarDeeZanDOjA/7r4z7kqmmrESBpzU6vZkbH51xxh75VyVudCzdhFK2Ov5CrYRiGYRiGYRiGYfTZtn+9R3a8uy7UpgAAAABJRU5ErkJggg==\" alt=\"2 times x cubed, plus, 2 times 2\"></span>, or <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADsAAAAeCAYAAACSRGY2AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABo0lEQVRYR+2U67GEIAyFqWproCDLsRdbsZNc8lJAnurujzv5ZpjZRQLnJAE3C+wreOdh3QFkqsm+elwnY4ENxuKeALDD6h0s4TCZmgeC1GXCKGxLYpCMBwX08cvMar2wLQ58iJa/03BX/Ka6CCXbr6HOk+e9IfSXlUWK7ayT+FNHXsEnQrmd372zI5oROlt1n0GnEBUXB2MLJxm6Ae7xRmVHNSNJR9ZeV35FeRFv/uCyC0mWK/DD0k7siGaZkv062jlTarYcQJXKHgCak7V0uHzXavQeuBGzNWLNMiVd0DEbG6mZzYVxZtN1bF7GQAs/MVtKftes9r8eWDOLHAdQa/Ur1+Ou2Vyz0tJ+BMVV0BYsCeD7M165HDWHP1ujZb6kWeH909YmuA3LQVjBWtW4VQsb3mC2si3NCCUia+3jbtUMFYMCx2G1VplkxmxPM3IpkgpuBZVaWdsH4+jgSnZnGDU7phn3ioqgd64VpMTVVVFqkI0/r+6I2VHNmJBkzdmGpXG9h7z+I4/S+V0r/0Z1e/Q1i5bCtTMMwzAMwzAMw/ivOPcHsjz041eqjDwAAAAASUVORK5CYII=\" alt=\"2 times, open parenthesis, x cubed plus 2, close parenthesis\"></span>.<p>Choices A and B are incorrect because 4 is not a factor of the term <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAeCAYAAADZ7LXbAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA5ElEQVRIS+1U7RXDIAh0PAZyHHdxFTehCBI/ajWxtr+893gmJuGOg2h2IjhAWlJY9Ijxeh/Q2yoxE1q/l6QFBofwi2pKvFWCGNCBeikBLiwpENuanmSCvKkvrhJFeEs5tRLxDpDyVQllUtY9ZaGzxrfTwsrAUd2ZlPeSQBaVnqs7UyfapEh0lhYSx/dSae2AkKa4V0VOqLiI2eIvenZNR0eJ9O+m0k8QC8YJxJLFgVA/RxZcIjrTOIV+PCIo/x0W9MQu9XlIkCZLEwvhg2qyBb2I3ieC8kTQU2K1+QcHBwcHf4MxL3n9Lqk+Ao56AAAAAElFTkSuQmCC\" alt=\"2 x cubed\"></span>. Choice C is incorrect and may result from factoring 2 from <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAeCAYAAADZ7LXbAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA5ElEQVRIS+1U7RXDIAh0PAZyHHdxFTehCBI/ajWxtr+893gmJuGOg2h2IjhAWlJY9Ijxeh/Q2yoxE1q/l6QFBofwi2pKvFWCGNCBeikBLiwpENuanmSCvKkvrhJFeEs5tRLxDpDyVQllUtY9ZaGzxrfTwsrAUd2ZlPeSQBaVnqs7UyfapEh0lhYSx/dSae2AkKa4V0VOqLiI2eIvenZNR0eJ9O+m0k8QC8YJxJLFgVA/RxZcIjrTOIV+PCIo/x0W9MQu9XlIkCZLEwvhg2qyBb2I3ieC8kTQU2K1+QcHBwcHf4MxL3n9Lqk+Ao56AAAAAElFTkSuQmCC\" alt=\"2 x cubed \"></span> but not from 4.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959626,"updateDate":1691007959626}$SATQ$::jsonb, 1691007959626, 1691007959626),
    ($SATQ$2992ac30$SATQ$, $SATQ$2812bef6-4e2d-4eae-b382-81985e9c9a12$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mrow><mn>260</mn></mrow><msup><mfenced><mrow><mn>1.04</mn></mrow></mfenced><mrow><mfenced><mfrac><mrow><mn>6</mn></mrow><mrow><mn>4</mn></mrow></mfrac></mfenced><mi>t</mi></mrow></msup></math></p>
<p style="text-align: left;">The function <math alttext="upper P"><mi>P</mi>
</math> models the population, in thousands, of a certain city <math alttext="t"><mi>t</mi>
</math> years after&nbsp;<math alttext="2003"><mn>2003</mn>
</math>. According to the model, the population is predicted to increase by&nbsp;<math alttext="4 percent sign"><mrow><mn>4</mn></mrow><mo>%</mo></math> every <math alttext="n"><mi>n</mi>
</math> months. What is the value of <math alttext="n"><mi>n</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"65dcddb1-dc32-46b6-ab46-784ab840317c","content":"<p><math alttext=\"8\"><mn>8</mn>\n</math></p>"},{"id":"6acdf2ca-6f83-4fe7-9fa8-be9656e63e90","content":"<p><math alttext=\"12\"><mn>12</mn>\n</math></p>"},{"id":"02046d0a-5448-4b4e-bd95-0d1923600a6e","content":"<p><math alttext=\"18\"><mn>18</mn>\n</math></p>"},{"id":"e0dafb89-8d03-4c34-b56b-27b03c36b72e","content":"<p><math alttext=\"72\"><mn>72</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["65dcddb1-dc32-46b6-ab46-784ab840317c"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It&rsquo;s given that the function <math alttext="upper P"><mi>P</mi>
</math> models the population, in thousands, of a certain city <math alttext="t"><mi>t</mi>
</math> years after <math alttext="2003"><mn>2003</mn></math>. The value of the base of the given exponential function, <math alttext="1.04"><mn>1.04</mn>
</math>, corresponds to an increase of <math alttext="4 percent sign"><mn>4</mn><mo>%</mo></math> for every increase of <math alttext="1"><mn>1</mn>
</math> in the exponent, <math alttext="left parenthesis six fourths right parenthesis t"><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></math>. If the exponent is equal to <math alttext="0"><mn>0</mn>
</math>, then <math alttext="left parenthesis six fourths right parenthesis t equals 0"><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi><mo>=</mo><mn>0</mn></math>. Multiplying both sides of this equation by <math alttext="left parenthesis four sixths right parenthesis"><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced></math> yields <math alttext="t equals 0"><mrow>
	<mi>t</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>. If the exponent is equal to <math alttext="1"><mn>1</mn>
</math>, then <math alttext="left parenthesis six fourths right parenthesis t equals 1"><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi><mo>=</mo><mn>1</mn></math>. Multiplying both sides of this equation by <math alttext="left parenthesis four sixths right parenthesis"><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced></math> yields <math alttext="t equals four sixths"><mi>t</mi><mo>=</mo><mfrac><mn>4</mn><mn>6</mn></mfrac></math>, or <math alttext="t equals two thirds"><mrow>
	<mi>t</mi>
	<mo>=</mo>
	<mfrac>
		<mn>2</mn>
		<mn>3</mn>
	</mfrac>
</mrow>
</math>. Therefore, the population is predicted to increase by&nbsp;<math alttext="4 percent sign"><mn>4</mn><mo>%</mo></math> every <math alttext="two thirds"><mfrac>
	<mn>2</mn>
	<mn>3</mn>
</mfrac>
</math> of a year. It&rsquo;s given that the population is predicted to increase by <math alttext="4 percent sign"><mn>4</mn><mo>%</mo></math> every <math alttext="n"><mi>n</mi>
</math> months. Since there are <math alttext="12"><mn>12</mn>
</math> months in a year, <math alttext="two thirds"><mfrac>
	<mn>2</mn>
	<mn>3</mn>
</mfrac>
</math> of a year is equivalent to <math alttext="left parenthesis two thirds right parenthesis left parenthesis 12 right parenthesis"><mfenced><mfrac><mn>2</mn><mn>3</mn></mfrac></mfenced><mfenced><mn>12</mn></mfenced></math>, or <math alttext="8"><mn>8</mn>
</math>, months. Therefore, the value of <math alttext="n"><mi>n</mi>
</math> is <math alttext="8"><mn>8</mn>
</math>.</p>
<p style="text-align: left;">Choice B is incorrect. This is the number of months in which the population is predicted to increase by <math alttext="4 percent sign"><mn>4</mn><mo>%</mo></math> according to the model <math alttext="upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript t"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mi>t</mi></msup></math>, not <math alttext="upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>.</p>
<p style="text-align: left;">Choice C is incorrect. This is the number of months in which the population is predicted to increase by <math alttext="4 percent sign"><mn>4</mn><mo>%</mo></math> according to the model <math alttext="upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis four sixths right parenthesis t"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>, not <math alttext="upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>.</p>
<p style="text-align: left;">Choice D is incorrect. This is the number of months in which the population is predicted to increase by <math alttext="4 percent sign"><mn>4</mn><mo>%</mo></math>&nbsp;according to the model <math alttext="upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis one sixth right parenthesis t"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>1</mn><mn>6</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>, not <math alttext="upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"2992ac30","external_id":"2812bef6-4e2d-4eae-b382-81985e9c9a12","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"2be42a64-437d-48dc-a630-48ddb5587164","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mrow><mn>260</mn></mrow><msup><mfenced><mrow><mn>1.04</mn></mrow></mfenced><mrow><mfenced><mfrac><mrow><mn>6</mn></mrow><mrow><mn>4</mn></mrow></mfrac></mfenced><mi>t</mi></mrow></msup></math></p>\n<p style=\"text-align: left;\">The function <math alttext=\"upper P\"><mi>P</mi>\n</math> models the population, in thousands, of a certain city <math alttext=\"t\"><mi>t</mi>\n</math> years after&nbsp;<math alttext=\"2003\"><mn>2003</mn>\n</math>. According to the model, the population is predicted to increase by&nbsp;<math alttext=\"4 percent sign\"><mrow><mn>4</mn></mrow><mo>%</mo></math> every <math alttext=\"n\"><mi>n</mi>\n</math> months. What is the value of <math alttext=\"n\"><mi>n</mi>\n</math>?</p>","answerOptions":[{"id":"65dcddb1-dc32-46b6-ab46-784ab840317c","content":"<p><math alttext=\"8\"><mn>8</mn>\n</math></p>"},{"id":"6acdf2ca-6f83-4fe7-9fa8-be9656e63e90","content":"<p><math alttext=\"12\"><mn>12</mn>\n</math></p>"},{"id":"02046d0a-5448-4b4e-bd95-0d1923600a6e","content":"<p><math alttext=\"18\"><mn>18</mn>\n</math></p>"},{"id":"e0dafb89-8d03-4c34-b56b-27b03c36b72e","content":"<p><math alttext=\"72\"><mn>72</mn>\n</math></p>"}],"keys":["65dcddb1-dc32-46b6-ab46-784ab840317c"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It&rsquo;s given that the function <math alttext=\"upper P\"><mi>P</mi>\n</math> models the population, in thousands, of a certain city <math alttext=\"t\"><mi>t</mi>\n</math> years after <math alttext=\"2003\"><mn>2003</mn></math>. The value of the base of the given exponential function, <math alttext=\"1.04\"><mn>1.04</mn>\n</math>, corresponds to an increase of <math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> for every increase of <math alttext=\"1\"><mn>1</mn>\n</math> in the exponent, <math alttext=\"left parenthesis six fourths right parenthesis t\"><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></math>. If the exponent is equal to <math alttext=\"0\"><mn>0</mn>\n</math>, then <math alttext=\"left parenthesis six fourths right parenthesis t equals 0\"><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi><mo>=</mo><mn>0</mn></math>. Multiplying both sides of this equation by <math alttext=\"left parenthesis four sixths right parenthesis\"><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced></math> yields <math alttext=\"t equals 0\"><mrow>\n\t<mi>t</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. If the exponent is equal to <math alttext=\"1\"><mn>1</mn>\n</math>, then <math alttext=\"left parenthesis six fourths right parenthesis t equals 1\"><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi><mo>=</mo><mn>1</mn></math>. Multiplying both sides of this equation by <math alttext=\"left parenthesis four sixths right parenthesis\"><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced></math> yields <math alttext=\"t equals four sixths\"><mi>t</mi><mo>=</mo><mfrac><mn>4</mn><mn>6</mn></mfrac></math>, or <math alttext=\"t equals two thirds\"><mrow>\n\t<mi>t</mi>\n\t<mo>=</mo>\n\t<mfrac>\n\t\t<mn>2</mn>\n\t\t<mn>3</mn>\n\t</mfrac>\n</mrow>\n</math>. Therefore, the population is predicted to increase by&nbsp;<math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> every <math alttext=\"two thirds\"><mfrac>\n\t<mn>2</mn>\n\t<mn>3</mn>\n</mfrac>\n</math> of a year. It&rsquo;s given that the population is predicted to increase by <math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> every <math alttext=\"n\"><mi>n</mi>\n</math> months. Since there are <math alttext=\"12\"><mn>12</mn>\n</math> months in a year, <math alttext=\"two thirds\"><mfrac>\n\t<mn>2</mn>\n\t<mn>3</mn>\n</mfrac>\n</math> of a year is equivalent to <math alttext=\"left parenthesis two thirds right parenthesis left parenthesis 12 right parenthesis\"><mfenced><mfrac><mn>2</mn><mn>3</mn></mfrac></mfenced><mfenced><mn>12</mn></mfenced></math>, or <math alttext=\"8\"><mn>8</mn>\n</math>, months. Therefore, the value of <math alttext=\"n\"><mi>n</mi>\n</math> is <math alttext=\"8\"><mn>8</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the number of months in which the population is predicted to increase by <math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> according to the model <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mi>t</mi></msup></math>, not <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This is the number of months in which the population is predicted to increase by <math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> according to the model <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis four sixths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>, not <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This is the number of months in which the population is predicted to increase by <math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math>&nbsp;according to the model <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis one sixth right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>1</mn><mn>6</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>, not <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357398,"pPcc":"SAT#P","questionId":"2992ac30","skill_cd":"P.C.","score_band_range_cd":7,"skill_desc":"Nonlinear functions","createDate":1730147357398,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"2812bef6-4e2d-4eae-b382-81985e9c9a12","primary_class_cd":"P","uId":"2be42a64-437d-48dc-a630-48ddb5587164","difficulty":"H"},"raw_detail":{"answerOptions":[{"content":"<p><math alttext=\"8\"><mn>8</mn>\n</math></p>","id":"65dcddb1-dc32-46b6-ab46-784ab840317c"},{"content":"<p><math alttext=\"12\"><mn>12</mn>\n</math></p>","id":"6acdf2ca-6f83-4fe7-9fa8-be9656e63e90"},{"content":"<p><math alttext=\"18\"><mn>18</mn>\n</math></p>","id":"02046d0a-5448-4b4e-bd95-0d1923600a6e"},{"content":"<p><math alttext=\"72\"><mn>72</mn>\n</math></p>","id":"e0dafb89-8d03-4c34-b56b-27b03c36b72e"}],"externalid":"2812bef6-4e2d-4eae-b382-81985e9c9a12","keys":["65dcddb1-dc32-46b6-ab46-784ab840317c"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It&rsquo;s given that the function <math alttext=\"upper P\"><mi>P</mi>\n</math> models the population, in thousands, of a certain city <math alttext=\"t\"><mi>t</mi>\n</math> years after <math alttext=\"2003\"><mn>2003</mn></math>. The value of the base of the given exponential function, <math alttext=\"1.04\"><mn>1.04</mn>\n</math>, corresponds to an increase of <math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> for every increase of <math alttext=\"1\"><mn>1</mn>\n</math> in the exponent, <math alttext=\"left parenthesis six fourths right parenthesis t\"><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></math>. If the exponent is equal to <math alttext=\"0\"><mn>0</mn>\n</math>, then <math alttext=\"left parenthesis six fourths right parenthesis t equals 0\"><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi><mo>=</mo><mn>0</mn></math>. Multiplying both sides of this equation by <math alttext=\"left parenthesis four sixths right parenthesis\"><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced></math> yields <math alttext=\"t equals 0\"><mrow>\n\t<mi>t</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. If the exponent is equal to <math alttext=\"1\"><mn>1</mn>\n</math>, then <math alttext=\"left parenthesis six fourths right parenthesis t equals 1\"><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi><mo>=</mo><mn>1</mn></math>. Multiplying both sides of this equation by <math alttext=\"left parenthesis four sixths right parenthesis\"><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced></math> yields <math alttext=\"t equals four sixths\"><mi>t</mi><mo>=</mo><mfrac><mn>4</mn><mn>6</mn></mfrac></math>, or <math alttext=\"t equals two thirds\"><mrow>\n\t<mi>t</mi>\n\t<mo>=</mo>\n\t<mfrac>\n\t\t<mn>2</mn>\n\t\t<mn>3</mn>\n\t</mfrac>\n</mrow>\n</math>. Therefore, the population is predicted to increase by&nbsp;<math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> every <math alttext=\"two thirds\"><mfrac>\n\t<mn>2</mn>\n\t<mn>3</mn>\n</mfrac>\n</math> of a year. It&rsquo;s given that the population is predicted to increase by <math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> every <math alttext=\"n\"><mi>n</mi>\n</math> months. Since there are <math alttext=\"12\"><mn>12</mn>\n</math> months in a year, <math alttext=\"two thirds\"><mfrac>\n\t<mn>2</mn>\n\t<mn>3</mn>\n</mfrac>\n</math> of a year is equivalent to <math alttext=\"left parenthesis two thirds right parenthesis left parenthesis 12 right parenthesis\"><mfenced><mfrac><mn>2</mn><mn>3</mn></mfrac></mfenced><mfenced><mn>12</mn></mfenced></math>, or <math alttext=\"8\"><mn>8</mn>\n</math>, months. Therefore, the value of <math alttext=\"n\"><mi>n</mi>\n</math> is <math alttext=\"8\"><mn>8</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the number of months in which the population is predicted to increase by <math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> according to the model <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mi>t</mi></msup></math>, not <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This is the number of months in which the population is predicted to increase by <math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> according to the model <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis four sixths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>, not <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This is the number of months in which the population is predicted to increase by <math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math>&nbsp;according to the model <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis one sixth right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>1</mn><mn>6</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>, not <math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>260</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>6</mn><mn>4</mn></mfrac></mfenced><mi>t</mi></mrow></msup></math>.</p>","stem":"<p style=\"text-align: center;\"><math alttext=\"upper P left parenthesis t right parenthesis equals 260 left parenthesis 1.04 right parenthesis Superscript left parenthesis six fourths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mrow><mn>260</mn></mrow><msup><mfenced><mrow><mn>1.04</mn></mrow></mfenced><mrow><mfenced><mfrac><mrow><mn>6</mn></mrow><mrow><mn>4</mn></mrow></mfrac></mfenced><mi>t</mi></mrow></msup></math></p>\n<p style=\"text-align: left;\">The function <math alttext=\"upper P\"><mi>P</mi>\n</math> models the population, in thousands, of a certain city <math alttext=\"t\"><mi>t</mi>\n</math> years after&nbsp;<math alttext=\"2003\"><mn>2003</mn>\n</math>. According to the model, the population is predicted to increase by&nbsp;<math alttext=\"4 percent sign\"><mrow><mn>4</mn></mrow><mo>%</mo></math> every <math alttext=\"n\"><mi>n</mi>\n</math> months. What is the value of <math alttext=\"n\"><mi>n</mi>\n</math>?</p>","type":"mcq","correct_answer":["A"]},"createDate":1730147357398,"updateDate":1730147357398}$SATQ$::jsonb, 1730147357398, 1730147357398),
    ($SATQ$29ed5d39$SATQ$, $SATQ$0de0c801-a394-401e-86d9-293cbb485a91$SATQ$::uuid, $SATQ$50601f01-e6b0-4ad2-ac93-c8dd0048b73f$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="p equals 20 plus StartFraction 16 Over n EndFraction"><mrow>
	<mi>p</mi>
	<mo>=</mo>
	<mrow>
		<mn>20</mn>
		<mo>+</mo>
		<mrow>
			<mfrac>
				<mn>16</mn>
				<mi>n</mi>
			</mfrac>
		</mrow>
	</mrow>
</mrow>
</math></p>
<p>The given equation relates the numbers <math alttext="p"><mi>p</mi>
</math> and <math alttext="n"><mi>n</mi>
</math>, where <math alttext="n"><mi>n</mi>
</math> is not equal to <math alttext="0"><mn>0</mn>
</math> and <math alttext="p greater than 20"><mi>p</mi><mo>&#62;</mo><mrow><mn>20</mn></mrow></math>. Which equation correctly expresses <math alttext="n"><mi>n</mi>
</math> in terms of <math alttext="p"><mi>p</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"ae1c5239-988a-4d25-bea2-a7356c99bce5","content":"<p><math alttext=\"n equals StartFraction p minus 20 Over 16 EndFraction\"><mi>n</mi><mo>=</mo><mfrac><mrow><mi>p</mi><mo>-</mo><mrow><mn>20</mn></mrow></mrow><mrow><mn>16</mn></mrow></mfrac></math></p>"},{"id":"85f2aeef-a93d-4dcb-bb98-b4d1c3951729","content":"<p><math alttext=\"n equals StartFraction p Over 16 EndFraction plus 20\"><mrow>\n\t<mi>n</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mfrac>\n\t\t\t\t<mi>p</mi>\n\t\t\t\t<mn>16</mn>\n\t\t\t</mfrac>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>20</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"9a255eda-7b1e-4adb-80f9-0b6581c31c57","content":"<p><math alttext=\"n equals StartFraction p Over 16 EndFraction minus 20\"><mrow>\n\t<mi>n</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mfrac>\n\t\t\t\t<mi>p</mi>\n\t\t\t\t<mn>16</mn>\n\t\t\t</mfrac>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>20</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"b6d71ee6-fc56-45da-9735-6b39ae7cfaf3","content":"<p><math alttext=\"n equals StartFraction 16 Over p minus 20 EndFraction\"><mrow>\n\t<mi>n</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mfrac>\n\t\t\t<mn>16</mn>\n\t\t\t<mrow>\n\t\t\t\t<mi>p</mi>\n\t\t\t\t<mo>-</mo>\n\t\t\t\t<mn>20</mn>\n\t\t\t</mrow>\n\t\t</mfrac>\n\t</mrow>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["b6d71ee6-fc56-45da-9735-6b39ae7cfaf3"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. To express <math alttext="n"><mi>n</mi>
</math> in terms of <math alttext="p"><mi>p</mi>
</math>, the given equation must be solved for <math alttext="n"><mi>n</mi>
</math>. Subtracting <math alttext="9"><mn>9</mn>
</math> from both sides of the given equation yields <math alttext="p minus 9 equals StartFraction 14 Over n EndFraction"><mi>p</mi><mo>-</mo><mn>9</mn><mo>=</mo><mfrac><mn>14</mn><mi>n</mi></mfrac></math>. Since <math alttext="n"><mi>n</mi>
</math> is not equal to <math alttext="0"><mn>0</mn>
</math>, multiplying both sides of this equation by <math alttext="n"><mi>n</mi>
</math> yields&nbsp;<math alttext="left parenthesis p minus 9 right parenthesis left parenthesis n right parenthesis equals 14"><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>n</mi></mfenced><mo>=</mo><mn>14</mn></math>. It's given that <math alttext="p greater than 9"><mi>p</mi><mo>&gt;</mo><mn>9</mn></math>, which means <math alttext="p minus 9"><mrow>
	<mi>p</mi>
	<mo>-</mo>
	<mn>9</mn>
</mrow>
</math> is not equal to <math alttext="0"><mn>0</mn>
</math>. Therefore, dividing both sides of&nbsp;<math alttext="left parenthesis p minus 9 right parenthesis left parenthesis n right parenthesis equals 14"><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>n</mi></mfenced><mo>=</mo><mn>14</mn></math> by <math alttext="left parenthesis p minus 9 right parenthesis"><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced></math> yields&nbsp;<math alttext="StartFraction left parenthesis p minus 9 right parenthesis left parenthesis n right parenthesis Over p minus 9 EndFraction equals StartFraction 14 Over p minus 9 EndFraction"><mfrac><mrow><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>n</mi></mfenced></mrow><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfrac><mo>=</mo><mfrac><mn>14</mn><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfrac></math>, or&nbsp;<math alttext="n equals StartFraction 14 Over p minus 9 EndFraction"><mi>n</mi><mo>=</mo><mfrac><mn>14</mn><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfrac></math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"29ed5d39","external_id":"0de0c801-a394-401e-86d9-293cbb485a91","disclosed_item_id":null,"source":"qbank","vaultid":"50601f01-e6b0-4ad2-ac93-c8dd0048b73f","uId":"84ec27da-3dc6-438f-96c5-4186421a7722","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"p equals 20 plus StartFraction 16 Over n EndFraction\"><mrow>\n\t<mi>p</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>20</mn>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mfrac>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<mi>n</mi>\n\t\t\t</mfrac>\n\t\t</mrow>\n\t</mrow>\n</mrow>\n</math></p>\n<p>The given equation relates the numbers <math alttext=\"p\"><mi>p</mi>\n</math> and <math alttext=\"n\"><mi>n</mi>\n</math>, where <math alttext=\"n\"><mi>n</mi>\n</math> is not equal to <math alttext=\"0\"><mn>0</mn>\n</math> and <math alttext=\"p greater than 20\"><mi>p</mi><mo>&#62;</mo><mrow><mn>20</mn></mrow></math>. Which equation correctly expresses <math alttext=\"n\"><mi>n</mi>\n</math> in terms of <math alttext=\"p\"><mi>p</mi>\n</math>?</p>","answerOptions":[{"id":"ae1c5239-988a-4d25-bea2-a7356c99bce5","content":"<p><math alttext=\"n equals StartFraction p minus 20 Over 16 EndFraction\"><mi>n</mi><mo>=</mo><mfrac><mrow><mi>p</mi><mo>-</mo><mrow><mn>20</mn></mrow></mrow><mrow><mn>16</mn></mrow></mfrac></math></p>"},{"id":"85f2aeef-a93d-4dcb-bb98-b4d1c3951729","content":"<p><math alttext=\"n equals StartFraction p Over 16 EndFraction plus 20\"><mrow>\n\t<mi>n</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mfrac>\n\t\t\t\t<mi>p</mi>\n\t\t\t\t<mn>16</mn>\n\t\t\t</mfrac>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>20</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"9a255eda-7b1e-4adb-80f9-0b6581c31c57","content":"<p><math alttext=\"n equals StartFraction p Over 16 EndFraction minus 20\"><mrow>\n\t<mi>n</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mfrac>\n\t\t\t\t<mi>p</mi>\n\t\t\t\t<mn>16</mn>\n\t\t\t</mfrac>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>20</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"b6d71ee6-fc56-45da-9735-6b39ae7cfaf3","content":"<p><math alttext=\"n equals StartFraction 16 Over p minus 20 EndFraction\"><mrow>\n\t<mi>n</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mfrac>\n\t\t\t<mn>16</mn>\n\t\t\t<mrow>\n\t\t\t\t<mi>p</mi>\n\t\t\t\t<mo>-</mo>\n\t\t\t\t<mn>20</mn>\n\t\t\t</mrow>\n\t\t</mfrac>\n\t</mrow>\n</mrow>\n</math></p>"}],"keys":["b6d71ee6-fc56-45da-9735-6b39ae7cfaf3"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. To express <math alttext=\"n\"><mi>n</mi>\n</math> in terms of <math alttext=\"p\"><mi>p</mi>\n</math>, the given equation must be solved for <math alttext=\"n\"><mi>n</mi>\n</math>. Subtracting <math alttext=\"9\"><mn>9</mn>\n</math> from both sides of the given equation yields <math alttext=\"p minus 9 equals StartFraction 14 Over n EndFraction\"><mi>p</mi><mo>-</mo><mn>9</mn><mo>=</mo><mfrac><mn>14</mn><mi>n</mi></mfrac></math>. Since <math alttext=\"n\"><mi>n</mi>\n</math> is not equal to <math alttext=\"0\"><mn>0</mn>\n</math>, multiplying both sides of this equation by <math alttext=\"n\"><mi>n</mi>\n</math> yields&nbsp;<math alttext=\"left parenthesis p minus 9 right parenthesis left parenthesis n right parenthesis equals 14\"><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>n</mi></mfenced><mo>=</mo><mn>14</mn></math>. It's given that <math alttext=\"p greater than 9\"><mi>p</mi><mo>&gt;</mo><mn>9</mn></math>, which means <math alttext=\"p minus 9\"><mrow>\n\t<mi>p</mi>\n\t<mo>-</mo>\n\t<mn>9</mn>\n</mrow>\n</math> is not equal to <math alttext=\"0\"><mn>0</mn>\n</math>. Therefore, dividing both sides of&nbsp;<math alttext=\"left parenthesis p minus 9 right parenthesis left parenthesis n right parenthesis equals 14\"><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>n</mi></mfenced><mo>=</mo><mn>14</mn></math> by <math alttext=\"left parenthesis p minus 9 right parenthesis\"><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced></math> yields&nbsp;<math alttext=\"StartFraction left parenthesis p minus 9 right parenthesis left parenthesis n right parenthesis Over p minus 9 EndFraction equals StartFraction 14 Over p minus 9 EndFraction\"><mfrac><mrow><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>n</mi></mfenced></mrow><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfrac><mo>=</mo><mfrac><mn>14</mn><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfrac></math>, or&nbsp;<math alttext=\"n equals StartFraction 14 Over p minus 9 EndFraction\"><mi>n</mi><mo>=</mo><mfrac><mn>14</mn><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfrac></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959824,"pPcc":"SAT#P","questionId":"29ed5d39","skill_cd":"P.B.","score_band_range_cd":5,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1691007959824,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"0de0c801-a394-401e-86d9-293cbb485a91","primary_class_cd":"P","uId":"84ec27da-3dc6-438f-96c5-4186421a7722","difficulty":"M"},"raw_detail":{"keys":["b6d71ee6-fc56-45da-9735-6b39ae7cfaf3"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. To express <math alttext=\"n\"><mi>n</mi>\n</math> in terms of <math alttext=\"p\"><mi>p</mi>\n</math>, the given equation must be solved for <math alttext=\"n\"><mi>n</mi>\n</math>. Subtracting <math alttext=\"9\"><mn>9</mn>\n</math> from both sides of the given equation yields <math alttext=\"p minus 9 equals StartFraction 14 Over n EndFraction\"><mi>p</mi><mo>-</mo><mn>9</mn><mo>=</mo><mfrac><mn>14</mn><mi>n</mi></mfrac></math>. Since <math alttext=\"n\"><mi>n</mi>\n</math> is not equal to <math alttext=\"0\"><mn>0</mn>\n</math>, multiplying both sides of this equation by <math alttext=\"n\"><mi>n</mi>\n</math> yields&nbsp;<math alttext=\"left parenthesis p minus 9 right parenthesis left parenthesis n right parenthesis equals 14\"><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>n</mi></mfenced><mo>=</mo><mn>14</mn></math>. It's given that <math alttext=\"p greater than 9\"><mi>p</mi><mo>&gt;</mo><mn>9</mn></math>, which means <math alttext=\"p minus 9\"><mrow>\n\t<mi>p</mi>\n\t<mo>-</mo>\n\t<mn>9</mn>\n</mrow>\n</math> is not equal to <math alttext=\"0\"><mn>0</mn>\n</math>. Therefore, dividing both sides of&nbsp;<math alttext=\"left parenthesis p minus 9 right parenthesis left parenthesis n right parenthesis equals 14\"><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>n</mi></mfenced><mo>=</mo><mn>14</mn></math> by <math alttext=\"left parenthesis p minus 9 right parenthesis\"><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced></math> yields&nbsp;<math alttext=\"StartFraction left parenthesis p minus 9 right parenthesis left parenthesis n right parenthesis Over p minus 9 EndFraction equals StartFraction 14 Over p minus 9 EndFraction\"><mfrac><mrow><mfenced><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>n</mi></mfenced></mrow><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfrac><mo>=</mo><mfrac><mn>14</mn><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfrac></math>, or&nbsp;<math alttext=\"n equals StartFraction 14 Over p minus 9 EndFraction\"><mi>n</mi><mo>=</mo><mfrac><mn>14</mn><mrow><mi>p</mi><mo>-</mo><mn>9</mn></mrow></mfrac></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"p equals 20 plus StartFraction 16 Over n EndFraction\"><mrow>\n\t<mi>p</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>20</mn>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mfrac>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<mi>n</mi>\n\t\t\t</mfrac>\n\t\t</mrow>\n\t</mrow>\n</mrow>\n</math></p>\n<p>The given equation relates the numbers <math alttext=\"p\"><mi>p</mi>\n</math> and <math alttext=\"n\"><mi>n</mi>\n</math>, where <math alttext=\"n\"><mi>n</mi>\n</math> is not equal to <math alttext=\"0\"><mn>0</mn>\n</math> and <math alttext=\"p greater than 20\"><mi>p</mi><mo>&#62;</mo><mrow><mn>20</mn></mrow></math>. Which equation correctly expresses <math alttext=\"n\"><mi>n</mi>\n</math> in terms of <math alttext=\"p\"><mi>p</mi>\n</math>?</p>","externalid":"0de0c801-a394-401e-86d9-293cbb485a91","templateid":"f8b375f5-4d56-4a37-80a0-e8877789bd43","vaultid":"50601f01-e6b0-4ad2-ac93-c8dd0048b73f","type":"mcq","answerOptions":[{"id":"ae1c5239-988a-4d25-bea2-a7356c99bce5","content":"<p><math alttext=\"n equals StartFraction p minus 20 Over 16 EndFraction\"><mi>n</mi><mo>=</mo><mfrac><mrow><mi>p</mi><mo>-</mo><mrow><mn>20</mn></mrow></mrow><mrow><mn>16</mn></mrow></mfrac></math></p>"},{"id":"85f2aeef-a93d-4dcb-bb98-b4d1c3951729","content":"<p><math alttext=\"n equals StartFraction p Over 16 EndFraction plus 20\"><mrow>\n\t<mi>n</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mfrac>\n\t\t\t\t<mi>p</mi>\n\t\t\t\t<mn>16</mn>\n\t\t\t</mfrac>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>20</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"9a255eda-7b1e-4adb-80f9-0b6581c31c57","content":"<p><math alttext=\"n equals StartFraction p Over 16 EndFraction minus 20\"><mrow>\n\t<mi>n</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mfrac>\n\t\t\t\t<mi>p</mi>\n\t\t\t\t<mn>16</mn>\n\t\t\t</mfrac>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>20</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"b6d71ee6-fc56-45da-9735-6b39ae7cfaf3","content":"<p><math alttext=\"n equals StartFraction 16 Over p minus 20 EndFraction\"><mrow>\n\t<mi>n</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mfrac>\n\t\t\t<mn>16</mn>\n\t\t\t<mrow>\n\t\t\t\t<mi>p</mi>\n\t\t\t\t<mo>-</mo>\n\t\t\t\t<mn>20</mn>\n\t\t\t</mrow>\n\t\t</mfrac>\n\t</mrow>\n</mrow>\n</math></p>"}],"correct_answer":["D"]},"createDate":1691007959824,"updateDate":1691007959824}$SATQ$::jsonb, 1691007959824, 1691007959824),
    ($SATQ$2b1a27cd$SATQ$, $SATQ$2da8e72d-a24c-49d7-a9ed-5f47b4fecf08$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: left;">The quadratic function <math alttext="g"><mi>g</mi>
</math> models the depth, in meters, below the surface of the water of a seal <math alttext="t"><mi>t</mi>
</math> minutes after the seal entered the water during a dive. The function estimates that the seal reached its maximum depth of <math alttext="302.4"><mn>302.4</mn>
</math> meters <math alttext="6"><mn>6</mn>
</math> minutes after it entered the water and then reached the surface of the water <math alttext="12"><mn>12</mn>
</math> minutes after it entered the water. Based on the function, what was the estimated depth, to the nearest meter, of the seal <math alttext="10"><mn>10</mn>
</math> minutes after it entered the water?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["168"]$SATQ$::jsonb, $SATQ$["168"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="168"><mn>168</mn>
</math>. The quadratic function <math alttext="g"><mi>g</mi>
</math> gives the estimated depth of the seal, <math alttext="g left parenthesis t right parenthesis"><mi>g</mi><mfenced><mi>t</mi></mfenced></math>, in meters, <math alttext="t"><mi>t</mi>
</math> minutes after the seal enters the water. It's given that function <math alttext="g"><mi>g</mi>
</math> estimates that the seal reached its maximum depth of <math alttext="302.4"><mn>302.4</mn>
</math> meters <math alttext="6"><mn>6</mn>
</math> minutes after it entered the water. Therefore, function <math alttext="g"><mi>g</mi>
</math> can be expressed in vertex form as <math alttext="g left parenthesis t right parenthesis equals a left parenthesis t minus 6 right parenthesis squared plus 302.4"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, where <math alttext="a"><mi>a</mi>
</math> is a constant. Since it's also given that the seal reached the surface of the water after <math alttext="12"><mn>12</mn>
</math> minutes, <math alttext="g left parenthesis 12 right parenthesis equals 0"><mi>g</mi><mfenced><mn>12</mn></mfenced><mo>=</mo><mn>0</mn></math>. Substituting <math alttext="12"><mn>12</mn>
</math> for <math alttext="t"><mi>t</mi>
</math> and <math alttext="0"><mn>0</mn>
</math> for <math alttext="g left parenthesis t right parenthesis"><mi>g</mi><mfenced><mi>t</mi></mfenced></math> in <math alttext="g left parenthesis t right parenthesis equals a left parenthesis t minus 6 right parenthesis squared plus 302.4"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math> yields <math alttext="0 equals a left parenthesis 12 minus 6 right parenthesis squared plus 302.4"><mn>0</mn><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mn>12</mn><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, or <math alttext="36 a equals negative 302.4"><mn>36</mn><mi>a</mi><mo>=</mo><mo>-</mo><mn>302.4</mn></math>. Dividing both sides of this equation by <math alttext="36"><mn>36</mn>
</math> gives <math alttext="a equals negative 8.4"><mi>a</mi><mo>=</mo><mo>-</mo><mn>8.4</mn></math>. Substituting <math alttext="negative 8.4"><mrow>
<mo>-</mo>
<mn>8.4</mn>
</mrow>
</math> for <math alttext="a"><mi>a</mi>
</math> in <math alttext="g left parenthesis t right parenthesis equals a left parenthesis t minus 6 right parenthesis squared plus 302.4"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math> gives <math alttext="g left parenthesis t right parenthesis equals minus 8.4 left parenthesis t minus 6 right parenthesis squared plus 302.4"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mo>-</mo><mn>8.4</mn><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>. Substituting <math alttext="10"><mn>10</mn>
</math> for <math alttext="t"><mi>t</mi>
</math> in <math alttext="g left parenthesis t right parenthesis"><mi>g</mi><mfenced><mi>t</mi></mfenced></math> gives <math alttext="g left parenthesis 10 right parenthesis equals minus 8.4 left parenthesis 10 minus 6 right parenthesis squared plus 302.4"><mi>g</mi><mfenced><mn>10</mn></mfenced><mo>=</mo><mo>-</mo><mn>8.4</mn><msup><mfenced><mrow><mn>10</mn><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, which is equivalent to <math alttext="g left parenthesis 10 right parenthesis equals minus 8.4 left parenthesis 4 right parenthesis squared plus 302.4"><mi>g</mi><mfenced><mn>10</mn></mfenced><mo>=</mo><mo>-</mo><mn>8.4</mn><msup><mfenced><mn>4</mn></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, or <math alttext="g left parenthesis 10 right parenthesis equals 168"><mi>g</mi><mfenced><mn>10</mn></mfenced><mo>=</mo><mn>168</mn></math>. Therefore, the estimated depth, to the nearest meter, of the seal <math alttext="10"><mn>10</mn>
</math> minutes after it entered the water was <math alttext="168"><mn>168</mn>
</math> meters.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"2b1a27cd","external_id":"2da8e72d-a24c-49d7-a9ed-5f47b4fecf08","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"db2ed84a-d789-4598-a703-e95c28447278","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":7,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: left;\">The quadratic function <math alttext=\"g\"><mi>g</mi>\n</math> models the depth, in meters, below the surface of the water of a seal <math alttext=\"t\"><mi>t</mi>\n</math> minutes after the seal entered the water during a dive. The function estimates that the seal reached its maximum depth of <math alttext=\"302.4\"><mn>302.4</mn>\n</math> meters <math alttext=\"6\"><mn>6</mn>\n</math> minutes after it entered the water and then reached the surface of the water <math alttext=\"12\"><mn>12</mn>\n</math> minutes after it entered the water. Based on the function, what was the estimated depth, to the nearest meter, of the seal <math alttext=\"10\"><mn>10</mn>\n</math> minutes after it entered the water?</p>","answerOptions":[],"keys":["168"],"correct_answer":["168"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"168\"><mn>168</mn>\n</math>. The quadratic function <math alttext=\"g\"><mi>g</mi>\n</math> gives the estimated depth of the seal, <math alttext=\"g left parenthesis t right parenthesis\"><mi>g</mi><mfenced><mi>t</mi></mfenced></math>, in meters, <math alttext=\"t\"><mi>t</mi>\n</math> minutes after the seal enters the water. It's given that function <math alttext=\"g\"><mi>g</mi>\n</math> estimates that the seal reached its maximum depth of <math alttext=\"302.4\"><mn>302.4</mn>\n</math> meters <math alttext=\"6\"><mn>6</mn>\n</math> minutes after it entered the water. Therefore, function <math alttext=\"g\"><mi>g</mi>\n</math> can be expressed in vertex form as <math alttext=\"g left parenthesis t right parenthesis equals a left parenthesis t minus 6 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, where <math alttext=\"a\"><mi>a</mi>\n</math> is a constant. Since it's also given that the seal reached the surface of the water after <math alttext=\"12\"><mn>12</mn>\n</math> minutes, <math alttext=\"g left parenthesis 12 right parenthesis equals 0\"><mi>g</mi><mfenced><mn>12</mn></mfenced><mo>=</mo><mn>0</mn></math>. Substituting <math alttext=\"12\"><mn>12</mn>\n</math> for <math alttext=\"t\"><mi>t</mi>\n</math> and <math alttext=\"0\"><mn>0</mn>\n</math> for <math alttext=\"g left parenthesis t right parenthesis\"><mi>g</mi><mfenced><mi>t</mi></mfenced></math> in <math alttext=\"g left parenthesis t right parenthesis equals a left parenthesis t minus 6 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math> yields <math alttext=\"0 equals a left parenthesis 12 minus 6 right parenthesis squared plus 302.4\"><mn>0</mn><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mn>12</mn><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, or <math alttext=\"36 a equals negative 302.4\"><mn>36</mn><mi>a</mi><mo>=</mo><mo>-</mo><mn>302.4</mn></math>. Dividing both sides of this equation by <math alttext=\"36\"><mn>36</mn>\n</math> gives <math alttext=\"a equals negative 8.4\"><mi>a</mi><mo>=</mo><mo>-</mo><mn>8.4</mn></math>. Substituting <math alttext=\"negative 8.4\"><mrow>\n<mo>-</mo>\n<mn>8.4</mn>\n</mrow>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math> in <math alttext=\"g left parenthesis t right parenthesis equals a left parenthesis t minus 6 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math> gives <math alttext=\"g left parenthesis t right parenthesis equals minus 8.4 left parenthesis t minus 6 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mo>-</mo><mn>8.4</mn><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>. Substituting <math alttext=\"10\"><mn>10</mn>\n</math> for <math alttext=\"t\"><mi>t</mi>\n</math> in <math alttext=\"g left parenthesis t right parenthesis\"><mi>g</mi><mfenced><mi>t</mi></mfenced></math> gives <math alttext=\"g left parenthesis 10 right parenthesis equals minus 8.4 left parenthesis 10 minus 6 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mn>10</mn></mfenced><mo>=</mo><mo>-</mo><mn>8.4</mn><msup><mfenced><mrow><mn>10</mn><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, which is equivalent to <math alttext=\"g left parenthesis 10 right parenthesis equals minus 8.4 left parenthesis 4 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mn>10</mn></mfenced><mo>=</mo><mo>-</mo><mn>8.4</mn><msup><mfenced><mn>4</mn></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, or <math alttext=\"g left parenthesis 10 right parenthesis equals 168\"><mi>g</mi><mfenced><mn>10</mn></mfenced><mo>=</mo><mn>168</mn></math>. Therefore, the estimated depth, to the nearest meter, of the seal <math alttext=\"10\"><mn>10</mn>\n</math> minutes after it entered the water was <math alttext=\"168\"><mn>168</mn>\n</math> meters.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554981,"pPcc":"SAT#P","questionId":"2b1a27cd","skill_cd":"P.C.","score_band_range_cd":7,"skill_desc":"Nonlinear functions","createDate":1743430554981,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"2da8e72d-a24c-49d7-a9ed-5f47b4fecf08","primary_class_cd":"P","uId":"db2ed84a-d789-4598-a703-e95c28447278","difficulty":"H"},"raw_detail":{"type":"spr","stem":"<p style=\"text-align: left;\">The quadratic function <math alttext=\"g\"><mi>g</mi>\n</math> models the depth, in meters, below the surface of the water of a seal <math alttext=\"t\"><mi>t</mi>\n</math> minutes after the seal entered the water during a dive. The function estimates that the seal reached its maximum depth of <math alttext=\"302.4\"><mn>302.4</mn>\n</math> meters <math alttext=\"6\"><mn>6</mn>\n</math> minutes after it entered the water and then reached the surface of the water <math alttext=\"12\"><mn>12</mn>\n</math> minutes after it entered the water. Based on the function, what was the estimated depth, to the nearest meter, of the seal <math alttext=\"10\"><mn>10</mn>\n</math> minutes after it entered the water?</p>","keys":["168"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"168\"><mn>168</mn>\n</math>. The quadratic function <math alttext=\"g\"><mi>g</mi>\n</math> gives the estimated depth of the seal, <math alttext=\"g left parenthesis t right parenthesis\"><mi>g</mi><mfenced><mi>t</mi></mfenced></math>, in meters, <math alttext=\"t\"><mi>t</mi>\n</math> minutes after the seal enters the water. It's given that function <math alttext=\"g\"><mi>g</mi>\n</math> estimates that the seal reached its maximum depth of <math alttext=\"302.4\"><mn>302.4</mn>\n</math> meters <math alttext=\"6\"><mn>6</mn>\n</math> minutes after it entered the water. Therefore, function <math alttext=\"g\"><mi>g</mi>\n</math> can be expressed in vertex form as <math alttext=\"g left parenthesis t right parenthesis equals a left parenthesis t minus 6 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, where <math alttext=\"a\"><mi>a</mi>\n</math> is a constant. Since it's also given that the seal reached the surface of the water after <math alttext=\"12\"><mn>12</mn>\n</math> minutes, <math alttext=\"g left parenthesis 12 right parenthesis equals 0\"><mi>g</mi><mfenced><mn>12</mn></mfenced><mo>=</mo><mn>0</mn></math>. Substituting <math alttext=\"12\"><mn>12</mn>\n</math> for <math alttext=\"t\"><mi>t</mi>\n</math> and <math alttext=\"0\"><mn>0</mn>\n</math> for <math alttext=\"g left parenthesis t right parenthesis\"><mi>g</mi><mfenced><mi>t</mi></mfenced></math> in <math alttext=\"g left parenthesis t right parenthesis equals a left parenthesis t minus 6 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math> yields <math alttext=\"0 equals a left parenthesis 12 minus 6 right parenthesis squared plus 302.4\"><mn>0</mn><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mn>12</mn><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, or <math alttext=\"36 a equals negative 302.4\"><mn>36</mn><mi>a</mi><mo>=</mo><mo>-</mo><mn>302.4</mn></math>. Dividing both sides of this equation by <math alttext=\"36\"><mn>36</mn>\n</math> gives <math alttext=\"a equals negative 8.4\"><mi>a</mi><mo>=</mo><mo>-</mo><mn>8.4</mn></math>. Substituting <math alttext=\"negative 8.4\"><mrow>\n<mo>-</mo>\n<mn>8.4</mn>\n</mrow>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math> in <math alttext=\"g left parenthesis t right parenthesis equals a left parenthesis t minus 6 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math> gives <math alttext=\"g left parenthesis t right parenthesis equals minus 8.4 left parenthesis t minus 6 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mo>-</mo><mn>8.4</mn><msup><mfenced><mrow><mi>t</mi><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>. Substituting <math alttext=\"10\"><mn>10</mn>\n</math> for <math alttext=\"t\"><mi>t</mi>\n</math> in <math alttext=\"g left parenthesis t right parenthesis\"><mi>g</mi><mfenced><mi>t</mi></mfenced></math> gives <math alttext=\"g left parenthesis 10 right parenthesis equals minus 8.4 left parenthesis 10 minus 6 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mn>10</mn></mfenced><mo>=</mo><mo>-</mo><mn>8.4</mn><msup><mfenced><mrow><mn>10</mn><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, which is equivalent to <math alttext=\"g left parenthesis 10 right parenthesis equals minus 8.4 left parenthesis 4 right parenthesis squared plus 302.4\"><mi>g</mi><mfenced><mn>10</mn></mfenced><mo>=</mo><mo>-</mo><mn>8.4</mn><msup><mfenced><mn>4</mn></mfenced><mn>2</mn></msup><mo>+</mo><mn>302.4</mn></math>, or <math alttext=\"g left parenthesis 10 right parenthesis equals 168\"><mi>g</mi><mfenced><mn>10</mn></mfenced><mo>=</mo><mn>168</mn></math>. Therefore, the estimated depth, to the nearest meter, of the seal <math alttext=\"10\"><mn>10</mn>\n</math> minutes after it entered the water was <math alttext=\"168\"><mn>168</mn>\n</math> meters.</p>","externalid":"2da8e72d-a24c-49d7-a9ed-5f47b4fecf08","answerOptions":[],"correct_answer":["168"]},"createDate":1743430554981,"updateDate":1743430554981}$SATQ$::jsonb, 1743430554981, 1743430554981),
    ($SATQ$2b6c12eb$SATQ$, $SATQ$43c1b9bd-91a3-4f33-8ec6-ca10f3f10196$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="275.22pt" version="1.1" viewBox="0 0 287.764248 275.22" width="287.764248pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a curve in the x y plane with the origin labeled O. The x axis ranges from negative 8 to 8. The y axis ranges from negative 8 to 8. Refer to long description.">
 <defs>
  <style type="text/css">
*{stroke-linecap:butt;stroke-linejoin:round;}
  </style>
 </defs>
 <g id="figure_1">
  <g id="patch_1">
   <path d="M -0 275.22 
L 287.764248 275.22 
L 287.764248 0 
L -0 0 
z
" style="fill:none;"></path>
  </g>
  <g id="axes_1">
   <g id="patch_2">
    <path d="M 8.404248 260.46 
L 280.564248 260.46 
L 280.564248 10.98 
L 8.404248 10.98 
z
" style="fill:none;"></path>
   </g>
   <g id="matplotlib.axis_1"></g>
   <g id="matplotlib.axis_2"></g>
  </g>
  <g id="axes_2">
   <g id="patch_3">
    <path d="M 7.2 268.02 
L 276.098496 268.02 
L 276.098496 7.2 
L 7.2 7.2 
z
" style="fill:none;"></path>
   </g>
   <g id="matplotlib.axis_3">
    <g id="xtick_1"></g>
    <g id="xtick_2"></g>
    <g id="xtick_3"></g>
    <g id="xtick_4"></g>
    <g id="xtick_5"></g>
    <g id="xtick_6"></g>
    <g id="xtick_7"></g>
    <g id="xtick_8"></g>
    <g id="xtick_9"></g>
   </g>
   <g id="matplotlib.axis_4">
    <g id="ytick_1"></g>
    <g id="ytick_2"></g>
    <g id="ytick_3"></g>
    <g id="ytick_4"></g>
    <g id="ytick_5"></g>
    <g id="ytick_6"></g>
    <g id="ytick_7"></g>
    <g id="ytick_8"></g>
   </g>
   <g id="LineCollection_1">
    <path clip-path="url(#p77834913a1)" d="M 37.782876 255.11539 
L 37.782876 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 50.897317 255.11539 
L 50.897317 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 64.011758 255.11539 
L 64.011758 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 77.126199 255.11539 
L 77.126199 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 90.24064 255.11539 
L 90.24064 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 103.35508 255.11539 
L 103.35508 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 116.469521 255.11539 
L 116.469521 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 129.583962 255.11539 
L 129.583962 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 155.812844 255.11539 
L 155.812844 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 168.927285 255.11539 
L 168.927285 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 182.041726 255.11539 
L 182.041726 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 195.156167 255.11539 
L 195.156167 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 208.270607 255.11539 
L 208.270607 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 221.385048 255.11539 
L 221.385048 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 234.499489 255.11539 
L 234.499489 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 247.61393 255.11539 
L 247.61393 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 249.869614 
L 252.859706 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 236.755173 
L 252.859706 236.755173 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 223.640732 
L 252.859706 223.640732 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 210.526291 
L 252.859706 210.526291 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 197.41185 
L 252.859706 197.41185 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 184.297409 
L 252.859706 184.297409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 171.182969 
L 252.859706 171.182969 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 158.068528 
L 252.859706 158.068528 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 131.839646 
L 252.859706 131.839646 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 118.725205 
L 252.859706 118.725205 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 105.610764 
L 252.859706 105.610764 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 92.496323 
L 252.859706 92.496323 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 79.381883 
L 252.859706 79.381883 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 66.267442 
L 252.859706 66.267442 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 53.153001 
L 252.859706 53.153001 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p77834913a1)" d="M 32.5371 40.03856 
L 252.859706 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#p77834913a1)" d="M 32.5371 144.954087 
L 258.105483 144.954087 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 255.26462 -129.281463 
L 258.105483 -130.265913 
L 255.26462 -131.250364 
L 255.26462 -129.281463 
L 258.105483 -130.265913 
" id="mafab4a4bce" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p77834913a1)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#mafab4a4bce" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#p77834913a1)" d="M 142.698403 255.11539 
L 142.698403 29.547007 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 143.704311 -242.098754 
L 142.698403 -245.672993 
L 141.692495 -242.098754 
L 143.704311 -242.098754 
L 142.698403 -245.672993 
" id="m3f7e622390" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p77834913a1)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m3f7e622390" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#p77834913a1)" d="M 37.782876 148.819396 
L 37.782876 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 50.897317 148.819396 
L 50.897317 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 64.011758 148.819396 
L 64.011758 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 77.126199 148.819396 
L 77.126199 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 90.24064 148.819396 
L 90.24064 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 103.35508 148.819396 
L 103.35508 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 116.469521 148.819396 
L 116.469521 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 129.583962 148.819396 
L 129.583962 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 155.812844 148.819396 
L 155.812844 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 168.927285 148.819396 
L 168.927285 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 182.041726 148.819396 
L 182.041726 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 195.156167 148.819396 
L 195.156167 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 208.270607 148.819396 
L 208.270607 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 221.385048 148.819396 
L 221.385048 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 234.499489 148.819396 
L 234.499489 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 247.61393 148.819396 
L 247.61393 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#p77834913a1)" d="M 138.833094 249.869614 
L 146.563712 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 236.755173 
L 146.563712 236.755173 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 223.640732 
L 146.563712 223.640732 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 210.526291 
L 146.563712 210.526291 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 197.41185 
L 146.563712 197.41185 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 184.297409 
L 146.563712 184.297409 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 171.182969 
L 146.563712 171.182969 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 158.068528 
L 146.563712 158.068528 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 131.839646 
L 146.563712 131.839646 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 118.725205 
L 146.563712 118.725205 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 105.610764 
L 146.563712 105.610764 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 92.496323 
L 146.563712 92.496323 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 79.381883 
L 146.563712 79.381883 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 66.267442 
L 146.563712 66.267442 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 53.153001 
L 146.563712 53.153001 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p77834913a1)" d="M 138.833094 40.03856 
L 146.563712 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#p77834913a1)" d="M 127.74794 256.164545 
L 127.74794 244.623837 
L 135.616605 244.623837 
L 135.616605 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#p77834913a1)" d="M 119.616987 249.082747 
L 119.616987 253.541657 
L 130.10854 253.541657 
L 130.10854 249.082747 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_1">
    <g clip-path="url(#p77834913a1)">
     <!-- – -->
     <defs>
      <path d="M 2.734375 20.40625 
Q 2.734375 21.390625 3.078125 23.484375 
Q 3.421875 25.59375 4.109375 25.59375 
L 45.609375 25.59375 
Q 46.1875 25.59375 46.1875 24.703125 
Q 46.1875 23.734375 45.3125 20.21875 
Q 45.21875 19.921875 45.0625 19.765625 
Q 44.921875 19.625 44.734375 19.53125 
L 44.625 19.53125 
L 3.328125 19.53125 
Q 3.328125 19.53125 2.9375 19.734375 
Q 2.734375 20.015625 2.734375 20.40625 
z
" id="CrimsonText-Regular-8211"></path>
     </defs>
     <g transform="translate(120.437784 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_2">
    <g clip-path="url(#p77834913a1)">
     <!-- 8 -->
     <defs>
      <path d="M 23.53125 2.640625 
Q 28.421875 2.640625 31.25 5.5625 
Q 34.078125 8.5 34.078125 13.484375 
Q 34.078125 16.3125 32.421875 19.09375 
Q 30.765625 21.875 28.21875 24.015625 
Q 25.6875 26.171875 24.265625 27.140625 
Q 22.859375 28.125 21.578125 28.8125 
Q 21.1875 29 21 29 
Q 20.703125 29 20.609375 28.90625 
Q 16.5 26.375 14.6875 23.1875 
Q 12.890625 20.015625 12.890625 15.328125 
Q 12.890625 9.671875 16.109375 6.15625 
Q 19.34375 2.640625 23.53125 2.640625 
z
M 23.53125 59.375 
Q 19.921875 59.375 17.53125 56.25 
Q 15.140625 53.125 15.140625 48.046875 
Q 15.140625 41.40625 25.296875 35.546875 
Q 25.6875 35.359375 25.875 35.359375 
Q 26.171875 35.359375 26.46875 35.546875 
Q 33.109375 39.9375 33.109375 47.46875 
Q 33.109375 52.046875 30.421875 55.703125 
Q 27.734375 59.375 23.53125 59.375 
z
M 24.125 62.796875 
Q 30.859375 62.796875 35.5 58.734375 
Q 40.140625 54.6875 40.140625 47.953125 
Q 40.140625 40.53125 29.203125 33.59375 
Q 28.515625 33.40625 29.203125 33.015625 
Q 34.28125 30.078125 38.140625 25.625 
Q 42 21.1875 42 16.3125 
Q 42 9.078125 36.375 4.09375 
Q 30.765625 -0.875 23.34375 -0.875 
Q 15.234375 -0.875 10.203125 3.515625 
Q 5.171875 7.90625 5.171875 15.046875 
Q 5.171875 16.3125 5.46875 17.53125 
Q 5.765625 18.75 6.109375 19.71875 
Q 6.453125 20.703125 7.234375 21.828125 
Q 8.015625 22.953125 8.546875 23.6875 
Q 9.078125 24.421875 10.15625 25.390625 
Q 11.234375 26.375 11.71875 26.8125 
Q 12.203125 27.25 13.46875 28.125 
Q 14.75 29 15.09375 29.25 
Q 15.4375 29.5 16.609375 30.28125 
L 17.875 31.0625 
Q 18.359375 31.34375 17.875 31.640625 
Q 14.0625 33.890625 10.984375 37.9375 
Q 7.90625 42 7.90625 46.875 
Q 7.90625 53.125 12.78125 57.953125 
Q 17.671875 62.796875 24.125 62.796875 
z
" id="CrimsonText-Regular-56"></path>
     </defs>
     <g transform="translate(128.264472 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_3">
    <g clip-path="url(#p77834913a1)">
     <!-- 8 -->
     <g transform="translate(128.264472 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#p77834913a1)" d="M 127.74794 229.935664 
L 127.74794 218.394956 
L 135.616605 218.394956 
L 135.616605 229.935664 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#p77834913a1)" d="M 119.616987 222.853866 
L 119.616987 227.312776 
L 130.10854 227.312776 
L 130.10854 222.853866 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_4">
    <g clip-path="url(#p77834913a1)">
     <!-- – -->
     <g transform="translate(120.437784 228.379911)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_5">
    <g clip-path="url(#p77834913a1)">
     <!-- 6 -->
     <defs>
      <path d="M 12.703125 20.515625 
Q 12.703125 13.671875 15.96875 8.4375 
Q 19.234375 3.21875 24.125 3.21875 
Q 28.421875 3.21875 31.640625 6.984375 
Q 34.859375 10.75 34.859375 17 
Q 34.859375 23.640625 31.6875 27.9375 
Q 28.515625 32.234375 22.359375 32.234375 
Q 19.734375 32.234375 17.28125 30.8125 
Q 14.84375 29.390625 14.15625 27.828125 
Q 12.796875 24.703125 12.703125 20.515625 
z
M 22.953125 -0.59375 
Q 14.84375 -0.59375 9.5625 5.703125 
Q 4.296875 12.015625 4.296875 20.3125 
Q 4.296875 27.9375 7.328125 34.96875 
Q 10.359375 42 15.484375 47.3125 
Q 20.609375 52.640625 26.515625 56.59375 
Q 32.421875 60.546875 39.0625 63.1875 
Q 39.65625 63.1875 40.484375 62.109375 
Q 41.3125 61.03125 41.3125 60.546875 
Q 31.453125 56.25 24.5625 50.140625 
Q 17.671875 44.046875 15.046875 34.375 
Q 14.84375 33.40625 15.140625 33.40625 
Q 15.328125 33.5 15.4375 33.59375 
Q 16.796875 34.671875 20.359375 35.9375 
Q 23.921875 37.203125 26.859375 37.203125 
Q 33.6875 37.203125 38.328125 31.484375 
Q 42.96875 25.78125 42.96875 19.046875 
Q 42.96875 10.9375 36.90625 5.171875 
Q 30.859375 -0.59375 22.953125 -0.59375 
z
" id="CrimsonText-Regular-54"></path>
     </defs>
     <g transform="translate(128.264472 228.379911)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_6">
    <g clip-path="url(#p77834913a1)">
     <!-- 6 -->
     <g transform="translate(128.264472 228.379911)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#p77834913a1)" d="M 127.74794 203.706782 
L 127.74794 192.166074 
L 135.616605 192.166074 
L 135.616605 203.706782 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#p77834913a1)" d="M 119.616987 196.624984 
L 119.616987 201.083894 
L 130.10854 201.083894 
L 130.10854 196.624984 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_7">
    <g clip-path="url(#p77834913a1)">
     <!-- – -->
     <g transform="translate(120.437784 202.151029)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_8">
    <g clip-path="url(#p77834913a1)">
     <!-- 4 -->
     <defs>
      <path d="M 35.0625 62.984375 
Q 36.328125 62.984375 36.328125 62.015625 
L 36.328125 22.65625 
L 42.390625 22.65625 
Q 43.953125 22.65625 43.953125 17.96875 
Q 43.953125 17.390625 43.359375 17 
Q 43.359375 17 36.328125 17 
L 36.328125 -0.09375 
Q 36.03125 -0.59375 32.234375 -0.59375 
Q 28.609375 -0.59375 28.609375 0.203125 
L 28.609375 17 
L 3.90625 17 
Q 3.21875 17.875 3.21875 20.015625 
L 32.8125 61.8125 
Q 33.6875 62.984375 35.0625 62.984375 
z
M 28.609375 22.65625 
L 28.609375 48.640625 
Q 28.609375 49.515625 28.125 49.515625 
Q 28.125 49.421875 28.03125 49.3125 
L 10.25 23.828125 
Q 10.15625 23.734375 10.15625 23.53125 
Q 10.15625 22.65625 10.84375 22.65625 
z
" id="CrimsonText-Regular-52"></path>
     </defs>
     <g transform="translate(128.292597 202.151029)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_9">
    <g clip-path="url(#p77834913a1)">
     <!-- 4 -->
     <g transform="translate(128.292597 202.151029)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#p77834913a1)" d="M 127.74794 177.4779 
L 127.74794 165.937192 
L 135.616605 165.937192 
L 135.616605 177.4779 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#p77834913a1)" d="M 119.616987 170.396102 
L 119.616987 174.855012 
L 130.10854 174.855012 
L 130.10854 170.396102 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_10">
    <g clip-path="url(#p77834913a1)">
     <!-- – -->
     <g transform="translate(120.437784 175.922147)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_11">
    <g clip-path="url(#p77834913a1)">
     <!-- 2 -->
     <defs>
      <path d="M 25 62.703125 
Q 31.546875 62.703125 35.296875 57.8125 
Q 39.0625 52.9375 39.0625 46.78125 
Q 39.0625 43.171875 37.84375 39.3125 
Q 36.625 35.453125 34.03125 31.4375 
Q 31.453125 27.4375 29.34375 24.453125 
Q 27.25 21.484375 23.53125 17.578125 
Q 19.828125 13.671875 18.40625 12.203125 
Q 17 10.75 13.875 7.71875 
Q 13.578125 7.234375 14.0625 7.03125 
L 32.90625 7.03125 
Q 35.640625 7.03125 36.859375 8.59375 
Q 38.09375 10.15625 39.359375 14.546875 
Q 39.75 15.625 40.71875 15.625 
Q 42 15.625 42.484375 15.234375 
Q 40.140625 3.515625 39.84375 1.5625 
Q 39.65625 0 37.890625 0 
L 5.859375 0 
Q 5.46875 0 5.125 1.125 
Q 4.78125 2.25 4.78125 2.9375 
Q 15.4375 13.671875 23.046875 25.234375 
Q 30.671875 36.8125 30.671875 44.828125 
Q 30.671875 50.09375 28.03125 52.96875 
Q 25.390625 55.859375 21.09375 55.859375 
Q 12.984375 55.859375 8.109375 47.75 
Q 7.515625 47.75 6.875 48.390625 
Q 6.25 49.03125 6.25 49.3125 
Q 6.546875 50.484375 7.859375 52.484375 
Q 9.1875 54.5 11.375 56.890625 
Q 13.578125 59.28125 17.234375 60.984375 
Q 20.90625 62.703125 25 62.703125 
z
" id="CrimsonText-Regular-50"></path>
     </defs>
     <g transform="translate(128.264472 175.922147)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_12">
    <g clip-path="url(#p77834913a1)">
     <!-- 2 -->
     <g transform="translate(128.264472 175.922147)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#p77834913a1)" d="M 127.74794 125.020137 
L 127.74794 113.479429 
L 135.616605 113.479429 
L 135.616605 125.020137 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_13">
    <g clip-path="url(#p77834913a1)">
     <!-- 2 -->
     <g transform="translate(128.264472 123.464384)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_14">
    <g clip-path="url(#p77834913a1)">
     <!-- 2 -->
     <g transform="translate(128.264472 123.464384)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#p77834913a1)" d="M 127.74794 98.791255 
L 127.74794 87.250547 
L 135.616605 87.250547 
L 135.616605 98.791255 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_15">
    <g clip-path="url(#p77834913a1)">
     <!-- 4 -->
     <g transform="translate(128.292597 97.235502)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_16">
    <g clip-path="url(#p77834913a1)">
     <!-- 4 -->
     <g transform="translate(128.292597 97.235502)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#p77834913a1)" d="M 127.74794 72.562373 
L 127.74794 61.021665 
L 135.616605 61.021665 
L 135.616605 72.562373 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_17">
    <g clip-path="url(#p77834913a1)">
     <!-- 6 -->
     <g transform="translate(128.264472 71.00662)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_18">
    <g clip-path="url(#p77834913a1)">
     <!-- 6 -->
     <g transform="translate(128.264472 71.00662)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#p77834913a1)" d="M 127.74794 46.333492 
L 127.74794 34.792784 
L 135.616605 34.792784 
L 135.616605 46.333492 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_19">
    <g clip-path="url(#p77834913a1)">
     <!-- 8 -->
     <g transform="translate(128.264472 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_20">
    <g clip-path="url(#p77834913a1)">
     <!-- 8 -->
     <g transform="translate(128.264472 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#p77834913a1)" d="M 19.422659 153.347329 
L 19.422659 157.54395 
L 111.748323 157.54395 
L 111.748323 153.347329 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_14">
    <path clip-path="url(#p77834913a1)" d="M 33.061677 160.166838 
L 33.061677 148.62613 
L 40.930342 148.62613 
L 40.930342 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_21">
    <g clip-path="url(#p77834913a1)">
     <!-- – -->
     <g transform="translate(26.01381 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_22">
    <g clip-path="url(#p77834913a1)">
     <!-- 8 -->
     <g transform="translate(33.315921 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_23">
    <g clip-path="url(#p77834913a1)">
     <!-- 8 -->
     <g transform="translate(33.315921 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_15">
    <path clip-path="url(#p77834913a1)" d="M 59.290559 160.166838 
L 59.290559 148.62613 
L 67.159224 148.62613 
L 67.159224 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_24">
    <g clip-path="url(#p77834913a1)">
     <!-- – -->
     <g transform="translate(52.242692 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_25">
    <g clip-path="url(#p77834913a1)">
     <!-- 6 -->
     <g transform="translate(59.544802 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_26">
    <g clip-path="url(#p77834913a1)">
     <!-- 6 -->
     <g transform="translate(59.544802 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_16">
    <path clip-path="url(#p77834913a1)" d="M 85.519441 160.166838 
L 85.519441 148.62613 
L 93.388105 148.62613 
L 93.388105 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_27">
    <g clip-path="url(#p77834913a1)">
     <!-- – -->
     <g transform="translate(78.471573 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_28">
    <g clip-path="url(#p77834913a1)">
     <!-- 4 -->
     <g transform="translate(85.801809 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_29">
    <g clip-path="url(#p77834913a1)">
     <!-- 4 -->
     <g transform="translate(85.801809 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_17">
    <path clip-path="url(#p77834913a1)" d="M 111.748323 160.166838 
L 111.748323 148.62613 
L 119.616987 148.62613 
L 119.616987 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_30">
    <g clip-path="url(#p77834913a1)">
     <!-- – -->
     <g transform="translate(104.700455 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_31">
    <g clip-path="url(#p77834913a1)">
     <!-- 2 -->
     <g transform="translate(112.002566 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_32">
    <g clip-path="url(#p77834913a1)">
     <!-- 2 -->
     <g transform="translate(112.002566 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_18">
    <path clip-path="url(#p77834913a1)" d="M 164.206086 160.166838 
L 164.206086 148.62613 
L 172.074751 148.62613 
L 172.074751 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_33">
    <g clip-path="url(#p77834913a1)">
     <!-- 2 -->
     <g transform="translate(164.460329 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_34">
    <g clip-path="url(#p77834913a1)">
     <!-- 2 -->
     <g transform="translate(164.460329 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_19">
    <path clip-path="url(#p77834913a1)" d="M 190.434968 160.166838 
L 190.434968 148.62613 
L 198.303632 148.62613 
L 198.303632 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_35">
    <g clip-path="url(#p77834913a1)">
     <!-- 4 -->
     <g transform="translate(190.717336 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_36">
    <g clip-path="url(#p77834913a1)">
     <!-- 4 -->
     <g transform="translate(190.717336 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_20">
    <path clip-path="url(#p77834913a1)" d="M 216.66385 160.166838 
L 216.66385 148.62613 
L 224.532514 148.62613 
L 224.532514 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_37">
    <g clip-path="url(#p77834913a1)">
     <!-- 6 -->
     <g transform="translate(216.918093 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_38">
    <g clip-path="url(#p77834913a1)">
     <!-- 6 -->
     <g transform="translate(216.918093 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_21">
    <path clip-path="url(#p77834913a1)" d="M 242.892731 160.166838 
L 242.892731 148.62613 
L 250.761396 148.62613 
L 250.761396 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_39">
    <g clip-path="url(#p77834913a1)">
     <!-- 8 -->
     <g transform="translate(243.146974 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_40">
    <g clip-path="url(#p77834913a1)">
     <!-- 8 -->
     <g transform="translate(243.146974 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_41">
    <g clip-path="url(#p77834913a1)">
     <!-- O -->
     <defs>
      <path d="M 39.9375 61.03125 
Q 29.390625 61.03125 22.0625 50.140625 
Q 14.75 39.265625 14.75 26.078125 
Q 14.75 16.109375 19.09375 9.65625 
Q 23.4375 3.21875 31.453125 3.21875 
Q 41.609375 3.21875 49.03125 14.296875 
Q 56.453125 25.390625 56.453125 38.578125 
Q 56.453125 48.34375 52.15625 54.6875 
Q 47.859375 61.03125 39.9375 61.03125 
z
M 42.1875 65.140625 
Q 52.046875 65.140625 58.734375 57.765625 
Q 65.4375 50.390625 65.4375 39.9375 
Q 65.4375 29.390625 60.40625 19.921875 
Q 55.375 10.453125 46.875 4.734375 
Q 38.375 -0.984375 28.90625 -0.984375 
Q 18.453125 -0.984375 12.15625 6.484375 
Q 5.859375 13.96875 5.859375 25.296875 
Q 5.859375 35.453125 11.234375 44.78125 
Q 16.609375 54.109375 25 59.625 
Q 33.40625 65.140625 42.1875 65.140625 
z
" id="CrimsonText-Italic-79"></path>
     </defs>
     <g transform="translate(131.046292 155.331197)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_42">
    <g clip-path="url(#p77834913a1)">
     <!-- y -->
     <defs>
      <path d="M 21.09375 42.484375 
Q 24.03125 42.484375 25.921875 37.5 
Q 27.828125 32.515625 28.515625 24.453125 
Q 29.203125 16.40625 29.390625 11.859375 
Q 29.59375 7.328125 29.59375 2.734375 
Q 33.40625 7.421875 37.203125 14.6875 
Q 41.015625 21.96875 41.015625 27.828125 
Q 41.015625 33.59375 38.578125 38.28125 
Q 39.84375 42.484375 43.453125 42.484375 
Q 47.75 42.484375 47.75 34.765625 
Q 47.75 24.03125 39.34375 10.109375 
Q 30.953125 -3.8125 20.359375 -13.28125 
Q 9.765625 -22.75 3.21875 -22.75 
Q 0.6875 -22.75 -0.96875 -21.578125 
Q -2.640625 -20.40625 -2.640625 -18.75 
Q -2.640625 -15.625 -0.390625 -14.453125 
Q 1.765625 -15.71875 6.15625 -15.71875 
Q 14.265625 -15.71875 20.21875 -7.03125 
Q 22.46875 -3.71875 22.46875 6.0625 
Q 22.46875 10.84375 22.21875 15.578125 
Q 21.96875 20.3125 21.328125 25.296875 
Q 20.703125 30.28125 19.484375 33.34375 
Q 18.265625 36.421875 16.609375 36.421875 
Q 15.71875 36.421875 13.953125 34.765625 
Q 12.203125 33.109375 11.234375 31.84375 
Q 11.03125 31.84375 10.5 32.765625 
Q 9.96875 33.6875 9.96875 34.078125 
Q 10.546875 35.546875 14.59375 39.015625 
Q 18.65625 42.484375 21.09375 42.484375 
z
" id="CrimsonText-Italic-121"></path>
     </defs>
     <g transform="translate(139.189809 22.350767)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_43">
    <g clip-path="url(#p77834913a1)">
     <!-- x -->
     <defs>
      <path d="M 20.3125 42.484375 
Q 24.421875 42.484375 26.953125 33.984375 
L 29 27.046875 
L 34.765625 36.921875 
Q 37.984375 42.484375 42.96875 42.484375 
Q 46.296875 42.484375 48.640625 40.53125 
Q 49.421875 38.96875 49.421875 37.984375 
Q 49.421875 36.53125 48.390625 35.5 
Q 47.359375 34.46875 46.296875 34.46875 
Q 45.015625 34.46875 43.40625 35.984375 
Q 41.796875 37.5 40.4375 37.5 
Q 39.265625 37.5 37.796875 34.96875 
L 30.46875 22.46875 
L 34.671875 8.6875 
Q 35.640625 5.375 37.3125 5.375 
Q 38.765625 5.375 40.421875 6.890625 
Q 42.09375 8.40625 42.78125 9.671875 
Q 43.171875 9.671875 43.75 8.890625 
Q 44.34375 8.109375 44.34375 7.71875 
Q 44.046875 6.0625 40.71875 2.78125 
Q 37.40625 -0.484375 34.375 -0.484375 
Q 30.28125 -0.484375 27.734375 8.015625 
L 25.484375 15.625 
L 19.34375 4.984375 
Q 16.109375 -0.59375 11.140625 -0.59375 
Q 7.8125 -0.59375 5.46875 1.375 
Q 4.6875 2.734375 4.6875 3.90625 
Q 4.6875 5.375 5.703125 6.390625 
Q 6.734375 7.421875 7.8125 7.421875 
Q 9.078125 7.421875 10.6875 5.90625 
Q 12.3125 4.390625 13.671875 4.390625 
Q 14.84375 4.390625 16.3125 6.9375 
L 24.03125 20.21875 
L 20.015625 33.296875 
Q 19.046875 36.625 17.390625 36.625 
Q 15.921875 36.625 14.25 35.109375 
Q 12.59375 33.59375 11.921875 32.328125 
Q 11.53125 32.328125 10.9375 33.109375 
Q 10.359375 33.890625 10.359375 34.28125 
Q 10.640625 35.9375 13.953125 39.203125 
Q 17.28125 42.484375 20.3125 42.484375 
z
" id="CrimsonText-Italic-120"></path>
     </defs>
     <g transform="translate(260.389509 148.249399)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-120"></use>
     </g>
    </g>
   </g>
   <g id="line2d_1">
    <defs>
     <path d="M 0 3 
C 0.795609 3 1.55874 2.683901 2.12132 2.12132 
C 2.683901 1.55874 3 0.795609 3 0 
C 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 
C 1.55874 -2.683901 0.795609 -3 0 -3 
C -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 
C -2.683901 -1.55874 -3 -0.795609 -3 0 
C -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 
C -1.55874 2.683901 -0.795609 3 0 3 
z
" id="m8374c83a56" style="stroke:#000000;"></path>
    </defs>
    <g clip-path="url(#p77834913a1)">
     <use style="stroke:#000000;" x="221.385048" xlink:href="#m8374c83a56" y="144.954087"></use>
    </g>
   </g>
   <g id="line2d_2">
    <path clip-path="url(#p77834913a1)" d="M 37.782876 171.182963 
L 155.944251 171.073836 
L 169.820854 170.833986 
L 178.230916 170.477019 
L 184.11796 170.026984 
L 189.163997 169.418825 
L 192.948525 168.760711 
L 196.31255 167.972207 
L 199.256072 167.074335 
L 201.779091 166.107358 
L 204.302109 164.912801 
L 206.404625 163.705209 
L 208.50714 162.265042 
L 210.609656 160.547508 
L 212.712172 158.499189 
L 214.394184 156.579952 
L 216.076196 154.370306 
L 217.758209 151.826309 
L 219.440221 148.897369 
L 221.122234 145.525239 
L 222.804246 141.642857 
L 224.486259 137.173015 
L 226.168271 132.026821 
L 227.850284 126.101935 
L 229.532296 119.280529 
L 231.214309 111.426947 
L 232.896321 102.385005 
L 234.578333 91.974887 
L 236.260346 79.98957 
L 237.942358 66.190702 
L 239.624371 50.303868 
L 240.88588 36.830191 
L 240.88588 36.830191 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="p77834913a1">
   <rect height="260.82" width="268.898496" x="7.2" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a curve" class="sr-only"><ul><li>Moving from left to right:<br>
<ul>
<li>The curve passes from quadrant 3 to quadrant 4 to quadrant 1.</li>
<li>In quadrant 3, the curve trends up gradually to the y axis.</li>
<li>In quadrant 4, the curve trends up gradually to the point (6 comma 0).</li>
<li>In quadrant 1, the curve trends up sharply.</li>
</ul>
</li>
<li>As x decreases, the curve approaches the line y equals negative 2.</li>
<li>The curve passes through the following points:<br>
<ul>
<li>(5 comma negative four thirds)</li>
<li>(6 comma 0)</li>
</ul>
</li>
</ul></div></figure></p>
<p style="text-align: left;">What is the&nbsp;<em>x</em>-coordinate of the<em> x</em>-intercept of the graph shown?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["6"]$SATQ$::jsonb, $SATQ$["6"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="6"><mn>6</mn>
</math>. An <em>x</em>-intercept of a graph is a point on the graph where it intersects the <em>x</em>-axis, or where the value of <math alttext="y"><mi>y</mi>
</math> is <math alttext="0"><mn>0</mn>
</math>. The graph shown intersects the <em>x</em>-axis at the point <math alttext="left parenthesis 6 comma 0 right parenthesis"><mfenced><mrow><mn>6</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Therefore, the <em>x</em>-coordinate of the <em>x</em>-intercept of the graph shown is <math alttext="6"><mn>6</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"2b6c12eb","external_id":"43c1b9bd-91a3-4f33-8ec6-ca10f3f10196","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"627c2e27-8024-4b1b-9db8-c64aa813d50c","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"E","score_band_range_cd":2,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 287.764248 275.22\" width=\"287.764248pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a curve in the x y plane with the origin labeled O. The x axis ranges from negative 8 to 8. The y axis ranges from negative 8 to 8. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M -0 275.22 \nL 287.764248 275.22 \nL 287.764248 0 \nL -0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 8.404248 260.46 \nL 280.564248 260.46 \nL 280.564248 10.98 \nL 8.404248 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 276.098496 268.02 \nL 276.098496 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 37.782876 255.11539 \nL 37.782876 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 50.897317 255.11539 \nL 50.897317 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 64.011758 255.11539 \nL 64.011758 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 77.126199 255.11539 \nL 77.126199 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 90.24064 255.11539 \nL 90.24064 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 103.35508 255.11539 \nL 103.35508 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 116.469521 255.11539 \nL 116.469521 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 129.583962 255.11539 \nL 129.583962 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 155.812844 255.11539 \nL 155.812844 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 168.927285 255.11539 \nL 168.927285 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 182.041726 255.11539 \nL 182.041726 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 195.156167 255.11539 \nL 195.156167 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 208.270607 255.11539 \nL 208.270607 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 221.385048 255.11539 \nL 221.385048 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 234.499489 255.11539 \nL 234.499489 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 247.61393 255.11539 \nL 247.61393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 249.869614 \nL 252.859706 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 236.755173 \nL 252.859706 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 223.640732 \nL 252.859706 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 210.526291 \nL 252.859706 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 197.41185 \nL 252.859706 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 184.297409 \nL 252.859706 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 171.182969 \nL 252.859706 171.182969 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 158.068528 \nL 252.859706 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 131.839646 \nL 252.859706 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 118.725205 \nL 252.859706 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 105.610764 \nL 252.859706 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 92.496323 \nL 252.859706 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 79.381883 \nL 252.859706 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 66.267442 \nL 252.859706 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 53.153001 \nL 252.859706 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 40.03856 \nL 252.859706 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 144.954087 \nL 258.105483 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 255.26462 -129.281463 \nL 258.105483 -130.265913 \nL 255.26462 -131.250364 \nL 255.26462 -129.281463 \nL 258.105483 -130.265913 \n\" id=\"mafab4a4bce\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p77834913a1)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mafab4a4bce\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 142.698403 255.11539 \nL 142.698403 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 143.704311 -242.098754 \nL 142.698403 -245.672993 \nL 141.692495 -242.098754 \nL 143.704311 -242.098754 \nL 142.698403 -245.672993 \n\" id=\"m3f7e622390\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p77834913a1)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m3f7e622390\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 37.782876 148.819396 \nL 37.782876 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 50.897317 148.819396 \nL 50.897317 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 64.011758 148.819396 \nL 64.011758 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 77.126199 148.819396 \nL 77.126199 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 90.24064 148.819396 \nL 90.24064 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 103.35508 148.819396 \nL 103.35508 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 116.469521 148.819396 \nL 116.469521 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 129.583962 148.819396 \nL 129.583962 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 155.812844 148.819396 \nL 155.812844 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 168.927285 148.819396 \nL 168.927285 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 182.041726 148.819396 \nL 182.041726 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 195.156167 148.819396 \nL 195.156167 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 208.270607 148.819396 \nL 208.270607 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 221.385048 148.819396 \nL 221.385048 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 234.499489 148.819396 \nL 234.499489 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 247.61393 148.819396 \nL 247.61393 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 249.869614 \nL 146.563712 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 236.755173 \nL 146.563712 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 223.640732 \nL 146.563712 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 210.526291 \nL 146.563712 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 197.41185 \nL 146.563712 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 184.297409 \nL 146.563712 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 171.182969 \nL 146.563712 171.182969 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 158.068528 \nL 146.563712 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 131.839646 \nL 146.563712 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 118.725205 \nL 146.563712 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 105.610764 \nL 146.563712 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 92.496323 \nL 146.563712 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 79.381883 \nL 146.563712 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 66.267442 \nL 146.563712 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 53.153001 \nL 146.563712 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 40.03856 \nL 146.563712 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 256.164545 \nL 127.74794 244.623837 \nL 135.616605 244.623837 \nL 135.616605 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 119.616987 249.082747 \nL 119.616987 253.541657 \nL 130.10854 253.541657 \nL 130.10854 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(120.437784 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 229.935664 \nL 127.74794 218.394956 \nL 135.616605 218.394956 \nL 135.616605 229.935664 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 119.616987 222.853866 \nL 119.616987 227.312776 \nL 130.10854 227.312776 \nL 130.10854 222.853866 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(120.437784 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 203.706782 \nL 127.74794 192.166074 \nL 135.616605 192.166074 \nL 135.616605 203.706782 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 119.616987 196.624984 \nL 119.616987 201.083894 \nL 130.10854 201.083894 \nL 130.10854 196.624984 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(120.437784 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(128.292597 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 177.4779 \nL 127.74794 165.937192 \nL 135.616605 165.937192 \nL 135.616605 177.4779 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 119.616987 170.396102 \nL 119.616987 174.855012 \nL 130.10854 174.855012 \nL 130.10854 170.396102 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(120.437784 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 125.020137 \nL 127.74794 113.479429 \nL 135.616605 113.479429 \nL 135.616605 125.020137 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 98.791255 \nL 127.74794 87.250547 \nL 135.616605 87.250547 \nL 135.616605 98.791255 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 72.562373 \nL 127.74794 61.021665 \nL 135.616605 61.021665 \nL 135.616605 72.562373 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 46.333492 \nL 127.74794 34.792784 \nL 135.616605 34.792784 \nL 135.616605 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(128.264472 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(128.264472 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 19.422659 153.347329 \nL 19.422659 157.54395 \nL 111.748323 157.54395 \nL 111.748323 153.347329 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 33.061677 160.166838 \nL 33.061677 148.62613 \nL 40.930342 148.62613 \nL 40.930342 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(26.01381 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 59.290559 160.166838 \nL 59.290559 148.62613 \nL 67.159224 148.62613 \nL 67.159224 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(52.242692 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 85.519441 160.166838 \nL 85.519441 148.62613 \nL 93.388105 148.62613 \nL 93.388105 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(78.471573 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 111.748323 160.166838 \nL 111.748323 148.62613 \nL 119.616987 148.62613 \nL 119.616987 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(104.700455 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 164.206086 160.166838 \nL 164.206086 148.62613 \nL 172.074751 148.62613 \nL 172.074751 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 190.434968 160.166838 \nL 190.434968 148.62613 \nL 198.303632 148.62613 \nL 198.303632 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 216.66385 160.166838 \nL 216.66385 148.62613 \nL 224.532514 148.62613 \nL 224.532514 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 242.892731 160.166838 \nL 242.892731 148.62613 \nL 250.761396 148.62613 \nL 250.761396 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(131.046292 155.331197)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(139.189809 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(260.389509 148.249399)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"m8374c83a56\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#p77834913a1)\">\n     <use style=\"stroke:#000000;\" x=\"221.385048\" xlink:href=\"#m8374c83a56\" y=\"144.954087\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 37.782876 171.182963 \nL 155.944251 171.073836 \nL 169.820854 170.833986 \nL 178.230916 170.477019 \nL 184.11796 170.026984 \nL 189.163997 169.418825 \nL 192.948525 168.760711 \nL 196.31255 167.972207 \nL 199.256072 167.074335 \nL 201.779091 166.107358 \nL 204.302109 164.912801 \nL 206.404625 163.705209 \nL 208.50714 162.265042 \nL 210.609656 160.547508 \nL 212.712172 158.499189 \nL 214.394184 156.579952 \nL 216.076196 154.370306 \nL 217.758209 151.826309 \nL 219.440221 148.897369 \nL 221.122234 145.525239 \nL 222.804246 141.642857 \nL 224.486259 137.173015 \nL 226.168271 132.026821 \nL 227.850284 126.101935 \nL 229.532296 119.280529 \nL 231.214309 111.426947 \nL 232.896321 102.385005 \nL 234.578333 91.974887 \nL 236.260346 79.98957 \nL 237.942358 66.190702 \nL 239.624371 50.303868 \nL 240.88588 36.830191 \nL 240.88588 36.830191 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p77834913a1\">\n   <rect height=\"260.82\" width=\"268.898496\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a curve\" class=\"sr-only\"><ul><li>Moving from left to right:<br>\n<ul>\n<li>The curve passes from quadrant 3 to quadrant 4 to quadrant 1.</li>\n<li>In quadrant 3, the curve trends up gradually to the y axis.</li>\n<li>In quadrant 4, the curve trends up gradually to the point (6 comma 0).</li>\n<li>In quadrant 1, the curve trends up sharply.</li>\n</ul>\n</li>\n<li>As x decreases, the curve approaches the line y equals negative 2.</li>\n<li>The curve passes through the following points:<br>\n<ul>\n<li>(5 comma negative four thirds)</li>\n<li>(6 comma 0)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">What is the&nbsp;<em>x</em>-coordinate of the<em> x</em>-intercept of the graph shown?</p>","answerOptions":[],"keys":["6"],"correct_answer":["6"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"6\"><mn>6</mn>\n</math>. An <em>x</em>-intercept of a graph is a point on the graph where it intersects the <em>x</em>-axis, or where the value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"0\"><mn>0</mn>\n</math>. The graph shown intersects the <em>x</em>-axis at the point <math alttext=\"left parenthesis 6 comma 0 right parenthesis\"><mfenced><mrow><mn>6</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Therefore, the <em>x</em>-coordinate of the <em>x</em>-intercept of the graph shown is <math alttext=\"6\"><mn>6</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357399,"pPcc":"SAT#P","questionId":"2b6c12eb","skill_cd":"P.C.","score_band_range_cd":2,"skill_desc":"Nonlinear functions","createDate":1730147357399,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"43c1b9bd-91a3-4f33-8ec6-ca10f3f10196","primary_class_cd":"P","uId":"627c2e27-8024-4b1b-9db8-c64aa813d50c","difficulty":"E"},"raw_detail":{"answerOptions":[],"externalid":"43c1b9bd-91a3-4f33-8ec6-ca10f3f10196","keys":["6"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"6\"><mn>6</mn>\n</math>. An <em>x</em>-intercept of a graph is a point on the graph where it intersects the <em>x</em>-axis, or where the value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"0\"><mn>0</mn>\n</math>. The graph shown intersects the <em>x</em>-axis at the point <math alttext=\"left parenthesis 6 comma 0 right parenthesis\"><mfenced><mrow><mn>6</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Therefore, the <em>x</em>-coordinate of the <em>x</em>-intercept of the graph shown is <math alttext=\"6\"><mn>6</mn>\n</math>.</p>","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 287.764248 275.22\" width=\"287.764248pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a curve in the x y plane with the origin labeled O. The x axis ranges from negative 8 to 8. The y axis ranges from negative 8 to 8. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M -0 275.22 \nL 287.764248 275.22 \nL 287.764248 0 \nL -0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 8.404248 260.46 \nL 280.564248 260.46 \nL 280.564248 10.98 \nL 8.404248 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 276.098496 268.02 \nL 276.098496 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 37.782876 255.11539 \nL 37.782876 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 50.897317 255.11539 \nL 50.897317 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 64.011758 255.11539 \nL 64.011758 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 77.126199 255.11539 \nL 77.126199 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 90.24064 255.11539 \nL 90.24064 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 103.35508 255.11539 \nL 103.35508 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 116.469521 255.11539 \nL 116.469521 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 129.583962 255.11539 \nL 129.583962 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 155.812844 255.11539 \nL 155.812844 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 168.927285 255.11539 \nL 168.927285 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 182.041726 255.11539 \nL 182.041726 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 195.156167 255.11539 \nL 195.156167 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 208.270607 255.11539 \nL 208.270607 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 221.385048 255.11539 \nL 221.385048 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 234.499489 255.11539 \nL 234.499489 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 247.61393 255.11539 \nL 247.61393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 249.869614 \nL 252.859706 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 236.755173 \nL 252.859706 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 223.640732 \nL 252.859706 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 210.526291 \nL 252.859706 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 197.41185 \nL 252.859706 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 184.297409 \nL 252.859706 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 171.182969 \nL 252.859706 171.182969 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 158.068528 \nL 252.859706 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 131.839646 \nL 252.859706 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 118.725205 \nL 252.859706 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 105.610764 \nL 252.859706 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 92.496323 \nL 252.859706 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 79.381883 \nL 252.859706 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 66.267442 \nL 252.859706 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 53.153001 \nL 252.859706 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 40.03856 \nL 252.859706 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 32.5371 144.954087 \nL 258.105483 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 255.26462 -129.281463 \nL 258.105483 -130.265913 \nL 255.26462 -131.250364 \nL 255.26462 -129.281463 \nL 258.105483 -130.265913 \n\" id=\"mafab4a4bce\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p77834913a1)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mafab4a4bce\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 142.698403 255.11539 \nL 142.698403 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 143.704311 -242.098754 \nL 142.698403 -245.672993 \nL 141.692495 -242.098754 \nL 143.704311 -242.098754 \nL 142.698403 -245.672993 \n\" id=\"m3f7e622390\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p77834913a1)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m3f7e622390\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 37.782876 148.819396 \nL 37.782876 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 50.897317 148.819396 \nL 50.897317 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 64.011758 148.819396 \nL 64.011758 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 77.126199 148.819396 \nL 77.126199 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 90.24064 148.819396 \nL 90.24064 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 103.35508 148.819396 \nL 103.35508 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 116.469521 148.819396 \nL 116.469521 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 129.583962 148.819396 \nL 129.583962 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 155.812844 148.819396 \nL 155.812844 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 168.927285 148.819396 \nL 168.927285 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 182.041726 148.819396 \nL 182.041726 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 195.156167 148.819396 \nL 195.156167 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 208.270607 148.819396 \nL 208.270607 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 221.385048 148.819396 \nL 221.385048 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 234.499489 148.819396 \nL 234.499489 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 247.61393 148.819396 \nL 247.61393 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 249.869614 \nL 146.563712 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 236.755173 \nL 146.563712 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 223.640732 \nL 146.563712 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 210.526291 \nL 146.563712 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 197.41185 \nL 146.563712 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 184.297409 \nL 146.563712 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 171.182969 \nL 146.563712 171.182969 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 158.068528 \nL 146.563712 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 131.839646 \nL 146.563712 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 118.725205 \nL 146.563712 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 105.610764 \nL 146.563712 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 92.496323 \nL 146.563712 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 79.381883 \nL 146.563712 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 66.267442 \nL 146.563712 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 53.153001 \nL 146.563712 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 138.833094 40.03856 \nL 146.563712 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 256.164545 \nL 127.74794 244.623837 \nL 135.616605 244.623837 \nL 135.616605 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 119.616987 249.082747 \nL 119.616987 253.541657 \nL 130.10854 253.541657 \nL 130.10854 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(120.437784 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 229.935664 \nL 127.74794 218.394956 \nL 135.616605 218.394956 \nL 135.616605 229.935664 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 119.616987 222.853866 \nL 119.616987 227.312776 \nL 130.10854 227.312776 \nL 130.10854 222.853866 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(120.437784 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 203.706782 \nL 127.74794 192.166074 \nL 135.616605 192.166074 \nL 135.616605 203.706782 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 119.616987 196.624984 \nL 119.616987 201.083894 \nL 130.10854 201.083894 \nL 130.10854 196.624984 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(120.437784 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(128.292597 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 177.4779 \nL 127.74794 165.937192 \nL 135.616605 165.937192 \nL 135.616605 177.4779 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 119.616987 170.396102 \nL 119.616987 174.855012 \nL 130.10854 174.855012 \nL 130.10854 170.396102 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(120.437784 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 125.020137 \nL 127.74794 113.479429 \nL 135.616605 113.479429 \nL 135.616605 125.020137 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 98.791255 \nL 127.74794 87.250547 \nL 135.616605 87.250547 \nL 135.616605 98.791255 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 72.562373 \nL 127.74794 61.021665 \nL 135.616605 61.021665 \nL 135.616605 72.562373 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 127.74794 46.333492 \nL 127.74794 34.792784 \nL 135.616605 34.792784 \nL 135.616605 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(128.264472 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(128.264472 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 19.422659 153.347329 \nL 19.422659 157.54395 \nL 111.748323 157.54395 \nL 111.748323 153.347329 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 33.061677 160.166838 \nL 33.061677 148.62613 \nL 40.930342 148.62613 \nL 40.930342 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(26.01381 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 59.290559 160.166838 \nL 59.290559 148.62613 \nL 67.159224 148.62613 \nL 67.159224 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(52.242692 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 85.519441 160.166838 \nL 85.519441 148.62613 \nL 93.388105 148.62613 \nL 93.388105 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(78.471573 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 111.748323 160.166838 \nL 111.748323 148.62613 \nL 119.616987 148.62613 \nL 119.616987 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- – -->\n     <g transform=\"translate(104.700455 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 164.206086 160.166838 \nL 164.206086 148.62613 \nL 172.074751 148.62613 \nL 172.074751 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 190.434968 160.166838 \nL 190.434968 148.62613 \nL 198.303632 148.62613 \nL 198.303632 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 216.66385 160.166838 \nL 216.66385 148.62613 \nL 224.532514 148.62613 \nL 224.532514 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 242.892731 160.166838 \nL 242.892731 148.62613 \nL 250.761396 148.62613 \nL 250.761396 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(131.046292 155.331197)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(139.189809 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#p77834913a1)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(260.389509 148.249399)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"m8374c83a56\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#p77834913a1)\">\n     <use style=\"stroke:#000000;\" x=\"221.385048\" xlink:href=\"#m8374c83a56\" y=\"144.954087\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p77834913a1)\" d=\"M 37.782876 171.182963 \nL 155.944251 171.073836 \nL 169.820854 170.833986 \nL 178.230916 170.477019 \nL 184.11796 170.026984 \nL 189.163997 169.418825 \nL 192.948525 168.760711 \nL 196.31255 167.972207 \nL 199.256072 167.074335 \nL 201.779091 166.107358 \nL 204.302109 164.912801 \nL 206.404625 163.705209 \nL 208.50714 162.265042 \nL 210.609656 160.547508 \nL 212.712172 158.499189 \nL 214.394184 156.579952 \nL 216.076196 154.370306 \nL 217.758209 151.826309 \nL 219.440221 148.897369 \nL 221.122234 145.525239 \nL 222.804246 141.642857 \nL 224.486259 137.173015 \nL 226.168271 132.026821 \nL 227.850284 126.101935 \nL 229.532296 119.280529 \nL 231.214309 111.426947 \nL 232.896321 102.385005 \nL 234.578333 91.974887 \nL 236.260346 79.98957 \nL 237.942358 66.190702 \nL 239.624371 50.303868 \nL 240.88588 36.830191 \nL 240.88588 36.830191 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p77834913a1\">\n   <rect height=\"260.82\" width=\"268.898496\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a curve\" class=\"sr-only\"><ul><li>Moving from left to right:<br>\n<ul>\n<li>The curve passes from quadrant 3 to quadrant 4 to quadrant 1.</li>\n<li>In quadrant 3, the curve trends up gradually to the y axis.</li>\n<li>In quadrant 4, the curve trends up gradually to the point (6 comma 0).</li>\n<li>In quadrant 1, the curve trends up sharply.</li>\n</ul>\n</li>\n<li>As x decreases, the curve approaches the line y equals negative 2.</li>\n<li>The curve passes through the following points:<br>\n<ul>\n<li>(5 comma negative four thirds)</li>\n<li>(6 comma 0)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">What is the&nbsp;<em>x</em>-coordinate of the<em> x</em>-intercept of the graph shown?</p>","type":"spr","correct_answer":["6"]},"createDate":1730147357399,"updateDate":1730147357399}$SATQ$::jsonb, 1730147357399, 1730147357399),
    ($SATQ$2c05d312$SATQ$, $SATQ$fcee5450-b85d-43d4-a5c2-befadc67d6b0$SATQ$::uuid, $SATQ$ea7b888e-4cc1-4b0d-aa2c-f578274d46a2$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="57 x squared plus left parenthesis 57 b plus a right parenthesis x plus a b equals 0"><mrow><mn>57</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mo>(</mo><mrow><mn>57</mn></mrow><mi>b</mi><mo>+</mo><mi>a</mi><mo>)</mo><mi>x</mi><mo>+</mo><mi>a</mi><mi>b</mi><mo>=</mo><mn>0</mn></math></p>
<p style="text-align: left;">In the given equation, <math alttext="a"><mi>a</mi>
</math> and <math alttext="b"><mi>b</mi>
</math> are positive constants. The product of the solutions to the given equation is <math alttext="k a b"><mi>k</mi><mi>a</mi><mi>b</mi></math>, where <math alttext="k"><mi>k</mi>
</math> is a constant. What is the value of <math alttext="k"><mi>k</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"c4e475d3-d9fd-46b3-a77c-2715f84dc0b0","content":"<p><math alttext=\"one fifty seventh\"><mfrac>\n\t<mn>1</mn>\n\t<mn>57</mn>\n</mfrac>\n</math></p>"},{"id":"dcfd4806-b4b6-46de-81a2-85140b2cd900","content":"<p><math alttext=\"one nineteenth\"><mfrac>\n\t<mn>1</mn>\n\t<mn>19</mn>\n</mfrac>\n</math></p>"},{"id":"a94be614-f699-40f9-8565-27cfa4c995a2","content":"<p><math alttext=\"1\"><mn>1</mn>\n</math></p>"},{"id":"b46c5bb7-ded5-42c8-aa17-2b3586536da2","content":"<p><math alttext=\"57\"><mn>57</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["c4e475d3-d9fd-46b3-a77c-2715f84dc0b0"]$SATQ$::jsonb, $SATQ$<p>Choice A is correct. The left-hand side of the given equation is the expression <math alttext="57 x squared plus left parenthesis 57 b plus a right parenthesis x plus a b"><mn>57</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mfenced><mrow><mn>57</mn><mi>b</mi><mo>+</mo><mi>a</mi></mrow></mfenced><mi>x</mi><mo>+</mo><mi>a</mi><mi>b</mi></math>. Applying the distributive property to this expression yields <math alttext="57 x squared plus 57 b x plus a x plus a b"><mn>57</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>57</mn><mi>b</mi><mi>x</mi><mo>+</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>a</mi><mi>b</mi></math>. Since the first two terms of this expression have a common factor of <math alttext="57 x"><mrow>
	<mn>57</mn>
	<mi>x</mi>
</mrow>
</math> and the last two terms of this expression have a common factor of <math alttext="a"><mi>a</mi>
</math>, this expression can be rewritten as <math alttext="57 x left parenthesis x plus b right parenthesis plus a left parenthesis x plus b right parenthesis"><mn>57</mn><mi>x</mi><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mo>+</mo><mi>a</mi><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced></math>. Since the two terms of this expression have a common factor of <math alttext="left parenthesis x plus b right parenthesis"><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced></math>, it can be rewritten as <math alttext="left parenthesis x plus b right parenthesis left parenthesis 57 x plus a right parenthesis"><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mfenced><mrow><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi></mrow></mfenced></math>. Therefore, the given equation can be rewritten as <math alttext="left parenthesis x plus b right parenthesis left parenthesis 57 x plus a right parenthesis equals 0"><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mfenced><mrow><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi></mrow></mfenced><mo>=</mo><mn>0</mn></math>. By the zero product property, it follows that&nbsp;<math alttext="x plus b equals 0"><mi>x</mi><mo>+</mo><mi>b</mi><mo>=</mo><mn>0</mn></math> or <math alttext="57 x plus a equals 0"><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi><mo>=</mo><mn>0</mn></math>. Subtracting <math alttext="b"><mi>b</mi>
</math> from both sides of the equation&nbsp;<math alttext="x plus b equals 0"><mi>x</mi><mo>+</mo><mi>b</mi><mo>=</mo><mn>0</mn></math> yields <math alttext="x equals negative b"><mi>x</mi><mo>=</mo><mo>-</mo><mi>b</mi></math>. Subtracting <math alttext="a"><mi>a</mi>
</math> from both sides of the equation&nbsp;<math alttext="57 x plus a equals 0"><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi><mo>=</mo><mn>0</mn></math> yields <math alttext="57 x equals negative a"><mn>57</mn><mi>x</mi><mo>=</mo><mo>-</mo><mi>a</mi></math>. Dividing both sides of this equation by <math alttext="57"><mn>57</mn>
</math> yields <math alttext="x equals StartFraction negative a Over 57 EndFraction"><mi>x</mi><mo>=</mo><mfrac><mrow><mo>-</mo><mi>a</mi></mrow><mn>57</mn></mfrac></math>. Therefore, the solutions to the given equation are <math alttext="negative b"><mrow>
	<mo>-</mo>
	<mi>b</mi>
</mrow>
</math> and <math alttext="StartFraction negative a Over 57 EndFraction"><mfrac><mrow><mo>-</mo><mi>a</mi></mrow><mn>57</mn></mfrac></math>. It follows that the product of the solutions of the given equation is&nbsp;<math alttext="left parenthesis negative b right parenthesis left parenthesis StartFraction negative a Over 57 EndFraction right parenthesis"><mfenced><mrow><mo>-</mo><mi>b</mi></mrow></mfenced><mfenced><mfrac><mrow><mo>-</mo><mi>a</mi></mrow><mn>57</mn></mfrac></mfenced></math>, or <math alttext="StartFraction a b Over 57 EndFraction"><mfrac><mrow><mi>a</mi><mi>b</mi></mrow><mn>57</mn></mfrac></math>. It&rsquo;s given that the product of the solutions of the given equation is <math alttext="k a b"><mi>k</mi><mi>a</mi><mi>b</mi></math>. It follows that <math alttext="StartFraction a b Over 57 EndFraction equals k a b"><mfrac><mrow><mi>a</mi><mi>b</mi></mrow><mn>57</mn></mfrac><mo>=</mo><mi>k</mi><mi>a</mi><mi>b</mi></math>, which can also be written as <math alttext="a b left parenthesis one fifty seventh right parenthesis equals a b left parenthesis k right parenthesis"><mi>a</mi><mi>b</mi><mfenced><mfrac><mn>1</mn><mn>57</mn></mfrac></mfenced><mo>=</mo><mi>a</mi><mi>b</mi><mfenced><mi>k</mi></mfenced></math>. It&rsquo;s given that <math alttext="a"><mi>a</mi>
</math> and <math alttext="b"><mi>b</mi>
</math> are positive constants. Therefore, dividing both sides of the equation&nbsp;<math alttext="a b left parenthesis one fifty seventh right parenthesis equals a b left parenthesis k right parenthesis"><mi>a</mi><mi>b</mi><mfenced><mfrac><mn>1</mn><mn>57</mn></mfrac></mfenced><mo>=</mo><mi>a</mi><mi>b</mi><mfenced><mi>k</mi></mfenced></math> by <math alttext="a b"><mrow>
	<mi>a</mi>
	<mi>b</mi>
</mrow>
</math> yields <math alttext="one fifty seventh equals k"><mfrac><mn>1</mn><mn>57</mn></mfrac><mo>=</mo><mi>k</mi></math>. Thus, the value of <math alttext="k"><mi>k</mi>
</math> is <math alttext="one fifty seventh"><mfrac><mn>1</mn><mn>57</mn></mfrac></math>.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"2c05d312","external_id":"fcee5450-b85d-43d4-a5c2-befadc67d6b0","disclosed_item_id":null,"source":"qbank","vaultid":"ea7b888e-4cc1-4b0d-aa2c-f578274d46a2","uId":"3cf63674-2d21-44e3-8f52-320185b9ecf4","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"57 x squared plus left parenthesis 57 b plus a right parenthesis x plus a b equals 0\"><mrow><mn>57</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mo>(</mo><mrow><mn>57</mn></mrow><mi>b</mi><mo>+</mo><mi>a</mi><mo>)</mo><mi>x</mi><mo>+</mo><mi>a</mi><mi>b</mi><mo>=</mo><mn>0</mn></math></p>\n<p style=\"text-align: left;\">In the given equation, <math alttext=\"a\"><mi>a</mi>\n</math> and <math alttext=\"b\"><mi>b</mi>\n</math> are positive constants. The product of the solutions to the given equation is <math alttext=\"k a b\"><mi>k</mi><mi>a</mi><mi>b</mi></math>, where <math alttext=\"k\"><mi>k</mi>\n</math> is a constant. What is the value of <math alttext=\"k\"><mi>k</mi>\n</math>?</p>","answerOptions":[{"id":"c4e475d3-d9fd-46b3-a77c-2715f84dc0b0","content":"<p><math alttext=\"one fifty seventh\"><mfrac>\n\t<mn>1</mn>\n\t<mn>57</mn>\n</mfrac>\n</math></p>"},{"id":"dcfd4806-b4b6-46de-81a2-85140b2cd900","content":"<p><math alttext=\"one nineteenth\"><mfrac>\n\t<mn>1</mn>\n\t<mn>19</mn>\n</mfrac>\n</math></p>"},{"id":"a94be614-f699-40f9-8565-27cfa4c995a2","content":"<p><math alttext=\"1\"><mn>1</mn>\n</math></p>"},{"id":"b46c5bb7-ded5-42c8-aa17-2b3586536da2","content":"<p><math alttext=\"57\"><mn>57</mn>\n</math></p>"}],"keys":["c4e475d3-d9fd-46b3-a77c-2715f84dc0b0"],"correct_answer":["A"],"rationale":"<p>Choice A is correct. The left-hand side of the given equation is the expression <math alttext=\"57 x squared plus left parenthesis 57 b plus a right parenthesis x plus a b\"><mn>57</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mfenced><mrow><mn>57</mn><mi>b</mi><mo>+</mo><mi>a</mi></mrow></mfenced><mi>x</mi><mo>+</mo><mi>a</mi><mi>b</mi></math>. Applying the distributive property to this expression yields <math alttext=\"57 x squared plus 57 b x plus a x plus a b\"><mn>57</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>57</mn><mi>b</mi><mi>x</mi><mo>+</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>a</mi><mi>b</mi></math>. Since the first two terms of this expression have a common factor of <math alttext=\"57 x\"><mrow>\n\t<mn>57</mn>\n\t<mi>x</mi>\n</mrow>\n</math> and the last two terms of this expression have a common factor of <math alttext=\"a\"><mi>a</mi>\n</math>, this expression can be rewritten as <math alttext=\"57 x left parenthesis x plus b right parenthesis plus a left parenthesis x plus b right parenthesis\"><mn>57</mn><mi>x</mi><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mo>+</mo><mi>a</mi><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced></math>. Since the two terms of this expression have a common factor of <math alttext=\"left parenthesis x plus b right parenthesis\"><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced></math>, it can be rewritten as <math alttext=\"left parenthesis x plus b right parenthesis left parenthesis 57 x plus a right parenthesis\"><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mfenced><mrow><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi></mrow></mfenced></math>. Therefore, the given equation can be rewritten as <math alttext=\"left parenthesis x plus b right parenthesis left parenthesis 57 x plus a right parenthesis equals 0\"><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mfenced><mrow><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi></mrow></mfenced><mo>=</mo><mn>0</mn></math>. By the zero product property, it follows that&nbsp;<math alttext=\"x plus b equals 0\"><mi>x</mi><mo>+</mo><mi>b</mi><mo>=</mo><mn>0</mn></math> or <math alttext=\"57 x plus a equals 0\"><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi><mo>=</mo><mn>0</mn></math>. Subtracting <math alttext=\"b\"><mi>b</mi>\n</math> from both sides of the equation&nbsp;<math alttext=\"x plus b equals 0\"><mi>x</mi><mo>+</mo><mi>b</mi><mo>=</mo><mn>0</mn></math> yields <math alttext=\"x equals negative b\"><mi>x</mi><mo>=</mo><mo>-</mo><mi>b</mi></math>. Subtracting <math alttext=\"a\"><mi>a</mi>\n</math> from both sides of the equation&nbsp;<math alttext=\"57 x plus a equals 0\"><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi><mo>=</mo><mn>0</mn></math> yields <math alttext=\"57 x equals negative a\"><mn>57</mn><mi>x</mi><mo>=</mo><mo>-</mo><mi>a</mi></math>. Dividing both sides of this equation by <math alttext=\"57\"><mn>57</mn>\n</math> yields <math alttext=\"x equals StartFraction negative a Over 57 EndFraction\"><mi>x</mi><mo>=</mo><mfrac><mrow><mo>-</mo><mi>a</mi></mrow><mn>57</mn></mfrac></math>. Therefore, the solutions to the given equation are <math alttext=\"negative b\"><mrow>\n\t<mo>-</mo>\n\t<mi>b</mi>\n</mrow>\n</math> and <math alttext=\"StartFraction negative a Over 57 EndFraction\"><mfrac><mrow><mo>-</mo><mi>a</mi></mrow><mn>57</mn></mfrac></math>. It follows that the product of the solutions of the given equation is&nbsp;<math alttext=\"left parenthesis negative b right parenthesis left parenthesis StartFraction negative a Over 57 EndFraction right parenthesis\"><mfenced><mrow><mo>-</mo><mi>b</mi></mrow></mfenced><mfenced><mfrac><mrow><mo>-</mo><mi>a</mi></mrow><mn>57</mn></mfrac></mfenced></math>, or <math alttext=\"StartFraction a b Over 57 EndFraction\"><mfrac><mrow><mi>a</mi><mi>b</mi></mrow><mn>57</mn></mfrac></math>. It&rsquo;s given that the product of the solutions of the given equation is <math alttext=\"k a b\"><mi>k</mi><mi>a</mi><mi>b</mi></math>. It follows that <math alttext=\"StartFraction a b Over 57 EndFraction equals k a b\"><mfrac><mrow><mi>a</mi><mi>b</mi></mrow><mn>57</mn></mfrac><mo>=</mo><mi>k</mi><mi>a</mi><mi>b</mi></math>, which can also be written as <math alttext=\"a b left parenthesis one fifty seventh right parenthesis equals a b left parenthesis k right parenthesis\"><mi>a</mi><mi>b</mi><mfenced><mfrac><mn>1</mn><mn>57</mn></mfrac></mfenced><mo>=</mo><mi>a</mi><mi>b</mi><mfenced><mi>k</mi></mfenced></math>. It&rsquo;s given that <math alttext=\"a\"><mi>a</mi>\n</math> and <math alttext=\"b\"><mi>b</mi>\n</math> are positive constants. Therefore, dividing both sides of the equation&nbsp;<math alttext=\"a b left parenthesis one fifty seventh right parenthesis equals a b left parenthesis k right parenthesis\"><mi>a</mi><mi>b</mi><mfenced><mfrac><mn>1</mn><mn>57</mn></mfrac></mfenced><mo>=</mo><mi>a</mi><mi>b</mi><mfenced><mi>k</mi></mfenced></math> by <math alttext=\"a b\"><mrow>\n\t<mi>a</mi>\n\t<mi>b</mi>\n</mrow>\n</math> yields <math alttext=\"one fifty seventh equals k\"><mfrac><mn>1</mn><mn>57</mn></mfrac><mo>=</mo><mi>k</mi></math>. Thus, the value of <math alttext=\"k\"><mi>k</mi>\n</math> is <math alttext=\"one fifty seventh\"><mfrac><mn>1</mn><mn>57</mn></mfrac></math>.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959822,"pPcc":"SAT#P","questionId":"2c05d312","skill_cd":"P.B.","score_band_range_cd":7,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1691007959822,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"fcee5450-b85d-43d4-a5c2-befadc67d6b0","primary_class_cd":"P","uId":"3cf63674-2d21-44e3-8f52-320185b9ecf4","difficulty":"H"},"raw_detail":{"keys":["c4e475d3-d9fd-46b3-a77c-2715f84dc0b0"],"rationale":"<p>Choice A is correct. The left-hand side of the given equation is the expression <math alttext=\"57 x squared plus left parenthesis 57 b plus a right parenthesis x plus a b\"><mn>57</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mfenced><mrow><mn>57</mn><mi>b</mi><mo>+</mo><mi>a</mi></mrow></mfenced><mi>x</mi><mo>+</mo><mi>a</mi><mi>b</mi></math>. Applying the distributive property to this expression yields <math alttext=\"57 x squared plus 57 b x plus a x plus a b\"><mn>57</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>57</mn><mi>b</mi><mi>x</mi><mo>+</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>a</mi><mi>b</mi></math>. Since the first two terms of this expression have a common factor of <math alttext=\"57 x\"><mrow>\n\t<mn>57</mn>\n\t<mi>x</mi>\n</mrow>\n</math> and the last two terms of this expression have a common factor of <math alttext=\"a\"><mi>a</mi>\n</math>, this expression can be rewritten as <math alttext=\"57 x left parenthesis x plus b right parenthesis plus a left parenthesis x plus b right parenthesis\"><mn>57</mn><mi>x</mi><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mo>+</mo><mi>a</mi><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced></math>. Since the two terms of this expression have a common factor of <math alttext=\"left parenthesis x plus b right parenthesis\"><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced></math>, it can be rewritten as <math alttext=\"left parenthesis x plus b right parenthesis left parenthesis 57 x plus a right parenthesis\"><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mfenced><mrow><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi></mrow></mfenced></math>. Therefore, the given equation can be rewritten as <math alttext=\"left parenthesis x plus b right parenthesis left parenthesis 57 x plus a right parenthesis equals 0\"><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mfenced><mrow><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi></mrow></mfenced><mo>=</mo><mn>0</mn></math>. By the zero product property, it follows that&nbsp;<math alttext=\"x plus b equals 0\"><mi>x</mi><mo>+</mo><mi>b</mi><mo>=</mo><mn>0</mn></math> or <math alttext=\"57 x plus a equals 0\"><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi><mo>=</mo><mn>0</mn></math>. Subtracting <math alttext=\"b\"><mi>b</mi>\n</math> from both sides of the equation&nbsp;<math alttext=\"x plus b equals 0\"><mi>x</mi><mo>+</mo><mi>b</mi><mo>=</mo><mn>0</mn></math> yields <math alttext=\"x equals negative b\"><mi>x</mi><mo>=</mo><mo>-</mo><mi>b</mi></math>. Subtracting <math alttext=\"a\"><mi>a</mi>\n</math> from both sides of the equation&nbsp;<math alttext=\"57 x plus a equals 0\"><mn>57</mn><mi>x</mi><mo>+</mo><mi>a</mi><mo>=</mo><mn>0</mn></math> yields <math alttext=\"57 x equals negative a\"><mn>57</mn><mi>x</mi><mo>=</mo><mo>-</mo><mi>a</mi></math>. Dividing both sides of this equation by <math alttext=\"57\"><mn>57</mn>\n</math> yields <math alttext=\"x equals StartFraction negative a Over 57 EndFraction\"><mi>x</mi><mo>=</mo><mfrac><mrow><mo>-</mo><mi>a</mi></mrow><mn>57</mn></mfrac></math>. Therefore, the solutions to the given equation are <math alttext=\"negative b\"><mrow>\n\t<mo>-</mo>\n\t<mi>b</mi>\n</mrow>\n</math> and <math alttext=\"StartFraction negative a Over 57 EndFraction\"><mfrac><mrow><mo>-</mo><mi>a</mi></mrow><mn>57</mn></mfrac></math>. It follows that the product of the solutions of the given equation is&nbsp;<math alttext=\"left parenthesis negative b right parenthesis left parenthesis StartFraction negative a Over 57 EndFraction right parenthesis\"><mfenced><mrow><mo>-</mo><mi>b</mi></mrow></mfenced><mfenced><mfrac><mrow><mo>-</mo><mi>a</mi></mrow><mn>57</mn></mfrac></mfenced></math>, or <math alttext=\"StartFraction a b Over 57 EndFraction\"><mfrac><mrow><mi>a</mi><mi>b</mi></mrow><mn>57</mn></mfrac></math>. It&rsquo;s given that the product of the solutions of the given equation is <math alttext=\"k a b\"><mi>k</mi><mi>a</mi><mi>b</mi></math>. It follows that <math alttext=\"StartFraction a b Over 57 EndFraction equals k a b\"><mfrac><mrow><mi>a</mi><mi>b</mi></mrow><mn>57</mn></mfrac><mo>=</mo><mi>k</mi><mi>a</mi><mi>b</mi></math>, which can also be written as <math alttext=\"a b left parenthesis one fifty seventh right parenthesis equals a b left parenthesis k right parenthesis\"><mi>a</mi><mi>b</mi><mfenced><mfrac><mn>1</mn><mn>57</mn></mfrac></mfenced><mo>=</mo><mi>a</mi><mi>b</mi><mfenced><mi>k</mi></mfenced></math>. It&rsquo;s given that <math alttext=\"a\"><mi>a</mi>\n</math> and <math alttext=\"b\"><mi>b</mi>\n</math> are positive constants. Therefore, dividing both sides of the equation&nbsp;<math alttext=\"a b left parenthesis one fifty seventh right parenthesis equals a b left parenthesis k right parenthesis\"><mi>a</mi><mi>b</mi><mfenced><mfrac><mn>1</mn><mn>57</mn></mfrac></mfenced><mo>=</mo><mi>a</mi><mi>b</mi><mfenced><mi>k</mi></mfenced></math> by <math alttext=\"a b\"><mrow>\n\t<mi>a</mi>\n\t<mi>b</mi>\n</mrow>\n</math> yields <math alttext=\"one fifty seventh equals k\"><mfrac><mn>1</mn><mn>57</mn></mfrac><mo>=</mo><mi>k</mi></math>. Thus, the value of <math alttext=\"k\"><mi>k</mi>\n</math> is <math alttext=\"one fifty seventh\"><mfrac><mn>1</mn><mn>57</mn></mfrac></math>.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"57 x squared plus left parenthesis 57 b plus a right parenthesis x plus a b equals 0\"><mrow><mn>57</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mo>(</mo><mrow><mn>57</mn></mrow><mi>b</mi><mo>+</mo><mi>a</mi><mo>)</mo><mi>x</mi><mo>+</mo><mi>a</mi><mi>b</mi><mo>=</mo><mn>0</mn></math></p>\n<p style=\"text-align: left;\">In the given equation, <math alttext=\"a\"><mi>a</mi>\n</math> and <math alttext=\"b\"><mi>b</mi>\n</math> are positive constants. The product of the solutions to the given equation is <math alttext=\"k a b\"><mi>k</mi><mi>a</mi><mi>b</mi></math>, where <math alttext=\"k\"><mi>k</mi>\n</math> is a constant. What is the value of <math alttext=\"k\"><mi>k</mi>\n</math>?</p>","externalid":"fcee5450-b85d-43d4-a5c2-befadc67d6b0","templateid":"f9ad6fe7-d407-4a35-a71d-0cf0fc907dfc","vaultid":"ea7b888e-4cc1-4b0d-aa2c-f578274d46a2","type":"mcq","answerOptions":[{"id":"c4e475d3-d9fd-46b3-a77c-2715f84dc0b0","content":"<p><math alttext=\"one fifty seventh\"><mfrac>\n\t<mn>1</mn>\n\t<mn>57</mn>\n</mfrac>\n</math></p>"},{"id":"dcfd4806-b4b6-46de-81a2-85140b2cd900","content":"<p><math alttext=\"one nineteenth\"><mfrac>\n\t<mn>1</mn>\n\t<mn>19</mn>\n</mfrac>\n</math></p>"},{"id":"a94be614-f699-40f9-8565-27cfa4c995a2","content":"<p><math alttext=\"1\"><mn>1</mn>\n</math></p>"},{"id":"b46c5bb7-ded5-42c8-aa17-2b3586536da2","content":"<p><math alttext=\"57\"><mn>57</mn>\n</math></p>"}],"correct_answer":["A"]},"createDate":1691007959822,"updateDate":1691007959822}$SATQ$::jsonb, 1691007959822, 1691007959822),
    ($SATQ$2c288148$SATQ$, $SATQ$b329914a-0391-4290-8ade-dc32575f2627$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$H$SATQ$, 7, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="StartRoot k minus x EndRoot equals 58 minus x"><msqrt><mi>k</mi><mo>-</mo><mi>x</mi></msqrt><mo>=</mo><mrow><mn>58</mn></mrow><mo>-</mo><mi>x</mi></math></p>
<p style="text-align: left;">In the given equation, <math alttext="k"><mi>k</mi>
</math> is a constant. The equation has exactly one real solution. What is the minimum possible value of <math alttext="4 k"><mrow>
	<mn>4</mn>
	<mi>k</mi>
</mrow>
</math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["231"]$SATQ$::jsonb, $SATQ$["231"]$SATQ$::jsonb, $SATQ$<p>The correct answer is <math alttext="231"><mn>231</mn>
</math>. It's given that <math alttext="StartRoot k minus x EndRoot equals 58 minus x"><msqrt><mi>k</mi><mo>-</mo><mi>x</mi></msqrt><mo>=</mo><mn>58</mn><mo>-</mo><mi>x</mi></math>. Squaring both sides of this equation yields <math alttext="k minus x equals left parenthesis 58 minus x right parenthesis squared"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mo>(</mo><mn>58</mn><mo>-</mo><mi>x</mi><msup><mo>)</mo><mn>2</mn></msup></math>, which is equivalent to the given equation if <math alttext="58 minus x greater than 0"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>. It follows that if a solution to the equation <math alttext="k minus x equals left parenthesis 58 minus x right parenthesis squared"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mo>(</mo><mn>58</mn><mo>-</mo><mi>x</mi><msup><mo>)</mo><mn>2</mn></msup></math> satisfies <math alttext="58 minus x greater than 0"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, then it's also a solution to the given equation; if not, it's extraneous. The equation <math alttext="k minus x equals left parenthesis 58 minus x right parenthesis squared"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mo>(</mo><mn>58</mn><mo>-</mo><mi>x</mi><msup><mo>)</mo><mn>2</mn></msup></math> can be rewritten as <math alttext="k minus x equals 3,364 minus 116 x plus x squared"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mn>3,364</mn><mo>-</mo><mn>116</mn><mi>x</mi><mo>+</mo><msup><mi>x</mi><mn>2</mn></msup></math>. Adding <math alttext="x"><mi>x</mi>
</math> to both sides of this equation yields <math alttext="k equals x squared minus 115 x plus 3,364"><mi>k</mi><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mn>3,364</mn></math>. Subtracting <math alttext="k"><mi>k</mi>
</math> from both sides of this equation yields <math alttext="0 equals x squared minus 115 x plus left parenthesis 3,364 minus k right parenthesis"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math>. The number of solutions to a quadratic equation in the form <math alttext="0 equals a x squared plus b x plus c"><mn>0</mn><mo>=</mo><mi>a</mi><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi><mo>+</mo><mi>c</mi></math>, where <math alttext="a"><mi>a</mi>
</math>, <math alttext="b"><mi>b</mi>
</math>, and <math alttext="c"><mi>c</mi>
</math> are constants, can be determined by the value of the discriminant, <math alttext="b squared minus 4 a c"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>. Substituting <math alttext="negative 115"><mrow>
	<mo>-</mo>
	<mn>115</mn>
</mrow>
</math> for <math alttext="b"><mi>b</mi>
</math>, <math alttext="1"><mn>1</mn>
</math> for <math alttext="a"><mi>a</mi>
</math>, and <math alttext="3,364 minus k"><mn>3,364</mn><mo>-</mo><mi>k</mi></math> for <math alttext="c"><mi>c</mi>
</math> in <math alttext="b squared minus 4 a c"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math> yields <math alttext="left parenthesis negative 115 right parenthesis squared minus 4 left parenthesis 1 right parenthesis left parenthesis 3,364 minus k right parenthesis"><mo>(</mo><mo>-</mo><mn>115</mn><msup><mo>)</mo><mn>2</mn></msup><mo>-</mo><mn>4</mn><mo>(</mo><mn>1</mn><mo>)</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math>, or <math alttext="4 k minus 231"><mrow>
	<mrow>
		<mn>4</mn>
		<mi>k</mi>
	</mrow>
	<mo>-</mo>
	<mn>231</mn>
</mrow>
</math>. The equation <math alttext="0 equals x squared minus 115 x plus left parenthesis 3,364 minus k right parenthesis"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math> has exactly one real solution if the discriminant is equal to zero, or <math alttext="4 k minus 231 equals 0"><mrow>
	<mrow>
		<mrow>
			<mn>4</mn>
			<mi>k</mi>
		</mrow>
		<mo>-</mo>
		<mn>231</mn>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>. Subtracting <math alttext="231"><mn>231</mn>
</math> from both sides of this equation yields <math alttext="4 k equals 231"><mrow>
	<mrow>
		<mn>4</mn>
		<mi>k</mi>
	</mrow>
	<mo>=</mo>
	<mn>231</mn>
</mrow>
</math>. Dividing both sides of this equation by <math alttext="4"><mn>4</mn>
</math> yields <math alttext="k equals 57.75"><mi>k</mi><mo>=</mo><mn>57.75</mn></math>. Therefore, if <math alttext="k equals 57.75"><mi>k</mi><mo>=</mo><mn>57.75</mn></math>, then the equation <math alttext="0 equals x squared minus 115 x plus left parenthesis 3,364 minus k right parenthesis"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math> has exactly one real solution. Substituting <math alttext="57.75"><mn>57.75</mn></math> for <math alttext="k"><mi>k</mi>
</math> in this equation yields <math alttext="0 equals x squared minus 115 x plus left parenthesis 3,364 minus 57.75 right parenthesis"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mn>57.75</mn><mo>)</mo></math>, or <math alttext="0 equals x squared minus 115 x plus 3,306.25"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mn>3,306.25</mn></math>, which is equivalent to <math alttext="0 equals left parenthesis x minus 57.5 right parenthesis squared"><mn>0</mn><mo>=</mo><mo>(</mo><mi>x</mi><mo>-</mo><mn>57.5</mn><msup><mo>)</mo><mn>2</mn></msup></math>. Taking the square root of both sides of this equation yields <math alttext="0 equals x minus 57.5"><mn>0</mn><mo>=</mo><mi>x</mi><mo>-</mo><mn>57.5</mn></math>. Adding <math alttext="57.5"><mn>57.5</mn></math> to both sides of this equation yields <math alttext="57.5 equals x"><mn>57.5</mn><mo>=</mo><mi>x</mi></math>. To check whether this solution satisfies <math alttext="58 minus x greater than 0"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, the solution, <math alttext="57.5"><mn>57.5</mn></math>, can be substituted for <math alttext="x"><mi>x</mi>
</math> in <math alttext="58 minus x greater than 0"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, which yields <math alttext="58 minus 57.5 greater than 0"><mn>58</mn><mo>-</mo><mn>57.5</mn><mo>&#62;</mo><mn>0</mn></math>, or <math alttext="0.5 greater than 0"><mn>0.5</mn><mo>&#62;</mo><mn>0</mn></math>. Since <math alttext="0.5"><mn>0.5</mn></math> is greater than <math alttext="0"><mn>0</mn>
</math>, it follows that if <math alttext="k equals 57.75"><mi>k</mi><mo>=</mo><mn>57.75</mn></math>, or <math alttext="4 k equals 231"><mrow>
	<mrow>
		<mn>4</mn>
		<mi>k</mi>
	</mrow>
	<mo>=</mo>
	<mn>231</mn>
</mrow>
</math>, then the given equation has exactly one real solution. If <math alttext="4 k less than 231"><mn>4</mn><mi>k</mi><mo>&#60;</mo><mn>231</mn></math>, then the discriminant, <math alttext="4 k minus 231"><mrow>
	<mrow>
		<mn>4</mn>
		<mi>k</mi>
	</mrow>
	<mo>-</mo>
	<mn>231</mn>
</mrow>
</math>, is negative and the given equation has no solutions. Therefore, the minimum possible value of <math alttext="4 k"><mrow>
	<mn>4</mn>
	<mi>k</mi>
</mrow>
</math> is <math alttext="231"><mn>231</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"2c288148","external_id":"b329914a-0391-4290-8ade-dc32575f2627","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"1eced8ff-cd6d-488e-a935-cbc44ded9225","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"H","score_band_range_cd":7,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"StartRoot k minus x EndRoot equals 58 minus x\"><msqrt><mi>k</mi><mo>-</mo><mi>x</mi></msqrt><mo>=</mo><mrow><mn>58</mn></mrow><mo>-</mo><mi>x</mi></math></p>\n<p style=\"text-align: left;\">In the given equation, <math alttext=\"k\"><mi>k</mi>\n</math> is a constant. The equation has exactly one real solution. What is the minimum possible value of <math alttext=\"4 k\"><mrow>\n\t<mn>4</mn>\n\t<mi>k</mi>\n</mrow>\n</math>?</p>","answerOptions":[],"keys":["231"],"correct_answer":["231"],"rationale":"<p>The correct answer is <math alttext=\"231\"><mn>231</mn>\n</math>. It's given that <math alttext=\"StartRoot k minus x EndRoot equals 58 minus x\"><msqrt><mi>k</mi><mo>-</mo><mi>x</mi></msqrt><mo>=</mo><mn>58</mn><mo>-</mo><mi>x</mi></math>. Squaring both sides of this equation yields <math alttext=\"k minus x equals left parenthesis 58 minus x right parenthesis squared\"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mo>(</mo><mn>58</mn><mo>-</mo><mi>x</mi><msup><mo>)</mo><mn>2</mn></msup></math>, which is equivalent to the given equation if <math alttext=\"58 minus x greater than 0\"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>. It follows that if a solution to the equation <math alttext=\"k minus x equals left parenthesis 58 minus x right parenthesis squared\"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mo>(</mo><mn>58</mn><mo>-</mo><mi>x</mi><msup><mo>)</mo><mn>2</mn></msup></math> satisfies <math alttext=\"58 minus x greater than 0\"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, then it's also a solution to the given equation; if not, it's extraneous. The equation <math alttext=\"k minus x equals left parenthesis 58 minus x right parenthesis squared\"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mo>(</mo><mn>58</mn><mo>-</mo><mi>x</mi><msup><mo>)</mo><mn>2</mn></msup></math> can be rewritten as <math alttext=\"k minus x equals 3,364 minus 116 x plus x squared\"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mn>3,364</mn><mo>-</mo><mn>116</mn><mi>x</mi><mo>+</mo><msup><mi>x</mi><mn>2</mn></msup></math>. Adding <math alttext=\"x\"><mi>x</mi>\n</math> to both sides of this equation yields <math alttext=\"k equals x squared minus 115 x plus 3,364\"><mi>k</mi><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mn>3,364</mn></math>. Subtracting <math alttext=\"k\"><mi>k</mi>\n</math> from both sides of this equation yields <math alttext=\"0 equals x squared minus 115 x plus left parenthesis 3,364 minus k right parenthesis\"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math>. The number of solutions to a quadratic equation in the form <math alttext=\"0 equals a x squared plus b x plus c\"><mn>0</mn><mo>=</mo><mi>a</mi><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi><mo>+</mo><mi>c</mi></math>, where <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, and <math alttext=\"c\"><mi>c</mi>\n</math> are constants, can be determined by the value of the discriminant, <math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>. Substituting <math alttext=\"negative 115\"><mrow>\n\t<mo>-</mo>\n\t<mn>115</mn>\n</mrow>\n</math> for <math alttext=\"b\"><mi>b</mi>\n</math>, <math alttext=\"1\"><mn>1</mn>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math>, and <math alttext=\"3,364 minus k\"><mn>3,364</mn><mo>-</mo><mi>k</mi></math> for <math alttext=\"c\"><mi>c</mi>\n</math> in <math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math> yields <math alttext=\"left parenthesis negative 115 right parenthesis squared minus 4 left parenthesis 1 right parenthesis left parenthesis 3,364 minus k right parenthesis\"><mo>(</mo><mo>-</mo><mn>115</mn><msup><mo>)</mo><mn>2</mn></msup><mo>-</mo><mn>4</mn><mo>(</mo><mn>1</mn><mo>)</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math>, or <math alttext=\"4 k minus 231\"><mrow>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>k</mi>\n\t</mrow>\n\t<mo>-</mo>\n\t<mn>231</mn>\n</mrow>\n</math>. The equation <math alttext=\"0 equals x squared minus 115 x plus left parenthesis 3,364 minus k right parenthesis\"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math> has exactly one real solution if the discriminant is equal to zero, or <math alttext=\"4 k minus 231 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>4</mn>\n\t\t\t<mi>k</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>231</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"231\"><mn>231</mn>\n</math> from both sides of this equation yields <math alttext=\"4 k equals 231\"><mrow>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>k</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>231</mn>\n</mrow>\n</math>. Dividing both sides of this equation by <math alttext=\"4\"><mn>4</mn>\n</math> yields <math alttext=\"k equals 57.75\"><mi>k</mi><mo>=</mo><mn>57.75</mn></math>. Therefore, if <math alttext=\"k equals 57.75\"><mi>k</mi><mo>=</mo><mn>57.75</mn></math>, then the equation <math alttext=\"0 equals x squared minus 115 x plus left parenthesis 3,364 minus k right parenthesis\"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math> has exactly one real solution. Substituting <math alttext=\"57.75\"><mn>57.75</mn></math> for <math alttext=\"k\"><mi>k</mi>\n</math> in this equation yields <math alttext=\"0 equals x squared minus 115 x plus left parenthesis 3,364 minus 57.75 right parenthesis\"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mn>57.75</mn><mo>)</mo></math>, or <math alttext=\"0 equals x squared minus 115 x plus 3,306.25\"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mn>3,306.25</mn></math>, which is equivalent to <math alttext=\"0 equals left parenthesis x minus 57.5 right parenthesis squared\"><mn>0</mn><mo>=</mo><mo>(</mo><mi>x</mi><mo>-</mo><mn>57.5</mn><msup><mo>)</mo><mn>2</mn></msup></math>. Taking the square root of both sides of this equation yields <math alttext=\"0 equals x minus 57.5\"><mn>0</mn><mo>=</mo><mi>x</mi><mo>-</mo><mn>57.5</mn></math>. Adding <math alttext=\"57.5\"><mn>57.5</mn></math> to both sides of this equation yields <math alttext=\"57.5 equals x\"><mn>57.5</mn><mo>=</mo><mi>x</mi></math>. To check whether this solution satisfies <math alttext=\"58 minus x greater than 0\"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, the solution, <math alttext=\"57.5\"><mn>57.5</mn></math>, can be substituted for <math alttext=\"x\"><mi>x</mi>\n</math> in <math alttext=\"58 minus x greater than 0\"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, which yields <math alttext=\"58 minus 57.5 greater than 0\"><mn>58</mn><mo>-</mo><mn>57.5</mn><mo>&#62;</mo><mn>0</mn></math>, or <math alttext=\"0.5 greater than 0\"><mn>0.5</mn><mo>&#62;</mo><mn>0</mn></math>. Since <math alttext=\"0.5\"><mn>0.5</mn></math> is greater than <math alttext=\"0\"><mn>0</mn>\n</math>, it follows that if <math alttext=\"k equals 57.75\"><mi>k</mi><mo>=</mo><mn>57.75</mn></math>, or <math alttext=\"4 k equals 231\"><mrow>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>k</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>231</mn>\n</mrow>\n</math>, then the given equation has exactly one real solution. If <math alttext=\"4 k less than 231\"><mn>4</mn><mi>k</mi><mo>&#60;</mo><mn>231</mn></math>, then the discriminant, <math alttext=\"4 k minus 231\"><mrow>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>k</mi>\n\t</mrow>\n\t<mo>-</mo>\n\t<mn>231</mn>\n</mrow>\n</math>, is negative and the given equation has no solutions. Therefore, the minimum possible value of <math alttext=\"4 k\"><mrow>\n\t<mn>4</mn>\n\t<mi>k</mi>\n</mrow>\n</math> is <math alttext=\"231\"><mn>231</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357396,"pPcc":"SAT#P","questionId":"2c288148","skill_cd":"P.B.","score_band_range_cd":7,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1730147357396,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"b329914a-0391-4290-8ade-dc32575f2627","primary_class_cd":"P","uId":"1eced8ff-cd6d-488e-a935-cbc44ded9225","difficulty":"H"},"raw_detail":{"answerOptions":[],"externalid":"b329914a-0391-4290-8ade-dc32575f2627","keys":["231"],"rationale":"<p>The correct answer is <math alttext=\"231\"><mn>231</mn>\n</math>. It's given that <math alttext=\"StartRoot k minus x EndRoot equals 58 minus x\"><msqrt><mi>k</mi><mo>-</mo><mi>x</mi></msqrt><mo>=</mo><mn>58</mn><mo>-</mo><mi>x</mi></math>. Squaring both sides of this equation yields <math alttext=\"k minus x equals left parenthesis 58 minus x right parenthesis squared\"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mo>(</mo><mn>58</mn><mo>-</mo><mi>x</mi><msup><mo>)</mo><mn>2</mn></msup></math>, which is equivalent to the given equation if <math alttext=\"58 minus x greater than 0\"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>. It follows that if a solution to the equation <math alttext=\"k minus x equals left parenthesis 58 minus x right parenthesis squared\"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mo>(</mo><mn>58</mn><mo>-</mo><mi>x</mi><msup><mo>)</mo><mn>2</mn></msup></math> satisfies <math alttext=\"58 minus x greater than 0\"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, then it's also a solution to the given equation; if not, it's extraneous. The equation <math alttext=\"k minus x equals left parenthesis 58 minus x right parenthesis squared\"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mo>(</mo><mn>58</mn><mo>-</mo><mi>x</mi><msup><mo>)</mo><mn>2</mn></msup></math> can be rewritten as <math alttext=\"k minus x equals 3,364 minus 116 x plus x squared\"><mi>k</mi><mo>-</mo><mi>x</mi><mo>=</mo><mn>3,364</mn><mo>-</mo><mn>116</mn><mi>x</mi><mo>+</mo><msup><mi>x</mi><mn>2</mn></msup></math>. Adding <math alttext=\"x\"><mi>x</mi>\n</math> to both sides of this equation yields <math alttext=\"k equals x squared minus 115 x plus 3,364\"><mi>k</mi><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mn>3,364</mn></math>. Subtracting <math alttext=\"k\"><mi>k</mi>\n</math> from both sides of this equation yields <math alttext=\"0 equals x squared minus 115 x plus left parenthesis 3,364 minus k right parenthesis\"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math>. The number of solutions to a quadratic equation in the form <math alttext=\"0 equals a x squared plus b x plus c\"><mn>0</mn><mo>=</mo><mi>a</mi><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi><mo>+</mo><mi>c</mi></math>, where <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, and <math alttext=\"c\"><mi>c</mi>\n</math> are constants, can be determined by the value of the discriminant, <math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>. Substituting <math alttext=\"negative 115\"><mrow>\n\t<mo>-</mo>\n\t<mn>115</mn>\n</mrow>\n</math> for <math alttext=\"b\"><mi>b</mi>\n</math>, <math alttext=\"1\"><mn>1</mn>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math>, and <math alttext=\"3,364 minus k\"><mn>3,364</mn><mo>-</mo><mi>k</mi></math> for <math alttext=\"c\"><mi>c</mi>\n</math> in <math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math> yields <math alttext=\"left parenthesis negative 115 right parenthesis squared minus 4 left parenthesis 1 right parenthesis left parenthesis 3,364 minus k right parenthesis\"><mo>(</mo><mo>-</mo><mn>115</mn><msup><mo>)</mo><mn>2</mn></msup><mo>-</mo><mn>4</mn><mo>(</mo><mn>1</mn><mo>)</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math>, or <math alttext=\"4 k minus 231\"><mrow>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>k</mi>\n\t</mrow>\n\t<mo>-</mo>\n\t<mn>231</mn>\n</mrow>\n</math>. The equation <math alttext=\"0 equals x squared minus 115 x plus left parenthesis 3,364 minus k right parenthesis\"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math> has exactly one real solution if the discriminant is equal to zero, or <math alttext=\"4 k minus 231 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>4</mn>\n\t\t\t<mi>k</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>231</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"231\"><mn>231</mn>\n</math> from both sides of this equation yields <math alttext=\"4 k equals 231\"><mrow>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>k</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>231</mn>\n</mrow>\n</math>. Dividing both sides of this equation by <math alttext=\"4\"><mn>4</mn>\n</math> yields <math alttext=\"k equals 57.75\"><mi>k</mi><mo>=</mo><mn>57.75</mn></math>. Therefore, if <math alttext=\"k equals 57.75\"><mi>k</mi><mo>=</mo><mn>57.75</mn></math>, then the equation <math alttext=\"0 equals x squared minus 115 x plus left parenthesis 3,364 minus k right parenthesis\"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mi>k</mi><mo>)</mo></math> has exactly one real solution. Substituting <math alttext=\"57.75\"><mn>57.75</mn></math> for <math alttext=\"k\"><mi>k</mi>\n</math> in this equation yields <math alttext=\"0 equals x squared minus 115 x plus left parenthesis 3,364 minus 57.75 right parenthesis\"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>3,364</mn><mo>-</mo><mn>57.75</mn><mo>)</mo></math>, or <math alttext=\"0 equals x squared minus 115 x plus 3,306.25\"><mn>0</mn><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>115</mn><mi>x</mi><mo>+</mo><mn>3,306.25</mn></math>, which is equivalent to <math alttext=\"0 equals left parenthesis x minus 57.5 right parenthesis squared\"><mn>0</mn><mo>=</mo><mo>(</mo><mi>x</mi><mo>-</mo><mn>57.5</mn><msup><mo>)</mo><mn>2</mn></msup></math>. Taking the square root of both sides of this equation yields <math alttext=\"0 equals x minus 57.5\"><mn>0</mn><mo>=</mo><mi>x</mi><mo>-</mo><mn>57.5</mn></math>. Adding <math alttext=\"57.5\"><mn>57.5</mn></math> to both sides of this equation yields <math alttext=\"57.5 equals x\"><mn>57.5</mn><mo>=</mo><mi>x</mi></math>. To check whether this solution satisfies <math alttext=\"58 minus x greater than 0\"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, the solution, <math alttext=\"57.5\"><mn>57.5</mn></math>, can be substituted for <math alttext=\"x\"><mi>x</mi>\n</math> in <math alttext=\"58 minus x greater than 0\"><mn>58</mn><mo>-</mo><mi>x</mi><mo>&#62;</mo><mn>0</mn></math>, which yields <math alttext=\"58 minus 57.5 greater than 0\"><mn>58</mn><mo>-</mo><mn>57.5</mn><mo>&#62;</mo><mn>0</mn></math>, or <math alttext=\"0.5 greater than 0\"><mn>0.5</mn><mo>&#62;</mo><mn>0</mn></math>. Since <math alttext=\"0.5\"><mn>0.5</mn></math> is greater than <math alttext=\"0\"><mn>0</mn>\n</math>, it follows that if <math alttext=\"k equals 57.75\"><mi>k</mi><mo>=</mo><mn>57.75</mn></math>, or <math alttext=\"4 k equals 231\"><mrow>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>k</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>231</mn>\n</mrow>\n</math>, then the given equation has exactly one real solution. If <math alttext=\"4 k less than 231\"><mn>4</mn><mi>k</mi><mo>&#60;</mo><mn>231</mn></math>, then the discriminant, <math alttext=\"4 k minus 231\"><mrow>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>k</mi>\n\t</mrow>\n\t<mo>-</mo>\n\t<mn>231</mn>\n</mrow>\n</math>, is negative and the given equation has no solutions. Therefore, the minimum possible value of <math alttext=\"4 k\"><mrow>\n\t<mn>4</mn>\n\t<mi>k</mi>\n</mrow>\n</math> is <math alttext=\"231\"><mn>231</mn>\n</math>.</p>","stem":"<p style=\"text-align: center;\"><math alttext=\"StartRoot k minus x EndRoot equals 58 minus x\"><msqrt><mi>k</mi><mo>-</mo><mi>x</mi></msqrt><mo>=</mo><mrow><mn>58</mn></mrow><mo>-</mo><mi>x</mi></math></p>\n<p style=\"text-align: left;\">In the given equation, <math alttext=\"k\"><mi>k</mi>\n</math> is a constant. The equation has exactly one real solution. What is the minimum possible value of <math alttext=\"4 k\"><mrow>\n\t<mn>4</mn>\n\t<mi>k</mi>\n</mrow>\n</math>?</p>","type":"spr","correct_answer":["231"]},"createDate":1730147357396,"updateDate":1730147357396}$SATQ$::jsonb, 1730147357396, 1730147357396),
    ($SATQ$2c5c22d0$SATQ$, NULL, NULL, $SATQ$09411-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, $SATQ$<div class="stimulus_reference " xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1"><p class="standalone_statement style:1 "><span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_000_348668d1.png" alt="y equals, x squared, plus 3 x, minus 7, and, y minus 5 x, plus 8, equals 0
"></span></span></p></div>
$SATQ$, $SATQ$<p class="stem_paragraph ">How many solutions are there to the system of equations above?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p>There are exactly 4 solutions.</p>\n"},{"id":"b","content":"<p>There are exactly 2 solutions.</p>\n"},{"id":"c","content":"<p>There is exactly 1 solution.</p>\n"},{"id":"d","content":"<p>There are no solutions.</p>\n"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice C is correct. The second equation of the system can be rewritten as <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_001_9cc37aed.png" alt="y equals, 5 x minus 8"></span>. Substituting <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_002_2e502a62.png" alt="5 x minus 8"></span> for <span class="italic">y</span> in the first equation gives <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_003_ee952de0.png" alt="5 x minus 8, equals, x squared, plus 3 x, minus 7"></span>. This equation can be solved as shown below:<p><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_004_b2a08587.png" alt="x squared, plus 3 x, minus 7, minus 5 x, plus 8, equals 0"></span></p><p><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_005_2d56c028.png" alt="x squared, minus 2 x, plus 1, equals 0"></span></p><p><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_006_745a0279.png" alt="open parenthesis, x minus 1, close parenthesis, squared, equals 0"></span></p><p><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_007_70a1cc99.png" alt="x equals 1"></span></p><p>Substituting 1 for <span class="italic">x</span> in the equation <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_008_9cc37aed.png" alt="y equals, 5 x minus 8"></span> gives <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_009_c15c2e08.png" alt="y equals negative 3"></span>. Therefore, <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_010_9139cfa1.png" alt="the ordered pair 1 comma negative 3"></span> is the only solution to the system of equations.</p><p>Choice A is incorrect. In the <span class="italic">xy</span>-plane, a parabola and a line can intersect at no more than two points. Since the graph of the first equation is a parabola and the graph of the second equation is a line, the system cannot have more than 2 solutions. Choice B is incorrect. There is a single ordered pair <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_011_7284e904.png" alt="x comma y"></span> that satisfies both equations of the system. Choice D is incorrect because the ordered pair <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_012_9139cfa1.png" alt="1 comma negative 3"></span> satisfies both equations of the system.</p><p>&nbsp;</p></p>
$SATQ$, false, 13, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"2c5c22d0","external_id":null,"disclosed_item_id":"09411-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_000_348668d1.png\" alt=\"y equals, x squared, plus 3 x, minus 7, and, y minus 5 x, plus 8, equals 0\n\"></span></span></p></div>\n","stem":"<p class=\"stem_paragraph \">How many solutions are there to the system of equations above?</p>\n","answerOptions":[{"id":"a","content":"<p>There are exactly 4 solutions.</p>\n"},{"id":"b","content":"<p>There are exactly 2 solutions.</p>\n"},{"id":"c","content":"<p>There is exactly 1 solution.</p>\n"},{"id":"d","content":"<p>There are no solutions.</p>\n"}],"keys":null,"correct_answer":["C"],"rationale":"<p>Choice C is correct. The second equation of the system can be rewritten as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_001_9cc37aed.png\" alt=\"y equals, 5 x minus 8\"></span>. Substituting <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_002_2e502a62.png\" alt=\"5 x minus 8\"></span> for <span class=\"italic\">y</span> in the first equation gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_003_ee952de0.png\" alt=\"5 x minus 8, equals, x squared, plus 3 x, minus 7\"></span>. This equation can be solved as shown below:<p><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_004_b2a08587.png\" alt=\"x squared, plus 3 x, minus 7, minus 5 x, plus 8, equals 0\"></span></p><p><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_005_2d56c028.png\" alt=\"x squared, minus 2 x, plus 1, equals 0\"></span></p><p><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_006_745a0279.png\" alt=\"open parenthesis, x minus 1, close parenthesis, squared, equals 0\"></span></p><p><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_007_70a1cc99.png\" alt=\"x equals 1\"></span></p><p>Substituting 1 for <span class=\"italic\">x</span> in the equation <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_008_9cc37aed.png\" alt=\"y equals, 5 x minus 8\"></span> gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_009_c15c2e08.png\" alt=\"y equals negative 3\"></span>. Therefore, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_010_9139cfa1.png\" alt=\"the ordered pair 1 comma negative 3\"></span> is the only solution to the system of equations.</p><p>Choice A is incorrect. In the <span class=\"italic\">xy</span>-plane, a parabola and a line can intersect at no more than two points. Since the graph of the first equation is a parabola and the graph of the second equation is a line, the system cannot have more than 2 solutions. Choice B is incorrect. There is a single ordered pair <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_011_7284e904.png\" alt=\"x comma y\"></span> that satisfies both equations of the system. Choice D is incorrect because the ordered pair <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c5c22d0/img_012_9139cfa1.png\" alt=\"1 comma negative 3\"></span> satisfies both equations of the system.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":13,"raw_list":{"updateDate":1691007959637,"pPcc":"SAT#P","questionId":"2c5c22d0","skill_cd":"P.B.","score_band_range_cd":7,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1691007959637,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"09411-DC","external_id":null,"primary_class_cd":"P","uId":"cb007c32-1efa-4b00-8925-75c80e21fce8","difficulty":"H"},"raw_detail":{"item_id":"09411-DC","section":"Math","body":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGsAAAAwCAYAAAAW9oQ4AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAY00gKyAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADPUlEQVR4Xu2aAZLCIAxFe7weqMfpXbyKN2EbQoBGsAFC1dm8GWarVgj5Saiwy7fjHpuDP9g293AOro1vwz13ty6r258okBdu3d3x0gT7Nrw42yMK44682iy7fgPLrB8Bs2pxR6KpCfXYaC2ElsrtHZzXYt7utUUVXLtmCJVKKjrvs06igMxL/0/R6kRJBpbEd0dx3dfFrcdA4a3b4QEk4rmvL2sDTUZTdW8cGwcNRnH406CE3nJZmt+VfeEtFbqrB0bzWeFahMfUvWglI7hjfZBkY+Br3tf7yOsVi48NXNmnSSkwRLz8vpmQVUQ0MkTWaBlqFSsPiNJ3tO0rQVnV1TefcCnTtCBD4bInGMhWuHzXrsSLdjAbJPaN2oAB0+nffLHNr8PHJzScheuATjC0ZlZOrcxp2sdRqVpgoBdrYlYBqQzprAUjYpXWZW37OGTvUHn1Rm7726waBZ2D/fvoHYmugEQsGpffw8vRDPs4/PmgCzJ0XvqH8hkcgOONR69ILCo92dNXLgzeM8c+DvY76OOhJ5QLoiPyKNao3Q3E8bwd2EjgO+3j2dyFSifGfCSlxPgwKf3nPVQYhmEYhmEYhmEYxr8m//F9ajftCxJ4TpXarB2btCkObc5RyzRwk/iz+478QJEcqi0Y362ftXs/DW9wzz+HCJDsa9bu0T6zop16vnWnOo7fcWfO1DwikBjr72E2YDa8j0qRWOH4h9+jLlZlHNUTDUzVc2da6Rujbdv8ROAtaDz6uNNxgtfjS8QCUHhZGaQ+4fJd49+tnQKX/NsNH0Qzq+LE81PaEIHFcgH3VT4vIRULwAAgZ48HIqcW4FqB7+ETrkVCb8SVKJUGEhEua4HSY0MMvjyzGgJCyk1ipYUxvw4fT6E2AV6urpBkFgnD76mtJb1BySsUUQv+bsBJXiztjiuUxEplSh6FIrEqgVF7v5fWoOjGdzjhX9GkE0DH4dgtT2kjmYVj6jmxVpVa5iOCnKWdVcX1IoxFzotlJ0wIP5dFvEQsgJdXElC73HPbW+YiZpbxQBIstRehckfS/ZrReICCpTZjrkAq59CUhQLU66oxB2kpMT5IKkHzSoJhGIZhGIZhGO0syx94rp++yNWjQAAAAABJRU5ErkJggg==\" alt=\"y equals, x squared, plus 3 x, minus 7, and, y minus 5 x, plus 8, equals 0\n\"></span></span></p></div>\n","prompt":"<p class=\"stem_paragraph \">How many solutions are there to the system of equations above?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p>There are exactly 4 solutions.</p>\n"},"b":{"body":"<p>There are exactly 2 solutions.</p>\n"},"c":{"body":"<p>There is exactly 1 solution.</p>\n"},"d":{"body":"<p>There are no solutions.</p>\n"}},"correct_choice":"c","rationale":"<p>Choice C is correct. The second equation of the system can be rewritten as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEUAAAAWCAYAAACWl1FwAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABWUlEQVRYR+2Vaw6EIAyEPR4H4jjchat4ky6lPAs1rqD+kC8hukDS2emA29MAWNDuga/V0Bafj2F1Xd+Vf7R+BewG1KadNe+JIEOyBrD6XWO8AGVgf8mUmFRugDeKp3U3qhEL7pdRnc0DdIsz/B6mhbqrwLjJMHUJSupJUyhCdaxprhUi3gts8MLRZKW1F4ZTOJQr4DcEeDd9wyYYEiGDTxwfcjAXviMlycwiBbFz3JiUFmF9FDKamiIazrvTS85dkECW0mAGvkqNuZLY1OwyKZLxKdpoWfEeliuuHh8J6ZjymM9AulN6jfGgCG/KgylBeqbkeM+7SxCpAdI8CdHmMCUjnO0SCSQN3a/CAJIGqtkJQhRzV0q65znUjCLT0QxG0PrctDRfH+lOQQ4XJ5GNyaMxpBQc909MC0LG5CH+Z/Gy+SqxS/ysfZLy83rnsVksFovFYrH4i237AW/NXhgXm0BrAAAAAElFTkSuQmCC\" alt=\"y equals, 5 x minus 8\"></span>. Substituting <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAWCAYAAAC2ew6NAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABBUlEQVRIS+2U4Q2EIAyFGY+BGIddWMVNakup0AJ35iTeH76EaCra19eiIwASBLzQrVoh0fU1UtD5Mb3OD0cE7wLKNQ9ehEVWDZBCLzYHfYTjT0Klo9bBLL7tahcYkPeYYtgFDxGDJfQT3NEvQgFTR+/Ah5A3U4iWx+x5Q8FWfUSP1+ciBS76Q+uvg9S4JRVasZerk+dP4eLFrJsm8Ev6gEkBdDsblekfxKy2zdJV5ehdM9j6virbohXMZnRkVsdIaG3NutkkZqao+N1qZLipFeo0LmCmgXMWDcP5KKLkxWvuijhV6SK6Uz+a0Sq2rk5k+xHZv9BVgsXWtfqvstlsNpvNKpw7AUN6qWSDmhEeAAAAAElFTkSuQmCC\" alt=\"5 x minus 8\"></span> for <span class=\"italic\">y</span> in the first equation gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAAAeCAYAAADtubaCAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACB0lEQVRoQ+2XDZKDIAyFPZ4H4jjexav0JqyQDcSUKFrA3en7Zpj600LyeAQ6gXf86nz4oOb86n24Bt+Ify1+nma/vMgE0Rzz4rdbmOIbiQZwa5p8v9UHhyoBmK+sELQKeM8UTayUEaxuP/42/NDxNaxLyzj2OeataQT7s5FuIhbaN58tiyRUjoGDf8oUpEkPM+gcx5pCk4qBXPxPl0VrJUYBZaCDuDpRNZWkZDC/Kb7Mk5+3gX4fDUebNFIjfPyOMg119rnDrdXYwxBneeh/GTXc3VrYEDLHnjprironlzoXX4ZHoWnX6qRfy7x9tguSkq7bMlKZO2lHv7XyoHvd1/F2etcQJQ176ywpmS+LK16wc7QpUgfG+0/ZT0YfEQKt87hqCJln6Te9dQ5Yc2xCQe9XBncSLq1Sngx20qQQqXTKCjFAjHB5Z0u6k2OJFIeKoZfOktL8HmIdrHRpbwELoIO3gm4xIS3zuFohJJTjGJ2Z0tnllJIhcqlrW84t81097dfSOo9PDDFSZ4bjLVbf2tVJgVMn0b1X3HWCFQON2bgadcijxhA87pM6M6S3Ybbi/q2CTyX6Nzh639a9ukSySVqeIXrlUWUI1lke3sXk03f66xygfg8WWjZFbm9mkJN1Zw+qgEyRWxczDMjD4q/orKsSAAAAAAAAAAAAAAAAAAAAAAD8d6bpBwqaVVDymAI0AAAAAElFTkSuQmCC\" alt=\"5 x minus 8, equals, x squared, plus 3 x, minus 7\"></span>. This equation can be solved as shown below:<p><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJ0AAAAeCAYAAAA2AhygAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACcElEQVR4Xu2XC5KDIAyGPZ4H8jjexav0JiwQQUyTlkdwd3b+b4apUi15/IR0acEdmwsfNDZ3OBeuAZiDe+1uXVa3v0hoUYDr7vwthAfmEEW2HVlgzte5DdUOPAkqHXgUqnKL84XPTHDHlnrFMK5j/AnuvSofNrakmIXL2yhOjye4x9k2hyX3mA7GkHq7GYK7jmoy+FnhcbJIjERBcfvddkSOs73weP6G8tn6ck1FlETs/KG9r4tb/ULn1OPwBI0SYzepHamKs/JM9NNPnrfDaLkT14mTLCgUeBIZ//daQ00wJJLhpZHf7DunTJhWzb8kt9fH3s0dqLGrBW2d1776e7aJueH00OUs3YcAlONzJegVHV878M0+S6Tkj5B3/7bFhISpMHg16PWxNs4k4LrjNf1muPw0+LtacaK1BL3kYJ9qHT3eWkVXClt6x9o+ibRTLX87J7AQsrZOj48tcb4XD/tNq7VgamuWAhEue0pu7+7gZDuYDTX2jdpASdEruJWPAWmtWT7mlqWsdA3CrqVZdAFegkdo2YEc7WixtI8j9ZIz0RLR6mNNnJPA+DPaJuvdXLSOJjrBp6v0KopsZER0UkKs7eMke2cc2xJWPlaJThG4Nt9Lk7hpcQp43Gn+Lfqmn/pgfDdyhn0cbZeOUpuIXh+r4qzYQGsKFaiT/KfJ+3BORd78SUanSTJkPPhVwUhHWtlkF8GnZ+bYx7FOQELsp04fU2xGfKyJc4Af20mIXCCjcNvffMnOlsY83dvkpFzjLRkP2CceAUb8FR9JeNewFlziahPCsC8QAAAAAAAAAAAAAAAAAAAAAAAAAADgf7MsP0brVxUFoOQbAAAAAElFTkSuQmCC\" alt=\"x squared, plus 3 x, minus 7, minus 5 x, plus 8, equals 0\"></span></p><p><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAAAeCAYAAADaW7vzAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABm0lEQVRoQ+2X6xWDIAyFHY+BHIddXMVNUkIEFAUFG/XH/c7hVCmVkJuHHVqgaST+kDHSRMTX4A1otmQGQ3YWEbw4xpK7hShv4AUYp+h8cvkxIku+AzLkQ0h2DOQS5i9ikJPVmtCbZBhXG/m7N5hG3f23vTi1gS6kl2iIkcpfMPgNUbT3ludnvbhXlFs/LpC/LARma9z9/R7Vks2yp16GhuDLn80Zue7PHj+Z9QQ/tzir5DgtRPwkyJl9y9SOq4KkYJP1KoIUqsth8OWGy6J02HX0pKH3lpULcGZfidZ+F9bXBAlr+LI28j1LQZ0HXyQ6YVFSq46eIQbuD9Rjn4YgvZRKfmk+phRf7mraBXojZ00Q42j/K/bdteFTgjBSl/VKUY1YFivB0GqfRob0it5cslKfKKiliDi67oge+zQE6aWtqS+lgg3xzqlE6b8Jjq5GZad9nxLk6mtvTMFlUg7/TJaEqKmKccO+LwnC5LbvzhIPu0qZ+O95rZoSqQwdDbbpWfu0BWG2Z34m8AEAAAAAAAAAAAAAAAA8xzD8AGjMP/0GFrFyAAAAAElFTkSuQmCC\" alt=\"x squared, minus 2 x, plus 1, equals 0\"></span></p><p><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAAAgCAYAAAC4oZ4KAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAQ3ZOC+gAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABpElEQVRoQ+2WgZGEIAxFKY+CLIdebMVOciQBRSToukZuZ/JmmFVkJfx8gu7XgHkC/OE2wQyA10YLWAJ45yEsLBKJ5wPE2zGi1QGNAqIEwTuYon1SF0ECxc50G8fNMI1yGU8+XqzMlXiGOmyeHPgYXbr9F/QEYUGPLnwF3orjCqiULHFrUrx6Yu0PlobLl+B3teFNcnCSuw91i8brlY76/c35MMMjrE2JijFhEwUr3K99KGVH17GgPmvSeNAxCBpU1Q/qeyjgLXNci0TBiuJfCry150qJtNV53jSPdBrVRZX/9IxYJXkeWbB2Qnvkd+Jlr9XCSA7m5J4IhqwuS8pLi/oGDcHuItXHXX9PsGxRvJQOhbvZzJwLJsf3NBcFax/dGa5bep8c1wT7bP67Sby0JREUpRXwVmT1MnwqGAb70tf8paKPtIJiVXkh5DJhS37LmWBSMjXIu62e77D+eluulk6DWDwdl/UE42d67m5Rr1VcOz0glyWxCgtmQTVc1hMMt8Jb7irZShG2TsK0vrU+ZU3QS7XLMAzDMAzDMAzDMAzjV3HuD5V8EEf0emNXAAAAAElFTkSuQmCC\" alt=\"open parenthesis, x minus 1, close parenthesis, squared, equals 0\"></span></p><p><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAYCAYAAACWTY9zAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAONJREFUeNpjYBg40ALE24D4ORD/h/IHBfgCxMeAeOpgcxgTEhuvw1SA+DcQN6GJTwfiz0BsgkWPABGYjQhHEgwxkCM+AbEwlF8HxD+B2AWPgYRwCDUcJgnEX4G4G4hTgPgvEIfhUe9ABBalhsNAoBWIfwDxHyDOJqBWhAjMTi2HJUAVHibSQLpEpTM0TYGy8T8g1iNgIF2i0gia8KdCc9IDIN5Kp6IDp8NARcVLIF6DVL4kQjXY0cgxIUj4P9TuEOSolwDie0B8AC2hMgPxdWi00iqUcOFRMApGwSgYBaNgFBAAAN0VUq4uDCfjAAAAAElFTkSuQmCC\" alt=\"x equals 1\"></span></p><p>Substituting 1 for <span class=\"italic\">x</span> in the equation <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEUAAAAWCAYAAACWl1FwAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABWUlEQVRYR+2Vaw6EIAyEPR4H4jjchat4ky6lPAs1rqD+kC8hukDS2emA29MAWNDuga/V0Bafj2F1Xd+Vf7R+BewG1KadNe+JIEOyBrD6XWO8AGVgf8mUmFRugDeKp3U3qhEL7pdRnc0DdIsz/B6mhbqrwLjJMHUJSupJUyhCdaxprhUi3gts8MLRZKW1F4ZTOJQr4DcEeDd9wyYYEiGDTxwfcjAXviMlycwiBbFz3JiUFmF9FDKamiIazrvTS85dkECW0mAGvkqNuZLY1OwyKZLxKdpoWfEeliuuHh8J6ZjymM9AulN6jfGgCG/KgylBeqbkeM+7SxCpAdI8CdHmMCUjnO0SCSQN3a/CAJIGqtkJQhRzV0q65znUjCLT0QxG0PrctDRfH+lOQQ4XJ5GNyaMxpBQc909MC0LG5CH+Z/Gy+SqxS/ysfZLy83rnsVksFovFYrH4i237AW/NXhgXm0BrAAAAAElFTkSuQmCC\" alt=\"y equals, 5 x minus 8\"></span> gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADMAAAAWCAYAAABtwKSvAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA3UlEQVRYR+2V4QnFIAyEM54DOY67dBU3uUZjWnkaf1megh+Iom3xcklKu3F5Ak9lOISItN4PEeJxQQTg8nsKQgxwPHlWUrYIiAiO4FhN2RJicCAX+Lh9mPgLZWspzPuJZa+FCctG8FOep7QcjTqKX5AN6KWZ2PgerOyKiBgETKOthz2nZjHLWa2jNs2qYjILq7BKmiXMVEutL4v50JXZmO05q/Rh6Mq/kEu3boszncDrCyu68jSk6veh9+0GXgtqNVeURxAvdZh1aVq2G7+teUvqNrtqeh0Oh8NhU4huFslJS6TO32IAAAAASUVORK5CYII=\" alt=\"y equals negative 3\"></span>. Therefore, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC8AAAAcCAYAAADxyeavAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABMUlEQVRYR+1VgQ3DIAzLeRzEOfzCK3ziAYEtlMA0bWWthCXUlrLFcZyUJBAcDBm4AJStSwAIcIZg/YAX4GEvSLxiys9bgolvyuMlAW9BxsU6iATYLjbmpqu+KrEUJ17K6lVW7ROcAcWd8tggZxsvZ5Nn4i8BOa6SQNqXXNMPtWbIScXzaZ1JnivfcqgqH+M2LuFDgwxz5qlR1vdDJX90RNO476YMv19PnquuiCrFvhp5aVXNyqeSr+fT7WxpxCRqH7yxDXtr9GerlZfQrMN8xFifzfF/ktfGZd6TH6puQ2AFeSbZV5+Vbz+endAz6ywhX+JLAWtCMi5zUfpzpP6MfFZmULFP8Uwg3talVWIootYgM+SA9jfkZ9Aq8zXyODuMstsgVWo0Yjc2NjY2NjbuCaIHzEEY55XVgq0AAAAASUVORK5CYII=\" alt=\"the ordered pair 1 comma negative 3\"></span> is the only solution to the system of equations.</p><p>Choice A is incorrect. In the <span class=\"italic\">xy</span>-plane, a parabola and a line can intersect at no more than two points. Since the graph of the first equation is a parabola and the graph of the second equation is a line, the system cannot have more than 2 solutions. Choice B is incorrect. There is a single ordered pair <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAaCAYAAADWm14/AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABOUlEQVRIS+2T25EEIQhFDc+ADMdcTMVMGAFxEB/tVK1V+9Hnq8UWLxd0GsgRvPMQM0AN/RkAGaJ3ENIiN0CCcOlyYXtHCg582anLa0AK4HwsfigRbH0o+u5VL0xbkaMHVyJ1eR1yQd+H9tvhwJi1imKbOaFCzBmpWF/YOc4/jEl5YL7CKPnDkFJlppUc6891w7ibzOYCKX4eUvuMZ9UjXdE7AZwQbR+TzLCuzRxBjgUg3PezFyIVo1P6u243TAv4R1Gt4b6jgLVACwomAYvqERag9uQQLSqcgOPkwkELEH7ScVk9Qrn1a7EB6aVcymLOXBDhu7YNBes2tMtVAtm3Lkzf/cOL6fqvGWw5gIQVu/UZnpt19bi/ElcPnw8cVatcEffQyRpqNBd/LHILCu7btrb+5eXl5Z/i3Adpmyh1cg/XaQAAAABJRU5ErkJggg==\" alt=\"x comma y\"></span> that satisfies both equations of the system. Choice D is incorrect because the ordered pair <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC8AAAAcCAYAAADxyeavAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABMUlEQVRYR+1VgQ3DIAzLeRzEOfzCK3ziAYEtlMA0bWWthCXUlrLFcZyUJBAcDBm4AJStSwAIcIZg/YAX4GEvSLxiys9bgolvyuMlAW9BxsU6iATYLjbmpqu+KrEUJ17K6lVW7ROcAcWd8tggZxsvZ5Nn4i8BOa6SQNqXXNMPtWbIScXzaZ1JnivfcqgqH+M2LuFDgwxz5qlR1vdDJX90RNO476YMv19PnquuiCrFvhp5aVXNyqeSr+fT7WxpxCRqH7yxDXtr9GerlZfQrMN8xFifzfF/ktfGZd6TH6puQ2AFeSbZV5+Vbz+endAz6ywhX+JLAWtCMi5zUfpzpP6MfFZmULFP8Uwg3talVWIootYgM+SA9jfkZ9Aq8zXyODuMstsgVWo0Yjc2NjY2NjbuCaIHzEEY55XVgq0AAAAASUVORK5CYII=\" alt=\"1 comma negative 3\"></span> satisfies both equations of the system.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959637,"updateDate":1691007959637}$SATQ$::jsonb, 1691007959637, 1691007959637),
    ($SATQ$2c6f214f$SATQ$, $SATQ$19eed232-6ab6-4e1d-8586-46e6d6357a09$SATQ$::uuid, $SATQ$b328f2c2-2fcc-4f41-8029-513336c0f173$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">The first term of a sequence is <math alttext="9"><mn>9</mn>
</math>. Each term after the first is <math alttext="4"><mn>4</mn>
</math> times the preceding term. If <math alttext="w"><mi>w</mi>
</math> represents the <math alttext="n"><mi>n</mi>
</math>th term of the sequence, which equation gives <math alttext="w"><mi>w</mi>
</math> in terms of <math alttext="n"><mi>n</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"81f48401-dbae-4bc9-8874-2294c2ef741d","content":"<p><math alttext=\"w equals 4 left parenthesis 9 Superscript n Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>4</mn></mrow><mfenced><msup><mrow><mn>9</mn></mrow><mi>n</mi></msup></mfenced></math></p>"},{"id":"6f766b46-1d96-4bdb-889f-2141b0a7e8b7","content":"<p><math alttext=\"w equals 4 left parenthesis 9 Superscript n minus 1 Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>4</mn></mrow><mfenced><msup><mrow><mn>9</mn></mrow><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math></p>"},{"id":"9544d9e1-c049-4e14-ac03-c75e523da61e","content":"<p><math alttext=\"w equals 9 left parenthesis 4 Superscript n Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>9</mn></mrow><mfenced><msup><mrow><mn>4</mn></mrow><mi>n</mi></msup></mfenced></math></p>"},{"id":"8955e288-778c-40be-ba6d-2a6667e01888","content":"<p><math alttext=\"w equals 9 left parenthesis 4 Superscript n minus 1 Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>9</mn></mrow><mfenced><msup><mrow><mn>4</mn></mrow><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["8955e288-778c-40be-ba6d-2a6667e01888"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. Since <math alttext="w"><mi>w</mi>
</math> represents the <math alttext="n"><mi>n</mi>
</math>th term of the sequence and <math alttext="9"><mn>9</mn>
</math> is the first term of the sequence, the value of <math alttext="w"><mi>w</mi>
</math> is <math alttext="9"><mn>9</mn>
</math> when the value of <math alttext="n"><mi>n</mi>
</math> is <math alttext="1"><mn>1</mn>
</math>. Since each term after the first is <math alttext="4"><mn>4</mn>
</math> times the preceding term, the value of <math alttext="w"><mi>w</mi>
</math> is&nbsp;<math alttext="9 left parenthesis 4 right parenthesis"><mn>9</mn><mfenced><mn>4</mn></mfenced></math> when the value of <math alttext="n"><mi>n</mi>
</math> is <math alttext="2"><mn>2</mn>
</math>. Therefore, the value of <math alttext="w"><mi>w</mi>
</math> is&nbsp;<math alttext="9 left parenthesis 4 right parenthesis left parenthesis 4 right parenthesis"><mn>9</mn><mfenced><mn>4</mn></mfenced><mfenced><mn>4</mn></mfenced></math>, or&nbsp;<math alttext="9 left parenthesis 4 right parenthesis squared"><mn>9</mn><msup><mfenced><mn>4</mn></mfenced><mn>2</mn></msup></math>, when the value of <math alttext="n"><mi>n</mi>
</math> is <math alttext="3"><mn>3</mn>
</math>. More generally, the value of <math alttext="w"><mi>w</mi>
</math> is&nbsp;<math alttext="9 left parenthesis 4 Superscript n minus 1 Baseline right parenthesis"><mn>9</mn><mfenced><msup><mn>4</mn><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math> for a given value of <math alttext="n"><mi>n</mi>
</math>. Therefore, the equation&nbsp;<math alttext="w equals 9 left parenthesis 4 Superscript n minus 1 Baseline right parenthesis"><mi>w</mi><mo>=</mo><mn>9</mn><mfenced><msup><mn>4</mn><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math> gives <math alttext="w"><mi>w</mi>
</math> in terms of <math alttext="n"><mi>n</mi>
</math>.</p>
<p>Choice A is incorrect. This equation describes a sequence for which the first term is <math alttext="36"><mn>36</mn>
</math>, rather than <math alttext="9"><mn>9</mn>
</math>, and each term after the first is <math alttext="9"><mn>9</mn>
</math>, rather than <math alttext="4"><mn>4</mn>
</math>, times the preceding term.&nbsp;</p>
<p>Choice B is incorrect. This equation describes a sequence for which the first term is <math alttext="4"><mn>4</mn>
</math>, rather than <math alttext="9"><mn>9</mn>
</math>, and each term after the first is <math alttext="9"><mn>9</mn>
</math>, rather than <math alttext="4"><mn>4</mn>
</math>, times the preceding term.</p>
<p>Choice C is incorrect. This equation describes a sequence for which the first term is <math alttext="36"><mn>36</mn>
</math>, rather than <math alttext="9"><mn>9</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"2c6f214f","external_id":"19eed232-6ab6-4e1d-8586-46e6d6357a09","disclosed_item_id":null,"source":"qbank","vaultid":"b328f2c2-2fcc-4f41-8029-513336c0f173","uId":"0eeb3559-9c9d-4457-ba3b-f6eda64c52cb","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">The first term of a sequence is <math alttext=\"9\"><mn>9</mn>\n</math>. Each term after the first is <math alttext=\"4\"><mn>4</mn>\n</math> times the preceding term. If <math alttext=\"w\"><mi>w</mi>\n</math> represents the <math alttext=\"n\"><mi>n</mi>\n</math>th term of the sequence, which equation gives <math alttext=\"w\"><mi>w</mi>\n</math> in terms of <math alttext=\"n\"><mi>n</mi>\n</math>?</p>","answerOptions":[{"id":"81f48401-dbae-4bc9-8874-2294c2ef741d","content":"<p><math alttext=\"w equals 4 left parenthesis 9 Superscript n Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>4</mn></mrow><mfenced><msup><mrow><mn>9</mn></mrow><mi>n</mi></msup></mfenced></math></p>"},{"id":"6f766b46-1d96-4bdb-889f-2141b0a7e8b7","content":"<p><math alttext=\"w equals 4 left parenthesis 9 Superscript n minus 1 Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>4</mn></mrow><mfenced><msup><mrow><mn>9</mn></mrow><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math></p>"},{"id":"9544d9e1-c049-4e14-ac03-c75e523da61e","content":"<p><math alttext=\"w equals 9 left parenthesis 4 Superscript n Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>9</mn></mrow><mfenced><msup><mrow><mn>4</mn></mrow><mi>n</mi></msup></mfenced></math></p>"},{"id":"8955e288-778c-40be-ba6d-2a6667e01888","content":"<p><math alttext=\"w equals 9 left parenthesis 4 Superscript n minus 1 Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>9</mn></mrow><mfenced><msup><mrow><mn>4</mn></mrow><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math></p>"}],"keys":["8955e288-778c-40be-ba6d-2a6667e01888"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. Since <math alttext=\"w\"><mi>w</mi>\n</math> represents the <math alttext=\"n\"><mi>n</mi>\n</math>th term of the sequence and <math alttext=\"9\"><mn>9</mn>\n</math> is the first term of the sequence, the value of <math alttext=\"w\"><mi>w</mi>\n</math> is <math alttext=\"9\"><mn>9</mn>\n</math> when the value of <math alttext=\"n\"><mi>n</mi>\n</math> is <math alttext=\"1\"><mn>1</mn>\n</math>. Since each term after the first is <math alttext=\"4\"><mn>4</mn>\n</math> times the preceding term, the value of <math alttext=\"w\"><mi>w</mi>\n</math> is&nbsp;<math alttext=\"9 left parenthesis 4 right parenthesis\"><mn>9</mn><mfenced><mn>4</mn></mfenced></math> when the value of <math alttext=\"n\"><mi>n</mi>\n</math> is <math alttext=\"2\"><mn>2</mn>\n</math>. Therefore, the value of <math alttext=\"w\"><mi>w</mi>\n</math> is&nbsp;<math alttext=\"9 left parenthesis 4 right parenthesis left parenthesis 4 right parenthesis\"><mn>9</mn><mfenced><mn>4</mn></mfenced><mfenced><mn>4</mn></mfenced></math>, or&nbsp;<math alttext=\"9 left parenthesis 4 right parenthesis squared\"><mn>9</mn><msup><mfenced><mn>4</mn></mfenced><mn>2</mn></msup></math>, when the value of <math alttext=\"n\"><mi>n</mi>\n</math> is <math alttext=\"3\"><mn>3</mn>\n</math>. More generally, the value of <math alttext=\"w\"><mi>w</mi>\n</math> is&nbsp;<math alttext=\"9 left parenthesis 4 Superscript n minus 1 Baseline right parenthesis\"><mn>9</mn><mfenced><msup><mn>4</mn><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math> for a given value of <math alttext=\"n\"><mi>n</mi>\n</math>. Therefore, the equation&nbsp;<math alttext=\"w equals 9 left parenthesis 4 Superscript n minus 1 Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mn>9</mn><mfenced><msup><mn>4</mn><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math> gives <math alttext=\"w\"><mi>w</mi>\n</math> in terms of <math alttext=\"n\"><mi>n</mi>\n</math>.</p>\n<p>Choice A is incorrect. This equation describes a sequence for which the first term is <math alttext=\"36\"><mn>36</mn>\n</math>, rather than <math alttext=\"9\"><mn>9</mn>\n</math>, and each term after the first is <math alttext=\"9\"><mn>9</mn>\n</math>, rather than <math alttext=\"4\"><mn>4</mn>\n</math>, times the preceding term.&nbsp;</p>\n<p>Choice B is incorrect. This equation describes a sequence for which the first term is <math alttext=\"4\"><mn>4</mn>\n</math>, rather than <math alttext=\"9\"><mn>9</mn>\n</math>, and each term after the first is <math alttext=\"9\"><mn>9</mn>\n</math>, rather than <math alttext=\"4\"><mn>4</mn>\n</math>, times the preceding term.</p>\n<p>Choice C is incorrect. This equation describes a sequence for which the first term is <math alttext=\"36\"><mn>36</mn>\n</math>, rather than <math alttext=\"9\"><mn>9</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959825,"pPcc":"SAT#P","questionId":"2c6f214f","skill_cd":"P.C.","score_band_range_cd":6,"skill_desc":"Nonlinear functions","createDate":1691007959825,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"19eed232-6ab6-4e1d-8586-46e6d6357a09","primary_class_cd":"P","uId":"0eeb3559-9c9d-4457-ba3b-f6eda64c52cb","difficulty":"H"},"raw_detail":{"keys":["8955e288-778c-40be-ba6d-2a6667e01888"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. Since <math alttext=\"w\"><mi>w</mi>\n</math> represents the <math alttext=\"n\"><mi>n</mi>\n</math>th term of the sequence and <math alttext=\"9\"><mn>9</mn>\n</math> is the first term of the sequence, the value of <math alttext=\"w\"><mi>w</mi>\n</math> is <math alttext=\"9\"><mn>9</mn>\n</math> when the value of <math alttext=\"n\"><mi>n</mi>\n</math> is <math alttext=\"1\"><mn>1</mn>\n</math>. Since each term after the first is <math alttext=\"4\"><mn>4</mn>\n</math> times the preceding term, the value of <math alttext=\"w\"><mi>w</mi>\n</math> is&nbsp;<math alttext=\"9 left parenthesis 4 right parenthesis\"><mn>9</mn><mfenced><mn>4</mn></mfenced></math> when the value of <math alttext=\"n\"><mi>n</mi>\n</math> is <math alttext=\"2\"><mn>2</mn>\n</math>. Therefore, the value of <math alttext=\"w\"><mi>w</mi>\n</math> is&nbsp;<math alttext=\"9 left parenthesis 4 right parenthesis left parenthesis 4 right parenthesis\"><mn>9</mn><mfenced><mn>4</mn></mfenced><mfenced><mn>4</mn></mfenced></math>, or&nbsp;<math alttext=\"9 left parenthesis 4 right parenthesis squared\"><mn>9</mn><msup><mfenced><mn>4</mn></mfenced><mn>2</mn></msup></math>, when the value of <math alttext=\"n\"><mi>n</mi>\n</math> is <math alttext=\"3\"><mn>3</mn>\n</math>. More generally, the value of <math alttext=\"w\"><mi>w</mi>\n</math> is&nbsp;<math alttext=\"9 left parenthesis 4 Superscript n minus 1 Baseline right parenthesis\"><mn>9</mn><mfenced><msup><mn>4</mn><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math> for a given value of <math alttext=\"n\"><mi>n</mi>\n</math>. Therefore, the equation&nbsp;<math alttext=\"w equals 9 left parenthesis 4 Superscript n minus 1 Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mn>9</mn><mfenced><msup><mn>4</mn><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math> gives <math alttext=\"w\"><mi>w</mi>\n</math> in terms of <math alttext=\"n\"><mi>n</mi>\n</math>.</p>\n<p>Choice A is incorrect. This equation describes a sequence for which the first term is <math alttext=\"36\"><mn>36</mn>\n</math>, rather than <math alttext=\"9\"><mn>9</mn>\n</math>, and each term after the first is <math alttext=\"9\"><mn>9</mn>\n</math>, rather than <math alttext=\"4\"><mn>4</mn>\n</math>, times the preceding term.&nbsp;</p>\n<p>Choice B is incorrect. This equation describes a sequence for which the first term is <math alttext=\"4\"><mn>4</mn>\n</math>, rather than <math alttext=\"9\"><mn>9</mn>\n</math>, and each term after the first is <math alttext=\"9\"><mn>9</mn>\n</math>, rather than <math alttext=\"4\"><mn>4</mn>\n</math>, times the preceding term.</p>\n<p>Choice C is incorrect. This equation describes a sequence for which the first term is <math alttext=\"36\"><mn>36</mn>\n</math>, rather than <math alttext=\"9\"><mn>9</mn>\n</math>.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">The first term of a sequence is <math alttext=\"9\"><mn>9</mn>\n</math>. Each term after the first is <math alttext=\"4\"><mn>4</mn>\n</math> times the preceding term. If <math alttext=\"w\"><mi>w</mi>\n</math> represents the <math alttext=\"n\"><mi>n</mi>\n</math>th term of the sequence, which equation gives <math alttext=\"w\"><mi>w</mi>\n</math> in terms of <math alttext=\"n\"><mi>n</mi>\n</math>?</p>","externalid":"19eed232-6ab6-4e1d-8586-46e6d6357a09","templateid":"6b61cec2-0212-4e86-804a-60585eb90a89","vaultid":"b328f2c2-2fcc-4f41-8029-513336c0f173","type":"mcq","answerOptions":[{"id":"81f48401-dbae-4bc9-8874-2294c2ef741d","content":"<p><math alttext=\"w equals 4 left parenthesis 9 Superscript n Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>4</mn></mrow><mfenced><msup><mrow><mn>9</mn></mrow><mi>n</mi></msup></mfenced></math></p>"},{"id":"6f766b46-1d96-4bdb-889f-2141b0a7e8b7","content":"<p><math alttext=\"w equals 4 left parenthesis 9 Superscript n minus 1 Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>4</mn></mrow><mfenced><msup><mrow><mn>9</mn></mrow><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math></p>"},{"id":"9544d9e1-c049-4e14-ac03-c75e523da61e","content":"<p><math alttext=\"w equals 9 left parenthesis 4 Superscript n Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>9</mn></mrow><mfenced><msup><mrow><mn>4</mn></mrow><mi>n</mi></msup></mfenced></math></p>"},{"id":"8955e288-778c-40be-ba6d-2a6667e01888","content":"<p><math alttext=\"w equals 9 left parenthesis 4 Superscript n minus 1 Baseline right parenthesis\"><mi>w</mi><mo>=</mo><mrow><mn>9</mn></mrow><mfenced><msup><mrow><mn>4</mn></mrow><mrow><mi>n</mi><mo>-</mo><mn>1</mn></mrow></msup></mfenced></math></p>"}],"correct_answer":["D"]},"createDate":1691007959825,"updateDate":1691007959825}$SATQ$::jsonb, 1691007959825, 1691007959825),
    ($SATQ$2c88af4d$SATQ$, NULL, NULL, $SATQ$00538-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">The expression <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_004_678b3c8d.png" alt="the fraction with numerator x to the power negative 2, end power, times y to the power one-half, and denominator x to the power one-third, end power, times y to the power negative 1, end fraction"></span></span>, where <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_005_e378b4a1.png" alt="x is greater than 1 "></span></span> and <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_006_7ae62c81.png" alt="y is greater than 1 "></span></span>, is equivalent to which of the following?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_000_ab9d7d74.png\" alt=\"The fraction with numerator the square root of y and denominator the cube root of x squared\"></span></span></span></p>\n"},{"id":"b","content":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_001_ba2759ee.png\" alt=\"The fraction with numerator y times the square root of y and denominator the cube root of x squared\"></span></span></span></p>\n"},{"id":"c","content":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_002_6db9163f.png\" alt=\"The fraction with numerator y times the square root of y and denominator x times the square root of x\"></span></span></span></p>\n"},{"id":"d","content":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_003_4c0fdd76.png\" alt=\"The fraction with numerator y times the square root of y and denominator x squared times the cube root of x\"></span></span></span></p>\n"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice D is correct. For <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_007_f62215b1.png" alt="x is greater than 1"></span> and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_008_7ae62c81.png" alt="y is greater than 1 "></span>, <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_009_e595c759.png" alt="x to the one third power"></span> and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_010_0ee94dbd.png" alt="y to the one half power"></span> are equivalent to <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_011_9df7ba66.png" alt="the cube root of x"></span> and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_012_4a931a78.png" alt="the square root of y"></span>, respectively. Also, <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_013_d59fdab3.png" alt="x to the negative 2 power "></span> and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_014_848f3e20.png" alt="y to the negative 1 power"></span> are equivalent to <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_015_2a5a2da3.png" alt="the fraction 1 over x squared, end fraction"></span> and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_016_edb017b4.png" alt="1 over y"></span>, respectively. Therefore, the given expression can be rewritten as <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_017_4c0fdd76.png" alt="the fraction with numerator, y times the square root of y, and denominator x squared, times the cube root of x, end fraction"></span>.<p>Choices A, B, and C are incorrect because these choices are not equivalent to the given expression for <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_018_f62215b1.png" alt="x is greater than 1"></span> and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_019_7ae62c81.png" alt="y is greater than 1"></span>.</p><p>For example, for <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_020_4a24f52d.png" alt="x equals 2"></span> and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_021_39eed313.png" alt="y equals 2"></span>, the value of the given expression is <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_022_0ee29c85.png" alt="2 to the negative five sixths power"></span>; the values of the choices, however, are <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_023_42af7a07.png" alt="2 to the negative one third power"></span>, <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_024_7dc0f885.png" alt="2 to the five sixths power"></span>, and 1, respectively.</p><p>&nbsp;</p></p>
$SATQ$, false, 25, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"2c88af4d","external_id":null,"disclosed_item_id":"00538-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">The expression <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_004_678b3c8d.png\" alt=\"the fraction with numerator x to the power negative 2, end power, times y to the power one-half, and denominator x to the power one-third, end power, times y to the power negative 1, end fraction\"></span></span>, where <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_005_e378b4a1.png\" alt=\"x is greater than 1 \"></span></span> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_006_7ae62c81.png\" alt=\"y is greater than 1 \"></span></span>, is equivalent to which of the following?</p>\n","answerOptions":[{"id":"a","content":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_000_ab9d7d74.png\" alt=\"The fraction with numerator the square root of y and denominator the cube root of x squared\"></span></span></span></p>\n"},{"id":"b","content":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_001_ba2759ee.png\" alt=\"The fraction with numerator y times the square root of y and denominator the cube root of x squared\"></span></span></span></p>\n"},{"id":"c","content":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_002_6db9163f.png\" alt=\"The fraction with numerator y times the square root of y and denominator x times the square root of x\"></span></span></span></p>\n"},{"id":"d","content":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_003_4c0fdd76.png\" alt=\"The fraction with numerator y times the square root of y and denominator x squared times the cube root of x\"></span></span></span></p>\n"}],"keys":null,"correct_answer":["D"],"rationale":"<p>Choice D is correct. For <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_007_f62215b1.png\" alt=\"x is greater than 1\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_008_7ae62c81.png\" alt=\"y is greater than 1 \"></span>, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_009_e595c759.png\" alt=\"x to the one third power\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_010_0ee94dbd.png\" alt=\"y to the one half power\"></span> are equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_011_9df7ba66.png\" alt=\"the cube root of x\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_012_4a931a78.png\" alt=\"the square root of y\"></span>, respectively. Also, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_013_d59fdab3.png\" alt=\"x to the negative 2 power \"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_014_848f3e20.png\" alt=\"y to the negative 1 power\"></span> are equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_015_2a5a2da3.png\" alt=\"the fraction 1 over x squared, end fraction\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_016_edb017b4.png\" alt=\"1 over y\"></span>, respectively. Therefore, the given expression can be rewritten as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_017_4c0fdd76.png\" alt=\"the fraction with numerator, y times the square root of y, and denominator x squared, times the cube root of x, end fraction\"></span>.<p>Choices A, B, and C are incorrect because these choices are not equivalent to the given expression for <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_018_f62215b1.png\" alt=\"x is greater than 1\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_019_7ae62c81.png\" alt=\"y is greater than 1\"></span>.</p><p>For example, for <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_020_4a24f52d.png\" alt=\"x equals 2\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_021_39eed313.png\" alt=\"y equals 2\"></span>, the value of the given expression is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_022_0ee29c85.png\" alt=\"2 to the negative five sixths power\"></span>; the values of the choices, however, are <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_023_42af7a07.png\" alt=\"2 to the negative one third power\"></span>, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2c88af4d/img_024_7dc0f885.png\" alt=\"2 to the five sixths power\"></span>, and 1, respectively.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":25,"raw_list":{"updateDate":1691007959614,"pPcc":"SAT#P","questionId":"2c88af4d","skill_cd":"P.A.","score_band_range_cd":6,"skill_desc":"Equivalent expressions","createDate":1691007959614,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"00538-DC","external_id":null,"primary_class_cd":"P","uId":"5d0a7678-34a9-4bf9-8b8f-7e6143c3cacb","difficulty":"H"},"raw_detail":{"item_id":"00538-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">The expression <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADsAAABKCAYAAAAFWyzXAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAliyBG2QAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACYElEQVR4Xu2aAXKEIAxFPZ4H8jjexat4E0oSA8hSOy4hWMybcbpdp8LPT6IFp/+K21c3z6vbnXPHV2PitgUEuml0sc7LW9fN/3iJs4CJHRUTaxiPBlL1zmGoEJ548FicfyQYM/rYNafZrb5t4u8gfNQuiuKWLQhz3telwl18XJxjfc4+injiidQ6u69zEEhZo1QWMLD/UTxKESdXJ+eN/jj3DbVZ0gxyQU4osC2y1xOBunFsUrVw3YoJhajltYXf3Zx03o1zsBSycUITShobQ6krFzgkry+qz/uDlOs61hm5fq67q0yggJevVUVw96i3Fm3+4z584WpTuKnAx1aD5xlUcloNSpt2g7OTkDXp5+O0HrHehBtCBgQUxfZylQamSaC7DWsIg7qsfVzlOmKBV91RAg6suqtBaDJw6w7JjbBLrWpDvaFTB9Ykv/UMSSyXl6SvoQSm1KCHYRiG7wbw6DfqInhKeKAfXSz+s2AvdgyMiR2VV4k1BgFS9c5hGDfBxviKRTvtdeewtoyDtt0uSaG9KD/epugsrP3yKiFGuuF2SYluaSwhtryJTUdp6VVdbExlvTRm+jnrh9R+ZadKbHjFIPnj0AwKrp1q9g+xmKLZtWs3z6rE5nswVEO/p+e5G1/v3dCt4jwx+u779K9O4+AuXkhuT4YmFoXVuioCTepwS3AiedaUnO4C1ansRNhJyJT083G6D/FeJ38rgSCi2Ce4SpOgCaG7wvWEgez10kgK1xQLrO2UJTiYXV0NQpNJtOiW3Py616oG1A8e0IFbk996hiSWyEvS1zAMw3g30/QDuiNBLB+O3CMAAAAASUVORK5CYII=\" alt=\"the fraction with numerator x to the power negative 2, end power, times y to the power one-half, and denominator x to the power one-third, end power, times y to the power negative 1, end fraction\"></span></span>, where <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB0AAAASCAYAAACnxdXaAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAJufgqOgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAtklEQVRIS+2T0Q3DIAxEPZ4H8jjs4lXY5GqDiaKGAE2lqh+8nwjb3BlD6BcACiFGykCE1oEK2HbGcolqSLbnoamTEy8L1FoCizX7vgfISGzJOMXRnWhXeJZvZFVTNnK6mjo1ISZnkjIXdHzc/rHSYe2tqeNmzDYSTqXDCE9RGY97aFo7r6eN0JCvT1oT/soWRBbvtNE1PT+kUjAY7yevt3Ex7XVd7tYqYnnw5D91bse72Wz+FKIXv571wTYir98AAAAASUVORK5CYII=\" alt=\"x is greater than 1 \"></span></span> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAWCAYAAABKbiVHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAzUlEQVRIS+2T4Q3EIAhGHY+BGIddXMVNOBHJeblasfXij+tL2thU4PVrDLuIGBgocX3cB0cUiTUyzJExYL7zdLNEUETk6sqUTUCcmgGcnwhyIcavIhWSpn4pTQSYktZ2ZXTjZ+N3cX/YJala05dJxNAMPkvliBmpsUzdkGerzEFSHrTPeZ1DRpOQDe26vh6yNBnBzv5MKjMShkumnCgkVypXJAyXjCYyHqDN5iUMn0w5UeNU7uL/TTe+eBlma0d7CyYhy1//noeHhz8khBfO9k06+WWqBwAAAABJRU5ErkJggg==\" alt=\"y is greater than 1 \"></span></span>, is equivalent to which of the following?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAyCAYAAAAqRkmtAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACmklEQVRoQ+2Yre/yMBDHERAsQaEIOIIChwM5iUAgSTD8ARM4JBKJWYJEIpEIBEERFBIcEom8p9eXvfTZoNtKfxP7JA1rSdbbt+317gq66XQ6QH6SNHPs93uwLMvspEkYj8ew3W6zbejr9YJarQbv9zvbhq7Xa5jNZtlf9l6vB6fTKduG3m43aLVaoUY+HHK4LAceAO7/QHqORU66fTD7YfP5HJbLZeikcLDJuA0Hv6F0zAKHWM+HzICH6Pl8hhv6cMDyGfVnan7znUC0tMkPsYsZGqKwVjabDTSbTUA3xIco33ynUNBCSX3P/G+9DAYDmEwm0G63YTgcupOo+s6DzQ39tZqC6/UKxWLRVVXVd9KTbzu/VVOm2+26qqr6TqYkBh4G1BQIVc/nc6TvlGEn36CaAlS1Wq1G+k4ZuvQm1RSgquVyOdJ3+pHdU+YQBuKj8SXPiQldpgy2nJycTJGiMvKp6QUjJ4ygeDe7LBYLwMa7fwOLeMRShEc+uOyXyyW2oV58Gv1uJeSUgUXowazxfr9Do9GIPcF/WSnOJeX9iWEvD3550hIONcz30SzK0hSrhimKKTKmyrybGC2Kensp+MWYdVYqldSVO+1BNaa7fkV3u10gbU6CyKO0GYnI+wpzfCxI8G5s2EppqD3RPcn3TVh141Otiaov7Tk6xg2TT31q2Mt586n57TaS9x3zx55hQf8sWopTH1VrUrmNXFV/nc+LWlO9XofpdBqYROU2EgcFH2W39hNWqxV1Q7wb6zZiW0eTI1cByzfH45FOFqsoRhXVeGi+0e/3ARs+q9xG4pLAfUlVNbH0CKqJqqrcRm51hBunzV+qggaORqOPt5FXwvH2pfF6PT/5qW4jI6AvLZVKStW7nBytFAr/AOrKB2FT6+F5AAAAAElFTkSuQmCC\" alt=\"The fraction with numerator the square root of y and denominator the cube root of x squared\"></span></span></span></p>\n"},"b":{"body":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAyCAYAAAAnWDnqAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACx0lEQVRoQ+2Yr4/CMBTHERAsQaEIOIIChwM5iUAgSTD8ARM4JBKJWYJEIpEIBEERFBIcEol8t9cfY+t1W7tfdyT7JA1rb/faffv62r5CFnQ6HbB/opTs2e/3YBjG33QehfF4DNvt9jsG/Hq9oFarwfv9/o4Br9drmM1m3+MOvV4PTqdTNgN+WPZCMSx4ADgdgl2zDHv1mofQQdxuN2i1WtL34tqWAgfT/kcTDm6jpM0Ay+6JNfkyn89huVxK34trWwo8LDBcBnQVwMX2fD6l78a1LQXs7zftH9sGNSpRxY+w2BvHti/8qw2UwfXM/kzYbDbQbDYBwxdrIoTFXhXbkTiYzKhEgcFgAJPJBNrtNgyHQ6ddNfYG2Y4MWc2mFajA9XqFYrHoqKwae1Vsa0O/Hg8hwQp0u11HZdXYq2pbC7qawxXgKp/PZ9/YK6JqWwsybYoKoMrVatU39oro2FZCDD1hoMrlctk39rrRtR0IN4aPiU6XTZq2c9KATNU/Ljk5OV9LjMxOUEkHPJnhCY1V/z+LxQKwsOrfQk9UfIrkJyt0h8vloj3gz3nY37YW4tWF3hC8t9r7/Q6NRkO7o1+3ZuxLyFPEhnbiVSJqKooM0PXx9BSX4NkYkSmMV3m80rNqZBJV+ONrXgXwVlypVGJnJhM9zLvBa7lb4d1u57neR4Hf6xIfLCL6HeYkMJHCqtrQmYuRSxMhPsv8SpadCcqdkdkQfJK0sQGKUSIxaCesuNQN291Ev6Tx/DNAb3znJYEo4Zc7U9ndHJXTyD/I4Lmzer0O0+nU05nK7sYXFD6K4TBVVqsVCV+sqrW7UZdKeENQAdNQx+ORdKqV7CMKp7C4wuj3+4AFn1V2N77ZoN8SlbN0CQTVRZVVdjcnu8MGmXi8VQUHOhqNAne3Tyrq47c8hmeuMosUsXa3TMFYXCqVlLKTOTmZUSj8AAMCnVSpYhKsAAAAAElFTkSuQmCC\" alt=\"The fraction with numerator y times the square root of y and denominator the cube root of x squared\"></span></span></span></p>\n"},"c":{"body":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAyCAYAAAAnWDnqAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACCElEQVRoQ+2Yra7CMBiGEUvwKCyOTA03iaxEIpFcwAR3wCVgliC5BOQkQaKwuEkk8qM/21h2+vO1PYPDSZ9kYZTxtnvXflnfwTtIkgToh8vxfo7HIxBCPtO5C8vlEg6Hw3cM+H6/w3g8hsfj8R0D3u12sF6vv2c6pGkKp9PpPQO+5XShkBxuAE2HQL/lhK7erDAO4nq9wnQ6lV7nqy0Fioz+MYOiLcrbCOS0p6pJyWazge12K73OV1sK3HIgLQFbB9hiK8tSeq2vthSg95/RD6ohRCWuqDDVXh9tJfVdE2ZD67z6mbPf72EymQArX1UTx1R7MdpOFFklKnFgPp/DarWCOI5hsVg07djaq9N2hq/mLNc6cLlcIIqixmVs7cVoWyPunr2E6B2YzWaNy9jai9W2QqxmswO1y+fzWVl7u2C1reCPDekAc3k0GilrbxcbbRTd0mOCuTwcDpW1t42ttpZajJ3+6uOi9Kkd6AP+qP7wEQgE/i0h+emTkPz0SUh+dLBNYjed4W3IsEOX/PhqS+m+ZIsdAl5Qm/x4aitpnHDYf+mSH4aPtpJ6o8hObWIkTO111TYi5pZ8s+ia/NTotJ0Qc4uJ/pxfvsmPTtuJOuhgc4s7oXhsLskPVhtNs7uthEQHaidskh9bbSOvrfhrbpnyW2zy46LdG7bJz8exSX4CgUAgUDEYPAEGO0CKswXJUwAAAABJRU5ErkJggg==\" alt=\"The fraction with numerator y times the square root of y and denominator x times the square root of x\"></span></span></span></p>\n"},"d":{"body":"<p><span class=\"choice_cell align:center \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADcAAAAyCAYAAAD4FkP1AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACeUlEQVRoQ+2Yr+7CMBDHESR4FBZHUOCQyEkkEskDTPAGPAJmCZJHQCIJEoXFIZHI+/X/9uu6tV1bGKSfZGF0y+161911384nmUwmgH6aHO3meDxCkiTtd7QJy+USDofD703u+XzCYDCA1+v1e5Pb7XawXq9/c0nOZjM4n8/tm9w9Q0UgyeAOIJwD9C9LUBVLT1qHb7cbjEYj5X2utp2BU4oeksKp6AAZSyBDXrGhSjabDWy3W+V9rradgXsGSeFhtpHFheTxeCjvdbXtDKC4pugHPY86oIh2Fbre5mLbCzyaCQ5v4ZxdJuz3exgOh4BLPhsi6Hqbie3gnFLmgCKy8/kcVqsVjMdjWCwWYty0t9XZfgukqqVZbWSv1yt0u12RPdPeZmI7KDSqeANbH9npdCqyZ9rbTG0Hg1Y1fWR59i6XS2VvkzG1HQyydAwji7PX7/cre5uMjW3vyOVaB85er9er7G1FbG17gz8Yn/peMiFtR74dsix+5IhEIt9Gvg/Ex4d2FSEofTXjiUr6RxG6rdIHohUqNJlM4fOf7jLUTtMM59foZ01ZOmitCq3LXBGa9XIgWqlC2254VZlrpQrNv79MJpYXoHLWWqdCU2ftNUWsk8iZe6sKTRyQ3iEyxiYjV0sb5GJUp0Lr/GBDdsjvES3lucH/pZ0f6mpJ7mUOqiS7WhVa40djRNQ86Bo02uyQlmSdCo3x6YeAFwt8qupLPjDpbcH8oBFXLzcbmqrQHF9+CPL3ym2Nu6rQvvwQ8J6E1zeJmofl0ESF9u6HUKOYIfoAP1GzUaG9+yEMFtY3L98+s6dToUP7EQxbFfqrsFGhI5FIJBJpTKfzB5OM+3Kowjx2AAAAAElFTkSuQmCC\" alt=\"The fraction with numerator y times the square root of y and denominator x squared times the cube root of x\"></span></span></span></p>\n"}},"correct_choice":"d","rationale":"<p>Choice D is correct. For <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAYCAYAAAB9ejRwAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAO1JREFUeNpjYBgY0ALE24D4ORD/h/KpBnKAmJ0MfV+A+BgQT6WFo55AMamOY0Ji43WUChD/BuImNPHpQPwZiE2w6GGHOohcxzEQE1IgB3wCYmEovw6IfwKxCwGDKXEcQUdJAvFXIO4G4hQg/gvEYST4Gua4N1DLqOIoEGgF4h9A/AeIs0mMCpo5KgGq8DAZjqFJ9DlD0xAou/4DYj0aOoYoRxlBEzmo7GAD4gdAvJVGRQJRjgIVBy+BeA1SGZII1WBHg8IzBAn/h9oL44OBBBDfA+IDaBYwA/F1aFRSG/zHg0fBKBgFo2AUjIIRBwB7Tk7tVodZKwAAAABJRU5ErkJggg==\" alt=\"x is greater than 1\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAWCAYAAABKbiVHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAzUlEQVRIS+2T4Q3EIAhGHY+BGIddXMVNOBHJeblasfXij+tL2thU4PVrDLuIGBgocX3cB0cUiTUyzJExYL7zdLNEUETk6sqUTUCcmgGcnwhyIcavIhWSpn4pTQSYktZ2ZXTjZ+N3cX/YJala05dJxNAMPkvliBmpsUzdkGerzEFSHrTPeZ1DRpOQDe26vh6yNBnBzv5MKjMShkumnCgkVypXJAyXjCYyHqDN5iUMn0w5UeNU7uL/TTe+eBlma0d7CyYhy1//noeHhz8khBfO9k06+WWqBwAAAABJRU5ErkJggg==\" alt=\"y is greater than 1 \"></span>, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAA8CAYAAACTiBHmAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAeOiuv/QAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA3ElEQVRYR+2ViwnEIAyGHc+BHMddXKWb5JL4qBzlrkpSuOP/wApW8uelBgvoyBRDokJEbckWKkkM83ASKUmMR8rFORLBPV0CRJb4H5GfRNKxOsCDHDlOuXdo4XrFn4ZVMBVbkXceOZCukbi/jDP6SrrXRCL6JqKexEzHFPJ4w3mxLQ20Bm0/8TfHQJE3tt/XEGc08cTO6MZ6Bq4FOtWJNu6makSj7XjDsx1qry96tkNNgWM7nnfR51ps0w+V1EGjsU5X76xuuAoaRjMEpjr0vnctPgAAAAAAAMCCEF6scx+rZLzVrAAAAABJRU5ErkJggg==\" alt=\"x to the one third power\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAA8CAYAAACTiBHmAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAeOiuv/QAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA50lEQVRYR+2WgQ2EIAxFGY+BGIddWIVNem2RE/GiePIvOdOXkICalt9+iG4GlCN5FygR0fJoLpSCBOYBSpKCBPcUE1iJAC+XYEku8Zwkf4mU4+owfsh6A8sAWLicDb6BcwmsCX0kXs5LpEFDegck1hHgpx6hpKWocMTCQAm0N8gE6q61+afk6Hc1JV5Fz/ZsGlzp3TVE2dXWHUc71U3xJ9tx4q6d7w9UfE3vkE/KblN37kVKM19ez0N+1jQJQkVFmxkiToVQFAy45A719MJUCMX7SBWdhadSg8sUWibDMAzDMAzDGMS5F6QCVQ57+4fnAAAAAElFTkSuQmCC\" alt=\"y to the one half power\"></span> are equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAcCAYAAACUJBTQAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABX0lEQVRIS+1Urc6DMBStIMFPYefI1HBIZOUkEskDIPYGPAKGBMkjIJFkcgqLQyKRZ20prONnHwskn+EkhaYtPffcew+Eo4op2EuOADnA5xNcr1fl3A8DecAm74sFYZCLuYosy0CpCGY7UMWgM2pc10WapvuQzClpmgaGYaBt220kXdp4DqcqoiiC7/vbCFTkASMaKbFtG0VR7EciFCkkZVnCNM1ZAhEQjVEpysUaoYjZolySNZAHwZ4xJaDshNwm9/sdYRjOkoAlNmAvFpPY76wwIujRscsxShUveF3X048kBjWiKz8DXIU13uhafj7ADyRJgvP5DN6qcklgrTe6TCz/KYjjOPA8D5fLBbfbbTi01hvvX9JCLVQ8n09omjaoWeON3lu8DkLNt3T1sCxrUPOXN/rO6i/uCH9Q83g8Fr3BMRAodejbf7Wa0+m06I1dwNXouv7VGwcOHDjwryDkBcppSBYGpaEDAAAAAElFTkSuQmCC\" alt=\"the cube root of x\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAcCAYAAACUJBTQAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABOElEQVRIS+2UobJFQBzGBTO6pGrmpKOJ4kZRFD2A4A08gmJG9AiiaERJ1URR/M4u1jWGa4+5yh2/GWPt2v32W/+P9A3v9xv0duUSI89zEELEJ1zBdV1kWXafSN/30DQNwzDcJxLHMXzfv/eoLMtCWZb3iTRNA8MwdgXahBYCSdACyzjoU0JoRQWF+KbCMEQURbsTUAS0P0CxFhn7CBKqPHedwz5413X7Im0CslrwkouzbIB6COiNrjmJ7DhbSNMUuq6DlercNXKWDb5zwqys2vPwD7Ztw/M8vF4vOI6zvCCajSKYRX5zwanrGrIsL25EszFWWJAcu9himubiRjQbkwP2EzxxweFuqqo6zMaWqcIEXXCYG1VVD7OxZTwuURcc5kZRlMNsrNmW8J/CF2fNr47p4eHh3yNJH844HT9pCaccAAAAAElFTkSuQmCC\" alt=\"the square root of y\"></span>, respectively. Also, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAeCAYAAADdGWXmAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAvklEQVRIS+2U0Q3DIAxEGc8DMQ67sAqbXG1cCCVWIiLIR8WTECQRnM5n4laA6CGTDo8IyHo+SAHkCCGpQBamAH6cL5gP97EeDPblV7preewsBZIN5iCuG88/qCsHNnr6NhXN7g2h3I1Hk5yInsvR1Ta/u9pk0HejSV9fzWdMSLBzNbqxuvvW2wp9GiVUWbZ3ZRma0wuX8Kj3eFZDlJ+n5JTdrSpj6cQicHtPnlKFmpzAty3QQnebzWaz+Xuc+wDV09rOIRLVYgAAAABJRU5ErkJggg==\" alt=\"x to the negative 2 power \"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAeCAYAAADdGWXmAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAtklEQVRIS+2U4Q3EIAiFHY+BGIddXMVNOJ5orr20l9y1kP7wS4wWUp+PUksk2kSpsFZVHaEYtDIEbASLVYYIqdQkZ+BSGZsQXjocJA3zjrRvBp4h1ktEom2TUHsSsjJx/etkp2LeqvuEx6yr7AQj9BPnYj3x3viqq6+o6bNNtreLHTi9jekELbxdj/T94M/vYpGuJr0jWeJdgbTLE3hHJrgCfvdluPpo/RCmCJYp5VssFounU8oLzePzUgeljFkAAAAASUVORK5CYII=\" alt=\"y to the negative 1 power\"></span> are equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAsCAYAAAB7aah+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA10lEQVRYR+2Wyw3EMAhEXR4FuRx6cSvuhDUQf2RpL17PZcOTkJIcGOEBh3RCyUmIqzyvGKRkFcAKVSYT0YAJeSUkXItkdEWKSAgdEkLH/J9Q8A60ixARvIG+qHjkdjnJffOlspDtEJ7cRImlvd4Vs8S5jKR+2YKqWoFVtNJ/Ha1AoIh5hRYZS+UPIrrI72du357Ee9cds5+7790z8bqHzzjsulHV4wNsT+hG6+M6MxDcF/AgTh8umP6NfmGqL1YV4uh6x/XkV+ZlZ4gsvrShESZQVUEAIqUPUe1EKxzOu24AAAAASUVORK5CYII=\" alt=\"the fraction 1 over x squared, end fraction\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAAsCAYAAACHfIO0AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAsElEQVRIS+2WzQ0FIQiELY+CKIdebMVO5omsu+ZlDyoe9sCXmPgTJ2MgYJohcwJJwbXcB5lVxC9WhJqQDpeYOSJIyeATzhQgxFYJseDLaLR2RxBs0docCQpw5xHqSqjmFee13LJWx7UADWJ3+3v2pkAR0HBx25XSi2K9a2IvTqfpTrTCjvPreJ3++3G56rSIsvhdKeZIS4zTlWIRPdSZ7H92wtVfamzRRXR65HlBkNIPJOQB2rMOaSMAAAAASUVORK5CYII=\" alt=\"1 over y\"></span>, respectively. Therefore, the given expression can be rewritten as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADcAAAAyCAYAAAD4FkP1AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACeUlEQVRoQ+2Yr+7CMBDHESR4FBZHUOCQyEkkEskDTPAGPAJmCZJHQCIJEoXFIZHI+/X/9uu6tV1bGKSfZGF0y+161911384nmUwmgH6aHO3meDxCkiTtd7QJy+USDofD703u+XzCYDCA1+v1e5Pb7XawXq9/c0nOZjM4n8/tm9w9Q0UgyeAOIJwD9C9LUBVLT1qHb7cbjEYj5X2utp2BU4oeksKp6AAZSyBDXrGhSjabDWy3W+V9rradgXsGSeFhtpHFheTxeCjvdbXtDKC4pugHPY86oIh2Fbre5mLbCzyaCQ5v4ZxdJuz3exgOh4BLPhsi6Hqbie3gnFLmgCKy8/kcVqsVjMdjWCwWYty0t9XZfgukqqVZbWSv1yt0u12RPdPeZmI7KDSqeANbH9npdCqyZ9rbTG0Hg1Y1fWR59i6XS2VvkzG1HQyydAwji7PX7/cre5uMjW3vyOVaB85er9er7G1FbG17gz8Yn/peMiFtR74dsix+5IhEIt9Gvg/Ex4d2FSEofTXjiUr6RxG6rdIHohUqNJlM4fOf7jLUTtMM59foZ01ZOmitCq3LXBGa9XIgWqlC2254VZlrpQrNv79MJpYXoHLWWqdCU2ftNUWsk8iZe6sKTRyQ3iEyxiYjV0sb5GJUp0Lr/GBDdsjvES3lucH/pZ0f6mpJ7mUOqiS7WhVa40djRNQ86Bo02uyQlmSdCo3x6YeAFwt8qupLPjDpbcH8oBFXLzcbmqrQHF9+CPL3ym2Nu6rQvvwQ8J6E1zeJmofl0ESF9u6HUKOYIfoAP1GzUaG9+yEMFtY3L98+s6dToUP7EQxbFfqrsFGhI5FIJBJpTKfzB5OM+3Kowjx2AAAAAElFTkSuQmCC\" alt=\"the fraction with numerator, y times the square root of y, and denominator x squared, times the cube root of x, end fraction\"></span>.<p>Choices A, B, and C are incorrect because these choices are not equivalent to the given expression for <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAYCAYAAAB9ejRwAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAO1JREFUeNpjYBgY0ALE24D4ORD/h/KpBnKAmJ0MfV+A+BgQT6WFo55AMamOY0Ji43WUChD/BuImNPHpQPwZiE2w6GGHOohcxzEQE1IgB3wCYmEovw6IfwKxCwGDKXEcQUdJAvFXIO4G4hQg/gvEYST4Gua4N1DLqOIoEGgF4h9A/AeIs0mMCpo5KgGq8DAZjqFJ9DlD0xAou/4DYj0aOoYoRxlBEzmo7GAD4gdAvJVGRQJRjgIVBy+BeA1SGZII1WBHg8IzBAn/h9oL44OBBBDfA+IDaBYwA/F1aFRSG/zHg0fBKBgFo2AUjIIRBwB7Tk7tVodZKwAAAABJRU5ErkJggg==\" alt=\"x is greater than 1\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAWCAYAAABKbiVHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAzUlEQVRIS+2T4Q3EIAhGHY+BGIddXMVNOBHJeblasfXij+tL2thU4PVrDLuIGBgocX3cB0cUiTUyzJExYL7zdLNEUETk6sqUTUCcmgGcnwhyIcavIhWSpn4pTQSYktZ2ZXTjZ+N3cX/YJala05dJxNAMPkvliBmpsUzdkGerzEFSHrTPeZ1DRpOQDe26vh6yNBnBzv5MKjMShkumnCgkVypXJAyXjCYyHqDN5iUMn0w5UeNU7uL/TTe+eBlma0d7CyYhy1//noeHhz8khBfO9k06+WWqBwAAAABJRU5ErkJggg==\" alt=\"y is greater than 1\"></span>.</p><p>For example, for <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAYCAYAAACWTY9zAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAThJREFUeNpjYBgYUArEe4H4DRD/BuLHQDwViIUZBhh8A+JFQBwJxLZAnArEz4H4OhBzDaTDxLGIWQHxfyBOQJdQgQZrE5r4dCD+DMQmWAwTIAKzEelYDqjDarFJghzxCSmu64D4JxC74DDsPxE4hEiH+UPVB2GTlATir0DcDcQpQPwXiMPwGOZABBYlwlFCQHwfiC8BMTMuRa1A/AOI/wBxNgEDRYjA7ATMACX2w0D8Dog18SlMgAbpYSJ8SmlUckKLDVDyMcNnkTM0TR0D4n9ArEfAYZREJSix74ImHTt8lhhBXT4VmpMeAPFWGhUXoOjdAcTf8WQseFHxEojXADETVCwRGhV2NHDYFqjZjUBsgYZlYIokgPgeEB9AS6jM0JL4GA0chi9NtjCMglEwCkbBKBgFo4AgAADeRlbd3HGQKgAAAABJRU5ErkJggg==\" alt=\"x equals 2\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAYCAYAAACWTY9zAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAUVJREFUeNpjYBgYUArEe4H4DRD/BuLHQDwViIUZBhh8A+JFQBwJxLZAnArEz4H4OhBzDaTDxLGIWQHxfyBOQJfYBcQnsGjQhQZ3NBY5ASIwG5GO5YA6rBZdoh6IfwIxO5IYIxAfBuKDOAz7TwQOIdJh/lD1QegSLlAJCySxeGho6eAwzIEILEqEo4SA+D4QXwJiZnRJHiD+A8QFSNH0Eoj78RgoQgRmJ+AoLmisvANiTVyKzgLxCih7KjSn8OExlNKo5IQWG5+A2Ayf6ycB8QMgNgLiv0AcQ8C3lEQlBzTDfQViO0JxHQb15RUgPkTD4gIUvTuA+Ds0bRME0lCHgdKaHg0dtgVqTyM0syFjGWwa+KFFxgQaF7D40mQLNg090ATPzzAIACi7WkIrVlAUBjIMEuAHDcInQJzNMApGwSgYBaNgeAMAblNZiXB/1ZgAAAAASUVORK5CYII=\" alt=\"y equals 2\"></span>, the value of the given expression is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAA8CAYAAAADm2gpAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAeOiuv/QAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABE0lEQVRoQ+2WAQ7CIAxFOR4H4jjchavsJrXQdTAWp7K5LvpfQjBo8NOWT923maInnurwkSai/PlaUnAUksEftxCfPXpPkUMwL9lAlCiwEL+kJvCKgSiaIouoESn1YlUjLSVCjTAzzIRQCqtUmKYmX1+e5mFUrL/Nxqqb4bn6eFY2378xwB8jJqa1YOiq2Ue0mHuDuwx59G5gYhqBuLjri9RIA6M/ltF5wxBFCE/aoe2mpoqoIdQNjoqRfZp9S+E+iUrfvCjipMfy29fIUBvQn2YEjbZGdqgNKM/3CVdt7SMfHqwvMhNUhGMVsmLA8tRbitCW7gz/GEYjYSpC7rqxiMxeC3jURwAAAAAAAAAAAHA7nHsAeV9wMZ9eVDMAAAAASUVORK5CYII=\" alt=\"2 to the negative five sixths power\"></span>; the values of the choices, however, are <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAA8CAYAAAADm2gpAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAeOiuv/QAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA7klEQVRoQ+2Wiw3DIAxEGY+BGIddWIVNXMwnCJqq4SNA7T3JikRCOA4DFqsgq0kKRYaIYtN6yCge3MVGIUaxAEnaHOAIc8TSMBBSAyE1xwj5PayWbOltSG35mXh7/yDAH1Pm1qbtG67/PLgXpcx6ITXHHGpfHSGypGWxr+uzYYhHFVoWkT9KHWeKYXy19smRsG6ulLOl0pDtc9fTT7A1WeuM78FPRmrnOROcb3bZ2xh/Epu6CMVzjD43BLl+QyKGuDK8Vf1MruN4p4i0lrO3bBPJia0iwjmyWQRz5cVtHHBBAQAAAAAAAAAAYCZCvACdQy/hh4PnxAAAAABJRU5ErkJggg==\" alt=\"2 to the negative one third power\"></span>, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAA8CAYAAAB8SnrYAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAeOiuv/QAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABA0lEQVRYR+2W3RHDIAiAHc+BHMddXCWbEJSgxtO0tfDQK98dZ84m/IrU7XJED7g08REOgPwsQwoOQhJU2APoa/QeIrp8bckCkCCgAV9TFHBH0BgcEZW3CEo9pGvQUyLqDIojbgBSuKVEJUX5mOJyiXCRf5YuJW+LoQg1F+daoYtzH3jUmp/HxvsauuwUm4s9jrWbX6SIBgi/TMLhzygGcOGJ9piipryFzApWRuj37v1S8EUU4/BgaKjP8zzWYOu6Hr3s4ag5wq3rulzHDx/d+2DuyJKxiKKwcofaaUeQ+m9NQzmPwKfzvw17rqKczrSS8kzN+1Q+PH6GYRiGYRiG8b84dwI2F2SxA6OpngAAAABJRU5ErkJggg==\" alt=\"2 to the five sixths power\"></span>, and 1, respectively.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959614,"updateDate":1691007959614}$SATQ$::jsonb, 1691007959614, 1691007959614),
    ($SATQ$2cb17792$SATQ$, $SATQ$f7813f1c-5e31-444e-8273-c1fc41ce7f59$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$H$SATQ$, 7, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="y plus k equals x plus 26"><mi>y</mi><mo>+</mo><mi>k</mi><mo>=</mo><mi>x</mi><mo>+</mo><mrow><mn>26</mn></mrow></math></p>
<p style="text-align: center;"><math alttext="y minus k equals x squared minus 5 x"><mi>y</mi><mo>-</mo><mi>k</mi><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mrow><mn>5</mn></mrow><mi>x</mi></math></p>
<p style="text-align: left;">In the given system of equations, <math alttext="k"><mi>k</mi>
</math> is a constant. The system has exactly one distinct real solution. What is the value of <math alttext="k"><mi>k</mi>
</math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["17.5","35/2"]$SATQ$::jsonb, $SATQ$["17.5","35/2"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="StartFraction 35 Over 2 EndFraction"><mfrac><mn>35</mn><mn>2</mn></mfrac></math>. Subtracting the second equation from the first equation yields <math alttext="left parenthesis y plus k right parenthesis minus left parenthesis y minus k right parenthesis equals x plus 26 minus left parenthesis x squared minus 5 x right parenthesis"><mfenced><mrow><mi>y</mi><mo>+</mo><mi>k</mi></mrow></mfenced><mo>-</mo><mfenced><mrow><mi>y</mi><mo>-</mo><mi>k</mi></mrow></mfenced><mo>=</mo><mi>x</mi><mo>+</mo><mn>26</mn><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>5</mn><mi>x</mi></mrow></mfenced></math>, or <math alttext="2 k equals minus x squared plus 6 x plus 26"><mn>2</mn><mi>k</mi><mo>=</mo><mo>-</mo><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>26</mn></math>. This is equivalent to&nbsp;<math alttext="x squared minus 6 x plus left parenthesis 2 k minus 26 right parenthesis equals 0"><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mfenced><mrow><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>. It's given that the system has exactly one distinct real solution; therefore, this equation has exactly one distinct real solution. An equation of the form <math alttext="a x squared plus b x plus c equals 0"><mi>a</mi><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi><mo>+</mo><mi>c</mi><mo>=</mo><mn>0</mn></math>, where <math alttext="a"><mi>a</mi>
</math>, <math alttext="b"><mi>b</mi>
</math>, and <math alttext="c"><mi>c</mi>
</math> are constants, has exactly one distinct real solution when the discriminant, <math alttext="b squared minus 4 a c"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>, is equal to <math alttext="0"><mn>0</mn>
</math>. The equation <math alttext="x squared minus 6 x plus left parenthesis 2 k minus 26 right parenthesis equals 0"><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn><mo>)</mo><mo>=</mo><mn>0</mn></math> is of this form, where <math alttext="a equals 1"><mi>a</mi><mo>=</mo><mn>1</mn></math>, <math alttext="b equals negative 6"><mi>b</mi><mo>=</mo><mo>-</mo><mn>6</mn></math>, and <math alttext="c equals 2 k minus 26"><mi>c</mi><mo>=</mo><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></math>. Substituting these values into the discriminant,&nbsp;<math alttext="b squared minus 4 a c"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>, yields <math alttext="left parenthesis negative 6 right parenthesis squared minus 4 left parenthesis 1 right parenthesis left parenthesis 2 k minus 26 right parenthesis"><msup><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mn>1</mn></mfenced><mfenced><mrow><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></mrow></mfenced></math>. Setting the discriminant equal to <math alttext="0"><mn>0</mn>
</math> yields <math alttext="left parenthesis negative 6 right parenthesis squared minus 4 left parenthesis 1 right parenthesis left parenthesis 2 k minus 26 right parenthesis equals 0"><msup><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mn>1</mn></mfenced><mfenced><mrow><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>, or <math alttext="minus 8 k plus 140 equals 0"><mo>-</mo><mn>8</mn><mi>k</mi><mo>+</mo><mn>140</mn><mo>=</mo><mn>0</mn></math>. Subtracting <math alttext="140"><mn>140</mn>
</math> from both sides of this equation yields <math alttext="minus 8 k equals negative 140"><mo>-</mo><mn>8</mn><mi>k</mi><mo>=</mo><mo>-</mo><mn>140</mn></math>. Dividing both sides of this equation by <math alttext="negative 8"><mrow>
<mo>-</mo>
<mn>8</mn>
</mrow>
</math> yields <math alttext="k equals StartFraction 35 Over 2 EndFraction"><mi>k</mi><mo>=</mo><mfrac><mn>35</mn><mn>2</mn></mfrac></math>. Note that 35/2 and 17.5 are examples of ways to enter a correct answer.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"2cb17792","external_id":"f7813f1c-5e31-444e-8273-c1fc41ce7f59","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"42098825-b282-4691-a239-8e84a8388406","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"H","score_band_range_cd":7,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"y plus k equals x plus 26\"><mi>y</mi><mo>+</mo><mi>k</mi><mo>=</mo><mi>x</mi><mo>+</mo><mrow><mn>26</mn></mrow></math></p>\n<p style=\"text-align: center;\"><math alttext=\"y minus k equals x squared minus 5 x\"><mi>y</mi><mo>-</mo><mi>k</mi><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mrow><mn>5</mn></mrow><mi>x</mi></math></p>\n<p style=\"text-align: left;\">In the given system of equations, <math alttext=\"k\"><mi>k</mi>\n</math> is a constant. The system has exactly one distinct real solution. What is the value of <math alttext=\"k\"><mi>k</mi>\n</math>?</p>","answerOptions":[],"keys":["17.5","35/2"],"correct_answer":["17.5","35/2"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"StartFraction 35 Over 2 EndFraction\"><mfrac><mn>35</mn><mn>2</mn></mfrac></math>. Subtracting the second equation from the first equation yields <math alttext=\"left parenthesis y plus k right parenthesis minus left parenthesis y minus k right parenthesis equals x plus 26 minus left parenthesis x squared minus 5 x right parenthesis\"><mfenced><mrow><mi>y</mi><mo>+</mo><mi>k</mi></mrow></mfenced><mo>-</mo><mfenced><mrow><mi>y</mi><mo>-</mo><mi>k</mi></mrow></mfenced><mo>=</mo><mi>x</mi><mo>+</mo><mn>26</mn><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>5</mn><mi>x</mi></mrow></mfenced></math>, or <math alttext=\"2 k equals minus x squared plus 6 x plus 26\"><mn>2</mn><mi>k</mi><mo>=</mo><mo>-</mo><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>26</mn></math>. This is equivalent to&nbsp;<math alttext=\"x squared minus 6 x plus left parenthesis 2 k minus 26 right parenthesis equals 0\"><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mfenced><mrow><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>. It's given that the system has exactly one distinct real solution; therefore, this equation has exactly one distinct real solution. An equation of the form <math alttext=\"a x squared plus b x plus c equals 0\"><mi>a</mi><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi><mo>+</mo><mi>c</mi><mo>=</mo><mn>0</mn></math>, where <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, and <math alttext=\"c\"><mi>c</mi>\n</math> are constants, has exactly one distinct real solution when the discriminant, <math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>, is equal to <math alttext=\"0\"><mn>0</mn>\n</math>. The equation <math alttext=\"x squared minus 6 x plus left parenthesis 2 k minus 26 right parenthesis equals 0\"><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn><mo>)</mo><mo>=</mo><mn>0</mn></math> is of this form, where <math alttext=\"a equals 1\"><mi>a</mi><mo>=</mo><mn>1</mn></math>, <math alttext=\"b equals negative 6\"><mi>b</mi><mo>=</mo><mo>-</mo><mn>6</mn></math>, and <math alttext=\"c equals 2 k minus 26\"><mi>c</mi><mo>=</mo><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></math>. Substituting these values into the discriminant,&nbsp;<math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>, yields <math alttext=\"left parenthesis negative 6 right parenthesis squared minus 4 left parenthesis 1 right parenthesis left parenthesis 2 k minus 26 right parenthesis\"><msup><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mn>1</mn></mfenced><mfenced><mrow><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></mrow></mfenced></math>. Setting the discriminant equal to <math alttext=\"0\"><mn>0</mn>\n</math> yields <math alttext=\"left parenthesis negative 6 right parenthesis squared minus 4 left parenthesis 1 right parenthesis left parenthesis 2 k minus 26 right parenthesis equals 0\"><msup><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mn>1</mn></mfenced><mfenced><mrow><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>, or <math alttext=\"minus 8 k plus 140 equals 0\"><mo>-</mo><mn>8</mn><mi>k</mi><mo>+</mo><mn>140</mn><mo>=</mo><mn>0</mn></math>. Subtracting <math alttext=\"140\"><mn>140</mn>\n</math> from both sides of this equation yields <math alttext=\"minus 8 k equals negative 140\"><mo>-</mo><mn>8</mn><mi>k</mi><mo>=</mo><mo>-</mo><mn>140</mn></math>. Dividing both sides of this equation by <math alttext=\"negative 8\"><mrow>\n<mo>-</mo>\n<mn>8</mn>\n</mrow>\n</math> yields <math alttext=\"k equals StartFraction 35 Over 2 EndFraction\"><mi>k</mi><mo>=</mo><mfrac><mn>35</mn><mn>2</mn></mfrac></math>. Note that 35/2 and 17.5 are examples of ways to enter a correct answer.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554988,"pPcc":"SAT#P","questionId":"2cb17792","skill_cd":"P.B.","score_band_range_cd":7,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1743430554988,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"f7813f1c-5e31-444e-8273-c1fc41ce7f59","primary_class_cd":"P","uId":"42098825-b282-4691-a239-8e84a8388406","difficulty":"H"},"raw_detail":{"type":"spr","stem":"<p style=\"text-align: center;\"><math alttext=\"y plus k equals x plus 26\"><mi>y</mi><mo>+</mo><mi>k</mi><mo>=</mo><mi>x</mi><mo>+</mo><mrow><mn>26</mn></mrow></math></p>\n<p style=\"text-align: center;\"><math alttext=\"y minus k equals x squared minus 5 x\"><mi>y</mi><mo>-</mo><mi>k</mi><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mrow><mn>5</mn></mrow><mi>x</mi></math></p>\n<p style=\"text-align: left;\">In the given system of equations, <math alttext=\"k\"><mi>k</mi>\n</math> is a constant. The system has exactly one distinct real solution. What is the value of <math alttext=\"k\"><mi>k</mi>\n</math>?</p>","keys":["17.5","35/2"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"StartFraction 35 Over 2 EndFraction\"><mfrac><mn>35</mn><mn>2</mn></mfrac></math>. Subtracting the second equation from the first equation yields <math alttext=\"left parenthesis y plus k right parenthesis minus left parenthesis y minus k right parenthesis equals x plus 26 minus left parenthesis x squared minus 5 x right parenthesis\"><mfenced><mrow><mi>y</mi><mo>+</mo><mi>k</mi></mrow></mfenced><mo>-</mo><mfenced><mrow><mi>y</mi><mo>-</mo><mi>k</mi></mrow></mfenced><mo>=</mo><mi>x</mi><mo>+</mo><mn>26</mn><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>5</mn><mi>x</mi></mrow></mfenced></math>, or <math alttext=\"2 k equals minus x squared plus 6 x plus 26\"><mn>2</mn><mi>k</mi><mo>=</mo><mo>-</mo><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>26</mn></math>. This is equivalent to&nbsp;<math alttext=\"x squared minus 6 x plus left parenthesis 2 k minus 26 right parenthesis equals 0\"><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mfenced><mrow><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>. It's given that the system has exactly one distinct real solution; therefore, this equation has exactly one distinct real solution. An equation of the form <math alttext=\"a x squared plus b x plus c equals 0\"><mi>a</mi><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi><mo>+</mo><mi>c</mi><mo>=</mo><mn>0</mn></math>, where <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, and <math alttext=\"c\"><mi>c</mi>\n</math> are constants, has exactly one distinct real solution when the discriminant, <math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>, is equal to <math alttext=\"0\"><mn>0</mn>\n</math>. The equation <math alttext=\"x squared minus 6 x plus left parenthesis 2 k minus 26 right parenthesis equals 0\"><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mo>(</mo><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn><mo>)</mo><mo>=</mo><mn>0</mn></math> is of this form, where <math alttext=\"a equals 1\"><mi>a</mi><mo>=</mo><mn>1</mn></math>, <math alttext=\"b equals negative 6\"><mi>b</mi><mo>=</mo><mo>-</mo><mn>6</mn></math>, and <math alttext=\"c equals 2 k minus 26\"><mi>c</mi><mo>=</mo><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></math>. Substituting these values into the discriminant,&nbsp;<math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>, yields <math alttext=\"left parenthesis negative 6 right parenthesis squared minus 4 left parenthesis 1 right parenthesis left parenthesis 2 k minus 26 right parenthesis\"><msup><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mn>1</mn></mfenced><mfenced><mrow><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></mrow></mfenced></math>. Setting the discriminant equal to <math alttext=\"0\"><mn>0</mn>\n</math> yields <math alttext=\"left parenthesis negative 6 right parenthesis squared minus 4 left parenthesis 1 right parenthesis left parenthesis 2 k minus 26 right parenthesis equals 0\"><msup><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mn>1</mn></mfenced><mfenced><mrow><mn>2</mn><mi>k</mi><mo>-</mo><mn>26</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>, or <math alttext=\"minus 8 k plus 140 equals 0\"><mo>-</mo><mn>8</mn><mi>k</mi><mo>+</mo><mn>140</mn><mo>=</mo><mn>0</mn></math>. Subtracting <math alttext=\"140\"><mn>140</mn>\n</math> from both sides of this equation yields <math alttext=\"minus 8 k equals negative 140\"><mo>-</mo><mn>8</mn><mi>k</mi><mo>=</mo><mo>-</mo><mn>140</mn></math>. Dividing both sides of this equation by <math alttext=\"negative 8\"><mrow>\n<mo>-</mo>\n<mn>8</mn>\n</mrow>\n</math> yields <math alttext=\"k equals StartFraction 35 Over 2 EndFraction\"><mi>k</mi><mo>=</mo><mfrac><mn>35</mn><mn>2</mn></mfrac></math>. Note that 35/2 and 17.5 are examples of ways to enter a correct answer.</p>","externalid":"f7813f1c-5e31-444e-8273-c1fc41ce7f59","answerOptions":[],"correct_answer":["17.5","35/2"]},"createDate":1743430554988,"updateDate":1743430554988}$SATQ$::jsonb, 1743430554988, 1743430554988),
    ($SATQ$2cd6b22d$SATQ$, $SATQ$6c2521be-efeb-4288-b874-77e68fac25dd$SATQ$::uuid, $SATQ$054577d9-3843-459b-a527-2ace56506839$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="5 x squared plus 10 x plus 16 equals 0"><mrow>
	<mrow>
		<mrow>
			<mn>5</mn>
			<msup>
				<mi>x</mi>
				<mn>2</mn>
			</msup>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>10</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>16</mn>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math></p>
<p style="text-align: left;">How many distinct real solutions does the given equation have?</p>$SATQ$, $SATQ$[{"id":"e99f7f53-d947-4c38-8fe8-f2162f6b1b3f","content":"<p>Exactly one</p>"},{"id":"ad611a62-743b-4bd4-af6d-5d4c891cc2ad","content":"<p>Exactly two</p>"},{"id":"769a3e07-ec2f-41e4-8589-2743c829df9f","content":"<p>Infinitely many</p>"},{"id":"b9060394-e26d-493f-98a9-0208806fba38","content":"<p>Zero</p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["b9060394-e26d-493f-98a9-0208806fba38"]$SATQ$::jsonb, $SATQ$<p>Choice D is correct. The number of solutions of a quadratic equation of the form <math alttext="a x squared plus b x plus c equals 0"><mi>a</mi><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi><mo>+</mo><mi>c</mi><mo>=</mo><mn>0</mn></math>, where <math alttext="a"><mi>a</mi>
</math>, <math alttext="b"><mi>b</mi>
</math>, and <math alttext="c"><mi>c</mi>
</math> are constants, can be determined by the value of the discriminant, <math alttext="b squared minus 4 a c"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>. If the value of the discriminant is positive, then the quadratic equation has exactly two distinct real solutions. If the value of the discriminant is equal to zero, then the quadratic equation has exactly one real solution. If the value of the discriminant is negative, then the quadratic equation has zero real solutions. In the given equation, <math alttext="5 x squared plus 10 x plus 16 equals 0"><mn>5</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>10</mn><mi>x</mi><mo>+</mo><mn>16</mn><mo>=</mo><mn>0</mn></math>, <math alttext="a equals 5"><mi>a</mi><mo>=</mo><mo>&nbsp;</mo><mn>5</mn></math>, <math alttext="b equals 10"><mi>b</mi><mo>=</mo><mn>10</mn></math>, and <math alttext="c equals 16"><mi>c</mi><mo>=</mo><mn>16</mn></math>. Substituting these values for <math alttext="a"><mi>a</mi>
</math>, <math alttext="b"><mi>b</mi>
</math>, and <math alttext="c"><mi>c</mi>
</math> in&nbsp;<math alttext="b squared minus 4 a c"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math> yields <math alttext="left parenthesis 10 right parenthesis squared minus 4 left parenthesis 5 right parenthesis left parenthesis 16 right parenthesis"><msup><mfenced><mn>10</mn></mfenced><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mn>5</mn></mfenced><mfenced><mn>16</mn></mfenced></math>, or <math alttext="negative 220"><mo>-</mo><mn>220</mn></math>. Since the value of its discriminant is negative, the given equation has zero real solutions. Therefore, the number of distinct real solutions the given equation has is zero.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"2cd6b22d","external_id":"6c2521be-efeb-4288-b874-77e68fac25dd","disclosed_item_id":null,"source":"qbank","vaultid":"054577d9-3843-459b-a527-2ace56506839","uId":"66e74ab4-772a-4860-8c42-14ecc92f8855","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"5 x squared plus 10 x plus 16 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>5</mn>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>10</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>16</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">How many distinct real solutions does the given equation have?</p>","answerOptions":[{"id":"e99f7f53-d947-4c38-8fe8-f2162f6b1b3f","content":"<p>Exactly one</p>"},{"id":"ad611a62-743b-4bd4-af6d-5d4c891cc2ad","content":"<p>Exactly two</p>"},{"id":"769a3e07-ec2f-41e4-8589-2743c829df9f","content":"<p>Infinitely many</p>"},{"id":"b9060394-e26d-493f-98a9-0208806fba38","content":"<p>Zero</p>"}],"keys":["b9060394-e26d-493f-98a9-0208806fba38"],"correct_answer":["D"],"rationale":"<p>Choice D is correct. The number of solutions of a quadratic equation of the form <math alttext=\"a x squared plus b x plus c equals 0\"><mi>a</mi><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi><mo>+</mo><mi>c</mi><mo>=</mo><mn>0</mn></math>, where <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, and <math alttext=\"c\"><mi>c</mi>\n</math> are constants, can be determined by the value of the discriminant, <math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>. If the value of the discriminant is positive, then the quadratic equation has exactly two distinct real solutions. If the value of the discriminant is equal to zero, then the quadratic equation has exactly one real solution. If the value of the discriminant is negative, then the quadratic equation has zero real solutions. In the given equation, <math alttext=\"5 x squared plus 10 x plus 16 equals 0\"><mn>5</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>10</mn><mi>x</mi><mo>+</mo><mn>16</mn><mo>=</mo><mn>0</mn></math>, <math alttext=\"a equals 5\"><mi>a</mi><mo>=</mo><mo>&nbsp;</mo><mn>5</mn></math>, <math alttext=\"b equals 10\"><mi>b</mi><mo>=</mo><mn>10</mn></math>, and <math alttext=\"c equals 16\"><mi>c</mi><mo>=</mo><mn>16</mn></math>. Substituting these values for <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, and <math alttext=\"c\"><mi>c</mi>\n</math> in&nbsp;<math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math> yields <math alttext=\"left parenthesis 10 right parenthesis squared minus 4 left parenthesis 5 right parenthesis left parenthesis 16 right parenthesis\"><msup><mfenced><mn>10</mn></mfenced><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mn>5</mn></mfenced><mfenced><mn>16</mn></mfenced></math>, or <math alttext=\"negative 220\"><mo>-</mo><mn>220</mn></math>. Since the value of its discriminant is negative, the given equation has zero real solutions. Therefore, the number of distinct real solutions the given equation has is zero.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959823,"pPcc":"SAT#P","questionId":"2cd6b22d","skill_cd":"P.B.","score_band_range_cd":6,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1691007959823,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"6c2521be-efeb-4288-b874-77e68fac25dd","primary_class_cd":"P","uId":"66e74ab4-772a-4860-8c42-14ecc92f8855","difficulty":"H"},"raw_detail":{"keys":["b9060394-e26d-493f-98a9-0208806fba38"],"rationale":"<p>Choice D is correct. The number of solutions of a quadratic equation of the form <math alttext=\"a x squared plus b x plus c equals 0\"><mi>a</mi><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi><mo>+</mo><mi>c</mi><mo>=</mo><mn>0</mn></math>, where <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, and <math alttext=\"c\"><mi>c</mi>\n</math> are constants, can be determined by the value of the discriminant, <math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math>. If the value of the discriminant is positive, then the quadratic equation has exactly two distinct real solutions. If the value of the discriminant is equal to zero, then the quadratic equation has exactly one real solution. If the value of the discriminant is negative, then the quadratic equation has zero real solutions. In the given equation, <math alttext=\"5 x squared plus 10 x plus 16 equals 0\"><mn>5</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>10</mn><mi>x</mi><mo>+</mo><mn>16</mn><mo>=</mo><mn>0</mn></math>, <math alttext=\"a equals 5\"><mi>a</mi><mo>=</mo><mo>&nbsp;</mo><mn>5</mn></math>, <math alttext=\"b equals 10\"><mi>b</mi><mo>=</mo><mn>10</mn></math>, and <math alttext=\"c equals 16\"><mi>c</mi><mo>=</mo><mn>16</mn></math>. Substituting these values for <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, and <math alttext=\"c\"><mi>c</mi>\n</math> in&nbsp;<math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math> yields <math alttext=\"left parenthesis 10 right parenthesis squared minus 4 left parenthesis 5 right parenthesis left parenthesis 16 right parenthesis\"><msup><mfenced><mn>10</mn></mfenced><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mn>5</mn></mfenced><mfenced><mn>16</mn></mfenced></math>, or <math alttext=\"negative 220\"><mo>-</mo><mn>220</mn></math>. Since the value of its discriminant is negative, the given equation has zero real solutions. Therefore, the number of distinct real solutions the given equation has is zero.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"5 x squared plus 10 x plus 16 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>5</mn>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>10</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>16</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">How many distinct real solutions does the given equation have?</p>","externalid":"6c2521be-efeb-4288-b874-77e68fac25dd","templateid":"9601a74e-c517-4629-9192-ab51927d3119","vaultid":"054577d9-3843-459b-a527-2ace56506839","type":"mcq","answerOptions":[{"id":"e99f7f53-d947-4c38-8fe8-f2162f6b1b3f","content":"<p>Exactly one</p>"},{"id":"ad611a62-743b-4bd4-af6d-5d4c891cc2ad","content":"<p>Exactly two</p>"},{"id":"769a3e07-ec2f-41e4-8589-2743c829df9f","content":"<p>Infinitely many</p>"},{"id":"b9060394-e26d-493f-98a9-0208806fba38","content":"<p>Zero</p>"}],"correct_answer":["D"]},"createDate":1691007959823,"updateDate":1691007959823}$SATQ$::jsonb, 1691007959823, 1691007959823),
    ($SATQ$2cf7f039$SATQ$, $SATQ$e0bc2b05-f917-4d64-b9ad-36fa20c0b430$SATQ$::uuid, $SATQ$23c784ad-3734-4181-91e4-7f9363d1254b$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, NULL, $SATQ$<p>The function <math alttext="f"><mi>f</mi>
</math> is defined by <math alttext="f left parenthesis x right parenthesis equals 8 StartRoot x EndRoot"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mrow><mn>8</mn></mrow><msqrt><mi>x</mi></msqrt></math>. For what value of <math alttext="x"><mi>x</mi>
</math> does <math alttext="f left parenthesis x right parenthesis equals 48"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mrow><mn>48</mn></mrow></math>?</p>$SATQ$, $SATQ$[{"id":"0eca4b81-0b52-4dce-a261-b1345aaa469c","content":"<p><math alttext=\"6\"><mn>6</mn>\n</math></p>"},{"id":"c22f3fb8-a23d-4070-97a2-b44c5d8e12c3","content":"<p><math alttext=\"8\"><mn>8</mn>\n</math></p>"},{"id":"8ec3ef83-e751-4341-bfdc-6326514cd888","content":"<p><math alttext=\"36\"><mn>36</mn>\n</math></p>"},{"id":"7e869685-714b-48e8-954b-660b9d48fbf5","content":"<p><math alttext=\"64\"><mn>64</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["8ec3ef83-e751-4341-bfdc-6326514cd888"]$SATQ$::jsonb, $SATQ$<p>Choice C is correct. It's given that <math alttext="f left parenthesis x right parenthesis equals 8 StartRoot x EndRoot"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mi>x</mi></msqrt></math>. Substituting <math alttext="48"><mn>48</mn>
</math> for&nbsp;<math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> in this equation yields <math alttext="48 equals 8 StartRoot x EndRoot"><mn>48</mn><mo>=</mo><mn>8</mn><msqrt><mi>x</mi></msqrt></math>. Dividing both sides of this equation by <math alttext="8"><mn>8</mn>
</math> yields&nbsp;<math alttext="6 equals StartRoot x EndRoot"><mn>6</mn><mo>=</mo><msqrt><mi>x</mi></msqrt></math>. This can be rewritten as <math alttext="StartRoot x EndRoot equals 6"><msqrt><mi>x</mi></msqrt><mo>=</mo><mn>6</mn></math>. Squaring both sides of this equation yields <math alttext="x equals 36"><mi>x</mi><mo>=</mo><mn>36</mn></math>. Therefore, the value of <math alttext="x"><mi>x</mi>
</math> for which <math alttext="f left parenthesis x right parenthesis equals 48"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>48</mn></math> is <math alttext="36"><mn>36</mn>
</math>.</p>
<p>Choice A is incorrect. If <math alttext="x equals 6"><mi>x</mi><mo>=</mo><mn>6</mn></math>, <math alttext="f left parenthesis x right parenthesis equals 8 StartRoot 6 EndRoot"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mn>6</mn></msqrt></math>, not <math alttext="48"><mn>48</mn>
</math>.</p>
<p>Choice B is incorrect. If <math alttext="x equals 8"><mi>x</mi><mo>=</mo><mn>8</mn></math>, <math alttext="f left parenthesis x right parenthesis equals 8 StartRoot 8 EndRoot"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mn>8</mn></msqrt></math>, not <math alttext="48"><mn>48</mn>
</math>.</p>
<p>Choice D is incorrect. If <math alttext="x equals 64"><mi>x</mi><mo>=</mo><mn>64</mn></math>, <math alttext="f left parenthesis x right parenthesis equals 8 StartRoot 64 EndRoot"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mn>64</mn></msqrt></math>, which is equivalent to <math alttext="64"><mn>64</mn>
</math>, not <math alttext="48"><mn>48</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"2cf7f039","external_id":"e0bc2b05-f917-4d64-b9ad-36fa20c0b430","disclosed_item_id":null,"source":"qbank","vaultid":"23c784ad-3734-4181-91e4-7f9363d1254b","uId":"cfb12f26-38f2-4323-bca5-9246e30f5134","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":null,"stem":"<p>The function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by <math alttext=\"f left parenthesis x right parenthesis equals 8 StartRoot x EndRoot\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mrow><mn>8</mn></mrow><msqrt><mi>x</mi></msqrt></math>. For what value of <math alttext=\"x\"><mi>x</mi>\n</math> does <math alttext=\"f left parenthesis x right parenthesis equals 48\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mrow><mn>48</mn></mrow></math>?</p>","answerOptions":[{"id":"0eca4b81-0b52-4dce-a261-b1345aaa469c","content":"<p><math alttext=\"6\"><mn>6</mn>\n</math></p>"},{"id":"c22f3fb8-a23d-4070-97a2-b44c5d8e12c3","content":"<p><math alttext=\"8\"><mn>8</mn>\n</math></p>"},{"id":"8ec3ef83-e751-4341-bfdc-6326514cd888","content":"<p><math alttext=\"36\"><mn>36</mn>\n</math></p>"},{"id":"7e869685-714b-48e8-954b-660b9d48fbf5","content":"<p><math alttext=\"64\"><mn>64</mn>\n</math></p>"}],"keys":["8ec3ef83-e751-4341-bfdc-6326514cd888"],"correct_answer":["C"],"rationale":"<p>Choice C is correct. It's given that <math alttext=\"f left parenthesis x right parenthesis equals 8 StartRoot x EndRoot\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mi>x</mi></msqrt></math>. Substituting <math alttext=\"48\"><mn>48</mn>\n</math> for&nbsp;<math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> in this equation yields <math alttext=\"48 equals 8 StartRoot x EndRoot\"><mn>48</mn><mo>=</mo><mn>8</mn><msqrt><mi>x</mi></msqrt></math>. Dividing both sides of this equation by <math alttext=\"8\"><mn>8</mn>\n</math> yields&nbsp;<math alttext=\"6 equals StartRoot x EndRoot\"><mn>6</mn><mo>=</mo><msqrt><mi>x</mi></msqrt></math>. This can be rewritten as <math alttext=\"StartRoot x EndRoot equals 6\"><msqrt><mi>x</mi></msqrt><mo>=</mo><mn>6</mn></math>. Squaring both sides of this equation yields <math alttext=\"x equals 36\"><mi>x</mi><mo>=</mo><mn>36</mn></math>. Therefore, the value of <math alttext=\"x\"><mi>x</mi>\n</math> for which <math alttext=\"f left parenthesis x right parenthesis equals 48\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>48</mn></math> is <math alttext=\"36\"><mn>36</mn>\n</math>.</p>\n<p>Choice A is incorrect. If <math alttext=\"x equals 6\"><mi>x</mi><mo>=</mo><mn>6</mn></math>, <math alttext=\"f left parenthesis x right parenthesis equals 8 StartRoot 6 EndRoot\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mn>6</mn></msqrt></math>, not <math alttext=\"48\"><mn>48</mn>\n</math>.</p>\n<p>Choice B is incorrect. If <math alttext=\"x equals 8\"><mi>x</mi><mo>=</mo><mn>8</mn></math>, <math alttext=\"f left parenthesis x right parenthesis equals 8 StartRoot 8 EndRoot\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mn>8</mn></msqrt></math>, not <math alttext=\"48\"><mn>48</mn>\n</math>.</p>\n<p>Choice D is incorrect. If <math alttext=\"x equals 64\"><mi>x</mi><mo>=</mo><mn>64</mn></math>, <math alttext=\"f left parenthesis x right parenthesis equals 8 StartRoot 64 EndRoot\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mn>64</mn></msqrt></math>, which is equivalent to <math alttext=\"64\"><mn>64</mn>\n</math>, not <math alttext=\"48\"><mn>48</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959829,"pPcc":"SAT#P","questionId":"2cf7f039","skill_cd":"P.C.","score_band_range_cd":3,"skill_desc":"Nonlinear functions","createDate":1691007959829,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"e0bc2b05-f917-4d64-b9ad-36fa20c0b430","primary_class_cd":"P","uId":"cfb12f26-38f2-4323-bca5-9246e30f5134","difficulty":"E"},"raw_detail":{"keys":["8ec3ef83-e751-4341-bfdc-6326514cd888"],"rationale":"<p>Choice C is correct. It's given that <math alttext=\"f left parenthesis x right parenthesis equals 8 StartRoot x EndRoot\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mi>x</mi></msqrt></math>. Substituting <math alttext=\"48\"><mn>48</mn>\n</math> for&nbsp;<math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> in this equation yields <math alttext=\"48 equals 8 StartRoot x EndRoot\"><mn>48</mn><mo>=</mo><mn>8</mn><msqrt><mi>x</mi></msqrt></math>. Dividing both sides of this equation by <math alttext=\"8\"><mn>8</mn>\n</math> yields&nbsp;<math alttext=\"6 equals StartRoot x EndRoot\"><mn>6</mn><mo>=</mo><msqrt><mi>x</mi></msqrt></math>. This can be rewritten as <math alttext=\"StartRoot x EndRoot equals 6\"><msqrt><mi>x</mi></msqrt><mo>=</mo><mn>6</mn></math>. Squaring both sides of this equation yields <math alttext=\"x equals 36\"><mi>x</mi><mo>=</mo><mn>36</mn></math>. Therefore, the value of <math alttext=\"x\"><mi>x</mi>\n</math> for which <math alttext=\"f left parenthesis x right parenthesis equals 48\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>48</mn></math> is <math alttext=\"36\"><mn>36</mn>\n</math>.</p>\n<p>Choice A is incorrect. If <math alttext=\"x equals 6\"><mi>x</mi><mo>=</mo><mn>6</mn></math>, <math alttext=\"f left parenthesis x right parenthesis equals 8 StartRoot 6 EndRoot\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mn>6</mn></msqrt></math>, not <math alttext=\"48\"><mn>48</mn>\n</math>.</p>\n<p>Choice B is incorrect. If <math alttext=\"x equals 8\"><mi>x</mi><mo>=</mo><mn>8</mn></math>, <math alttext=\"f left parenthesis x right parenthesis equals 8 StartRoot 8 EndRoot\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mn>8</mn></msqrt></math>, not <math alttext=\"48\"><mn>48</mn>\n</math>.</p>\n<p>Choice D is incorrect. If <math alttext=\"x equals 64\"><mi>x</mi><mo>=</mo><mn>64</mn></math>, <math alttext=\"f left parenthesis x right parenthesis equals 8 StartRoot 64 EndRoot\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>8</mn><msqrt><mn>64</mn></msqrt></math>, which is equivalent to <math alttext=\"64\"><mn>64</mn>\n</math>, not <math alttext=\"48\"><mn>48</mn>\n</math>.</p>","origin":"manifold","stem":"<p>The function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by <math alttext=\"f left parenthesis x right parenthesis equals 8 StartRoot x EndRoot\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mrow><mn>8</mn></mrow><msqrt><mi>x</mi></msqrt></math>. For what value of <math alttext=\"x\"><mi>x</mi>\n</math> does <math alttext=\"f left parenthesis x right parenthesis equals 48\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mrow><mn>48</mn></mrow></math>?</p>","externalid":"e0bc2b05-f917-4d64-b9ad-36fa20c0b430","templateid":"ea0e9fc9-7ce7-48b5-9199-76538c8415e1","vaultid":"23c784ad-3734-4181-91e4-7f9363d1254b","type":"mcq","answerOptions":[{"id":"0eca4b81-0b52-4dce-a261-b1345aaa469c","content":"<p><math alttext=\"6\"><mn>6</mn>\n</math></p>"},{"id":"c22f3fb8-a23d-4070-97a2-b44c5d8e12c3","content":"<p><math alttext=\"8\"><mn>8</mn>\n</math></p>"},{"id":"8ec3ef83-e751-4341-bfdc-6326514cd888","content":"<p><math alttext=\"36\"><mn>36</mn>\n</math></p>"},{"id":"7e869685-714b-48e8-954b-660b9d48fbf5","content":"<p><math alttext=\"64\"><mn>64</mn>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959829,"updateDate":1691007959829}$SATQ$::jsonb, 1691007959829, 1691007959829),
    ($SATQ$2d1614a1$SATQ$, $SATQ$e6248b96-6cdd-48a4-a20b-dc4b62d59d56$SATQ$::uuid, $SATQ$8e63985a-2c1c-4217-bec9-300b48897b7b$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="upper P left parenthesis t right parenthesis equals 290 left parenthesis 1.04 right parenthesis Superscript left parenthesis four sixths right parenthesis t"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mrow><mn>290</mn></mrow><msup><mfenced><mrow><mn>1.04</mn></mrow></mfenced><mrow><mfenced><mfrac><mrow><mn>4</mn></mrow><mrow><mn>6</mn></mrow></mfrac></mfenced><mi>t</mi></mrow></msup></math></p>
<p style="text-align: left;">The function <math alttext="upper P"><mi>P</mi>
</math> models the population, in thousands, of a certain city <math alttext="t"><mi>t</mi>
</math> years after <math alttext="2005"><mn>2005</mn>
</math>. According to the model, the population is predicted to increase by&nbsp;<math alttext="n percent sign"><mi>n</mi><mo>%</mo></math> every <math alttext="18"><mn>18</mn>
</math> months. What is the value of <math alttext="n"><mi>n</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"f54a8e72-aea6-4702-8dc1-38470c3e2268","content":"<p><math alttext=\"0.38\"><mn>0.38</mn>\n</math></p>"},{"id":"46270649-871e-4e65-8531-ddb45e02fc44","content":"<p><math alttext=\"1.04\"><mn>1.04</mn>\n</math></p>"},{"id":"b8224c96-22c9-4769-b941-25f2a6c1cb0c","content":"<p><math alttext=\"4\"><mn>4</mn>\n</math></p>"},{"id":"e727f1d9-4242-4121-bcc9-e74a52277924","content":"<p><math alttext=\"6\"><mn>6</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["b8224c96-22c9-4769-b941-25f2a6c1cb0c"]$SATQ$::jsonb, $SATQ$<p>Choice C is correct. It's given that the function <math alttext="upper P"><mi>P</mi>
</math> models the population of the city <math alttext="t"><mi>t</mi>
</math> years after&nbsp;<math alttext="2005"><mn>2005</mn></math>. Since there are <math alttext="12"><mn>12</mn>
</math> months in a year, <math alttext="18"><mn>18</mn>
</math> months is equivalent to <math alttext="StartFraction 18 Over 12 EndFraction"><mfrac><mn>18</mn><mn>12</mn></mfrac></math> years. Therefore, the expression&nbsp;<math alttext="StartFraction 18 Over 12 EndFraction x"><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></math> can represent the number of years in <math alttext="x"><mi>x</mi>
</math> <math alttext="18"><mn>18</mn>
</math>-month periods. Substituting&nbsp;<math alttext="StartFraction 18 Over 12 EndFraction x"><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></math> for <math alttext="t"><mi>t</mi>
</math> in the given equation yields&nbsp;<math alttext="upper P left parenthesis StartFraction 18 Over 12 EndFraction x right parenthesis equals 290 left parenthesis 1.04 right parenthesis Superscript left parenthesis four sixths right parenthesis left parenthesis StartFraction 18 Over 12 EndFraction x right parenthesis"><mi>P</mi><mfenced><mrow><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></mrow></mfenced><mo>=</mo><mn>290</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced><mfenced><mrow><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></mrow></mfenced></mrow></msup></math>, which is equivalent to <math alttext="upper P left parenthesis StartFraction 18 Over 12 EndFraction x right parenthesis equals 290 left parenthesis 1.04 right parenthesis Superscript x"><mi>P</mi><mfenced><mrow><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></mrow></mfenced><mo>=</mo><mn>290</mn><msup><mfenced><mn>1.04</mn></mfenced><mi>x</mi></msup></math>. Therefore, for each <math alttext="18"><mn>18</mn>
</math>-month period, the predicted population of the city is <math alttext="1.04"><mn>1.04</mn>
</math> times, or&nbsp;<math alttext="104 percent sign"><mn>104</mn><mo>%</mo></math> of, the previous population. This means that the population is predicted to increase by&nbsp;<math alttext="4 percent sign"><mn>4</mn><mo>%</mo></math> every <math alttext="18"><mn>18</mn>
</math> months.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.&nbsp;</p>
<p>Choice B is incorrect. Each year, the predicted population of the city is <math alttext="1.04"><mn>1.04</mn>
</math> times the previous year's predicted population, which is not the same as an increase of <math alttext="1.04 percent sign"><mn>1.04</mn><mo>%</mo></math>.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"2d1614a1","external_id":"e6248b96-6cdd-48a4-a20b-dc4b62d59d56","disclosed_item_id":null,"source":"qbank","vaultid":"8e63985a-2c1c-4217-bec9-300b48897b7b","uId":"8aa8d0f8-e2ba-4482-ab49-7c1a6c5f5fe6","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"upper P left parenthesis t right parenthesis equals 290 left parenthesis 1.04 right parenthesis Superscript left parenthesis four sixths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mrow><mn>290</mn></mrow><msup><mfenced><mrow><mn>1.04</mn></mrow></mfenced><mrow><mfenced><mfrac><mrow><mn>4</mn></mrow><mrow><mn>6</mn></mrow></mfrac></mfenced><mi>t</mi></mrow></msup></math></p>\n<p style=\"text-align: left;\">The function <math alttext=\"upper P\"><mi>P</mi>\n</math> models the population, in thousands, of a certain city <math alttext=\"t\"><mi>t</mi>\n</math> years after <math alttext=\"2005\"><mn>2005</mn>\n</math>. According to the model, the population is predicted to increase by&nbsp;<math alttext=\"n percent sign\"><mi>n</mi><mo>%</mo></math> every <math alttext=\"18\"><mn>18</mn>\n</math> months. What is the value of <math alttext=\"n\"><mi>n</mi>\n</math>?</p>","answerOptions":[{"id":"f54a8e72-aea6-4702-8dc1-38470c3e2268","content":"<p><math alttext=\"0.38\"><mn>0.38</mn>\n</math></p>"},{"id":"46270649-871e-4e65-8531-ddb45e02fc44","content":"<p><math alttext=\"1.04\"><mn>1.04</mn>\n</math></p>"},{"id":"b8224c96-22c9-4769-b941-25f2a6c1cb0c","content":"<p><math alttext=\"4\"><mn>4</mn>\n</math></p>"},{"id":"e727f1d9-4242-4121-bcc9-e74a52277924","content":"<p><math alttext=\"6\"><mn>6</mn>\n</math></p>"}],"keys":["b8224c96-22c9-4769-b941-25f2a6c1cb0c"],"correct_answer":["C"],"rationale":"<p>Choice C is correct. It's given that the function <math alttext=\"upper P\"><mi>P</mi>\n</math> models the population of the city <math alttext=\"t\"><mi>t</mi>\n</math> years after&nbsp;<math alttext=\"2005\"><mn>2005</mn></math>. Since there are <math alttext=\"12\"><mn>12</mn>\n</math> months in a year, <math alttext=\"18\"><mn>18</mn>\n</math> months is equivalent to <math alttext=\"StartFraction 18 Over 12 EndFraction\"><mfrac><mn>18</mn><mn>12</mn></mfrac></math> years. Therefore, the expression&nbsp;<math alttext=\"StartFraction 18 Over 12 EndFraction x\"><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></math> can represent the number of years in <math alttext=\"x\"><mi>x</mi>\n</math> <math alttext=\"18\"><mn>18</mn>\n</math>-month periods. Substituting&nbsp;<math alttext=\"StartFraction 18 Over 12 EndFraction x\"><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></math> for <math alttext=\"t\"><mi>t</mi>\n</math> in the given equation yields&nbsp;<math alttext=\"upper P left parenthesis StartFraction 18 Over 12 EndFraction x right parenthesis equals 290 left parenthesis 1.04 right parenthesis Superscript left parenthesis four sixths right parenthesis left parenthesis StartFraction 18 Over 12 EndFraction x right parenthesis\"><mi>P</mi><mfenced><mrow><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></mrow></mfenced><mo>=</mo><mn>290</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced><mfenced><mrow><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></mrow></mfenced></mrow></msup></math>, which is equivalent to <math alttext=\"upper P left parenthesis StartFraction 18 Over 12 EndFraction x right parenthesis equals 290 left parenthesis 1.04 right parenthesis Superscript x\"><mi>P</mi><mfenced><mrow><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></mrow></mfenced><mo>=</mo><mn>290</mn><msup><mfenced><mn>1.04</mn></mfenced><mi>x</mi></msup></math>. Therefore, for each <math alttext=\"18\"><mn>18</mn>\n</math>-month period, the predicted population of the city is <math alttext=\"1.04\"><mn>1.04</mn>\n</math> times, or&nbsp;<math alttext=\"104 percent sign\"><mn>104</mn><mo>%</mo></math> of, the previous population. This means that the population is predicted to increase by&nbsp;<math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> every <math alttext=\"18\"><mn>18</mn>\n</math> months.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.&nbsp;</p>\n<p>Choice B is incorrect. Each year, the predicted population of the city is <math alttext=\"1.04\"><mn>1.04</mn>\n</math> times the previous year's predicted population, which is not the same as an increase of <math alttext=\"1.04 percent sign\"><mn>1.04</mn><mo>%</mo></math>.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959826,"pPcc":"SAT#P","questionId":"2d1614a1","skill_cd":"P.C.","score_band_range_cd":6,"skill_desc":"Nonlinear functions","createDate":1691007959826,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"e6248b96-6cdd-48a4-a20b-dc4b62d59d56","primary_class_cd":"P","uId":"8aa8d0f8-e2ba-4482-ab49-7c1a6c5f5fe6","difficulty":"H"},"raw_detail":{"keys":["b8224c96-22c9-4769-b941-25f2a6c1cb0c"],"rationale":"<p>Choice C is correct. It's given that the function <math alttext=\"upper P\"><mi>P</mi>\n</math> models the population of the city <math alttext=\"t\"><mi>t</mi>\n</math> years after&nbsp;<math alttext=\"2005\"><mn>2005</mn></math>. Since there are <math alttext=\"12\"><mn>12</mn>\n</math> months in a year, <math alttext=\"18\"><mn>18</mn>\n</math> months is equivalent to <math alttext=\"StartFraction 18 Over 12 EndFraction\"><mfrac><mn>18</mn><mn>12</mn></mfrac></math> years. Therefore, the expression&nbsp;<math alttext=\"StartFraction 18 Over 12 EndFraction x\"><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></math> can represent the number of years in <math alttext=\"x\"><mi>x</mi>\n</math> <math alttext=\"18\"><mn>18</mn>\n</math>-month periods. Substituting&nbsp;<math alttext=\"StartFraction 18 Over 12 EndFraction x\"><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></math> for <math alttext=\"t\"><mi>t</mi>\n</math> in the given equation yields&nbsp;<math alttext=\"upper P left parenthesis StartFraction 18 Over 12 EndFraction x right parenthesis equals 290 left parenthesis 1.04 right parenthesis Superscript left parenthesis four sixths right parenthesis left parenthesis StartFraction 18 Over 12 EndFraction x right parenthesis\"><mi>P</mi><mfenced><mrow><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></mrow></mfenced><mo>=</mo><mn>290</mn><msup><mfenced><mn>1.04</mn></mfenced><mrow><mfenced><mfrac><mn>4</mn><mn>6</mn></mfrac></mfenced><mfenced><mrow><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></mrow></mfenced></mrow></msup></math>, which is equivalent to <math alttext=\"upper P left parenthesis StartFraction 18 Over 12 EndFraction x right parenthesis equals 290 left parenthesis 1.04 right parenthesis Superscript x\"><mi>P</mi><mfenced><mrow><mfrac><mn>18</mn><mn>12</mn></mfrac><mi>x</mi></mrow></mfenced><mo>=</mo><mn>290</mn><msup><mfenced><mn>1.04</mn></mfenced><mi>x</mi></msup></math>. Therefore, for each <math alttext=\"18\"><mn>18</mn>\n</math>-month period, the predicted population of the city is <math alttext=\"1.04\"><mn>1.04</mn>\n</math> times, or&nbsp;<math alttext=\"104 percent sign\"><mn>104</mn><mo>%</mo></math> of, the previous population. This means that the population is predicted to increase by&nbsp;<math alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> every <math alttext=\"18\"><mn>18</mn>\n</math> months.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.&nbsp;</p>\n<p>Choice B is incorrect. Each year, the predicted population of the city is <math alttext=\"1.04\"><mn>1.04</mn>\n</math> times the previous year's predicted population, which is not the same as an increase of <math alttext=\"1.04 percent sign\"><mn>1.04</mn><mo>%</mo></math>.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"upper P left parenthesis t right parenthesis equals 290 left parenthesis 1.04 right parenthesis Superscript left parenthesis four sixths right parenthesis t\"><mi>P</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mrow><mn>290</mn></mrow><msup><mfenced><mrow><mn>1.04</mn></mrow></mfenced><mrow><mfenced><mfrac><mrow><mn>4</mn></mrow><mrow><mn>6</mn></mrow></mfrac></mfenced><mi>t</mi></mrow></msup></math></p>\n<p style=\"text-align: left;\">The function <math alttext=\"upper P\"><mi>P</mi>\n</math> models the population, in thousands, of a certain city <math alttext=\"t\"><mi>t</mi>\n</math> years after <math alttext=\"2005\"><mn>2005</mn>\n</math>. According to the model, the population is predicted to increase by&nbsp;<math alttext=\"n percent sign\"><mi>n</mi><mo>%</mo></math> every <math alttext=\"18\"><mn>18</mn>\n</math> months. What is the value of <math alttext=\"n\"><mi>n</mi>\n</math>?</p>","externalid":"e6248b96-6cdd-48a4-a20b-dc4b62d59d56","templateid":"3c363faf-00a6-4275-ae4e-d6f5408122ad","vaultid":"8e63985a-2c1c-4217-bec9-300b48897b7b","type":"mcq","answerOptions":[{"id":"f54a8e72-aea6-4702-8dc1-38470c3e2268","content":"<p><math alttext=\"0.38\"><mn>0.38</mn>\n</math></p>"},{"id":"46270649-871e-4e65-8531-ddb45e02fc44","content":"<p><math alttext=\"1.04\"><mn>1.04</mn>\n</math></p>"},{"id":"b8224c96-22c9-4769-b941-25f2a6c1cb0c","content":"<p><math alttext=\"4\"><mn>4</mn>\n</math></p>"},{"id":"e727f1d9-4242-4121-bcc9-e74a52277924","content":"<p><math alttext=\"6\"><mn>6</mn>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959826,"updateDate":1691007959826}$SATQ$::jsonb, 1691007959826, 1691007959826),
    ($SATQ$2d2ab76b$SATQ$, NULL, NULL, $SATQ$08143-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, $SATQ$<div xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1" class="stimulus_reference ">
        <p class="standalone_statement style:1 ">
          <span class="math_expression ">
            <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_008_065e49e7.png" alt="y equals, x squared, minus 1 and y equals 3"></span></span>
        </p>
      </div>
$SATQ$, $SATQ$<p class="stem_paragraph ">When the equations above are graphed in the <span class="italic"><span class="formatted_text font_style:italic ">xy</span></span>-plane, what are the coordinates (<span class="formatted_text font_style:italic "><span class="italic">x</span>, <span class="italic">y</span></span>) of the points of intersection of the two graphs?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_000_525fcd2d.png\" alt=\"2 comma 3\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_001_f45044ed.png\" alt=\"negative 2 comma 3\"></span></span>\n</p></span>\n"},{"id":"b","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_002_66e0e12d.png\" alt=\"2 comma 4\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_003_68d090b5.png\" alt=\"negative 2 comma 4\"></span></span>\n</p></span>\n"},{"id":"c","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_004_eaa434c0.png\" alt=\"3 comma 8\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_005_8bc8f273.png\" alt=\"negative 3 comma 8\"></span></span>\n</p></span>\n"},{"id":"d","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_006_aa97f62a.png\" alt=\"the square root of 2 comma 3\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_007_77885e23.png\" alt=\"the negative square root of 2 comma 3\"></span></span>\n</p></span>\n"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice A is correct. The two equations form a system of equations, and the solutions to the system correspond to the points of intersection of the graphs. The solutions to the system can be found by substitution. Since the second equation gives <span class="italic">y</span> = 3, substituting 3 for <span class="italic">y</span> in the first equation gives 3 = <span class="italic">x</span><sup>2</sup> &ndash; 1. Adding 1 to both sides of the equation gives 4 = <span class="italic">x</span><sup>2</sup>. Solving by taking the square root of both sides of the equation gives <span class="italic">x</span> = &plusmn;2. Since <span class="italic">y</span> = 3 for all values of <span class="italic">x</span> for the second equation, the solutions are (2, 3) and (&ndash;2, 3). Therefore, the points of intersection of the two graphs are (2, 3) and (&ndash;2, 3).<p>Choices B, C, and D are incorrect and may be the result of calculation errors.</p></p>
$SATQ$, false, 9, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"2d2ab76b","external_id":null,"disclosed_item_id":"08143-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":"<div xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\" class=\"stimulus_reference \">\n        <p class=\"standalone_statement style:1 \">\n          <span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_008_065e49e7.png\" alt=\"y equals, x squared, minus 1 and y equals 3\"></span></span>\n        </p>\n      </div>\n","stem":"<p class=\"stem_paragraph \">When the equations above are graphed in the <span class=\"italic\"><span class=\"formatted_text font_style:italic \">xy</span></span>-plane, what are the coordinates (<span class=\"formatted_text font_style:italic \"><span class=\"italic\">x</span>, <span class=\"italic\">y</span></span>) of the points of intersection of the two graphs?</p>\n","answerOptions":[{"id":"a","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_000_525fcd2d.png\" alt=\"2 comma 3\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_001_f45044ed.png\" alt=\"negative 2 comma 3\"></span></span>\n</p></span>\n"},{"id":"b","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_002_66e0e12d.png\" alt=\"2 comma 4\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_003_68d090b5.png\" alt=\"negative 2 comma 4\"></span></span>\n</p></span>\n"},{"id":"c","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_004_eaa434c0.png\" alt=\"3 comma 8\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_005_8bc8f273.png\" alt=\"negative 3 comma 8\"></span></span>\n</p></span>\n"},{"id":"d","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_006_aa97f62a.png\" alt=\"the square root of 2 comma 3\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2d2ab76b/img_007_77885e23.png\" alt=\"the negative square root of 2 comma 3\"></span></span>\n</p></span>\n"}],"keys":null,"correct_answer":["A"],"rationale":"<p>Choice A is correct. The two equations form a system of equations, and the solutions to the system correspond to the points of intersection of the graphs. The solutions to the system can be found by substitution. Since the second equation gives <span class=\"italic\">y</span> = 3, substituting 3 for <span class=\"italic\">y</span> in the first equation gives 3 = <span class=\"italic\">x</span><sup>2</sup> &ndash; 1. Adding 1 to both sides of the equation gives 4 = <span class=\"italic\">x</span><sup>2</sup>. Solving by taking the square root of both sides of the equation gives <span class=\"italic\">x</span> = &plusmn;2. Since <span class=\"italic\">y</span> = 3 for all values of <span class=\"italic\">x</span> for the second equation, the solutions are (2, 3) and (&ndash;2, 3). Therefore, the points of intersection of the two graphs are (2, 3) and (&ndash;2, 3).<p>Choices B, C, and D are incorrect and may be the result of calculation errors.</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":9,"raw_list":{"updateDate":1691007959635,"pPcc":"SAT#P","questionId":"2d2ab76b","skill_cd":"P.B.","score_band_range_cd":4,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1691007959635,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"08143-DC","external_id":null,"primary_class_cd":"P","uId":"e883decd-767b-4a56-993b-e416ce05f2ed","difficulty":"M"},"raw_detail":{"item_id":"08143-DC","section":"Math","body":"<div xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\" class=\"stimulus_reference \">\n        <p class=\"standalone_statement style:1 \">\n          <span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEoAAAAwCAYAAAC2aezWAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAY00gKyAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB5UlEQVRoQ+2Zi5GEIAyGLY+CKMdebMVOcoQYQc7VHSFgZvPNMId7s6h/XmyY3g4sHvAPDQ8LAM6NHFhncJODeSVxomhuhnBpYuVEYfyyiwLBn7x51T3mUV9A3jRBcLDmIi1+Ahfie7vUC+UqGZG4WKgXil4kJfSWrLOLIuF4JFRcoMgFEK5mFxbNkmst6PLlfeJnmzBl1WtJMgCF9COhaJFjdflkWc4dOL0aZ2FT5h2ycLpHbvE02lY9foZnQpX7FwFvYnav2vJQ71xRJ1Rh6TMPawUnapw+MUSNRyOVQpEH4Zfz+fbvA7UPilBeGrORrBIK4b2FpDchKQ/JJO07qoWKL+DnS2+qhYxA60evEsiBd1QLxS8hlpu2B2Rx6H79vapeKMEqtIuUGUGysl7RJvQGJVg1sMpXleqnSSEhE3KGYRiGYRiG0R3qRfEY02p5PWXDblQH4dWcndXddVNfR+wcdDiuKhnVankMhcCxxfIpLPIf0lfjm04EtXYUhV7P4yok9c2VtXbKftSZh0mwH12pCb0sqd4l2Jahh6gLv17HVSXqtgjRsoLHVSTIf08jj1LUq+cXkXrovUBk2xC+p5p9FCJ5XMXsYoUpD1VVD1EXAiMotwdGQV7qVeUJwzAMwzCaMU1/534sP1FsiV8AAAAASUVORK5CYII=\" alt=\"y equals, x squared, minus 1 and y equals 3\"></span></span>\n        </p>\n      </div>\n","prompt":"<p class=\"stem_paragraph \">When the equations above are graphed in the <span class=\"italic\"><span class=\"formatted_text font_style:italic \">xy</span></span>-plane, what are the coordinates (<span class=\"formatted_text font_style:italic \"><span class=\"italic\">x</span>, <span class=\"italic\">y</span></span>) of the points of intersection of the two graphs?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAaCAYAAADWm14/AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABOUlEQVRIS+1T0RHDIAh1PAdyHHdxFTehKmIQIdVr+9G7vDsviVHeAx6OA3IE7zzEDNC3vgaADNE7CMmIDZAg/IiccMuRggNf/vTPobi+0uL/LdQ45dHXSgYpgPOxRGf7WPpQ9OHmRc726sXyuBOB5PLOLEJtRY4eXNnpn6YX2jlGwIF35sBEJkU3YYyvKTfNwYAZ6QI0jEpysoKp4nhoz3ytxLJ/N8CKKT4o1MOMu+4nD+xUComrH/TzU9I7AohclvIdyBdLC04EjGwOyQlaG0QL0ChaqWimd+bfgj6KVQAzcyWSJJT5LrnlEYwzT047y80sN6h3J5mPkeNxuigZZ0lYtoG7eF1XNu0cJyQR7LysiOm5pSwbaITh7E4VbVYWM7cnQqK1anM6tBZ9jCpYm54HDx48+CM49wLyBx10B95KSgAAAABJRU5ErkJggg==\" alt=\"2 comma 3\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC0AAAAcCAYAAAD1PDaSAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABSUlEQVRYR+1V2xGEIAykPAqiHHqxFTrJASEaNPHia/SDnWE8c4ibzSY6DkgRvPMQE0ALvQqABNE7CJPCB2CC8CHChF1eU3Dg8z/t9lOAKYDzMevOiKMtQs7pmspUzvKTlkWIIli+tLVVVbRJih5cjrTbU1gIL8lXhfJljzgSXj8jEC9xzrE8qJrdCK2JqyBKFfGZ/t2U/DrRzg246bkGROXs1psrtqp815BPT41a/nUT7QArI9iDi/skafK0xXpItvhb3m8ijXE8ZG9phIjw0QYnn/+xB3rIooYVs2oHCRMkiyBp1ht3flho5l45Txp7NcZ7YxM4CVLYSljzPJ7TT5yNsHdYhLx4ROF5vDHBKBF+jjosrqrNu3+7FtXqPk6SiLP9kvKqGPhiIaMbUUkGmzhSJV5BtdHJqfIaSjWv9M7AwMDAwMAAwrkfSUotzMMy6EIAAAAASUVORK5CYII=\" alt=\"negative 2 comma 3\"></span></span>\n</p></span>\n"},"b":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAaCAYAAADWm14/AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABNElEQVRIS+1U7RHDIAh1PAdyHHdxlWxCRcTgB8T00h+9y7vzUhHh8cA6CTgieOchHgDV9BgADojeQUhKbIAE4UfJGWaOFBz4fFK3jTH+5CXPr0BqzhVDCuB8zNGFnZxD5kfGM7mw4cX82SWBBeXPTGDViiN6cNlSt+osFD9BSgOTxbXqeTkX+QrbleMICmwTaBXGdQsQneJ0YW/4iqxj/wYUldBHmQFEN4y708+yWkpRLPLRhhDRFb1DoPU0RyPLGkWh6vMYARq86+Tj4NoEuhYsnkUFP6Wdp9eILldfIBEQw4yJxiQc8M6fj4SpALZUDvNo4MvfJkdYBKaCxzbYcp7StSfHlQhoBNSZm2TZQCEe7t1B0qqyVLn+IkaUKnOJdWuCVb5bpAkkvOrxixcvXvwRnPsA0EUbtyzNAbAAAAAASUVORK5CYII=\" alt=\"2 comma 4\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC0AAAAcCAYAAAD1PDaSAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABSUlEQVRYR+1VgZGEIAykPAqiHHqxFTvJk4QgasKh6PzdDDvDKBwHy+4GXQ1YI3jnIa4AeehfAbBC9A7CYvABWCB8EWFBk9cSHPj0S+5+FWAJ4HxMulfEORYhnWlMZbETX6VdEYJ5nOOgxmSNHlwayd1b2AhvhyeF0qOXOLqdHmqGaa2aI07WJl6BVcQkSIeLckBsKuk6DazQewXIZNqki/1RjwdiV5Bv3xpk+bGIDiA3cI6RacRO3DdJi+Wt6PH+PMcqREQXaVkMX1vNIlQymibwiA5yIs9pk654ljw11LgKLr7PhI/F+5l0VRtPfljk2upZrxxObXv3ybm6Nk4DNyEk7grQUvok7BMRkQ1HHLNIW3U3rHbb6i2L5XpT9rFI439MMXhj5UQPglwNfeJIAp6I7hBIzSRl7v4G0M2R2pmYmJiYmJhgOPcHy0gsDzEn5tcAAAAASUVORK5CYII=\" alt=\"negative 2 comma 4\"></span></span>\n</p></span>\n"},"c":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAaCAYAAADWm14/AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABNElEQVRIS+2U7Q3EIAiGHc+BHMddXKWbcCJ6IoL2vn5c4pOYprTg6wut48AVwTsP8QKooa8BcEH0DkIyagMkCD/avLHcIwUHPj+ptwWM5Utd98SNOfOJIQVwPmY/WJysD1lfD1KhHiuJGxF6zihCbcUVPbgcqbdVkJ4oXWqQvfOJiyhWGynCeAxfkomSJkAWa2iiEVUAd5wK7/tbXPpCC5BhGHfTTxtj4b1LCH/fEjwc+u7n1yw2W9BaxB2oOXJu3hKArNpgzQDldFGIaAEpv2Pv6lO0nmlxEsBE4fBwm6zh0U7TsBygWsIBjPGfkQw8+8ljVZT1H0Cmr8CYAXlgtQ19qPpSHRG/VRLR1zyAxsxNttygiAyv5aBo08XVlGsUi7Mt9XaJ1taPQcGyLYfD4fBnOPcAWhJLj/FbFZQAAAAASUVORK5CYII=\" alt=\"3 comma 8\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC0AAAAcCAYAAAD1PDaSAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABTElEQVRYR+1VixGDIAxlPAZiHHZxFTdJCSE1QkKpn6u9491xajTw8vJAJwFrBO88xBWghH4KgBWidxAWgw/AAuFBhBldXktw4NOb8vgowBLA+Zh0F8TJFiHVdF5lLD5dyhjr3D6ntYNqkzV6cClSHg+DFt+Kzwp9IK7nKMQxLjliYv3Rt6Bu7edhhSzbkV/btXMhkmDCzg008T0bkElbXdQKRaikc4GF552nRrbdVfaQ4t5BmsgimTHbye+tIodIs9/wtjd6pLj9pj3YPlLpklPvg8oelDiiyBH0LGJ5mnK2QhBEWsTQV3f9WHrHnvVOi+eY/ME0gQOghcZUY1hK01z7nEbYKyzy9qcongvpdbE5PRRPm4fFJWoz8XTLQ1W+WoeIb6MuEnPMwnub5irkwsKYOFr3foLc/iR/efwPYDfP7J2JiYmJiYkJgnMvN6Fb50ju8AUAAAAASUVORK5CYII=\" alt=\"negative 3 comma 8\"></span></span>\n</p></span>\n"},"d":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAeCAYAAABqpJ3BAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACAklEQVRYR+1Vq7LCMBSsYAaPwuIYFDgkMhKJRPIBFfwBn4DpDJJPQFYySBS2DolE7s2jp6RpcknCDPeK7EymtOSx5+yek0wHqgIsYygqoP70bwBUKFiGvHRwA0rkEeSn06mYHzOC8SvHMs/A+D/1qxdOpxMYY1FkYoEyR8YKrocWhLJOzuMLy/5qtcLxePxuADYrVQXPIv9Sv3rh8XhgOBzi+Xy21tEB4ieNEGWFE/ijHna7SBV0vmKRszgc2O/32Gw2rTUv8i815WH84ROEIm+u7QbRcow6NLx45/M5zuezZePuXlLhNxZVa9uJpISYwbeKOab73G43jMdj7/kqk+E11ihq2LuV9JgAttstdrud93xpDbNzeEAp1+X2cQCieO/3u9d8qoGQGlPERT3Y1xkWUjL5HhDS+4l8aIcjUF10LSQC0Cxpu8QOhwNGoxFEu6w/Sfj2/iaLkeQJNhvJxOiWND8sFgus12tMJhMsl8tmoav3m6BeHnqz26BUbAfQSbjLRtfrFb1er1HB1vtNUOZDybtqRe2n3Q2umu3IUmM2mzUq2Hq/DvJsTOablqlxoKD0/URAzv1tfiMVLpfL295P2beP7j0g5+uEKQhtHSliC9AbQoXBYBDU+30gSeURhEIhVOj3+9693xfSch92qT+FsJBZtAkJCQkJCQkJX0OW/QAQ/Kauty9TEAAAAABJRU5ErkJggg==\" alt=\"the square root of 2 comma 3\"></span><p> and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD0AAAAeCAYAAACfWhZxAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACF0lEQVRYR+1Woa7CMBSdIMGjsDiCAodEViKRSD5ggj/gEzBLkHwCcpIgUdg5JBJ5WNvd0XUdtHvbXkh6kgbYW3t77jn33heoQBKBBQxRAmSPfhpAgogFCOMKPkCMsCPC0+mUx6iznPGRVxwGYOlfsp+t4XQ6gTHWehwViEMELEp1V4hLW4dpTtpXebVa4Xg8dkvaZPMkSjOfPsl+tobH44HhcIjn81mIRZfiX2m5uI67NP3IltnKQm2VI99UWewNYr/fY7PZFOK8Cb+dJi6YftgQl4T1vWXiBTfLoN00sPl8jvP5bLhMOb5w35eSk3uLglES9YQVGlpXXft2u2E8HlvHkIq595ncOVq5FsTtivR2u8Vut7OOIWyrd1wLSIeU+fwLad7A7ve7VQyqaZc+I8ny+jbv0+wt7aC/KF+Sh3xaNhdzmc1EuO40oTov25vzUcqlqX9MDocDRqMR+GjKHgnYzuZcrZqECSaLi2Sq5VJ6UAOLxQLr9RqTyQTL5TI/p2o266BZ20TypVuKpEvCVlm8Dq7XK3q9Xq62aTbrIIVdCVfVvjxPmd1qPatoQm3CbDbL1TbNZhVUg3UUzseTcm9KhHoeT0Ll+aZaqANS+3K5fJ3NpLJ5lee0eF8lScSVfaS8KSmtgqs9GAycZrMNBJGwIxKu4Gr3+33r2WwLUQ5/7O4/B27vJhquh4eHh4eHh4eHR6cIgheAdrcGGGXXugAAAABJRU5ErkJggg==\" alt=\"the negative square root of 2 comma 3\"></span></span>\n</p></span>\n"}},"correct_choice":"a","rationale":"<p>Choice A is correct. The two equations form a system of equations, and the solutions to the system correspond to the points of intersection of the graphs. The solutions to the system can be found by substitution. Since the second equation gives <span class=\"italic\">y</span> = 3, substituting 3 for <span class=\"italic\">y</span> in the first equation gives 3 = <span class=\"italic\">x</span><sup>2</sup> &ndash; 1. Adding 1 to both sides of the equation gives 4 = <span class=\"italic\">x</span><sup>2</sup>. Solving by taking the square root of both sides of the equation gives <span class=\"italic\">x</span> = &plusmn;2. Since <span class=\"italic\">y</span> = 3 for all values of <span class=\"italic\">x</span> for the second equation, the solutions are (2, 3) and (&ndash;2, 3). Therefore, the points of intersection of the two graphs are (2, 3) and (&ndash;2, 3).<p>Choices B, C, and D are incorrect and may be the result of calculation errors.</p></p>\n"}},"createDate":1691007959635,"updateDate":1691007959635}$SATQ$::jsonb, 1691007959635, 1691007959635),
    ($SATQ$2d394c28$SATQ$, $SATQ$58bfb590-016f-4bec-8d23-459d22e7482a$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="285.138906pt" version="1.1" viewBox="0 0 304.038906 285.138906" width="304.038906pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a curve in the x y plane with the origin labeled O. The x axis is labeled Years after 2010. It ranges from 0 to 10. The y axis is labeled Number of residents. It ranges from 0 to 40,000. Refer to long description.">
 <defs>
  <style type="text/css">
*{stroke-linecap:butt;stroke-linejoin:round;}
  </style>
 </defs>
 <g id="figure_1">
  <g id="patch_1">
   <path d="M 0 285.138906 
L 304.038906 285.138906 
L 304.038906 0 
L 0 0 
z
" style="fill:none;"></path>
  </g>
  <g id="axes_1">
   <g id="patch_2">
    <path d="M 24.678906 260.46 
L 296.838906 260.46 
L 296.838906 10.98 
L 24.678906 10.98 
z
" style="fill:none;"></path>
   </g>
   <g id="matplotlib.axis_1">
    <g id="text_1">
     <!-- Years after 2010 -->
     <defs>
      <path d="M 13.578125 64.0625 
Q 14.75 64.0625 26.46875 64.65625 
Q 26.65625 64.265625 26.609375 63.140625 
Q 26.5625 62.015625 26.265625 62.015625 
Q 24.609375 62.015625 22.5 61.1875 
Q 20.40625 60.359375 20.40625 58.6875 
Q 20.40625 57.625 21.484375 55.765625 
L 32.421875 35.0625 
Q 32.90625 34.578125 33.40625 35.25 
Q 46.6875 55.375 46.6875 58.796875 
Q 46.6875 59.859375 44.734375 60.9375 
Q 42.78125 62.015625 39.9375 62.015625 
Q 39.546875 62.015625 39.546875 63.140625 
Q 39.546875 64.265625 39.9375 64.65625 
Q 50.78125 64.0625 51.46875 64.0625 
Q 54.5 64.0625 57.71875 64.359375 
Q 60.9375 64.65625 61.8125 64.65625 
Q 62.015625 64.0625 62.015625 63.1875 
Q 62.015625 62.015625 61.625 62.015625 
Q 60.453125 62.015625 57.515625 61.125 
Q 54.59375 60.25 53.609375 58.984375 
Q 49.90625 53.21875 42.828125 41.5 
Q 35.75 29.78125 35.75 28.421875 
L 35.75 13.578125 
Q 35.75 7.515625 36.53125 4.5 
Q 36.71875 3.8125 39.15625 3.078125 
Q 41.609375 2.34375 42.484375 2.34375 
Q 42.875 2.34375 42.875 1.078125 
Q 42.875 0.296875 42.671875 -0.296875 
Q 32.90625 0.203125 31.734375 0.203125 
Q 31.453125 0.203125 20.21875 -0.296875 
Q 19.828125 0.09375 19.828125 1.078125 
Q 19.828125 2.34375 20.21875 2.34375 
Q 21.390625 2.34375 23.78125 3.03125 
Q 26.171875 3.71875 26.46875 4.5 
Q 27.25 7.515625 27.25 13.875 
L 27.25 26.078125 
Q 27.25 27.4375 25.140625 31.484375 
Q 23.046875 35.546875 12.984375 53.609375 
Q 11.421875 56.546875 10.59375 57.671875 
Q 9.765625 58.796875 8.203125 59.859375 
Q 7.125 60.640625 4.96875 61.328125 
Q 2.828125 62.015625 1.859375 62.015625 
Q 1.46875 62.015625 1.46875 63.09375 
Q 1.46875 64.265625 1.859375 64.65625 
Q 3.421875 64.546875 7.125 64.296875 
Q 10.84375 64.0625 13.578125 64.0625 
z
" id="CrimsonText-Regular-89"></path>
      <path d="M 21.96875 38.96875 
Q 16.890625 38.96875 14.203125 34.625 
Q 11.53125 30.28125 11.53125 27.4375 
Q 11.53125 26.765625 12.109375 26.765625 
L 31.15625 26.765625 
Q 31.640625 26.765625 31.640625 27.734375 
Q 31.640625 30.859375 29 34.90625 
Q 26.375 38.96875 21.96875 38.96875 
z
M 22.953125 42.578125 
Q 27.4375 42.578125 30.859375 40.859375 
Q 34.28125 39.15625 36.078125 36.46875 
Q 37.890625 33.796875 38.71875 31 
Q 39.546875 28.21875 39.546875 25.484375 
Q 39.546875 23.53125 38.953125 23.09375 
Q 38.375 22.65625 36.71875 22.65625 
L 12.109375 22.65625 
Q 11.328125 22.65625 11.328125 22.171875 
Q 11.328125 16.015625 15.03125 10.84375 
Q 18.75 5.671875 25.78125 5.671875 
Q 27.828125 5.671875 29.6875 6.0625 
Q 31.546875 6.453125 32.859375 6.984375 
Q 34.1875 7.515625 35.109375 8.046875 
Q 36.03125 8.59375 36.71875 9.078125 
L 37.40625 9.578125 
Q 37.984375 9.578125 37.984375 8.296875 
Q 37.984375 7.515625 37.40625 6.546875 
Q 35.453125 3.8125 31.640625 1.609375 
Q 27.828125 -0.59375 23.34375 -0.59375 
Q 15.234375 -0.59375 9.421875 5.515625 
Q 3.609375 11.625 3.609375 20.40625 
Q 3.609375 30.671875 9.125 36.625 
Q 14.65625 42.578125 22.953125 42.578125 
z
" id="CrimsonText-Regular-101"></path>
      <path d="M 12.015625 7.71875 
Q 15.328125 4.890625 17.96875 4.890625 
Q 20.609375 4.890625 23.046875 6.5 
Q 25.484375 8.109375 25.484375 9.765625 
L 25.484375 19.828125 
Q 24.703125 19.4375 21.671875 18.453125 
Q 18.65625 17.484375 16.9375 16.75 
Q 15.234375 16.015625 13.625 14.296875 
Q 12.015625 12.59375 12.015625 10.359375 
Q 12.015625 7.71875 15.328125 4.890625 
z
M 22.859375 42.578125 
Q 28.21875 42.578125 30.5625 39.984375 
Q 32.90625 37.40625 32.90625 31.640625 
L 32.90625 9.078125 
Q 32.90625 7.03125 33.984375 5.65625 
Q 35.0625 4.296875 36.921875 4.296875 
Q 38.28125 4.296875 40.328125 5.671875 
Q 40.71875 5.671875 40.71875 4.890625 
Q 40.71875 3.609375 40.234375 2.828125 
Q 36.234375 -0.59375 33.40625 -0.59375 
Q 31.15625 -0.59375 29.09375 1.265625 
Q 27.046875 3.125 26.265625 5.171875 
Q 26.171875 5.171875 25.53125 4.53125 
Q 24.90625 3.90625 23.828125 3.078125 
Q 22.75 2.25 21.328125 1.359375 
Q 19.921875 0.484375 18.015625 -0.09375 
Q 16.109375 -0.6875 14.15625 -0.6875 
Q 9.671875 -0.6875 6.734375 1.703125 
Q 3.8125 4.109375 3.8125 8.890625 
Q 3.8125 11.03125 4.875 12.9375 
Q 5.953125 14.84375 7.421875 16.0625 
Q 8.890625 17.28125 11.421875 18.546875 
Q 13.96875 19.828125 15.765625 20.453125 
Q 17.578125 21.09375 20.5 22.0625 
Q 23.4375 23.046875 24.609375 23.53125 
Q 25.484375 23.828125 25.484375 25 
L 25.484375 32.328125 
Q 25.484375 35.453125 23.53125 37.15625 
Q 21.578125 38.875 18.84375 38.875 
Q 15.921875 38.875 13.96875 36.859375 
Q 12.015625 34.859375 12.015625 31.640625 
Q 12.015625 28.21875 8.015625 28.21875 
Q 5.28125 28.21875 4.203125 30.078125 
Q 4.203125 34.28125 10.34375 38.421875 
Q 16.5 42.578125 22.859375 42.578125 
z
" id="CrimsonText-Regular-97"></path>
      <path d="M 28.609375 42.671875 
Q 34.375 42.671875 36.234375 39.84375 
Q 36.234375 36.421875 35.15625 34.859375 
Q 34.078125 33.296875 32.515625 33.296875 
Q 30.765625 33.296875 29.296875 34.953125 
Q 27.828125 36.625 25.296875 36.625 
Q 22.265625 36.625 20.015625 33.78125 
Q 17.78125 30.953125 17.78125 27.828125 
L 17.78125 13.1875 
Q 17.78125 7.515625 18.5625 4.5 
Q 18.75 3.8125 21.140625 3.171875 
Q 23.53125 2.546875 24.515625 2.546875 
Q 24.8125 2.546875 24.90625 1.375 
Q 25 0.203125 24.8125 -0.296875 
Q 15.046875 0.203125 14.265625 0.203125 
Q 13.671875 0.203125 3.609375 -0.296875 
Q 3.21875 0.09375 3.21875 1.3125 
Q 3.21875 2.546875 3.609375 2.546875 
Q 4.78125 2.546875 7.078125 3.171875 
Q 9.375 3.8125 9.578125 4.5 
Q 10.25 7.328125 10.25 11.328125 
L 10.25 29.78125 
Q 10.25 33.59375 8.890625 35.0625 
Q 7.90625 36.234375 6.484375 36.671875 
Q 5.078125 37.109375 4.140625 37.109375 
Q 3.21875 37.109375 3.21875 37.3125 
Q 3.21875 39.65625 3.8125 39.75 
Q 14.15625 41.3125 17.28125 42.28125 
Q 17.390625 42.28125 17.578125 42.328125 
Q 17.78125 42.390625 17.78125 42.390625 
Q 18.171875 42.390625 18.265625 41.546875 
Q 18.359375 40.71875 18.265625 40.328125 
L 17.671875 35.453125 
Q 19.4375 38.09375 22.515625 40.375 
Q 25.59375 42.671875 28.609375 42.671875 
z
" id="CrimsonText-Regular-114"></path>
      <path d="M 18.65625 42.671875 
Q 20.796875 42.671875 24.0625 42.140625 
Q 27.34375 41.609375 28.609375 41.40625 
Q 29.59375 36.921875 29.78125 31.453125 
Q 29.78125 30.953125 28.515625 30.953125 
Q 27.15625 30.953125 27.046875 31.640625 
Q 26.5625 34.375 24.265625 36.8125 
Q 21.96875 39.265625 19.046875 39.265625 
Q 12.015625 39.265625 12.015625 33.5 
Q 12.015625 32.03125 12.40625 30.90625 
Q 12.796875 29.78125 13.921875 28.75 
Q 15.046875 27.734375 15.625 27.296875 
Q 16.21875 26.859375 18.21875 25.734375 
Q 20.21875 24.609375 20.703125 24.3125 
Q 21.09375 24.125 23 23 
Q 24.90625 21.875 25.6875 21.390625 
Q 26.46875 20.90625 27.984375 19.734375 
Q 29.5 18.5625 30.171875 17.625 
Q 30.859375 16.703125 31.484375 15.28125 
Q 32.125 13.875 32.125 12.40625 
Q 32.125 6.640625 27.625 2.78125 
Q 23.140625 -1.078125 17.09375 -1.078125 
Q 15.046875 -1.078125 13.328125 -0.828125 
Q 11.625 -0.59375 9.28125 0 
Q 6.9375 0.59375 5.671875 0.78125 
Q 5.078125 2.34375 4.53125 5.65625 
Q 4 8.984375 4 10.9375 
Q 4.78125 11.53125 5.171875 11.53125 
Q 6.640625 11.53125 6.734375 10.9375 
Q 7.328125 8.015625 10.40625 5.21875 
Q 13.484375 2.4375 17.09375 2.4375 
Q 20.21875 2.4375 22.21875 4.140625 
Q 24.21875 5.859375 24.21875 9.078125 
Q 24.21875 10.75 23.578125 12.15625 
Q 22.953125 13.578125 21.53125 14.703125 
Q 20.125 15.828125 18.890625 16.546875 
Q 17.671875 17.28125 15.421875 18.453125 
Q 13.1875 19.625 12.109375 20.3125 
Q 4.5 24.703125 4.5 30.765625 
Q 4.5 36.03125 8.734375 39.34375 
Q 12.984375 42.671875 18.65625 42.671875 
z
" id="CrimsonText-Regular-115"></path>
      <path id="CrimsonText-Regular-32"></path>
      <path d="M 29 67.875 
Q 36.03125 67.875 38.28125 64.0625 
Q 38.28125 57.90625 34.765625 57.90625 
Q 33.5 57.90625 32.328125 59.421875 
Q 31.15625 60.9375 29.640625 62.5 
Q 28.125 64.0625 25.984375 64.0625 
Q 21.6875 64.0625 19.34375 58.78125 
Q 17 53.515625 17 46.390625 
L 17 41.40625 
Q 17 40.921875 17.484375 40.921875 
L 28.328125 40.921875 
Q 28.8125 40.921875 28.8125 40.234375 
Q 28.8125 38.671875 27.640625 36.328125 
L 17.578125 36.328125 
Q 17 36.328125 17 35.75 
L 17 13.1875 
Q 17 7.90625 17.875 4.5 
Q 18.0625 3.8125 20.265625 3.171875 
Q 22.46875 2.546875 23.34375 2.546875 
Q 23.640625 2.546875 23.734375 1.375 
Q 23.828125 0.203125 23.640625 -0.296875 
Q 13.875 0.203125 13.1875 0.203125 
Q 12.890625 0.203125 2.9375 -0.296875 
Q 2.734375 -0.09375 2.640625 0.640625 
Q 2.546875 1.375 2.640625 1.953125 
Q 2.734375 2.546875 2.9375 2.546875 
Q 4.109375 2.546875 6.25 3.171875 
Q 8.40625 3.8125 8.59375 4.5 
Q 9.578125 8.296875 9.578125 13.1875 
L 9.578125 35.640625 
Q 9.578125 36.328125 9.078125 36.328125 
L 3.90625 36.328125 
Q 3.609375 36.328125 3.609375 36.921875 
Q 3.609375 37.796875 5.171875 39.359375 
Q 6.734375 40.921875 8.5 40.921875 
L 9.078125 40.921875 
Q 9.578125 40.921875 9.578125 41.5 
L 9.578125 42.78125 
Q 9.578125 53.03125 15.671875 60.453125 
Q 21.78125 67.875 29 67.875 
z
" id="CrimsonText-Regular-102"></path>
      <path d="M 7.8125 36.53125 
L 2.15625 36.53125 
Q 1.65625 36.53125 1.65625 38.578125 
Q 1.65625 39.15625 1.765625 39.265625 
Q 4.59375 40.53125 7.90625 44.4375 
Q 8.984375 45.703125 10 47.3125 
Q 11.03125 48.921875 11.71875 50.09375 
Q 12.40625 51.265625 12.40625 51.375 
Q 15.328125 51.375 15.328125 50.875 
L 15.328125 41.21875 
Q 17.875 41.21875 23.046875 41.15625 
Q 28.21875 41.109375 28.515625 41.109375 
Q 29.296875 41.109375 29.296875 40.234375 
Q 29.296875 38.484375 28.328125 36.53125 
L 15.328125 36.53125 
L 15.328125 12.59375 
Q 15.328125 8.6875 17.328125 6.34375 
Q 19.34375 4 22.5625 4 
Q 25.484375 4 28.609375 5.859375 
Q 28.90625 6.0625 29.484375 5.03125 
Q 30.078125 4 29.984375 3.90625 
Q 28.515625 2.34375 25.484375 0.828125 
Q 22.46875 -0.6875 19.234375 -0.6875 
Q 14.359375 -0.6875 11.078125 2.53125 
Q 7.8125 5.765625 7.8125 11.71875 
z
" id="CrimsonText-Regular-116"></path>
      <path d="M 25 62.703125 
Q 31.546875 62.703125 35.296875 57.8125 
Q 39.0625 52.9375 39.0625 46.78125 
Q 39.0625 43.171875 37.84375 39.3125 
Q 36.625 35.453125 34.03125 31.4375 
Q 31.453125 27.4375 29.34375 24.453125 
Q 27.25 21.484375 23.53125 17.578125 
Q 19.828125 13.671875 18.40625 12.203125 
Q 17 10.75 13.875 7.71875 
Q 13.578125 7.234375 14.0625 7.03125 
L 32.90625 7.03125 
Q 35.640625 7.03125 36.859375 8.59375 
Q 38.09375 10.15625 39.359375 14.546875 
Q 39.75 15.625 40.71875 15.625 
Q 42 15.625 42.484375 15.234375 
Q 40.140625 3.515625 39.84375 1.5625 
Q 39.65625 0 37.890625 0 
L 5.859375 0 
Q 5.46875 0 5.125 1.125 
Q 4.78125 2.25 4.78125 2.9375 
Q 15.4375 13.671875 23.046875 25.234375 
Q 30.671875 36.8125 30.671875 44.828125 
Q 30.671875 50.09375 28.03125 52.96875 
Q 25.390625 55.859375 21.09375 55.859375 
Q 12.984375 55.859375 8.109375 47.75 
Q 7.515625 47.75 6.875 48.390625 
Q 6.25 49.03125 6.25 49.3125 
Q 6.546875 50.484375 7.859375 52.484375 
Q 9.1875 54.5 11.375 56.890625 
Q 13.578125 59.28125 17.234375 60.984375 
Q 20.90625 62.703125 25 62.703125 
z
" id="CrimsonText-Regular-50"></path>
      <path d="M 10.9375 31.25 
Q 10.9375 19.53125 14.359375 11.46875 
Q 17.78125 3.421875 23.140625 3.421875 
Q 29.390625 3.421875 32.859375 11.515625 
Q 36.328125 19.625 36.328125 31.734375 
Q 36.328125 43.359375 32.90625 51.125 
Q 29.5 58.890625 24.125 58.890625 
Q 18.171875 58.890625 14.546875 50.96875 
Q 10.9375 43.0625 10.9375 31.25 
z
M 2.34375 31.15625 
Q 2.34375 44.4375 8.109375 53.515625 
Q 13.875 62.59375 23.640625 62.59375 
Q 33.5 62.59375 39.203125 53.5625 
Q 44.921875 44.53125 44.921875 31.15625 
Q 44.921875 17.875 39.15625 8.78125 
Q 33.40625 -0.296875 23.640625 -0.296875 
Q 13.96875 -0.296875 8.15625 8.828125 
Q 2.34375 17.96875 2.34375 31.15625 
z
" id="CrimsonText-Regular-48"></path>
      <path d="M 12.796875 48.4375 
Q 12.203125 48.734375 11.609375 49.5625 
Q 11.03125 50.390625 11.03125 50.875 
Q 11.03125 51.265625 11.234375 51.46875 
Q 27.734375 62.703125 28.125 62.703125 
L 28.328125 62.703125 
Q 29.109375 62.703125 29.5 60.84375 
Q 28.515625 57.625 28.515625 51.65625 
L 28.515625 13.1875 
Q 28.515625 7.515625 29.296875 4.5 
Q 29.5 3.8125 32.171875 3.171875 
Q 34.859375 2.546875 35.84375 2.546875 
Q 36.234375 2.546875 36.234375 0.78125 
Q 36.234375 -0.09375 36.140625 -0.296875 
Q 26.375 0.203125 24.3125 0.203125 
Q 22.75 0.203125 12.984375 -0.296875 
Q 12.59375 0.09375 12.59375 1.3125 
Q 12.59375 2.546875 12.984375 2.546875 
Q 14.265625 2.546875 16.9375 3.171875 
Q 19.625 3.8125 19.828125 4.5 
Q 20.40625 6.84375 20.40625 10.0625 
L 20.40625 45.21875 
Q 20.40625 48.046875 20.203125 49.515625 
Q 20.015625 50.984375 19.765625 51.3125 
Q 19.53125 51.65625 19.046875 51.65625 
Q 18.453125 51.65625 17.328125 51.0625 
Q 16.21875 50.484375 14.75 49.609375 
Q 13.28125 48.734375 12.796875 48.4375 
z
" id="CrimsonText-Regular-49"></path>
     </defs>
     <g transform="translate(113.274531 274.627187)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-89"></use>
      <use x="63.378906" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="105.371094" xlink:href="#CrimsonText-Regular-97"></use>
      <use x="146.679688" xlink:href="#CrimsonText-Regular-114"></use>
      <use x="183.789062" xlink:href="#CrimsonText-Regular-115"></use>
      <use x="218.847656" xlink:href="#CrimsonText-Regular-32"></use>
      <use x="241.210938" xlink:href="#CrimsonText-Regular-97"></use>
      <use x="282.519531" xlink:href="#CrimsonText-Regular-102"></use>
      <use x="311.914062" xlink:href="#CrimsonText-Regular-116"></use>
      <use x="342.578125" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="384.570312" xlink:href="#CrimsonText-Regular-114"></use>
      <use x="421.679688" xlink:href="#CrimsonText-Regular-32"></use>
      <use x="444.042969" xlink:href="#CrimsonText-Regular-50"></use>
      <use x="491.308594" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="538.574219" xlink:href="#CrimsonText-Regular-49"></use>
      <use x="585.839844" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="matplotlib.axis_2">
    <g id="text_2">
     <!-- Number of residents -->
     <defs>
      <path d="M 53.8125 51.171875 
Q 53.8125 57.125 53.125 59.765625 
Q 52.828125 60.546875 49.75 61.28125 
Q 46.6875 62.015625 45.40625 62.015625 
Q 45.015625 62.015625 45.015625 63.140625 
Q 45.015625 64.265625 45.40625 64.65625 
Q 46.6875 64.546875 50.484375 64.296875 
Q 54.296875 64.0625 56.9375 64.0625 
Q 59.46875 64.0625 63.328125 64.359375 
Q 67.1875 64.65625 67.875 64.65625 
Q 68.0625 64.0625 68.0625 63.1875 
Q 68.0625 62.015625 67.671875 62.015625 
Q 66.703125 62.015625 63.421875 61.234375 
Q 60.15625 60.453125 59.96875 59.765625 
Q 59.1875 56.734375 59.1875 50.6875 
L 59.1875 13.578125 
Q 59.1875 7.515625 59.46875 -0.09375 
Q 59.078125 -0.484375 57.625 -0.484375 
Q 55.953125 -0.484375 54.390625 1.765625 
L 16.5 55.46875 
L 16.5 13.765625 
Q 16.5 7.328125 17.1875 4.6875 
Q 17.390625 4 20.453125 3.265625 
Q 23.53125 2.546875 24.515625 2.546875 
Q 24.8125 2.546875 24.859375 1.375 
Q 24.90625 0.203125 24.703125 -0.296875 
Q 14.9375 0.203125 13.484375 0.203125 
L 2.25 -0.296875 
Q 1.953125 0 1.953125 1.171875 
Q 1.953125 2.546875 2.25 2.546875 
Q 3.609375 2.546875 6.6875 3.265625 
Q 9.765625 4 10.0625 4.890625 
Q 11.03125 7.421875 11.03125 14.0625 
L 11.03125 52.4375 
Q 11.03125 57.234375 10.359375 59.765625 
Q 10.0625 60.546875 7.03125 61.171875 
Q 4 61.8125 2.640625 61.8125 
Q 2.25 61.8125 2.25 63.03125 
Q 2.25 64.265625 2.640625 64.65625 
Q 10.25 64.453125 12.59375 64.453125 
Q 17.671875 64.453125 20.40625 64.65625 
Q 24.03125 58.015625 53.515625 16.796875 
Q 53.8125 18.453125 53.8125 20.796875 
z
" id="CrimsonText-Regular-78"></path>
      <path d="M 42.484375 33.296875 
L 42.484375 13.765625 
Q 42.484375 9.578125 43.171875 6.34375 
Q 43.359375 5.671875 44.234375 5.28125 
Q 45.125 4.890625 46.09375 4.78125 
Q 47.078125 4.6875 48.046875 4.6875 
L 48.921875 4.59375 
Q 49.21875 4.5 49.21875 3.515625 
Q 49.21875 3.21875 48.96875 2.578125 
Q 48.734375 1.953125 48.4375 1.953125 
Q 46.96875 1.859375 45.15625 1.5625 
Q 43.359375 1.265625 41.796875 0.875 
Q 40.234375 0.484375 38.859375 0.09375 
Q 37.5 -0.296875 36.71875 -0.59375 
L 35.84375 -0.78125 
Q 35.0625 -0.78125 35.0625 0.78125 
L 35.0625 5.765625 
L 34.859375 6.25 
Q 28.421875 -0.6875 22.078125 -0.6875 
Q 18.453125 -0.6875 15.859375 1.125 
Q 13.28125 2.9375 12.0625 5.90625 
Q 10.84375 8.890625 10.34375 11.671875 
Q 9.859375 14.453125 9.859375 17.484375 
L 9.859375 29.78125 
Q 9.859375 33.59375 8.5 35.0625 
Q 7.515625 36.234375 6.09375 36.671875 
Q 4.6875 37.109375 3.75 37.109375 
Q 2.828125 37.109375 2.828125 37.3125 
Q 2.828125 39.65625 3.421875 39.75 
Q 13.765625 41.3125 16.890625 42.28125 
Q 17 42.28125 17.1875 42.328125 
Q 17.390625 42.390625 17.390625 42.390625 
Q 17.78125 42.390625 17.875 41.546875 
Q 17.96875 40.71875 17.875 40.328125 
Q 17.28125 35.640625 17.28125 33.109375 
L 17.28125 19.921875 
Q 17.28125 12.40625 19.53125 8.84375 
Q 21.78125 5.28125 26.859375 5.28125 
Q 29.78125 5.28125 32.421875 7.5625 
Q 35.0625 9.859375 35.0625 11.53125 
L 35.0625 29.78125 
Q 35.0625 33.59375 33.6875 35.0625 
Q 32.71875 36.234375 31.296875 36.671875 
Q 29.890625 37.109375 28.953125 37.109375 
Q 28.03125 37.109375 28.03125 37.3125 
Q 28.03125 39.65625 28.609375 39.75 
Q 38.96875 41.3125 42.09375 42.28125 
Q 42.1875 42.28125 42.375 42.328125 
Q 42.578125 42.390625 42.578125 42.390625 
Q 42.96875 42.390625 43.0625 41.546875 
Q 43.171875 40.71875 43.0625 40.328125 
Q 42.484375 35.640625 42.484375 33.296875 
z
" id="CrimsonText-Regular-117"></path>
      <path d="M 31.25 42.78125 
Q 35.15625 42.78125 37.734375 40.671875 
Q 40.328125 38.578125 41.3125 35.84375 
Q 48.640625 42.78125 56.453125 42.78125 
Q 68.75 42.78125 68.75 24.03125 
L 68.75 13.1875 
Q 68.75 7.515625 69.53125 4.5 
Q 69.734375 3.8125 72.078125 3.171875 
Q 74.421875 2.546875 75.390625 2.546875 
Q 75.6875 2.546875 75.78125 1.375 
Q 75.875 0.203125 75.6875 -0.296875 
Q 65.921875 0.203125 65.234375 0.203125 
Q 64.65625 0.203125 54.59375 -0.296875 
Q 54.203125 0.09375 54.203125 1.3125 
Q 54.203125 2.546875 54.59375 2.546875 
Q 55.765625 2.546875 58.0625 3.171875 
Q 60.359375 3.8125 60.546875 4.5 
Q 61.234375 7.328125 61.234375 10.75 
L 61.234375 21.78125 
Q 61.234375 36.8125 51.375 36.8125 
Q 47.75 36.8125 45.109375 34.71875 
Q 42.484375 32.625 42.484375 31.25 
L 42.578125 30.859375 
Q 42.578125 30.46875 42.578125 30.375 
Q 42.96875 27.9375 42.96875 23.34375 
L 42.96875 12.3125 
Q 42.96875 7.515625 43.75 4.5 
Q 43.953125 3.8125 46.296875 3.171875 
Q 48.640625 2.546875 49.609375 2.546875 
Q 49.90625 2.546875 50 1.375 
Q 50.09375 0.203125 49.90625 -0.296875 
Q 40.140625 0.203125 39.453125 0.203125 
Q 38.875 0.203125 28.8125 -0.296875 
Q 28.421875 0.09375 28.421875 1.3125 
Q 28.421875 2.546875 28.8125 2.546875 
Q 29.984375 2.546875 32.28125 3.171875 
Q 34.578125 3.8125 34.765625 4.5 
Q 35.453125 7.328125 35.453125 11.328125 
L 35.453125 21.296875 
Q 35.453125 36.8125 26.078125 36.8125 
Q 23.140625 36.8125 20.15625 34.609375 
Q 17.1875 32.421875 17.1875 30.375 
L 17.1875 13.1875 
Q 17.1875 7.515625 17.96875 4.5 
Q 18.171875 3.8125 20.515625 3.171875 
Q 22.859375 2.546875 23.828125 2.546875 
Q 24.125 2.546875 24.21875 1.375 
Q 24.3125 0.203125 24.125 -0.296875 
Q 14.359375 0.203125 13.671875 0.203125 
Q 13.09375 0.203125 3.03125 -0.296875 
Q 2.640625 0.09375 2.640625 1.3125 
Q 2.640625 2.546875 3.03125 2.546875 
Q 4.203125 2.546875 6.5 3.171875 
Q 8.796875 3.8125 8.984375 4.5 
Q 9.671875 7.328125 9.671875 11.328125 
L 9.671875 29.78125 
Q 9.671875 33.59375 8.296875 35.0625 
Q 7.328125 36.234375 5.90625 36.671875 
Q 4.5 37.109375 3.5625 37.109375 
Q 2.640625 37.109375 2.640625 37.3125 
Q 2.640625 39.65625 3.21875 39.75 
Q 13.578125 41.3125 16.703125 42.28125 
Q 16.796875 42.28125 16.984375 42.328125 
Q 17.1875 42.390625 17.1875 42.390625 
Q 17.578125 42.390625 17.671875 41.546875 
Q 17.78125 40.71875 17.671875 40.328125 
Q 17.28125 37.59375 17.28125 36.421875 
Q 17.28125 36.03125 17.484375 36.03125 
Q 17.578125 36.03125 17.78125 36.234375 
Q 20.015625 38.578125 23.875 40.671875 
Q 27.734375 42.78125 31.25 42.78125 
z
" id="CrimsonText-Regular-109"></path>
      <path d="M 25 42.78125 
Q 34.375 42.78125 39.6875 36.375 
Q 45.015625 29.984375 45.015625 22.75 
Q 45.015625 13.484375 38.125 6.4375 
Q 31.25 -0.59375 22.953125 -0.59375 
Q 19.34375 -0.59375 16.0625 0.046875 
Q 12.796875 0.6875 12.3125 0.6875 
Q 11.421875 0.6875 10.109375 0.140625 
Q 8.796875 -0.390625 8.59375 -0.390625 
Q 8.203125 -0.390625 7.375 -0.09375 
Q 6.546875 0.203125 6.546875 0.59375 
Q 6.546875 0.6875 6.828125 2.203125 
Q 7.125 3.71875 7.421875 6.640625 
Q 7.71875 9.578125 7.71875 13.1875 
L 7.71875 53.609375 
Q 7.71875 56.9375 7.125 59.859375 
Q 6.640625 61.421875 2.15625 61.421875 
L 1.265625 61.421875 
Q 0.6875 61.421875 0.6875 62.5 
Q 0.6875 64.0625 1.265625 64.0625 
Q 4.203125 64.359375 6.6875 64.84375 
Q 9.1875 65.328125 10.59375 65.8125 
Q 12.015625 66.3125 12.984375 66.75 
Q 13.96875 67.1875 14.453125 67.484375 
L 14.84375 67.78125 
L 15.046875 67.78125 
Q 15.4375 67.78125 15.828125 67.234375 
Q 16.21875 66.703125 16.3125 66.21875 
Q 15.234375 63.09375 15.234375 57.71875 
L 15.234375 40.625 
Q 15.234375 39.546875 15.53125 39.546875 
Q 15.625 39.546875 15.828125 39.65625 
Q 17.1875 40.625 20.015625 41.703125 
Q 22.859375 42.78125 25 42.78125 
z
M 21.875 37.984375 
Q 19.140625 37.984375 17.1875 36.46875 
Q 15.234375 34.96875 15.234375 32.125 
L 15.234375 9.375 
Q 15.234375 6.34375 18.109375 4.921875 
Q 21 3.515625 24.8125 3.515625 
Q 30.375 3.515625 33.5 8.78125 
Q 36.625 14.0625 36.625 20.703125 
Q 36.625 28.421875 32.5625 33.203125 
Q 28.515625 37.984375 21.875 37.984375 
z
" id="CrimsonText-Regular-98"></path>
      <path d="M 23.734375 38.875 
Q 18.5625 38.875 15.28125 34.125 
Q 12.015625 29.390625 12.015625 22.5625 
Q 12.015625 14.546875 16.15625 8.828125 
Q 20.3125 3.125 25.875 3.125 
Q 31.0625 3.125 34.375 8 
Q 37.703125 12.890625 37.703125 19.734375 
Q 37.703125 27.640625 33.5 33.25 
Q 29.296875 38.875 23.734375 38.875 
z
M 24.8125 42.671875 
Q 33.59375 42.671875 39.84375 36.328125 
Q 46.09375 29.984375 46.09375 21.09375 
Q 46.09375 12.109375 39.984375 5.703125 
Q 33.890625 -0.6875 25 -0.6875 
Q 16.109375 -0.6875 9.859375 5.703125 
Q 3.609375 12.109375 3.609375 21.09375 
Q 3.609375 30.171875 9.65625 36.421875 
Q 15.71875 42.671875 24.8125 42.671875 
z
" id="CrimsonText-Regular-111"></path>
      <path d="M 11.140625 53.03125 
Q 8.296875 55.859375 8.296875 57.90625 
Q 8.296875 59.96875 9.71875 61.375 
Q 11.140625 62.796875 13.1875 62.796875 
Q 15.234375 62.796875 16.640625 61.375 
Q 18.0625 59.96875 18.0625 57.90625 
Q 18.0625 55.859375 16.640625 54.4375 
Q 15.234375 53.03125 13.1875 53.03125 
Q 11.140625 53.03125 8.296875 55.859375 
z
M 17.671875 13.1875 
Q 17.671875 7.515625 18.453125 4.5 
Q 18.65625 3.8125 21 3.171875 
Q 23.34375 2.546875 24.3125 2.546875 
Q 24.609375 2.546875 24.703125 1.375 
Q 24.8125 0.203125 24.609375 -0.296875 
Q 14.84375 0.203125 14.15625 0.203125 
Q 13.484375 0.203125 3.515625 -0.296875 
Q 3.125 0.09375 3.125 1.3125 
Q 3.125 2.546875 3.515625 2.546875 
Q 4.6875 2.546875 6.984375 3.171875 
Q 9.28125 3.8125 9.46875 4.5 
Q 10.15625 7.328125 10.15625 11.328125 
L 10.15625 29.78125 
Q 10.15625 33.59375 8.796875 35.0625 
Q 7.8125 36.234375 6.390625 36.671875 
Q 4.984375 37.109375 4.046875 37.109375 
Q 3.125 37.109375 3.125 37.3125 
Q 3.125 39.65625 3.71875 39.75 
Q 14.0625 41.3125 17.1875 42.28125 
L 17.390625 42.390625 
Q 17.578125 42.390625 17.671875 42.390625 
Q 18.0625 42.390625 18.15625 41.546875 
Q 18.265625 40.71875 18.171875 40.328125 
Q 17.671875 36.421875 17.671875 33.296875 
z
" id="CrimsonText-Regular-105"></path>
      <path d="M 24.21875 38.875 
Q 18.5625 38.875 15.328125 33.796875 
Q 12.109375 28.71875 12.109375 21.96875 
Q 12.109375 14.84375 15.921875 9.609375 
Q 19.734375 4.390625 26.46875 4.390625 
Q 29.78125 4.390625 31.640625 5.90625 
Q 33.5 7.421875 33.5 9.96875 
L 33.5 33.203125 
Q 33.5 35.25 31.296875 37.0625 
Q 29.109375 38.875 24.21875 38.875 
z
M 25.484375 42.96875 
Q 29.6875 42.96875 32.8125 41.3125 
Q 33.5 41.3125 33.5 43.0625 
L 33.5 53.609375 
Q 33.5 56.9375 32.90625 59.859375 
Q 32.421875 61.421875 27.9375 61.421875 
L 27.046875 61.421875 
Q 26.46875 61.421875 26.46875 62.5 
Q 26.46875 64.0625 27.046875 64.0625 
Q 29.984375 64.359375 32.46875 64.84375 
Q 34.96875 65.328125 36.375 65.8125 
Q 37.796875 66.3125 38.765625 66.75 
Q 39.75 67.1875 40.234375 67.484375 
L 40.625 67.78125 
L 40.828125 67.78125 
Q 41.21875 67.78125 41.609375 67.234375 
Q 42 66.703125 42.09375 66.21875 
Q 41.015625 63.09375 41.015625 57.71875 
L 41.015625 13.765625 
Q 41.015625 9.078125 41.609375 6.34375 
Q 41.796875 5.671875 42.671875 5.28125 
Q 43.5625 4.890625 44.484375 4.78125 
Q 45.40625 4.6875 46.296875 4.6875 
L 47.171875 4.59375 
Q 47.46875 4.5 47.46875 3.421875 
Q 47.46875 1.953125 46.875 1.953125 
Q 45.40625 1.859375 43.59375 1.5625 
Q 41.796875 1.265625 40.1875 0.921875 
Q 38.578125 0.59375 37.203125 0.25 
Q 35.84375 -0.09375 34.96875 -0.390625 
L 34.078125 -0.59375 
Q 33.5 -0.59375 33.5 1.078125 
L 33.5 2.25 
Q 33.5 2.828125 33.109375 2.640625 
Q 27.640625 -0.390625 22.75 -0.390625 
Q 14.65625 -0.390625 9.1875 5.375 
Q 3.71875 11.140625 3.71875 19.140625 
Q 3.71875 28.609375 10.40625 35.78125 
Q 17.09375 42.96875 25.484375 42.96875 
z
" id="CrimsonText-Regular-100"></path>
      <path d="M 31.453125 42.78125 
Q 38.28125 42.78125 41.015625 37.890625 
Q 43.75 33.015625 43.75 22.078125 
L 43.75 13.1875 
Q 43.75 7.515625 44.53125 4.5 
Q 44.734375 3.8125 47.078125 3.171875 
Q 49.421875 2.546875 50.390625 2.546875 
Q 50.6875 2.546875 50.78125 1.375 
Q 50.875 0.203125 50.6875 -0.296875 
Q 40.921875 0.203125 40.234375 0.203125 
Q 40.046875 0.203125 29.984375 -0.296875 
Q 29.59375 0.09375 29.59375 1.3125 
Q 29.59375 2.546875 29.984375 2.546875 
Q 31.15625 2.546875 33.25 3.171875 
Q 35.359375 3.8125 35.546875 4.5 
Q 36.234375 7.328125 36.234375 11.328125 
L 36.234375 21.09375 
Q 36.234375 30.171875 33.890625 33.484375 
Q 31.546875 36.8125 26.265625 36.8125 
Q 23.140625 36.8125 20.265625 34.515625 
Q 17.390625 32.234375 17.390625 30.375 
L 17.390625 13.1875 
Q 17.390625 7.515625 18.171875 4.5 
Q 18.359375 3.8125 20.703125 3.171875 
Q 23.046875 2.546875 24.03125 2.546875 
Q 24.3125 2.546875 24.40625 1.375 
Q 24.515625 0.203125 24.3125 -0.296875 
Q 14.546875 0.203125 13.875 0.203125 
Q 13.28125 0.203125 3.21875 -0.296875 
Q 2.828125 0.09375 2.828125 1.3125 
Q 2.828125 2.546875 3.21875 2.546875 
Q 4.390625 2.546875 6.6875 3.171875 
Q 8.984375 3.8125 9.1875 4.5 
Q 9.859375 7.328125 9.859375 11.328125 
L 9.859375 29.78125 
Q 9.859375 33.59375 8.5 35.0625 
Q 7.515625 36.234375 6.09375 36.671875 
Q 4.6875 37.109375 3.75 37.109375 
Q 2.828125 37.109375 2.828125 37.3125 
Q 2.828125 39.65625 3.421875 39.75 
Q 13.765625 41.3125 16.890625 42.28125 
Q 17 42.28125 17.1875 42.328125 
Q 17.390625 42.390625 17.390625 42.390625 
Q 17.78125 42.390625 17.875 41.546875 
Q 17.96875 40.71875 17.875 40.328125 
Q 17.484375 37.59375 17.484375 36.421875 
Q 17.484375 36.03125 17.671875 36.03125 
Q 17.78125 36.03125 17.96875 36.234375 
Q 20.21875 38.578125 24.078125 40.671875 
Q 27.9375 42.78125 31.453125 42.78125 
z
" id="CrimsonText-Regular-110"></path>
     </defs>
     <g transform="translate(17.367188 195.758672)rotate(-90)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-78"></use>
      <use x="70.410156" xlink:href="#CrimsonText-Regular-117"></use>
      <use x="120.898438" xlink:href="#CrimsonText-Regular-109"></use>
      <use x="199.023438" xlink:href="#CrimsonText-Regular-98"></use>
      <use x="247.753906" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="289.746094" xlink:href="#CrimsonText-Regular-114"></use>
      <use x="326.855469" xlink:href="#CrimsonText-Regular-32"></use>
      <use x="349.21875" xlink:href="#CrimsonText-Regular-111"></use>
      <use x="399.023438" xlink:href="#CrimsonText-Regular-102"></use>
      <use x="428.417969" xlink:href="#CrimsonText-Regular-32"></use>
      <use x="450.78125" xlink:href="#CrimsonText-Regular-114"></use>
      <use x="487.890625" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="529.882812" xlink:href="#CrimsonText-Regular-115"></use>
      <use x="564.941406" xlink:href="#CrimsonText-Regular-105"></use>
      <use x="591.210938" xlink:href="#CrimsonText-Regular-100"></use>
      <use x="639.746094" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="681.738281" xlink:href="#CrimsonText-Regular-110"></use>
      <use x="734.765625" xlink:href="#CrimsonText-Regular-116"></use>
      <use x="765.429688" xlink:href="#CrimsonText-Regular-115"></use>
     </g>
    </g>
   </g>
  </g>
  <g id="axes_2">
   <g id="patch_3">
    <path d="M 19.867264 268.02 
L 295.980548 268.02 
L 295.980548 7.2 
L 19.867264 7.2 
z
" style="fill:none;"></path>
   </g>
   <g id="matplotlib.axis_3">
    <g id="xtick_1"></g>
    <g id="xtick_2"></g>
    <g id="xtick_3"></g>
    <g id="xtick_4"></g>
    <g id="xtick_5"></g>
    <g id="xtick_6"></g>
    <g id="xtick_7"></g>
   </g>
   <g id="matplotlib.axis_4">
    <g id="ytick_1"></g>
    <g id="ytick_2"></g>
    <g id="ytick_3"></g>
    <g id="ytick_4"></g>
    <g id="ytick_5"></g>
    <g id="ytick_6"></g>
    <g id="ytick_7"></g>
    <g id="ytick_8"></g>
    <g id="ytick_9"></g>
    <g id="ytick_10"></g>
    <g id="ytick_11"></g>
   </g>
   <g id="LineCollection_1">
    <path clip-path="url(#p542a9fb88b)" d="M 105.977298 246.558847 
L 105.977298 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 146.422346 246.558847 
L 146.422346 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 186.867393 246.558847 
L 186.867393 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 227.312441 246.558847 
L 227.312441 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 267.757488 246.558847 
L 267.757488 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 60.47662 216.225061 
L 272.813119 216.225061 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 60.47662 190.946906 
L 272.813119 190.946906 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 60.47662 165.668752 
L 272.813119 165.668752 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 60.47662 140.390597 
L 272.813119 140.390597 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 60.47662 115.112442 
L 272.813119 115.112442 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 60.47662 89.834288 
L 272.813119 89.834288 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 60.47662 64.556133 
L 272.813119 64.556133 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 60.47662 39.277978 
L 272.813119 39.277978 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#p542a9fb88b)" d="M 60.47662 241.503216 
L 277.86875 241.503216 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 274.951665 -42.65124 
L 277.86875 -43.635691 
L 274.951665 -44.620141 
L 274.951665 -42.65124 
L 277.86875 -43.635691 
" id="m9ab07ca738" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p542a9fb88b)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m9ab07ca738" y="285.138906"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#p542a9fb88b)" d="M 65.532251 246.558847 
L 65.532251 29.166716 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 66.565148 -252.397951 
L 65.532251 -255.97219 
L 64.499354 -252.397951 
L 66.565148 -252.397951 
L 65.532251 -255.97219 
" id="m0c1c9d11bb" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p542a9fb88b)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m0c1c9d11bb" y="285.138906"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#p542a9fb88b)" d="M 105.977298 245.228417 
L 105.977298 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 146.422346 245.228417 
L 146.422346 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 186.867393 245.228417 
L 186.867393 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 227.312441 245.228417 
L 227.312441 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 267.757488 245.228417 
L 267.757488 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#p542a9fb88b)" d="M 61.807049 216.225061 
L 69.257453 216.225061 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 61.807049 190.946906 
L 69.257453 190.946906 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 61.807049 165.668752 
L 69.257453 165.668752 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 61.807049 140.390597 
L 69.257453 140.390597 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 61.807049 115.112442 
L 69.257453 115.112442 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 61.807049 89.834288 
L 69.257453 89.834288 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 61.807049 64.556133 
L 69.257453 64.556133 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p542a9fb88b)" d="M 61.807049 39.277978 
L 69.257453 39.277978 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#p542a9fb88b)" d="M 32.417868 224.819634 
L 32.417868 213.697246 
L 58.707149 213.697246 
L 58.707149 224.819634 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_3">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 5,000 -->
     <defs>
      <path d="M 13.578125 60.84375 
Q 32.8125 61.421875 36.53125 62.203125 
Q 37.015625 61.53125 37.015625 60.15625 
Q 37.015625 57.71875 36.421875 54.78125 
Q 33.890625 54 25.390625 53.71875 
L 16.890625 53.328125 
Q 16.40625 53.21875 16.21875 52.546875 
Q 15.140625 47.171875 13.375 36.921875 
Q 16.609375 38.1875 22.5625 38.1875 
Q 30.375 38.1875 36.078125 32.8125 
Q 41.796875 27.4375 41.796875 20.125 
Q 41.796875 11.140625 35.5 5.328125 
Q 29.203125 -0.484375 19.625 -0.484375 
Q 10.9375 -0.484375 6.546875 2.4375 
Q 5.5625 3.125 5.5625 5.28125 
Q 5.5625 9.859375 9.1875 9.859375 
Q 10.0625 9.859375 10.984375 9.125 
Q 11.921875 8.40625 13.03125 7.234375 
Q 14.15625 6.0625 14.9375 5.46875 
Q 17.78125 3.421875 22.75 3.421875 
Q 26.859375 3.421875 30.125 6.890625 
Q 33.40625 10.359375 33.40625 17.578125 
Q 33.40625 20.125 32.71875 22.359375 
Q 32.03125 24.609375 30.515625 26.796875 
Q 29 29 26.0625 30.265625 
Q 23.140625 31.546875 19.140625 31.546875 
Q 14.0625 31.546875 10.640625 30.46875 
Q 9.859375 30.859375 8.890625 31.84375 
z
" id="CrimsonText-Regular-53"></path>
      <path d="M 11.53125 -1.375 
Q 11.53125 0.390625 10.0625 3.421875 
Q 8.59375 6.453125 8.59375 7.421875 
Q 8.59375 9.578125 10.734375 11.078125 
Q 12.890625 12.59375 15.625 12.59375 
Q 16.890625 12.59375 17.96875 12.203125 
Q 19.234375 10.359375 19.234375 5.953125 
Q 19.234375 4.109375 19.046875 3.421875 
Q 17.671875 -2.9375 15.234375 -6.890625 
Q 12.796875 -10.84375 6.640625 -15.921875 
L 6.546875 -15.921875 
Q 6.15625 -15.921875 5.21875 -15.140625 
Q 4.296875 -14.359375 4.296875 -13.765625 
Q 4.296875 -13.578125 5.421875 -12.546875 
Q 6.546875 -11.53125 7.90625 -10.15625 
Q 9.28125 -8.796875 10.40625 -6.34375 
Q 11.53125 -3.90625 11.53125 -1.375 
z
" id="CrimsonText-Regular-44"></path>
     </defs>
     <g transform="translate(26.629924 223.444519)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="70.703125" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="117.96875" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.234375" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_4">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 5,000 -->
     <g transform="translate(26.629924 223.444519)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="70.703125" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="117.96875" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.234375" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#p542a9fb88b)" d="M 32.417868 199.541479 
L 32.417868 188.419091 
L 58.707149 188.419091 
L 58.707149 199.541479 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_5">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 10,000 -->
     <g transform="translate(19.554143 198.166364)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.53125" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.871094" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.136719" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.402344" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_6">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 10,000 -->
     <g transform="translate(19.554143 198.166364)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.53125" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.871094" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.136719" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.402344" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#p542a9fb88b)" d="M 32.417868 174.263324 
L 32.417868 163.140936 
L 58.707149 163.140936 
L 58.707149 174.263324 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_7">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 15,000 -->
     <g transform="translate(19.54008 172.888209)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
      <use x="94.628906" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.96875" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.234375" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.5" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_8">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 15,000 -->
     <g transform="translate(19.54008 172.888209)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
      <use x="94.628906" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.96875" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.234375" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.5" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#p542a9fb88b)" d="M 32.417868 148.98517 
L 32.417868 137.862782 
L 58.707149 137.862782 
L 58.707149 148.98517 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_9">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 20,000 -->
     <g transform="translate(19.554143 147.610055)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.53125" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.871094" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.136719" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.402344" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_10">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 20,000 -->
     <g transform="translate(19.554143 147.610055)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.53125" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.871094" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.136719" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.402344" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#p542a9fb88b)" d="M 32.417868 123.707015 
L 32.417868 112.584627 
L 58.707149 112.584627 
L 58.707149 123.707015 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_11">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 25,000 -->
     <g transform="translate(19.54008 122.3319)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
      <use x="94.628906" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.96875" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.234375" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.5" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_12">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 25,000 -->
     <g transform="translate(19.54008 122.3319)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
      <use x="94.628906" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.96875" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.234375" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.5" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#p542a9fb88b)" d="M 32.417868 98.42886 
L 32.417868 87.306472 
L 58.707149 87.306472 
L 58.707149 98.42886 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_13">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 30,000 -->
     <defs>
      <path d="M 24.421875 62.703125 
Q 28.609375 62.703125 32.46875 59.234375 
Q 36.328125 55.765625 36.328125 50.203125 
Q 36.328125 45.90625 34.21875 42.921875 
Q 32.125 39.9375 28.21875 37.015625 
Q 33.40625 35.15625 37.640625 30.859375 
Q 41.890625 26.5625 41.890625 20.125 
Q 41.890625 10.84375 35.34375 5.171875 
Q 28.8125 -0.484375 19.140625 -0.484375 
Q 10.84375 -0.484375 6.453125 2.4375 
Q 5.46875 3.125 5.46875 5.28125 
Q 5.46875 9.859375 9.078125 9.859375 
Q 9.96875 9.859375 10.890625 9.125 
Q 11.8125 8.40625 12.9375 7.234375 
Q 14.0625 6.0625 14.84375 5.46875 
Q 17.671875 3.421875 22.265625 3.421875 
Q 26.5625 3.421875 30.03125 6.78125 
Q 33.5 10.15625 33.5 17.578125 
Q 33.5 23.34375 29.78125 27.34375 
Q 26.078125 31.34375 21.09375 31.34375 
Q 17.484375 31.34375 14.75 30.671875 
Q 14.0625 31.546875 14.0625 33.203125 
Q 14.0625 33.890625 14.265625 34.1875 
Q 21 35.359375 25 38.875 
Q 29 42.390625 29 48.4375 
Q 29 51.765625 26.40625 54.34375 
Q 23.828125 56.9375 20.515625 56.9375 
Q 18.359375 56.9375 16.546875 56.203125 
Q 14.75 55.46875 13.8125 54.6875 
Q 12.890625 53.90625 12.015625 52.96875 
Q 11.140625 52.046875 11.03125 51.953125 
Q 10.640625 51.953125 10.25 52.875 
Q 9.859375 53.8125 9.859375 54.5 
Q 12.5 58.40625 15.8125 60.546875 
Q 19.140625 62.703125 24.421875 62.703125 
z
" id="CrimsonText-Regular-51"></path>
     </defs>
     <g transform="translate(19.54008 97.053745)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.628906" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.96875" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.234375" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.5" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_14">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 30,000 -->
     <g transform="translate(19.54008 97.053745)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.628906" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.96875" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.234375" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.5" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#p542a9fb88b)" d="M 32.417868 73.150706 
L 32.417868 62.028318 
L 58.707149 62.028318 
L 58.707149 73.150706 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_15">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 35,000 -->
     <g transform="translate(19.526018 71.775591)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-53"></use>
      <use x="94.726562" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="118.066406" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.332031" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.597656" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_16">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 35,000 -->
     <g transform="translate(19.526018 71.775591)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-53"></use>
      <use x="94.726562" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="118.066406" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="165.332031" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.597656" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#p542a9fb88b)" d="M 32.417868 47.872551 
L 32.417868 36.750163 
L 58.707149 36.750163 
L 58.707149 47.872551 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_17">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 40,000 -->
     <defs>
      <path d="M 35.0625 62.984375 
Q 36.328125 62.984375 36.328125 62.015625 
L 36.328125 22.65625 
L 42.390625 22.65625 
Q 43.953125 22.65625 43.953125 17.96875 
Q 43.953125 17.390625 43.359375 17 
Q 43.359375 17 36.328125 17 
L 36.328125 -0.09375 
Q 36.03125 -0.59375 32.234375 -0.59375 
Q 28.609375 -0.59375 28.609375 0.203125 
L 28.609375 17 
L 3.90625 17 
Q 3.21875 17.875 3.21875 20.015625 
L 32.8125 61.8125 
Q 33.6875 62.984375 35.0625 62.984375 
z
M 28.609375 22.65625 
L 28.609375 48.640625 
Q 28.609375 49.515625 28.125 49.515625 
Q 28.125 49.421875 28.03125 49.3125 
L 10.25 23.828125 
Q 10.15625 23.734375 10.15625 23.53125 
Q 10.15625 22.65625 10.84375 22.65625 
z
" id="CrimsonText-Regular-52"></path>
     </defs>
     <g transform="translate(19.582268 46.497436)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
      <use x="47.070312" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.335938" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.675781" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="164.941406" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.207031" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_18">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 40,000 -->
     <g transform="translate(19.582268 46.497436)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
      <use x="47.070312" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.335938" xlink:href="#CrimsonText-Regular-44"></use>
      <use x="117.675781" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="164.941406" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="212.207031" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#p542a9fb88b)" d="M 101.427231 256.164545 
L 101.427231 245.042157 
L 109.010677 245.042157 
L 109.010677 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_19">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 2 -->
     <g transform="translate(101.41527 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_20">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 2 -->
     <g transform="translate(101.41527 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#p542a9fb88b)" d="M 141.872278 256.164545 
L 141.872278 245.042157 
L 149.455724 245.042157 
L 149.455724 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_21">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 4 -->
     <g transform="translate(141.888443 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_22">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 4 -->
     <g transform="translate(141.888443 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#p542a9fb88b)" d="M 182.317326 256.164545 
L 182.317326 245.042157 
L 189.900772 245.042157 
L 189.900772 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_23">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 6 -->
     <defs>
      <path d="M 12.703125 20.515625 
Q 12.703125 13.671875 15.96875 8.4375 
Q 19.234375 3.21875 24.125 3.21875 
Q 28.421875 3.21875 31.640625 6.984375 
Q 34.859375 10.75 34.859375 17 
Q 34.859375 23.640625 31.6875 27.9375 
Q 28.515625 32.234375 22.359375 32.234375 
Q 19.734375 32.234375 17.28125 30.8125 
Q 14.84375 29.390625 14.15625 27.828125 
Q 12.796875 24.703125 12.703125 20.515625 
z
M 22.953125 -0.59375 
Q 14.84375 -0.59375 9.5625 5.703125 
Q 4.296875 12.015625 4.296875 20.3125 
Q 4.296875 27.9375 7.328125 34.96875 
Q 10.359375 42 15.484375 47.3125 
Q 20.609375 52.640625 26.515625 56.59375 
Q 32.421875 60.546875 39.0625 63.1875 
Q 39.65625 63.1875 40.484375 62.109375 
Q 41.3125 61.03125 41.3125 60.546875 
Q 31.453125 56.25 24.5625 50.140625 
Q 17.671875 44.046875 15.046875 34.375 
Q 14.84375 33.40625 15.140625 33.40625 
Q 15.328125 33.5 15.4375 33.59375 
Q 16.796875 34.671875 20.359375 35.9375 
Q 23.921875 37.203125 26.859375 37.203125 
Q 33.6875 37.203125 38.328125 31.484375 
Q 42.96875 25.78125 42.96875 19.046875 
Q 42.96875 10.9375 36.90625 5.171875 
Q 30.859375 -0.59375 22.953125 -0.59375 
z
" id="CrimsonText-Regular-54"></path>
     </defs>
     <g transform="translate(182.305365 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_24">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 6 -->
     <g transform="translate(182.305365 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#p542a9fb88b)" d="M 222.762373 256.164545 
L 222.762373 245.042157 
L 230.345819 245.042157 
L 230.345819 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_25">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 8 -->
     <defs>
      <path d="M 23.53125 2.640625 
Q 28.421875 2.640625 31.25 5.5625 
Q 34.078125 8.5 34.078125 13.484375 
Q 34.078125 16.3125 32.421875 19.09375 
Q 30.765625 21.875 28.21875 24.015625 
Q 25.6875 26.171875 24.265625 27.140625 
Q 22.859375 28.125 21.578125 28.8125 
Q 21.1875 29 21 29 
Q 20.703125 29 20.609375 28.90625 
Q 16.5 26.375 14.6875 23.1875 
Q 12.890625 20.015625 12.890625 15.328125 
Q 12.890625 9.671875 16.109375 6.15625 
Q 19.34375 2.640625 23.53125 2.640625 
z
M 23.53125 59.375 
Q 19.921875 59.375 17.53125 56.25 
Q 15.140625 53.125 15.140625 48.046875 
Q 15.140625 41.40625 25.296875 35.546875 
Q 25.6875 35.359375 25.875 35.359375 
Q 26.171875 35.359375 26.46875 35.546875 
Q 33.109375 39.9375 33.109375 47.46875 
Q 33.109375 52.046875 30.421875 55.703125 
Q 27.734375 59.375 23.53125 59.375 
z
M 24.125 62.796875 
Q 30.859375 62.796875 35.5 58.734375 
Q 40.140625 54.6875 40.140625 47.953125 
Q 40.140625 40.53125 29.203125 33.59375 
Q 28.515625 33.40625 29.203125 33.015625 
Q 34.28125 30.078125 38.140625 25.625 
Q 42 21.1875 42 16.3125 
Q 42 9.078125 36.375 4.09375 
Q 30.765625 -0.875 23.34375 -0.875 
Q 15.234375 -0.875 10.203125 3.515625 
Q 5.171875 7.90625 5.171875 15.046875 
Q 5.171875 16.3125 5.46875 17.53125 
Q 5.765625 18.75 6.109375 19.71875 
Q 6.453125 20.703125 7.234375 21.828125 
Q 8.015625 22.953125 8.546875 23.6875 
Q 9.078125 24.421875 10.15625 25.390625 
Q 11.234375 26.375 11.71875 26.8125 
Q 12.203125 27.25 13.46875 28.125 
Q 14.75 29 15.09375 29.25 
Q 15.4375 29.5 16.609375 30.28125 
L 17.875 31.0625 
Q 18.359375 31.34375 17.875 31.640625 
Q 14.0625 33.890625 10.984375 37.9375 
Q 7.90625 42 7.90625 46.875 
Q 7.90625 53.125 12.78125 57.953125 
Q 17.671875 62.796875 24.125 62.796875 
z
" id="CrimsonText-Regular-56"></path>
     </defs>
     <g transform="translate(222.750413 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_26">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 8 -->
     <g transform="translate(222.750413 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#p542a9fb88b)" d="M 259.162916 256.164545 
L 259.162916 245.042157 
L 273.318682 245.042157 
L 273.318682 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_27">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 10 -->
     <g transform="translate(258.633432 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_28">
    <g clip-path="url(#p542a9fb88b)">
     <!-- 10 -->
     <g transform="translate(258.633432 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_29">
    <g clip-path="url(#p542a9fb88b)">
     <!-- O -->
     <defs>
      <path d="M 39.9375 61.03125 
Q 29.390625 61.03125 22.0625 50.140625 
Q 14.75 39.265625 14.75 26.078125 
Q 14.75 16.109375 19.09375 9.65625 
Q 23.4375 3.21875 31.453125 3.21875 
Q 41.609375 3.21875 49.03125 14.296875 
Q 56.453125 25.390625 56.453125 38.578125 
Q 56.453125 48.34375 52.15625 54.6875 
Q 47.859375 61.03125 39.9375 61.03125 
z
M 42.1875 65.140625 
Q 52.046875 65.140625 58.734375 57.765625 
Q 65.4375 50.390625 65.4375 39.9375 
Q 65.4375 29.390625 60.40625 19.921875 
Q 55.375 10.453125 46.875 4.734375 
Q 38.375 -0.984375 28.90625 -0.984375 
Q 18.453125 -0.984375 12.15625 6.484375 
Q 5.859375 13.96875 5.859375 25.296875 
Q 5.859375 35.453125 11.234375 44.78125 
Q 16.609375 54.109375 25 59.625 
Q 33.40625 65.140625 42.1875 65.140625 
z
" id="CrimsonText-Italic-79"></path>
     </defs>
     <g transform="translate(54.136837 251.62363)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_30">
    <g clip-path="url(#p542a9fb88b)">
     <!-- y -->
     <defs>
      <path d="M 21.09375 42.484375 
Q 24.03125 42.484375 25.921875 37.5 
Q 27.828125 32.515625 28.515625 24.453125 
Q 29.203125 16.40625 29.390625 11.859375 
Q 29.59375 7.328125 29.59375 2.734375 
Q 33.40625 7.421875 37.203125 14.6875 
Q 41.015625 21.96875 41.015625 27.828125 
Q 41.015625 33.59375 38.578125 38.28125 
Q 39.84375 42.484375 43.453125 42.484375 
Q 47.75 42.484375 47.75 34.765625 
Q 47.75 24.03125 39.34375 10.109375 
Q 30.953125 -3.8125 20.359375 -13.28125 
Q 9.765625 -22.75 3.21875 -22.75 
Q 0.6875 -22.75 -0.96875 -21.578125 
Q -2.640625 -20.40625 -2.640625 -18.75 
Q -2.640625 -15.625 -0.390625 -14.453125 
Q 1.765625 -15.71875 6.15625 -15.71875 
Q 14.265625 -15.71875 20.21875 -7.03125 
Q 22.46875 -3.71875 22.46875 6.0625 
Q 22.46875 10.84375 22.21875 15.578125 
Q 21.96875 20.3125 21.328125 25.296875 
Q 20.703125 30.28125 19.484375 33.34375 
Q 18.265625 36.421875 16.609375 36.421875 
Q 15.71875 36.421875 13.953125 34.765625 
Q 12.203125 33.109375 11.234375 31.84375 
Q 11.03125 31.84375 10.5 32.765625 
Q 9.96875 33.6875 9.96875 34.078125 
Q 10.546875 35.546875 14.59375 39.015625 
Q 18.65625 42.484375 21.09375 42.484375 
z
" id="CrimsonText-Italic-121"></path>
     </defs>
     <g transform="translate(62.023657 22.350767)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_31">
    <g clip-path="url(#p542a9fb88b)">
     <!-- x -->
     <defs>
      <path d="M 20.3125 42.484375 
Q 24.421875 42.484375 26.953125 33.984375 
L 29 27.046875 
L 34.765625 36.921875 
Q 37.984375 42.484375 42.96875 42.484375 
Q 46.296875 42.484375 48.640625 40.53125 
Q 49.421875 38.96875 49.421875 37.984375 
Q 49.421875 36.53125 48.390625 35.5 
Q 47.359375 34.46875 46.296875 34.46875 
Q 45.015625 34.46875 43.40625 35.984375 
Q 41.796875 37.5 40.4375 37.5 
Q 39.265625 37.5 37.796875 34.96875 
L 30.46875 22.46875 
L 34.671875 8.6875 
Q 35.640625 5.375 37.3125 5.375 
Q 38.765625 5.375 40.421875 6.890625 
Q 42.09375 8.40625 42.78125 9.671875 
Q 43.171875 9.671875 43.75 8.890625 
Q 44.34375 8.109375 44.34375 7.71875 
Q 44.046875 6.0625 40.71875 2.78125 
Q 37.40625 -0.484375 34.375 -0.484375 
Q 30.28125 -0.484375 27.734375 8.015625 
L 25.484375 15.625 
L 19.34375 4.984375 
Q 16.109375 -0.59375 11.140625 -0.59375 
Q 7.8125 -0.59375 5.46875 1.375 
Q 4.6875 2.734375 4.6875 3.90625 
Q 4.6875 5.375 5.703125 6.390625 
Q 6.734375 7.421875 7.8125 7.421875 
Q 9.078125 7.421875 10.6875 5.90625 
Q 12.3125 4.390625 13.671875 4.390625 
Q 14.84375 4.390625 16.3125 6.9375 
L 24.03125 20.21875 
L 20.015625 33.296875 
Q 19.046875 36.625 17.390625 36.625 
Q 15.921875 36.625 14.25 35.109375 
Q 12.59375 33.59375 11.921875 32.328125 
Q 11.53125 32.328125 10.9375 33.109375 
Q 10.359375 33.890625 10.359375 34.28125 
Q 10.640625 35.9375 13.953125 39.203125 
Q 17.28125 42.484375 20.3125 42.484375 
z
" id="CrimsonText-Italic-120"></path>
     </defs>
     <g transform="translate(279.943616 244.798528)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-120"></use>
     </g>
    </g>
   </g>
   <g id="line2d_1">
    <defs>
     <path d="M 0 3 
C 0.795609 3 1.55874 2.683901 2.12132 2.12132 
C 2.683901 1.55874 3 0.795609 3 0 
C 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 
C 1.55874 -2.683901 0.795609 -3 0 -3 
C -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 
C -2.683901 -1.55874 -3 -0.795609 -3 0 
C -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 
C -1.55874 2.683901 -0.795609 3 0 3 
z
" id="m35df460c05" style="stroke:#000000;"></path>
    </defs>
    <g clip-path="url(#p542a9fb88b)">
     <use style="stroke:#000000;" x="65.532251" xlink:href="#m35df460c05" y="140.390597"></use>
    </g>
   </g>
   <g id="line2d_2">
    <path clip-path="url(#p542a9fb88b)" d="M 65.532251 140.390597 
L 82.958474 135.529756 
L 99.979436 130.556452 
L 117.000397 125.349752 
L 133.616098 120.031417 
L 149.826538 114.608208 
L 165.631717 109.087546 
L 181.031635 103.477502 
L 196.431553 97.629778 
L 211.42621 91.697973 
L 226.015606 85.691834 
L 240.605002 79.444892 
L 254.789136 73.131444 
L 267.757488 67.144147 
L 267.757488 67.144147 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="p542a9fb88b">
   <rect height="260.82" width="276.113284" x="19.867264" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a curve" class="sr-only"><ul><li>The curve is in quadrant 1.</li>
<li>The curve trends gradually up from left to right.&nbsp;</li>
<li>The curve begins at the point (0 comma 20,000).</li>
<li>The curve passes through the following points:<br>
<ul>
<li>(0 comma 20,000)</li>
<li>approximately (5 comma 26,263)</li>
<li>approximately (10 comma 34,488)</li>
</ul>
</li>
</ul></div></figure></p>
<p style="text-align: left;">The graph shown models the number of residents of a certain city <math alttext="x"><mi>x</mi>
</math> years after <math alttext="2010"><mn>2010</mn></math>. How many residents does this model estimate the city had in <math alttext="2010"><mn>2010</mn></math>?</p>$SATQ$, $SATQ$[{"id":"84225ce0-dd8a-474b-ad19-debddc2c9326","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"74eedc3b-bf42-43ff-a9dd-bb827b621e57","content":"<p><math alttext=\"2,000\"><mn>2,000</mn>\n</math></p>"},{"id":"5af166ca-4e42-4da5-bbef-c7545d961d24","content":"<p><math alttext=\"20,000\"><mn>20,000</mn>\n</math></p>"},{"id":"7384eaab-fb10-4244-8efa-ca2bbc52c111","content":"<p><math alttext=\"25,000\"><mn>25,000</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["5af166ca-4e42-4da5-bbef-c7545d961d24"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. It's given that <math alttext="x"><mi>x</mi>
</math> represents years after <math alttext="2010"><mn>2010</mn></math>. Therefore, <math alttext="2010"><mn>2010</mn></math> is represented by <math alttext="x equals 0"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>. On the model shown, the point with an <em>x</em>-coordinate of <math alttext="0"><mn>0</mn>
</math> has a <em>y</em>-coordinate of <math alttext="20,000"><mn>20,000</mn>
</math>. Thus, the model estimates that in&nbsp;<math alttext="2010"><mn>2010</mn></math>, the city had <math alttext="20,000"><mn>20,000</mn>
</math> residents.</p>
<p style="text-align: left;">Choice A is incorrect. This is the value of <math alttext="x"><mi>x</mi>
</math> that represents the year <math alttext="2010"><mn>2010</mn></math>.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect. This is approximately the number of residents the model estimates the city had in&nbsp;<math alttext="2014"><mn>2014</mn></math>, not&nbsp;<math alttext="2010"><mn>2010</mn></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"2d394c28","external_id":"58bfb590-016f-4bec-8d23-459d22e7482a","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"611aaa7d-fa42-43ff-a4c1-23deafa4e7c4","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"285.138906pt\" version=\"1.1\" viewBox=\"0 0 304.038906 285.138906\" width=\"304.038906pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a curve in the x y plane with the origin labeled O. The x axis is labeled Years after 2010. It ranges from 0 to 10. The y axis is labeled Number of residents. It ranges from 0 to 40,000. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 285.138906 \nL 304.038906 285.138906 \nL 304.038906 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 24.678906 260.46 \nL 296.838906 260.46 \nL 296.838906 10.98 \nL 24.678906 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\">\n    <g id=\"text_1\">\n     <!-- Years after 2010 -->\n     <defs>\n      <path d=\"M 13.578125 64.0625 \nQ 14.75 64.0625 26.46875 64.65625 \nQ 26.65625 64.265625 26.609375 63.140625 \nQ 26.5625 62.015625 26.265625 62.015625 \nQ 24.609375 62.015625 22.5 61.1875 \nQ 20.40625 60.359375 20.40625 58.6875 \nQ 20.40625 57.625 21.484375 55.765625 \nL 32.421875 35.0625 \nQ 32.90625 34.578125 33.40625 35.25 \nQ 46.6875 55.375 46.6875 58.796875 \nQ 46.6875 59.859375 44.734375 60.9375 \nQ 42.78125 62.015625 39.9375 62.015625 \nQ 39.546875 62.015625 39.546875 63.140625 \nQ 39.546875 64.265625 39.9375 64.65625 \nQ 50.78125 64.0625 51.46875 64.0625 \nQ 54.5 64.0625 57.71875 64.359375 \nQ 60.9375 64.65625 61.8125 64.65625 \nQ 62.015625 64.0625 62.015625 63.1875 \nQ 62.015625 62.015625 61.625 62.015625 \nQ 60.453125 62.015625 57.515625 61.125 \nQ 54.59375 60.25 53.609375 58.984375 \nQ 49.90625 53.21875 42.828125 41.5 \nQ 35.75 29.78125 35.75 28.421875 \nL 35.75 13.578125 \nQ 35.75 7.515625 36.53125 4.5 \nQ 36.71875 3.8125 39.15625 3.078125 \nQ 41.609375 2.34375 42.484375 2.34375 \nQ 42.875 2.34375 42.875 1.078125 \nQ 42.875 0.296875 42.671875 -0.296875 \nQ 32.90625 0.203125 31.734375 0.203125 \nQ 31.453125 0.203125 20.21875 -0.296875 \nQ 19.828125 0.09375 19.828125 1.078125 \nQ 19.828125 2.34375 20.21875 2.34375 \nQ 21.390625 2.34375 23.78125 3.03125 \nQ 26.171875 3.71875 26.46875 4.5 \nQ 27.25 7.515625 27.25 13.875 \nL 27.25 26.078125 \nQ 27.25 27.4375 25.140625 31.484375 \nQ 23.046875 35.546875 12.984375 53.609375 \nQ 11.421875 56.546875 10.59375 57.671875 \nQ 9.765625 58.796875 8.203125 59.859375 \nQ 7.125 60.640625 4.96875 61.328125 \nQ 2.828125 62.015625 1.859375 62.015625 \nQ 1.46875 62.015625 1.46875 63.09375 \nQ 1.46875 64.265625 1.859375 64.65625 \nQ 3.421875 64.546875 7.125 64.296875 \nQ 10.84375 64.0625 13.578125 64.0625 \nz\n\" id=\"CrimsonText-Regular-89\"></path>\n      <path d=\"M 21.96875 38.96875 \nQ 16.890625 38.96875 14.203125 34.625 \nQ 11.53125 30.28125 11.53125 27.4375 \nQ 11.53125 26.765625 12.109375 26.765625 \nL 31.15625 26.765625 \nQ 31.640625 26.765625 31.640625 27.734375 \nQ 31.640625 30.859375 29 34.90625 \nQ 26.375 38.96875 21.96875 38.96875 \nz\nM 22.953125 42.578125 \nQ 27.4375 42.578125 30.859375 40.859375 \nQ 34.28125 39.15625 36.078125 36.46875 \nQ 37.890625 33.796875 38.71875 31 \nQ 39.546875 28.21875 39.546875 25.484375 \nQ 39.546875 23.53125 38.953125 23.09375 \nQ 38.375 22.65625 36.71875 22.65625 \nL 12.109375 22.65625 \nQ 11.328125 22.65625 11.328125 22.171875 \nQ 11.328125 16.015625 15.03125 10.84375 \nQ 18.75 5.671875 25.78125 5.671875 \nQ 27.828125 5.671875 29.6875 6.0625 \nQ 31.546875 6.453125 32.859375 6.984375 \nQ 34.1875 7.515625 35.109375 8.046875 \nQ 36.03125 8.59375 36.71875 9.078125 \nL 37.40625 9.578125 \nQ 37.984375 9.578125 37.984375 8.296875 \nQ 37.984375 7.515625 37.40625 6.546875 \nQ 35.453125 3.8125 31.640625 1.609375 \nQ 27.828125 -0.59375 23.34375 -0.59375 \nQ 15.234375 -0.59375 9.421875 5.515625 \nQ 3.609375 11.625 3.609375 20.40625 \nQ 3.609375 30.671875 9.125 36.625 \nQ 14.65625 42.578125 22.953125 42.578125 \nz\n\" id=\"CrimsonText-Regular-101\"></path>\n      <path d=\"M 12.015625 7.71875 \nQ 15.328125 4.890625 17.96875 4.890625 \nQ 20.609375 4.890625 23.046875 6.5 \nQ 25.484375 8.109375 25.484375 9.765625 \nL 25.484375 19.828125 \nQ 24.703125 19.4375 21.671875 18.453125 \nQ 18.65625 17.484375 16.9375 16.75 \nQ 15.234375 16.015625 13.625 14.296875 \nQ 12.015625 12.59375 12.015625 10.359375 \nQ 12.015625 7.71875 15.328125 4.890625 \nz\nM 22.859375 42.578125 \nQ 28.21875 42.578125 30.5625 39.984375 \nQ 32.90625 37.40625 32.90625 31.640625 \nL 32.90625 9.078125 \nQ 32.90625 7.03125 33.984375 5.65625 \nQ 35.0625 4.296875 36.921875 4.296875 \nQ 38.28125 4.296875 40.328125 5.671875 \nQ 40.71875 5.671875 40.71875 4.890625 \nQ 40.71875 3.609375 40.234375 2.828125 \nQ 36.234375 -0.59375 33.40625 -0.59375 \nQ 31.15625 -0.59375 29.09375 1.265625 \nQ 27.046875 3.125 26.265625 5.171875 \nQ 26.171875 5.171875 25.53125 4.53125 \nQ 24.90625 3.90625 23.828125 3.078125 \nQ 22.75 2.25 21.328125 1.359375 \nQ 19.921875 0.484375 18.015625 -0.09375 \nQ 16.109375 -0.6875 14.15625 -0.6875 \nQ 9.671875 -0.6875 6.734375 1.703125 \nQ 3.8125 4.109375 3.8125 8.890625 \nQ 3.8125 11.03125 4.875 12.9375 \nQ 5.953125 14.84375 7.421875 16.0625 \nQ 8.890625 17.28125 11.421875 18.546875 \nQ 13.96875 19.828125 15.765625 20.453125 \nQ 17.578125 21.09375 20.5 22.0625 \nQ 23.4375 23.046875 24.609375 23.53125 \nQ 25.484375 23.828125 25.484375 25 \nL 25.484375 32.328125 \nQ 25.484375 35.453125 23.53125 37.15625 \nQ 21.578125 38.875 18.84375 38.875 \nQ 15.921875 38.875 13.96875 36.859375 \nQ 12.015625 34.859375 12.015625 31.640625 \nQ 12.015625 28.21875 8.015625 28.21875 \nQ 5.28125 28.21875 4.203125 30.078125 \nQ 4.203125 34.28125 10.34375 38.421875 \nQ 16.5 42.578125 22.859375 42.578125 \nz\n\" id=\"CrimsonText-Regular-97\"></path>\n      <path d=\"M 28.609375 42.671875 \nQ 34.375 42.671875 36.234375 39.84375 \nQ 36.234375 36.421875 35.15625 34.859375 \nQ 34.078125 33.296875 32.515625 33.296875 \nQ 30.765625 33.296875 29.296875 34.953125 \nQ 27.828125 36.625 25.296875 36.625 \nQ 22.265625 36.625 20.015625 33.78125 \nQ 17.78125 30.953125 17.78125 27.828125 \nL 17.78125 13.1875 \nQ 17.78125 7.515625 18.5625 4.5 \nQ 18.75 3.8125 21.140625 3.171875 \nQ 23.53125 2.546875 24.515625 2.546875 \nQ 24.8125 2.546875 24.90625 1.375 \nQ 25 0.203125 24.8125 -0.296875 \nQ 15.046875 0.203125 14.265625 0.203125 \nQ 13.671875 0.203125 3.609375 -0.296875 \nQ 3.21875 0.09375 3.21875 1.3125 \nQ 3.21875 2.546875 3.609375 2.546875 \nQ 4.78125 2.546875 7.078125 3.171875 \nQ 9.375 3.8125 9.578125 4.5 \nQ 10.25 7.328125 10.25 11.328125 \nL 10.25 29.78125 \nQ 10.25 33.59375 8.890625 35.0625 \nQ 7.90625 36.234375 6.484375 36.671875 \nQ 5.078125 37.109375 4.140625 37.109375 \nQ 3.21875 37.109375 3.21875 37.3125 \nQ 3.21875 39.65625 3.8125 39.75 \nQ 14.15625 41.3125 17.28125 42.28125 \nQ 17.390625 42.28125 17.578125 42.328125 \nQ 17.78125 42.390625 17.78125 42.390625 \nQ 18.171875 42.390625 18.265625 41.546875 \nQ 18.359375 40.71875 18.265625 40.328125 \nL 17.671875 35.453125 \nQ 19.4375 38.09375 22.515625 40.375 \nQ 25.59375 42.671875 28.609375 42.671875 \nz\n\" id=\"CrimsonText-Regular-114\"></path>\n      <path d=\"M 18.65625 42.671875 \nQ 20.796875 42.671875 24.0625 42.140625 \nQ 27.34375 41.609375 28.609375 41.40625 \nQ 29.59375 36.921875 29.78125 31.453125 \nQ 29.78125 30.953125 28.515625 30.953125 \nQ 27.15625 30.953125 27.046875 31.640625 \nQ 26.5625 34.375 24.265625 36.8125 \nQ 21.96875 39.265625 19.046875 39.265625 \nQ 12.015625 39.265625 12.015625 33.5 \nQ 12.015625 32.03125 12.40625 30.90625 \nQ 12.796875 29.78125 13.921875 28.75 \nQ 15.046875 27.734375 15.625 27.296875 \nQ 16.21875 26.859375 18.21875 25.734375 \nQ 20.21875 24.609375 20.703125 24.3125 \nQ 21.09375 24.125 23 23 \nQ 24.90625 21.875 25.6875 21.390625 \nQ 26.46875 20.90625 27.984375 19.734375 \nQ 29.5 18.5625 30.171875 17.625 \nQ 30.859375 16.703125 31.484375 15.28125 \nQ 32.125 13.875 32.125 12.40625 \nQ 32.125 6.640625 27.625 2.78125 \nQ 23.140625 -1.078125 17.09375 -1.078125 \nQ 15.046875 -1.078125 13.328125 -0.828125 \nQ 11.625 -0.59375 9.28125 0 \nQ 6.9375 0.59375 5.671875 0.78125 \nQ 5.078125 2.34375 4.53125 5.65625 \nQ 4 8.984375 4 10.9375 \nQ 4.78125 11.53125 5.171875 11.53125 \nQ 6.640625 11.53125 6.734375 10.9375 \nQ 7.328125 8.015625 10.40625 5.21875 \nQ 13.484375 2.4375 17.09375 2.4375 \nQ 20.21875 2.4375 22.21875 4.140625 \nQ 24.21875 5.859375 24.21875 9.078125 \nQ 24.21875 10.75 23.578125 12.15625 \nQ 22.953125 13.578125 21.53125 14.703125 \nQ 20.125 15.828125 18.890625 16.546875 \nQ 17.671875 17.28125 15.421875 18.453125 \nQ 13.1875 19.625 12.109375 20.3125 \nQ 4.5 24.703125 4.5 30.765625 \nQ 4.5 36.03125 8.734375 39.34375 \nQ 12.984375 42.671875 18.65625 42.671875 \nz\n\" id=\"CrimsonText-Regular-115\"></path>\n      <path id=\"CrimsonText-Regular-32\"></path>\n      <path d=\"M 29 67.875 \nQ 36.03125 67.875 38.28125 64.0625 \nQ 38.28125 57.90625 34.765625 57.90625 \nQ 33.5 57.90625 32.328125 59.421875 \nQ 31.15625 60.9375 29.640625 62.5 \nQ 28.125 64.0625 25.984375 64.0625 \nQ 21.6875 64.0625 19.34375 58.78125 \nQ 17 53.515625 17 46.390625 \nL 17 41.40625 \nQ 17 40.921875 17.484375 40.921875 \nL 28.328125 40.921875 \nQ 28.8125 40.921875 28.8125 40.234375 \nQ 28.8125 38.671875 27.640625 36.328125 \nL 17.578125 36.328125 \nQ 17 36.328125 17 35.75 \nL 17 13.1875 \nQ 17 7.90625 17.875 4.5 \nQ 18.0625 3.8125 20.265625 3.171875 \nQ 22.46875 2.546875 23.34375 2.546875 \nQ 23.640625 2.546875 23.734375 1.375 \nQ 23.828125 0.203125 23.640625 -0.296875 \nQ 13.875 0.203125 13.1875 0.203125 \nQ 12.890625 0.203125 2.9375 -0.296875 \nQ 2.734375 -0.09375 2.640625 0.640625 \nQ 2.546875 1.375 2.640625 1.953125 \nQ 2.734375 2.546875 2.9375 2.546875 \nQ 4.109375 2.546875 6.25 3.171875 \nQ 8.40625 3.8125 8.59375 4.5 \nQ 9.578125 8.296875 9.578125 13.1875 \nL 9.578125 35.640625 \nQ 9.578125 36.328125 9.078125 36.328125 \nL 3.90625 36.328125 \nQ 3.609375 36.328125 3.609375 36.921875 \nQ 3.609375 37.796875 5.171875 39.359375 \nQ 6.734375 40.921875 8.5 40.921875 \nL 9.078125 40.921875 \nQ 9.578125 40.921875 9.578125 41.5 \nL 9.578125 42.78125 \nQ 9.578125 53.03125 15.671875 60.453125 \nQ 21.78125 67.875 29 67.875 \nz\n\" id=\"CrimsonText-Regular-102\"></path>\n      <path d=\"M 7.8125 36.53125 \nL 2.15625 36.53125 \nQ 1.65625 36.53125 1.65625 38.578125 \nQ 1.65625 39.15625 1.765625 39.265625 \nQ 4.59375 40.53125 7.90625 44.4375 \nQ 8.984375 45.703125 10 47.3125 \nQ 11.03125 48.921875 11.71875 50.09375 \nQ 12.40625 51.265625 12.40625 51.375 \nQ 15.328125 51.375 15.328125 50.875 \nL 15.328125 41.21875 \nQ 17.875 41.21875 23.046875 41.15625 \nQ 28.21875 41.109375 28.515625 41.109375 \nQ 29.296875 41.109375 29.296875 40.234375 \nQ 29.296875 38.484375 28.328125 36.53125 \nL 15.328125 36.53125 \nL 15.328125 12.59375 \nQ 15.328125 8.6875 17.328125 6.34375 \nQ 19.34375 4 22.5625 4 \nQ 25.484375 4 28.609375 5.859375 \nQ 28.90625 6.0625 29.484375 5.03125 \nQ 30.078125 4 29.984375 3.90625 \nQ 28.515625 2.34375 25.484375 0.828125 \nQ 22.46875 -0.6875 19.234375 -0.6875 \nQ 14.359375 -0.6875 11.078125 2.53125 \nQ 7.8125 5.765625 7.8125 11.71875 \nz\n\" id=\"CrimsonText-Regular-116\"></path>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n     </defs>\n     <g transform=\"translate(113.274531 274.627187)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-89\"></use>\n      <use x=\"63.378906\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"105.371094\" xlink:href=\"#CrimsonText-Regular-97\"></use>\n      <use x=\"146.679688\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"183.789062\" xlink:href=\"#CrimsonText-Regular-115\"></use>\n      <use x=\"218.847656\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"241.210938\" xlink:href=\"#CrimsonText-Regular-97\"></use>\n      <use x=\"282.519531\" xlink:href=\"#CrimsonText-Regular-102\"></use>\n      <use x=\"311.914062\" xlink:href=\"#CrimsonText-Regular-116\"></use>\n      <use x=\"342.578125\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"384.570312\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"421.679688\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"444.042969\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"491.308594\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"538.574219\" xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"585.839844\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"matplotlib.axis_2\">\n    <g id=\"text_2\">\n     <!-- Number of residents -->\n     <defs>\n      <path d=\"M 53.8125 51.171875 \nQ 53.8125 57.125 53.125 59.765625 \nQ 52.828125 60.546875 49.75 61.28125 \nQ 46.6875 62.015625 45.40625 62.015625 \nQ 45.015625 62.015625 45.015625 63.140625 \nQ 45.015625 64.265625 45.40625 64.65625 \nQ 46.6875 64.546875 50.484375 64.296875 \nQ 54.296875 64.0625 56.9375 64.0625 \nQ 59.46875 64.0625 63.328125 64.359375 \nQ 67.1875 64.65625 67.875 64.65625 \nQ 68.0625 64.0625 68.0625 63.1875 \nQ 68.0625 62.015625 67.671875 62.015625 \nQ 66.703125 62.015625 63.421875 61.234375 \nQ 60.15625 60.453125 59.96875 59.765625 \nQ 59.1875 56.734375 59.1875 50.6875 \nL 59.1875 13.578125 \nQ 59.1875 7.515625 59.46875 -0.09375 \nQ 59.078125 -0.484375 57.625 -0.484375 \nQ 55.953125 -0.484375 54.390625 1.765625 \nL 16.5 55.46875 \nL 16.5 13.765625 \nQ 16.5 7.328125 17.1875 4.6875 \nQ 17.390625 4 20.453125 3.265625 \nQ 23.53125 2.546875 24.515625 2.546875 \nQ 24.8125 2.546875 24.859375 1.375 \nQ 24.90625 0.203125 24.703125 -0.296875 \nQ 14.9375 0.203125 13.484375 0.203125 \nL 2.25 -0.296875 \nQ 1.953125 0 1.953125 1.171875 \nQ 1.953125 2.546875 2.25 2.546875 \nQ 3.609375 2.546875 6.6875 3.265625 \nQ 9.765625 4 10.0625 4.890625 \nQ 11.03125 7.421875 11.03125 14.0625 \nL 11.03125 52.4375 \nQ 11.03125 57.234375 10.359375 59.765625 \nQ 10.0625 60.546875 7.03125 61.171875 \nQ 4 61.8125 2.640625 61.8125 \nQ 2.25 61.8125 2.25 63.03125 \nQ 2.25 64.265625 2.640625 64.65625 \nQ 10.25 64.453125 12.59375 64.453125 \nQ 17.671875 64.453125 20.40625 64.65625 \nQ 24.03125 58.015625 53.515625 16.796875 \nQ 53.8125 18.453125 53.8125 20.796875 \nz\n\" id=\"CrimsonText-Regular-78\"></path>\n      <path d=\"M 42.484375 33.296875 \nL 42.484375 13.765625 \nQ 42.484375 9.578125 43.171875 6.34375 \nQ 43.359375 5.671875 44.234375 5.28125 \nQ 45.125 4.890625 46.09375 4.78125 \nQ 47.078125 4.6875 48.046875 4.6875 \nL 48.921875 4.59375 \nQ 49.21875 4.5 49.21875 3.515625 \nQ 49.21875 3.21875 48.96875 2.578125 \nQ 48.734375 1.953125 48.4375 1.953125 \nQ 46.96875 1.859375 45.15625 1.5625 \nQ 43.359375 1.265625 41.796875 0.875 \nQ 40.234375 0.484375 38.859375 0.09375 \nQ 37.5 -0.296875 36.71875 -0.59375 \nL 35.84375 -0.78125 \nQ 35.0625 -0.78125 35.0625 0.78125 \nL 35.0625 5.765625 \nL 34.859375 6.25 \nQ 28.421875 -0.6875 22.078125 -0.6875 \nQ 18.453125 -0.6875 15.859375 1.125 \nQ 13.28125 2.9375 12.0625 5.90625 \nQ 10.84375 8.890625 10.34375 11.671875 \nQ 9.859375 14.453125 9.859375 17.484375 \nL 9.859375 29.78125 \nQ 9.859375 33.59375 8.5 35.0625 \nQ 7.515625 36.234375 6.09375 36.671875 \nQ 4.6875 37.109375 3.75 37.109375 \nQ 2.828125 37.109375 2.828125 37.3125 \nQ 2.828125 39.65625 3.421875 39.75 \nQ 13.765625 41.3125 16.890625 42.28125 \nQ 17 42.28125 17.1875 42.328125 \nQ 17.390625 42.390625 17.390625 42.390625 \nQ 17.78125 42.390625 17.875 41.546875 \nQ 17.96875 40.71875 17.875 40.328125 \nQ 17.28125 35.640625 17.28125 33.109375 \nL 17.28125 19.921875 \nQ 17.28125 12.40625 19.53125 8.84375 \nQ 21.78125 5.28125 26.859375 5.28125 \nQ 29.78125 5.28125 32.421875 7.5625 \nQ 35.0625 9.859375 35.0625 11.53125 \nL 35.0625 29.78125 \nQ 35.0625 33.59375 33.6875 35.0625 \nQ 32.71875 36.234375 31.296875 36.671875 \nQ 29.890625 37.109375 28.953125 37.109375 \nQ 28.03125 37.109375 28.03125 37.3125 \nQ 28.03125 39.65625 28.609375 39.75 \nQ 38.96875 41.3125 42.09375 42.28125 \nQ 42.1875 42.28125 42.375 42.328125 \nQ 42.578125 42.390625 42.578125 42.390625 \nQ 42.96875 42.390625 43.0625 41.546875 \nQ 43.171875 40.71875 43.0625 40.328125 \nQ 42.484375 35.640625 42.484375 33.296875 \nz\n\" id=\"CrimsonText-Regular-117\"></path>\n      <path d=\"M 31.25 42.78125 \nQ 35.15625 42.78125 37.734375 40.671875 \nQ 40.328125 38.578125 41.3125 35.84375 \nQ 48.640625 42.78125 56.453125 42.78125 \nQ 68.75 42.78125 68.75 24.03125 \nL 68.75 13.1875 \nQ 68.75 7.515625 69.53125 4.5 \nQ 69.734375 3.8125 72.078125 3.171875 \nQ 74.421875 2.546875 75.390625 2.546875 \nQ 75.6875 2.546875 75.78125 1.375 \nQ 75.875 0.203125 75.6875 -0.296875 \nQ 65.921875 0.203125 65.234375 0.203125 \nQ 64.65625 0.203125 54.59375 -0.296875 \nQ 54.203125 0.09375 54.203125 1.3125 \nQ 54.203125 2.546875 54.59375 2.546875 \nQ 55.765625 2.546875 58.0625 3.171875 \nQ 60.359375 3.8125 60.546875 4.5 \nQ 61.234375 7.328125 61.234375 10.75 \nL 61.234375 21.78125 \nQ 61.234375 36.8125 51.375 36.8125 \nQ 47.75 36.8125 45.109375 34.71875 \nQ 42.484375 32.625 42.484375 31.25 \nL 42.578125 30.859375 \nQ 42.578125 30.46875 42.578125 30.375 \nQ 42.96875 27.9375 42.96875 23.34375 \nL 42.96875 12.3125 \nQ 42.96875 7.515625 43.75 4.5 \nQ 43.953125 3.8125 46.296875 3.171875 \nQ 48.640625 2.546875 49.609375 2.546875 \nQ 49.90625 2.546875 50 1.375 \nQ 50.09375 0.203125 49.90625 -0.296875 \nQ 40.140625 0.203125 39.453125 0.203125 \nQ 38.875 0.203125 28.8125 -0.296875 \nQ 28.421875 0.09375 28.421875 1.3125 \nQ 28.421875 2.546875 28.8125 2.546875 \nQ 29.984375 2.546875 32.28125 3.171875 \nQ 34.578125 3.8125 34.765625 4.5 \nQ 35.453125 7.328125 35.453125 11.328125 \nL 35.453125 21.296875 \nQ 35.453125 36.8125 26.078125 36.8125 \nQ 23.140625 36.8125 20.15625 34.609375 \nQ 17.1875 32.421875 17.1875 30.375 \nL 17.1875 13.1875 \nQ 17.1875 7.515625 17.96875 4.5 \nQ 18.171875 3.8125 20.515625 3.171875 \nQ 22.859375 2.546875 23.828125 2.546875 \nQ 24.125 2.546875 24.21875 1.375 \nQ 24.3125 0.203125 24.125 -0.296875 \nQ 14.359375 0.203125 13.671875 0.203125 \nQ 13.09375 0.203125 3.03125 -0.296875 \nQ 2.640625 0.09375 2.640625 1.3125 \nQ 2.640625 2.546875 3.03125 2.546875 \nQ 4.203125 2.546875 6.5 3.171875 \nQ 8.796875 3.8125 8.984375 4.5 \nQ 9.671875 7.328125 9.671875 11.328125 \nL 9.671875 29.78125 \nQ 9.671875 33.59375 8.296875 35.0625 \nQ 7.328125 36.234375 5.90625 36.671875 \nQ 4.5 37.109375 3.5625 37.109375 \nQ 2.640625 37.109375 2.640625 37.3125 \nQ 2.640625 39.65625 3.21875 39.75 \nQ 13.578125 41.3125 16.703125 42.28125 \nQ 16.796875 42.28125 16.984375 42.328125 \nQ 17.1875 42.390625 17.1875 42.390625 \nQ 17.578125 42.390625 17.671875 41.546875 \nQ 17.78125 40.71875 17.671875 40.328125 \nQ 17.28125 37.59375 17.28125 36.421875 \nQ 17.28125 36.03125 17.484375 36.03125 \nQ 17.578125 36.03125 17.78125 36.234375 \nQ 20.015625 38.578125 23.875 40.671875 \nQ 27.734375 42.78125 31.25 42.78125 \nz\n\" id=\"CrimsonText-Regular-109\"></path>\n      <path d=\"M 25 42.78125 \nQ 34.375 42.78125 39.6875 36.375 \nQ 45.015625 29.984375 45.015625 22.75 \nQ 45.015625 13.484375 38.125 6.4375 \nQ 31.25 -0.59375 22.953125 -0.59375 \nQ 19.34375 -0.59375 16.0625 0.046875 \nQ 12.796875 0.6875 12.3125 0.6875 \nQ 11.421875 0.6875 10.109375 0.140625 \nQ 8.796875 -0.390625 8.59375 -0.390625 \nQ 8.203125 -0.390625 7.375 -0.09375 \nQ 6.546875 0.203125 6.546875 0.59375 \nQ 6.546875 0.6875 6.828125 2.203125 \nQ 7.125 3.71875 7.421875 6.640625 \nQ 7.71875 9.578125 7.71875 13.1875 \nL 7.71875 53.609375 \nQ 7.71875 56.9375 7.125 59.859375 \nQ 6.640625 61.421875 2.15625 61.421875 \nL 1.265625 61.421875 \nQ 0.6875 61.421875 0.6875 62.5 \nQ 0.6875 64.0625 1.265625 64.0625 \nQ 4.203125 64.359375 6.6875 64.84375 \nQ 9.1875 65.328125 10.59375 65.8125 \nQ 12.015625 66.3125 12.984375 66.75 \nQ 13.96875 67.1875 14.453125 67.484375 \nL 14.84375 67.78125 \nL 15.046875 67.78125 \nQ 15.4375 67.78125 15.828125 67.234375 \nQ 16.21875 66.703125 16.3125 66.21875 \nQ 15.234375 63.09375 15.234375 57.71875 \nL 15.234375 40.625 \nQ 15.234375 39.546875 15.53125 39.546875 \nQ 15.625 39.546875 15.828125 39.65625 \nQ 17.1875 40.625 20.015625 41.703125 \nQ 22.859375 42.78125 25 42.78125 \nz\nM 21.875 37.984375 \nQ 19.140625 37.984375 17.1875 36.46875 \nQ 15.234375 34.96875 15.234375 32.125 \nL 15.234375 9.375 \nQ 15.234375 6.34375 18.109375 4.921875 \nQ 21 3.515625 24.8125 3.515625 \nQ 30.375 3.515625 33.5 8.78125 \nQ 36.625 14.0625 36.625 20.703125 \nQ 36.625 28.421875 32.5625 33.203125 \nQ 28.515625 37.984375 21.875 37.984375 \nz\n\" id=\"CrimsonText-Regular-98\"></path>\n      <path d=\"M 23.734375 38.875 \nQ 18.5625 38.875 15.28125 34.125 \nQ 12.015625 29.390625 12.015625 22.5625 \nQ 12.015625 14.546875 16.15625 8.828125 \nQ 20.3125 3.125 25.875 3.125 \nQ 31.0625 3.125 34.375 8 \nQ 37.703125 12.890625 37.703125 19.734375 \nQ 37.703125 27.640625 33.5 33.25 \nQ 29.296875 38.875 23.734375 38.875 \nz\nM 24.8125 42.671875 \nQ 33.59375 42.671875 39.84375 36.328125 \nQ 46.09375 29.984375 46.09375 21.09375 \nQ 46.09375 12.109375 39.984375 5.703125 \nQ 33.890625 -0.6875 25 -0.6875 \nQ 16.109375 -0.6875 9.859375 5.703125 \nQ 3.609375 12.109375 3.609375 21.09375 \nQ 3.609375 30.171875 9.65625 36.421875 \nQ 15.71875 42.671875 24.8125 42.671875 \nz\n\" id=\"CrimsonText-Regular-111\"></path>\n      <path d=\"M 11.140625 53.03125 \nQ 8.296875 55.859375 8.296875 57.90625 \nQ 8.296875 59.96875 9.71875 61.375 \nQ 11.140625 62.796875 13.1875 62.796875 \nQ 15.234375 62.796875 16.640625 61.375 \nQ 18.0625 59.96875 18.0625 57.90625 \nQ 18.0625 55.859375 16.640625 54.4375 \nQ 15.234375 53.03125 13.1875 53.03125 \nQ 11.140625 53.03125 8.296875 55.859375 \nz\nM 17.671875 13.1875 \nQ 17.671875 7.515625 18.453125 4.5 \nQ 18.65625 3.8125 21 3.171875 \nQ 23.34375 2.546875 24.3125 2.546875 \nQ 24.609375 2.546875 24.703125 1.375 \nQ 24.8125 0.203125 24.609375 -0.296875 \nQ 14.84375 0.203125 14.15625 0.203125 \nQ 13.484375 0.203125 3.515625 -0.296875 \nQ 3.125 0.09375 3.125 1.3125 \nQ 3.125 2.546875 3.515625 2.546875 \nQ 4.6875 2.546875 6.984375 3.171875 \nQ 9.28125 3.8125 9.46875 4.5 \nQ 10.15625 7.328125 10.15625 11.328125 \nL 10.15625 29.78125 \nQ 10.15625 33.59375 8.796875 35.0625 \nQ 7.8125 36.234375 6.390625 36.671875 \nQ 4.984375 37.109375 4.046875 37.109375 \nQ 3.125 37.109375 3.125 37.3125 \nQ 3.125 39.65625 3.71875 39.75 \nQ 14.0625 41.3125 17.1875 42.28125 \nL 17.390625 42.390625 \nQ 17.578125 42.390625 17.671875 42.390625 \nQ 18.0625 42.390625 18.15625 41.546875 \nQ 18.265625 40.71875 18.171875 40.328125 \nQ 17.671875 36.421875 17.671875 33.296875 \nz\n\" id=\"CrimsonText-Regular-105\"></path>\n      <path d=\"M 24.21875 38.875 \nQ 18.5625 38.875 15.328125 33.796875 \nQ 12.109375 28.71875 12.109375 21.96875 \nQ 12.109375 14.84375 15.921875 9.609375 \nQ 19.734375 4.390625 26.46875 4.390625 \nQ 29.78125 4.390625 31.640625 5.90625 \nQ 33.5 7.421875 33.5 9.96875 \nL 33.5 33.203125 \nQ 33.5 35.25 31.296875 37.0625 \nQ 29.109375 38.875 24.21875 38.875 \nz\nM 25.484375 42.96875 \nQ 29.6875 42.96875 32.8125 41.3125 \nQ 33.5 41.3125 33.5 43.0625 \nL 33.5 53.609375 \nQ 33.5 56.9375 32.90625 59.859375 \nQ 32.421875 61.421875 27.9375 61.421875 \nL 27.046875 61.421875 \nQ 26.46875 61.421875 26.46875 62.5 \nQ 26.46875 64.0625 27.046875 64.0625 \nQ 29.984375 64.359375 32.46875 64.84375 \nQ 34.96875 65.328125 36.375 65.8125 \nQ 37.796875 66.3125 38.765625 66.75 \nQ 39.75 67.1875 40.234375 67.484375 \nL 40.625 67.78125 \nL 40.828125 67.78125 \nQ 41.21875 67.78125 41.609375 67.234375 \nQ 42 66.703125 42.09375 66.21875 \nQ 41.015625 63.09375 41.015625 57.71875 \nL 41.015625 13.765625 \nQ 41.015625 9.078125 41.609375 6.34375 \nQ 41.796875 5.671875 42.671875 5.28125 \nQ 43.5625 4.890625 44.484375 4.78125 \nQ 45.40625 4.6875 46.296875 4.6875 \nL 47.171875 4.59375 \nQ 47.46875 4.5 47.46875 3.421875 \nQ 47.46875 1.953125 46.875 1.953125 \nQ 45.40625 1.859375 43.59375 1.5625 \nQ 41.796875 1.265625 40.1875 0.921875 \nQ 38.578125 0.59375 37.203125 0.25 \nQ 35.84375 -0.09375 34.96875 -0.390625 \nL 34.078125 -0.59375 \nQ 33.5 -0.59375 33.5 1.078125 \nL 33.5 2.25 \nQ 33.5 2.828125 33.109375 2.640625 \nQ 27.640625 -0.390625 22.75 -0.390625 \nQ 14.65625 -0.390625 9.1875 5.375 \nQ 3.71875 11.140625 3.71875 19.140625 \nQ 3.71875 28.609375 10.40625 35.78125 \nQ 17.09375 42.96875 25.484375 42.96875 \nz\n\" id=\"CrimsonText-Regular-100\"></path>\n      <path d=\"M 31.453125 42.78125 \nQ 38.28125 42.78125 41.015625 37.890625 \nQ 43.75 33.015625 43.75 22.078125 \nL 43.75 13.1875 \nQ 43.75 7.515625 44.53125 4.5 \nQ 44.734375 3.8125 47.078125 3.171875 \nQ 49.421875 2.546875 50.390625 2.546875 \nQ 50.6875 2.546875 50.78125 1.375 \nQ 50.875 0.203125 50.6875 -0.296875 \nQ 40.921875 0.203125 40.234375 0.203125 \nQ 40.046875 0.203125 29.984375 -0.296875 \nQ 29.59375 0.09375 29.59375 1.3125 \nQ 29.59375 2.546875 29.984375 2.546875 \nQ 31.15625 2.546875 33.25 3.171875 \nQ 35.359375 3.8125 35.546875 4.5 \nQ 36.234375 7.328125 36.234375 11.328125 \nL 36.234375 21.09375 \nQ 36.234375 30.171875 33.890625 33.484375 \nQ 31.546875 36.8125 26.265625 36.8125 \nQ 23.140625 36.8125 20.265625 34.515625 \nQ 17.390625 32.234375 17.390625 30.375 \nL 17.390625 13.1875 \nQ 17.390625 7.515625 18.171875 4.5 \nQ 18.359375 3.8125 20.703125 3.171875 \nQ 23.046875 2.546875 24.03125 2.546875 \nQ 24.3125 2.546875 24.40625 1.375 \nQ 24.515625 0.203125 24.3125 -0.296875 \nQ 14.546875 0.203125 13.875 0.203125 \nQ 13.28125 0.203125 3.21875 -0.296875 \nQ 2.828125 0.09375 2.828125 1.3125 \nQ 2.828125 2.546875 3.21875 2.546875 \nQ 4.390625 2.546875 6.6875 3.171875 \nQ 8.984375 3.8125 9.1875 4.5 \nQ 9.859375 7.328125 9.859375 11.328125 \nL 9.859375 29.78125 \nQ 9.859375 33.59375 8.5 35.0625 \nQ 7.515625 36.234375 6.09375 36.671875 \nQ 4.6875 37.109375 3.75 37.109375 \nQ 2.828125 37.109375 2.828125 37.3125 \nQ 2.828125 39.65625 3.421875 39.75 \nQ 13.765625 41.3125 16.890625 42.28125 \nQ 17 42.28125 17.1875 42.328125 \nQ 17.390625 42.390625 17.390625 42.390625 \nQ 17.78125 42.390625 17.875 41.546875 \nQ 17.96875 40.71875 17.875 40.328125 \nQ 17.484375 37.59375 17.484375 36.421875 \nQ 17.484375 36.03125 17.671875 36.03125 \nQ 17.78125 36.03125 17.96875 36.234375 \nQ 20.21875 38.578125 24.078125 40.671875 \nQ 27.9375 42.78125 31.453125 42.78125 \nz\n\" id=\"CrimsonText-Regular-110\"></path>\n     </defs>\n     <g transform=\"translate(17.367188 195.758672)rotate(-90)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-78\"></use>\n      <use x=\"70.410156\" xlink:href=\"#CrimsonText-Regular-117\"></use>\n      <use x=\"120.898438\" xlink:href=\"#CrimsonText-Regular-109\"></use>\n      <use x=\"199.023438\" xlink:href=\"#CrimsonText-Regular-98\"></use>\n      <use x=\"247.753906\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"289.746094\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"326.855469\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"349.21875\" xlink:href=\"#CrimsonText-Regular-111\"></use>\n      <use x=\"399.023438\" xlink:href=\"#CrimsonText-Regular-102\"></use>\n      <use x=\"428.417969\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"450.78125\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"487.890625\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"529.882812\" xlink:href=\"#CrimsonText-Regular-115\"></use>\n      <use x=\"564.941406\" xlink:href=\"#CrimsonText-Regular-105\"></use>\n      <use x=\"591.210938\" xlink:href=\"#CrimsonText-Regular-100\"></use>\n      <use x=\"639.746094\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"681.738281\" xlink:href=\"#CrimsonText-Regular-110\"></use>\n      <use x=\"734.765625\" xlink:href=\"#CrimsonText-Regular-116\"></use>\n      <use x=\"765.429688\" xlink:href=\"#CrimsonText-Regular-115\"></use>\n     </g>\n    </g>\n   </g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 19.867264 268.02 \nL 295.980548 268.02 \nL 295.980548 7.2 \nL 19.867264 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n    <g id=\"ytick_9\"></g>\n    <g id=\"ytick_10\"></g>\n    <g id=\"ytick_11\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 105.977298 246.558847 \nL 105.977298 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 146.422346 246.558847 \nL 146.422346 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 186.867393 246.558847 \nL 186.867393 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 227.312441 246.558847 \nL 227.312441 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 267.757488 246.558847 \nL 267.757488 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 216.225061 \nL 272.813119 216.225061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 190.946906 \nL 272.813119 190.946906 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 165.668752 \nL 272.813119 165.668752 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 140.390597 \nL 272.813119 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 115.112442 \nL 272.813119 115.112442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 89.834288 \nL 272.813119 89.834288 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 64.556133 \nL 272.813119 64.556133 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 39.277978 \nL 272.813119 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 241.503216 \nL 277.86875 241.503216 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 274.951665 -42.65124 \nL 277.86875 -43.635691 \nL 274.951665 -44.620141 \nL 274.951665 -42.65124 \nL 277.86875 -43.635691 \n\" id=\"m9ab07ca738\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m9ab07ca738\" y=\"285.138906\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 65.532251 246.558847 \nL 65.532251 29.166716 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 66.565148 -252.397951 \nL 65.532251 -255.97219 \nL 64.499354 -252.397951 \nL 66.565148 -252.397951 \nL 65.532251 -255.97219 \n\" id=\"m0c1c9d11bb\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m0c1c9d11bb\" y=\"285.138906\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 105.977298 245.228417 \nL 105.977298 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 146.422346 245.228417 \nL 146.422346 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 186.867393 245.228417 \nL 186.867393 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 227.312441 245.228417 \nL 227.312441 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 267.757488 245.228417 \nL 267.757488 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 216.225061 \nL 69.257453 216.225061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 190.946906 \nL 69.257453 190.946906 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 165.668752 \nL 69.257453 165.668752 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 140.390597 \nL 69.257453 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 115.112442 \nL 69.257453 115.112442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 89.834288 \nL 69.257453 89.834288 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 64.556133 \nL 69.257453 64.556133 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 39.277978 \nL 69.257453 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 224.819634 \nL 32.417868 213.697246 \nL 58.707149 213.697246 \nL 58.707149 224.819634 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 5,000 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n      <path d=\"M 11.53125 -1.375 \nQ 11.53125 0.390625 10.0625 3.421875 \nQ 8.59375 6.453125 8.59375 7.421875 \nQ 8.59375 9.578125 10.734375 11.078125 \nQ 12.890625 12.59375 15.625 12.59375 \nQ 16.890625 12.59375 17.96875 12.203125 \nQ 19.234375 10.359375 19.234375 5.953125 \nQ 19.234375 4.109375 19.046875 3.421875 \nQ 17.671875 -2.9375 15.234375 -6.890625 \nQ 12.796875 -10.84375 6.640625 -15.921875 \nL 6.546875 -15.921875 \nQ 6.15625 -15.921875 5.21875 -15.140625 \nQ 4.296875 -14.359375 4.296875 -13.765625 \nQ 4.296875 -13.578125 5.421875 -12.546875 \nQ 6.546875 -11.53125 7.90625 -10.15625 \nQ 9.28125 -8.796875 10.40625 -6.34375 \nQ 11.53125 -3.90625 11.53125 -1.375 \nz\n\" id=\"CrimsonText-Regular-44\"></path>\n     </defs>\n     <g transform=\"translate(26.629924 223.444519)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"70.703125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 5,000 -->\n     <g transform=\"translate(26.629924 223.444519)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"70.703125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 199.541479 \nL 32.417868 188.419091 \nL 58.707149 188.419091 \nL 58.707149 199.541479 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 10,000 -->\n     <g transform=\"translate(19.554143 198.166364)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.871094\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.136719\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.402344\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 10,000 -->\n     <g transform=\"translate(19.554143 198.166364)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.871094\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.136719\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.402344\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 174.263324 \nL 32.417868 163.140936 \nL 58.707149 163.140936 \nL 58.707149 174.263324 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 15,000 -->\n     <g transform=\"translate(19.54008 172.888209)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 15,000 -->\n     <g transform=\"translate(19.54008 172.888209)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 148.98517 \nL 32.417868 137.862782 \nL 58.707149 137.862782 \nL 58.707149 148.98517 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 20,000 -->\n     <g transform=\"translate(19.554143 147.610055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.871094\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.136719\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.402344\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 20,000 -->\n     <g transform=\"translate(19.554143 147.610055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.871094\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.136719\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.402344\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 123.707015 \nL 32.417868 112.584627 \nL 58.707149 112.584627 \nL 58.707149 123.707015 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 25,000 -->\n     <g transform=\"translate(19.54008 122.3319)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 25,000 -->\n     <g transform=\"translate(19.54008 122.3319)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 98.42886 \nL 32.417868 87.306472 \nL 58.707149 87.306472 \nL 58.707149 98.42886 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 30,000 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(19.54008 97.053745)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 30,000 -->\n     <g transform=\"translate(19.54008 97.053745)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 73.150706 \nL 32.417868 62.028318 \nL 58.707149 62.028318 \nL 58.707149 73.150706 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 35,000 -->\n     <g transform=\"translate(19.526018 71.775591)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.726562\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"118.066406\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.332031\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.597656\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 35,000 -->\n     <g transform=\"translate(19.526018 71.775591)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.726562\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"118.066406\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.332031\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.597656\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 47.872551 \nL 32.417868 36.750163 \nL 58.707149 36.750163 \nL 58.707149 47.872551 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 40,000 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(19.582268 46.497436)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.335938\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.675781\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"164.941406\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.207031\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 40,000 -->\n     <g transform=\"translate(19.582268 46.497436)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.335938\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.675781\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"164.941406\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.207031\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 101.427231 256.164545 \nL 101.427231 245.042157 \nL 109.010677 245.042157 \nL 109.010677 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 2 -->\n     <g transform=\"translate(101.41527 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 2 -->\n     <g transform=\"translate(101.41527 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 141.872278 256.164545 \nL 141.872278 245.042157 \nL 149.455724 245.042157 \nL 149.455724 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 4 -->\n     <g transform=\"translate(141.888443 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 4 -->\n     <g transform=\"translate(141.888443 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 182.317326 256.164545 \nL 182.317326 245.042157 \nL 189.900772 245.042157 \nL 189.900772 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(182.305365 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 6 -->\n     <g transform=\"translate(182.305365 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 222.762373 256.164545 \nL 222.762373 245.042157 \nL 230.345819 245.042157 \nL 230.345819 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(222.750413 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 8 -->\n     <g transform=\"translate(222.750413 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 259.162916 256.164545 \nL 259.162916 245.042157 \nL 273.318682 245.042157 \nL 273.318682 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 10 -->\n     <g transform=\"translate(258.633432 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 10 -->\n     <g transform=\"translate(258.633432 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(54.136837 251.62363)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(62.023657 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(279.943616 244.798528)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"m35df460c05\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <use style=\"stroke:#000000;\" x=\"65.532251\" xlink:href=\"#m35df460c05\" y=\"140.390597\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 65.532251 140.390597 \nL 82.958474 135.529756 \nL 99.979436 130.556452 \nL 117.000397 125.349752 \nL 133.616098 120.031417 \nL 149.826538 114.608208 \nL 165.631717 109.087546 \nL 181.031635 103.477502 \nL 196.431553 97.629778 \nL 211.42621 91.697973 \nL 226.015606 85.691834 \nL 240.605002 79.444892 \nL 254.789136 73.131444 \nL 267.757488 67.144147 \nL 267.757488 67.144147 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p542a9fb88b\">\n   <rect height=\"260.82\" width=\"276.113284\" x=\"19.867264\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a curve\" class=\"sr-only\"><ul><li>The curve is in quadrant 1.</li>\n<li>The curve trends gradually up from left to right.&nbsp;</li>\n<li>The curve begins at the point (0 comma 20,000).</li>\n<li>The curve passes through the following points:<br>\n<ul>\n<li>(0 comma 20,000)</li>\n<li>approximately (5 comma 26,263)</li>\n<li>approximately (10 comma 34,488)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The graph shown models the number of residents of a certain city <math alttext=\"x\"><mi>x</mi>\n</math> years after <math alttext=\"2010\"><mn>2010</mn></math>. How many residents does this model estimate the city had in <math alttext=\"2010\"><mn>2010</mn></math>?</p>","answerOptions":[{"id":"84225ce0-dd8a-474b-ad19-debddc2c9326","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"74eedc3b-bf42-43ff-a9dd-bb827b621e57","content":"<p><math alttext=\"2,000\"><mn>2,000</mn>\n</math></p>"},{"id":"5af166ca-4e42-4da5-bbef-c7545d961d24","content":"<p><math alttext=\"20,000\"><mn>20,000</mn>\n</math></p>"},{"id":"7384eaab-fb10-4244-8efa-ca2bbc52c111","content":"<p><math alttext=\"25,000\"><mn>25,000</mn>\n</math></p>"}],"keys":["5af166ca-4e42-4da5-bbef-c7545d961d24"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It's given that <math alttext=\"x\"><mi>x</mi>\n</math> represents years after <math alttext=\"2010\"><mn>2010</mn></math>. Therefore, <math alttext=\"2010\"><mn>2010</mn></math> is represented by <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. On the model shown, the point with an <em>x</em>-coordinate of <math alttext=\"0\"><mn>0</mn>\n</math> has a <em>y</em>-coordinate of <math alttext=\"20,000\"><mn>20,000</mn>\n</math>. Thus, the model estimates that in&nbsp;<math alttext=\"2010\"><mn>2010</mn></math>, the city had <math alttext=\"20,000\"><mn>20,000</mn>\n</math> residents.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This is the value of <math alttext=\"x\"><mi>x</mi>\n</math> that represents the year <math alttext=\"2010\"><mn>2010</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This is approximately the number of residents the model estimates the city had in&nbsp;<math alttext=\"2014\"><mn>2014</mn></math>, not&nbsp;<math alttext=\"2010\"><mn>2010</mn></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357398,"pPcc":"SAT#P","questionId":"2d394c28","skill_cd":"P.C.","score_band_range_cd":2,"skill_desc":"Nonlinear functions","createDate":1730147357398,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"58bfb590-016f-4bec-8d23-459d22e7482a","primary_class_cd":"P","uId":"611aaa7d-fa42-43ff-a4c1-23deafa4e7c4","difficulty":"E"},"raw_detail":{"answerOptions":[{"content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>","id":"84225ce0-dd8a-474b-ad19-debddc2c9326"},{"content":"<p><math alttext=\"2,000\"><mn>2,000</mn>\n</math></p>","id":"74eedc3b-bf42-43ff-a9dd-bb827b621e57"},{"content":"<p><math alttext=\"20,000\"><mn>20,000</mn>\n</math></p>","id":"5af166ca-4e42-4da5-bbef-c7545d961d24"},{"content":"<p><math alttext=\"25,000\"><mn>25,000</mn>\n</math></p>","id":"7384eaab-fb10-4244-8efa-ca2bbc52c111"}],"externalid":"58bfb590-016f-4bec-8d23-459d22e7482a","keys":["5af166ca-4e42-4da5-bbef-c7545d961d24"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It's given that <math alttext=\"x\"><mi>x</mi>\n</math> represents years after <math alttext=\"2010\"><mn>2010</mn></math>. Therefore, <math alttext=\"2010\"><mn>2010</mn></math> is represented by <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. On the model shown, the point with an <em>x</em>-coordinate of <math alttext=\"0\"><mn>0</mn>\n</math> has a <em>y</em>-coordinate of <math alttext=\"20,000\"><mn>20,000</mn>\n</math>. Thus, the model estimates that in&nbsp;<math alttext=\"2010\"><mn>2010</mn></math>, the city had <math alttext=\"20,000\"><mn>20,000</mn>\n</math> residents.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This is the value of <math alttext=\"x\"><mi>x</mi>\n</math> that represents the year <math alttext=\"2010\"><mn>2010</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This is approximately the number of residents the model estimates the city had in&nbsp;<math alttext=\"2014\"><mn>2014</mn></math>, not&nbsp;<math alttext=\"2010\"><mn>2010</mn></math>.</p>","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"285.138906pt\" version=\"1.1\" viewBox=\"0 0 304.038906 285.138906\" width=\"304.038906pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a curve in the x y plane with the origin labeled O. The x axis is labeled Years after 2010. It ranges from 0 to 10. The y axis is labeled Number of residents. It ranges from 0 to 40,000. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 285.138906 \nL 304.038906 285.138906 \nL 304.038906 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 24.678906 260.46 \nL 296.838906 260.46 \nL 296.838906 10.98 \nL 24.678906 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\">\n    <g id=\"text_1\">\n     <!-- Years after 2010 -->\n     <defs>\n      <path d=\"M 13.578125 64.0625 \nQ 14.75 64.0625 26.46875 64.65625 \nQ 26.65625 64.265625 26.609375 63.140625 \nQ 26.5625 62.015625 26.265625 62.015625 \nQ 24.609375 62.015625 22.5 61.1875 \nQ 20.40625 60.359375 20.40625 58.6875 \nQ 20.40625 57.625 21.484375 55.765625 \nL 32.421875 35.0625 \nQ 32.90625 34.578125 33.40625 35.25 \nQ 46.6875 55.375 46.6875 58.796875 \nQ 46.6875 59.859375 44.734375 60.9375 \nQ 42.78125 62.015625 39.9375 62.015625 \nQ 39.546875 62.015625 39.546875 63.140625 \nQ 39.546875 64.265625 39.9375 64.65625 \nQ 50.78125 64.0625 51.46875 64.0625 \nQ 54.5 64.0625 57.71875 64.359375 \nQ 60.9375 64.65625 61.8125 64.65625 \nQ 62.015625 64.0625 62.015625 63.1875 \nQ 62.015625 62.015625 61.625 62.015625 \nQ 60.453125 62.015625 57.515625 61.125 \nQ 54.59375 60.25 53.609375 58.984375 \nQ 49.90625 53.21875 42.828125 41.5 \nQ 35.75 29.78125 35.75 28.421875 \nL 35.75 13.578125 \nQ 35.75 7.515625 36.53125 4.5 \nQ 36.71875 3.8125 39.15625 3.078125 \nQ 41.609375 2.34375 42.484375 2.34375 \nQ 42.875 2.34375 42.875 1.078125 \nQ 42.875 0.296875 42.671875 -0.296875 \nQ 32.90625 0.203125 31.734375 0.203125 \nQ 31.453125 0.203125 20.21875 -0.296875 \nQ 19.828125 0.09375 19.828125 1.078125 \nQ 19.828125 2.34375 20.21875 2.34375 \nQ 21.390625 2.34375 23.78125 3.03125 \nQ 26.171875 3.71875 26.46875 4.5 \nQ 27.25 7.515625 27.25 13.875 \nL 27.25 26.078125 \nQ 27.25 27.4375 25.140625 31.484375 \nQ 23.046875 35.546875 12.984375 53.609375 \nQ 11.421875 56.546875 10.59375 57.671875 \nQ 9.765625 58.796875 8.203125 59.859375 \nQ 7.125 60.640625 4.96875 61.328125 \nQ 2.828125 62.015625 1.859375 62.015625 \nQ 1.46875 62.015625 1.46875 63.09375 \nQ 1.46875 64.265625 1.859375 64.65625 \nQ 3.421875 64.546875 7.125 64.296875 \nQ 10.84375 64.0625 13.578125 64.0625 \nz\n\" id=\"CrimsonText-Regular-89\"></path>\n      <path d=\"M 21.96875 38.96875 \nQ 16.890625 38.96875 14.203125 34.625 \nQ 11.53125 30.28125 11.53125 27.4375 \nQ 11.53125 26.765625 12.109375 26.765625 \nL 31.15625 26.765625 \nQ 31.640625 26.765625 31.640625 27.734375 \nQ 31.640625 30.859375 29 34.90625 \nQ 26.375 38.96875 21.96875 38.96875 \nz\nM 22.953125 42.578125 \nQ 27.4375 42.578125 30.859375 40.859375 \nQ 34.28125 39.15625 36.078125 36.46875 \nQ 37.890625 33.796875 38.71875 31 \nQ 39.546875 28.21875 39.546875 25.484375 \nQ 39.546875 23.53125 38.953125 23.09375 \nQ 38.375 22.65625 36.71875 22.65625 \nL 12.109375 22.65625 \nQ 11.328125 22.65625 11.328125 22.171875 \nQ 11.328125 16.015625 15.03125 10.84375 \nQ 18.75 5.671875 25.78125 5.671875 \nQ 27.828125 5.671875 29.6875 6.0625 \nQ 31.546875 6.453125 32.859375 6.984375 \nQ 34.1875 7.515625 35.109375 8.046875 \nQ 36.03125 8.59375 36.71875 9.078125 \nL 37.40625 9.578125 \nQ 37.984375 9.578125 37.984375 8.296875 \nQ 37.984375 7.515625 37.40625 6.546875 \nQ 35.453125 3.8125 31.640625 1.609375 \nQ 27.828125 -0.59375 23.34375 -0.59375 \nQ 15.234375 -0.59375 9.421875 5.515625 \nQ 3.609375 11.625 3.609375 20.40625 \nQ 3.609375 30.671875 9.125 36.625 \nQ 14.65625 42.578125 22.953125 42.578125 \nz\n\" id=\"CrimsonText-Regular-101\"></path>\n      <path d=\"M 12.015625 7.71875 \nQ 15.328125 4.890625 17.96875 4.890625 \nQ 20.609375 4.890625 23.046875 6.5 \nQ 25.484375 8.109375 25.484375 9.765625 \nL 25.484375 19.828125 \nQ 24.703125 19.4375 21.671875 18.453125 \nQ 18.65625 17.484375 16.9375 16.75 \nQ 15.234375 16.015625 13.625 14.296875 \nQ 12.015625 12.59375 12.015625 10.359375 \nQ 12.015625 7.71875 15.328125 4.890625 \nz\nM 22.859375 42.578125 \nQ 28.21875 42.578125 30.5625 39.984375 \nQ 32.90625 37.40625 32.90625 31.640625 \nL 32.90625 9.078125 \nQ 32.90625 7.03125 33.984375 5.65625 \nQ 35.0625 4.296875 36.921875 4.296875 \nQ 38.28125 4.296875 40.328125 5.671875 \nQ 40.71875 5.671875 40.71875 4.890625 \nQ 40.71875 3.609375 40.234375 2.828125 \nQ 36.234375 -0.59375 33.40625 -0.59375 \nQ 31.15625 -0.59375 29.09375 1.265625 \nQ 27.046875 3.125 26.265625 5.171875 \nQ 26.171875 5.171875 25.53125 4.53125 \nQ 24.90625 3.90625 23.828125 3.078125 \nQ 22.75 2.25 21.328125 1.359375 \nQ 19.921875 0.484375 18.015625 -0.09375 \nQ 16.109375 -0.6875 14.15625 -0.6875 \nQ 9.671875 -0.6875 6.734375 1.703125 \nQ 3.8125 4.109375 3.8125 8.890625 \nQ 3.8125 11.03125 4.875 12.9375 \nQ 5.953125 14.84375 7.421875 16.0625 \nQ 8.890625 17.28125 11.421875 18.546875 \nQ 13.96875 19.828125 15.765625 20.453125 \nQ 17.578125 21.09375 20.5 22.0625 \nQ 23.4375 23.046875 24.609375 23.53125 \nQ 25.484375 23.828125 25.484375 25 \nL 25.484375 32.328125 \nQ 25.484375 35.453125 23.53125 37.15625 \nQ 21.578125 38.875 18.84375 38.875 \nQ 15.921875 38.875 13.96875 36.859375 \nQ 12.015625 34.859375 12.015625 31.640625 \nQ 12.015625 28.21875 8.015625 28.21875 \nQ 5.28125 28.21875 4.203125 30.078125 \nQ 4.203125 34.28125 10.34375 38.421875 \nQ 16.5 42.578125 22.859375 42.578125 \nz\n\" id=\"CrimsonText-Regular-97\"></path>\n      <path d=\"M 28.609375 42.671875 \nQ 34.375 42.671875 36.234375 39.84375 \nQ 36.234375 36.421875 35.15625 34.859375 \nQ 34.078125 33.296875 32.515625 33.296875 \nQ 30.765625 33.296875 29.296875 34.953125 \nQ 27.828125 36.625 25.296875 36.625 \nQ 22.265625 36.625 20.015625 33.78125 \nQ 17.78125 30.953125 17.78125 27.828125 \nL 17.78125 13.1875 \nQ 17.78125 7.515625 18.5625 4.5 \nQ 18.75 3.8125 21.140625 3.171875 \nQ 23.53125 2.546875 24.515625 2.546875 \nQ 24.8125 2.546875 24.90625 1.375 \nQ 25 0.203125 24.8125 -0.296875 \nQ 15.046875 0.203125 14.265625 0.203125 \nQ 13.671875 0.203125 3.609375 -0.296875 \nQ 3.21875 0.09375 3.21875 1.3125 \nQ 3.21875 2.546875 3.609375 2.546875 \nQ 4.78125 2.546875 7.078125 3.171875 \nQ 9.375 3.8125 9.578125 4.5 \nQ 10.25 7.328125 10.25 11.328125 \nL 10.25 29.78125 \nQ 10.25 33.59375 8.890625 35.0625 \nQ 7.90625 36.234375 6.484375 36.671875 \nQ 5.078125 37.109375 4.140625 37.109375 \nQ 3.21875 37.109375 3.21875 37.3125 \nQ 3.21875 39.65625 3.8125 39.75 \nQ 14.15625 41.3125 17.28125 42.28125 \nQ 17.390625 42.28125 17.578125 42.328125 \nQ 17.78125 42.390625 17.78125 42.390625 \nQ 18.171875 42.390625 18.265625 41.546875 \nQ 18.359375 40.71875 18.265625 40.328125 \nL 17.671875 35.453125 \nQ 19.4375 38.09375 22.515625 40.375 \nQ 25.59375 42.671875 28.609375 42.671875 \nz\n\" id=\"CrimsonText-Regular-114\"></path>\n      <path d=\"M 18.65625 42.671875 \nQ 20.796875 42.671875 24.0625 42.140625 \nQ 27.34375 41.609375 28.609375 41.40625 \nQ 29.59375 36.921875 29.78125 31.453125 \nQ 29.78125 30.953125 28.515625 30.953125 \nQ 27.15625 30.953125 27.046875 31.640625 \nQ 26.5625 34.375 24.265625 36.8125 \nQ 21.96875 39.265625 19.046875 39.265625 \nQ 12.015625 39.265625 12.015625 33.5 \nQ 12.015625 32.03125 12.40625 30.90625 \nQ 12.796875 29.78125 13.921875 28.75 \nQ 15.046875 27.734375 15.625 27.296875 \nQ 16.21875 26.859375 18.21875 25.734375 \nQ 20.21875 24.609375 20.703125 24.3125 \nQ 21.09375 24.125 23 23 \nQ 24.90625 21.875 25.6875 21.390625 \nQ 26.46875 20.90625 27.984375 19.734375 \nQ 29.5 18.5625 30.171875 17.625 \nQ 30.859375 16.703125 31.484375 15.28125 \nQ 32.125 13.875 32.125 12.40625 \nQ 32.125 6.640625 27.625 2.78125 \nQ 23.140625 -1.078125 17.09375 -1.078125 \nQ 15.046875 -1.078125 13.328125 -0.828125 \nQ 11.625 -0.59375 9.28125 0 \nQ 6.9375 0.59375 5.671875 0.78125 \nQ 5.078125 2.34375 4.53125 5.65625 \nQ 4 8.984375 4 10.9375 \nQ 4.78125 11.53125 5.171875 11.53125 \nQ 6.640625 11.53125 6.734375 10.9375 \nQ 7.328125 8.015625 10.40625 5.21875 \nQ 13.484375 2.4375 17.09375 2.4375 \nQ 20.21875 2.4375 22.21875 4.140625 \nQ 24.21875 5.859375 24.21875 9.078125 \nQ 24.21875 10.75 23.578125 12.15625 \nQ 22.953125 13.578125 21.53125 14.703125 \nQ 20.125 15.828125 18.890625 16.546875 \nQ 17.671875 17.28125 15.421875 18.453125 \nQ 13.1875 19.625 12.109375 20.3125 \nQ 4.5 24.703125 4.5 30.765625 \nQ 4.5 36.03125 8.734375 39.34375 \nQ 12.984375 42.671875 18.65625 42.671875 \nz\n\" id=\"CrimsonText-Regular-115\"></path>\n      <path id=\"CrimsonText-Regular-32\"></path>\n      <path d=\"M 29 67.875 \nQ 36.03125 67.875 38.28125 64.0625 \nQ 38.28125 57.90625 34.765625 57.90625 \nQ 33.5 57.90625 32.328125 59.421875 \nQ 31.15625 60.9375 29.640625 62.5 \nQ 28.125 64.0625 25.984375 64.0625 \nQ 21.6875 64.0625 19.34375 58.78125 \nQ 17 53.515625 17 46.390625 \nL 17 41.40625 \nQ 17 40.921875 17.484375 40.921875 \nL 28.328125 40.921875 \nQ 28.8125 40.921875 28.8125 40.234375 \nQ 28.8125 38.671875 27.640625 36.328125 \nL 17.578125 36.328125 \nQ 17 36.328125 17 35.75 \nL 17 13.1875 \nQ 17 7.90625 17.875 4.5 \nQ 18.0625 3.8125 20.265625 3.171875 \nQ 22.46875 2.546875 23.34375 2.546875 \nQ 23.640625 2.546875 23.734375 1.375 \nQ 23.828125 0.203125 23.640625 -0.296875 \nQ 13.875 0.203125 13.1875 0.203125 \nQ 12.890625 0.203125 2.9375 -0.296875 \nQ 2.734375 -0.09375 2.640625 0.640625 \nQ 2.546875 1.375 2.640625 1.953125 \nQ 2.734375 2.546875 2.9375 2.546875 \nQ 4.109375 2.546875 6.25 3.171875 \nQ 8.40625 3.8125 8.59375 4.5 \nQ 9.578125 8.296875 9.578125 13.1875 \nL 9.578125 35.640625 \nQ 9.578125 36.328125 9.078125 36.328125 \nL 3.90625 36.328125 \nQ 3.609375 36.328125 3.609375 36.921875 \nQ 3.609375 37.796875 5.171875 39.359375 \nQ 6.734375 40.921875 8.5 40.921875 \nL 9.078125 40.921875 \nQ 9.578125 40.921875 9.578125 41.5 \nL 9.578125 42.78125 \nQ 9.578125 53.03125 15.671875 60.453125 \nQ 21.78125 67.875 29 67.875 \nz\n\" id=\"CrimsonText-Regular-102\"></path>\n      <path d=\"M 7.8125 36.53125 \nL 2.15625 36.53125 \nQ 1.65625 36.53125 1.65625 38.578125 \nQ 1.65625 39.15625 1.765625 39.265625 \nQ 4.59375 40.53125 7.90625 44.4375 \nQ 8.984375 45.703125 10 47.3125 \nQ 11.03125 48.921875 11.71875 50.09375 \nQ 12.40625 51.265625 12.40625 51.375 \nQ 15.328125 51.375 15.328125 50.875 \nL 15.328125 41.21875 \nQ 17.875 41.21875 23.046875 41.15625 \nQ 28.21875 41.109375 28.515625 41.109375 \nQ 29.296875 41.109375 29.296875 40.234375 \nQ 29.296875 38.484375 28.328125 36.53125 \nL 15.328125 36.53125 \nL 15.328125 12.59375 \nQ 15.328125 8.6875 17.328125 6.34375 \nQ 19.34375 4 22.5625 4 \nQ 25.484375 4 28.609375 5.859375 \nQ 28.90625 6.0625 29.484375 5.03125 \nQ 30.078125 4 29.984375 3.90625 \nQ 28.515625 2.34375 25.484375 0.828125 \nQ 22.46875 -0.6875 19.234375 -0.6875 \nQ 14.359375 -0.6875 11.078125 2.53125 \nQ 7.8125 5.765625 7.8125 11.71875 \nz\n\" id=\"CrimsonText-Regular-116\"></path>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n     </defs>\n     <g transform=\"translate(113.274531 274.627187)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-89\"></use>\n      <use x=\"63.378906\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"105.371094\" xlink:href=\"#CrimsonText-Regular-97\"></use>\n      <use x=\"146.679688\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"183.789062\" xlink:href=\"#CrimsonText-Regular-115\"></use>\n      <use x=\"218.847656\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"241.210938\" xlink:href=\"#CrimsonText-Regular-97\"></use>\n      <use x=\"282.519531\" xlink:href=\"#CrimsonText-Regular-102\"></use>\n      <use x=\"311.914062\" xlink:href=\"#CrimsonText-Regular-116\"></use>\n      <use x=\"342.578125\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"384.570312\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"421.679688\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"444.042969\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"491.308594\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"538.574219\" xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"585.839844\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"matplotlib.axis_2\">\n    <g id=\"text_2\">\n     <!-- Number of residents -->\n     <defs>\n      <path d=\"M 53.8125 51.171875 \nQ 53.8125 57.125 53.125 59.765625 \nQ 52.828125 60.546875 49.75 61.28125 \nQ 46.6875 62.015625 45.40625 62.015625 \nQ 45.015625 62.015625 45.015625 63.140625 \nQ 45.015625 64.265625 45.40625 64.65625 \nQ 46.6875 64.546875 50.484375 64.296875 \nQ 54.296875 64.0625 56.9375 64.0625 \nQ 59.46875 64.0625 63.328125 64.359375 \nQ 67.1875 64.65625 67.875 64.65625 \nQ 68.0625 64.0625 68.0625 63.1875 \nQ 68.0625 62.015625 67.671875 62.015625 \nQ 66.703125 62.015625 63.421875 61.234375 \nQ 60.15625 60.453125 59.96875 59.765625 \nQ 59.1875 56.734375 59.1875 50.6875 \nL 59.1875 13.578125 \nQ 59.1875 7.515625 59.46875 -0.09375 \nQ 59.078125 -0.484375 57.625 -0.484375 \nQ 55.953125 -0.484375 54.390625 1.765625 \nL 16.5 55.46875 \nL 16.5 13.765625 \nQ 16.5 7.328125 17.1875 4.6875 \nQ 17.390625 4 20.453125 3.265625 \nQ 23.53125 2.546875 24.515625 2.546875 \nQ 24.8125 2.546875 24.859375 1.375 \nQ 24.90625 0.203125 24.703125 -0.296875 \nQ 14.9375 0.203125 13.484375 0.203125 \nL 2.25 -0.296875 \nQ 1.953125 0 1.953125 1.171875 \nQ 1.953125 2.546875 2.25 2.546875 \nQ 3.609375 2.546875 6.6875 3.265625 \nQ 9.765625 4 10.0625 4.890625 \nQ 11.03125 7.421875 11.03125 14.0625 \nL 11.03125 52.4375 \nQ 11.03125 57.234375 10.359375 59.765625 \nQ 10.0625 60.546875 7.03125 61.171875 \nQ 4 61.8125 2.640625 61.8125 \nQ 2.25 61.8125 2.25 63.03125 \nQ 2.25 64.265625 2.640625 64.65625 \nQ 10.25 64.453125 12.59375 64.453125 \nQ 17.671875 64.453125 20.40625 64.65625 \nQ 24.03125 58.015625 53.515625 16.796875 \nQ 53.8125 18.453125 53.8125 20.796875 \nz\n\" id=\"CrimsonText-Regular-78\"></path>\n      <path d=\"M 42.484375 33.296875 \nL 42.484375 13.765625 \nQ 42.484375 9.578125 43.171875 6.34375 \nQ 43.359375 5.671875 44.234375 5.28125 \nQ 45.125 4.890625 46.09375 4.78125 \nQ 47.078125 4.6875 48.046875 4.6875 \nL 48.921875 4.59375 \nQ 49.21875 4.5 49.21875 3.515625 \nQ 49.21875 3.21875 48.96875 2.578125 \nQ 48.734375 1.953125 48.4375 1.953125 \nQ 46.96875 1.859375 45.15625 1.5625 \nQ 43.359375 1.265625 41.796875 0.875 \nQ 40.234375 0.484375 38.859375 0.09375 \nQ 37.5 -0.296875 36.71875 -0.59375 \nL 35.84375 -0.78125 \nQ 35.0625 -0.78125 35.0625 0.78125 \nL 35.0625 5.765625 \nL 34.859375 6.25 \nQ 28.421875 -0.6875 22.078125 -0.6875 \nQ 18.453125 -0.6875 15.859375 1.125 \nQ 13.28125 2.9375 12.0625 5.90625 \nQ 10.84375 8.890625 10.34375 11.671875 \nQ 9.859375 14.453125 9.859375 17.484375 \nL 9.859375 29.78125 \nQ 9.859375 33.59375 8.5 35.0625 \nQ 7.515625 36.234375 6.09375 36.671875 \nQ 4.6875 37.109375 3.75 37.109375 \nQ 2.828125 37.109375 2.828125 37.3125 \nQ 2.828125 39.65625 3.421875 39.75 \nQ 13.765625 41.3125 16.890625 42.28125 \nQ 17 42.28125 17.1875 42.328125 \nQ 17.390625 42.390625 17.390625 42.390625 \nQ 17.78125 42.390625 17.875 41.546875 \nQ 17.96875 40.71875 17.875 40.328125 \nQ 17.28125 35.640625 17.28125 33.109375 \nL 17.28125 19.921875 \nQ 17.28125 12.40625 19.53125 8.84375 \nQ 21.78125 5.28125 26.859375 5.28125 \nQ 29.78125 5.28125 32.421875 7.5625 \nQ 35.0625 9.859375 35.0625 11.53125 \nL 35.0625 29.78125 \nQ 35.0625 33.59375 33.6875 35.0625 \nQ 32.71875 36.234375 31.296875 36.671875 \nQ 29.890625 37.109375 28.953125 37.109375 \nQ 28.03125 37.109375 28.03125 37.3125 \nQ 28.03125 39.65625 28.609375 39.75 \nQ 38.96875 41.3125 42.09375 42.28125 \nQ 42.1875 42.28125 42.375 42.328125 \nQ 42.578125 42.390625 42.578125 42.390625 \nQ 42.96875 42.390625 43.0625 41.546875 \nQ 43.171875 40.71875 43.0625 40.328125 \nQ 42.484375 35.640625 42.484375 33.296875 \nz\n\" id=\"CrimsonText-Regular-117\"></path>\n      <path d=\"M 31.25 42.78125 \nQ 35.15625 42.78125 37.734375 40.671875 \nQ 40.328125 38.578125 41.3125 35.84375 \nQ 48.640625 42.78125 56.453125 42.78125 \nQ 68.75 42.78125 68.75 24.03125 \nL 68.75 13.1875 \nQ 68.75 7.515625 69.53125 4.5 \nQ 69.734375 3.8125 72.078125 3.171875 \nQ 74.421875 2.546875 75.390625 2.546875 \nQ 75.6875 2.546875 75.78125 1.375 \nQ 75.875 0.203125 75.6875 -0.296875 \nQ 65.921875 0.203125 65.234375 0.203125 \nQ 64.65625 0.203125 54.59375 -0.296875 \nQ 54.203125 0.09375 54.203125 1.3125 \nQ 54.203125 2.546875 54.59375 2.546875 \nQ 55.765625 2.546875 58.0625 3.171875 \nQ 60.359375 3.8125 60.546875 4.5 \nQ 61.234375 7.328125 61.234375 10.75 \nL 61.234375 21.78125 \nQ 61.234375 36.8125 51.375 36.8125 \nQ 47.75 36.8125 45.109375 34.71875 \nQ 42.484375 32.625 42.484375 31.25 \nL 42.578125 30.859375 \nQ 42.578125 30.46875 42.578125 30.375 \nQ 42.96875 27.9375 42.96875 23.34375 \nL 42.96875 12.3125 \nQ 42.96875 7.515625 43.75 4.5 \nQ 43.953125 3.8125 46.296875 3.171875 \nQ 48.640625 2.546875 49.609375 2.546875 \nQ 49.90625 2.546875 50 1.375 \nQ 50.09375 0.203125 49.90625 -0.296875 \nQ 40.140625 0.203125 39.453125 0.203125 \nQ 38.875 0.203125 28.8125 -0.296875 \nQ 28.421875 0.09375 28.421875 1.3125 \nQ 28.421875 2.546875 28.8125 2.546875 \nQ 29.984375 2.546875 32.28125 3.171875 \nQ 34.578125 3.8125 34.765625 4.5 \nQ 35.453125 7.328125 35.453125 11.328125 \nL 35.453125 21.296875 \nQ 35.453125 36.8125 26.078125 36.8125 \nQ 23.140625 36.8125 20.15625 34.609375 \nQ 17.1875 32.421875 17.1875 30.375 \nL 17.1875 13.1875 \nQ 17.1875 7.515625 17.96875 4.5 \nQ 18.171875 3.8125 20.515625 3.171875 \nQ 22.859375 2.546875 23.828125 2.546875 \nQ 24.125 2.546875 24.21875 1.375 \nQ 24.3125 0.203125 24.125 -0.296875 \nQ 14.359375 0.203125 13.671875 0.203125 \nQ 13.09375 0.203125 3.03125 -0.296875 \nQ 2.640625 0.09375 2.640625 1.3125 \nQ 2.640625 2.546875 3.03125 2.546875 \nQ 4.203125 2.546875 6.5 3.171875 \nQ 8.796875 3.8125 8.984375 4.5 \nQ 9.671875 7.328125 9.671875 11.328125 \nL 9.671875 29.78125 \nQ 9.671875 33.59375 8.296875 35.0625 \nQ 7.328125 36.234375 5.90625 36.671875 \nQ 4.5 37.109375 3.5625 37.109375 \nQ 2.640625 37.109375 2.640625 37.3125 \nQ 2.640625 39.65625 3.21875 39.75 \nQ 13.578125 41.3125 16.703125 42.28125 \nQ 16.796875 42.28125 16.984375 42.328125 \nQ 17.1875 42.390625 17.1875 42.390625 \nQ 17.578125 42.390625 17.671875 41.546875 \nQ 17.78125 40.71875 17.671875 40.328125 \nQ 17.28125 37.59375 17.28125 36.421875 \nQ 17.28125 36.03125 17.484375 36.03125 \nQ 17.578125 36.03125 17.78125 36.234375 \nQ 20.015625 38.578125 23.875 40.671875 \nQ 27.734375 42.78125 31.25 42.78125 \nz\n\" id=\"CrimsonText-Regular-109\"></path>\n      <path d=\"M 25 42.78125 \nQ 34.375 42.78125 39.6875 36.375 \nQ 45.015625 29.984375 45.015625 22.75 \nQ 45.015625 13.484375 38.125 6.4375 \nQ 31.25 -0.59375 22.953125 -0.59375 \nQ 19.34375 -0.59375 16.0625 0.046875 \nQ 12.796875 0.6875 12.3125 0.6875 \nQ 11.421875 0.6875 10.109375 0.140625 \nQ 8.796875 -0.390625 8.59375 -0.390625 \nQ 8.203125 -0.390625 7.375 -0.09375 \nQ 6.546875 0.203125 6.546875 0.59375 \nQ 6.546875 0.6875 6.828125 2.203125 \nQ 7.125 3.71875 7.421875 6.640625 \nQ 7.71875 9.578125 7.71875 13.1875 \nL 7.71875 53.609375 \nQ 7.71875 56.9375 7.125 59.859375 \nQ 6.640625 61.421875 2.15625 61.421875 \nL 1.265625 61.421875 \nQ 0.6875 61.421875 0.6875 62.5 \nQ 0.6875 64.0625 1.265625 64.0625 \nQ 4.203125 64.359375 6.6875 64.84375 \nQ 9.1875 65.328125 10.59375 65.8125 \nQ 12.015625 66.3125 12.984375 66.75 \nQ 13.96875 67.1875 14.453125 67.484375 \nL 14.84375 67.78125 \nL 15.046875 67.78125 \nQ 15.4375 67.78125 15.828125 67.234375 \nQ 16.21875 66.703125 16.3125 66.21875 \nQ 15.234375 63.09375 15.234375 57.71875 \nL 15.234375 40.625 \nQ 15.234375 39.546875 15.53125 39.546875 \nQ 15.625 39.546875 15.828125 39.65625 \nQ 17.1875 40.625 20.015625 41.703125 \nQ 22.859375 42.78125 25 42.78125 \nz\nM 21.875 37.984375 \nQ 19.140625 37.984375 17.1875 36.46875 \nQ 15.234375 34.96875 15.234375 32.125 \nL 15.234375 9.375 \nQ 15.234375 6.34375 18.109375 4.921875 \nQ 21 3.515625 24.8125 3.515625 \nQ 30.375 3.515625 33.5 8.78125 \nQ 36.625 14.0625 36.625 20.703125 \nQ 36.625 28.421875 32.5625 33.203125 \nQ 28.515625 37.984375 21.875 37.984375 \nz\n\" id=\"CrimsonText-Regular-98\"></path>\n      <path d=\"M 23.734375 38.875 \nQ 18.5625 38.875 15.28125 34.125 \nQ 12.015625 29.390625 12.015625 22.5625 \nQ 12.015625 14.546875 16.15625 8.828125 \nQ 20.3125 3.125 25.875 3.125 \nQ 31.0625 3.125 34.375 8 \nQ 37.703125 12.890625 37.703125 19.734375 \nQ 37.703125 27.640625 33.5 33.25 \nQ 29.296875 38.875 23.734375 38.875 \nz\nM 24.8125 42.671875 \nQ 33.59375 42.671875 39.84375 36.328125 \nQ 46.09375 29.984375 46.09375 21.09375 \nQ 46.09375 12.109375 39.984375 5.703125 \nQ 33.890625 -0.6875 25 -0.6875 \nQ 16.109375 -0.6875 9.859375 5.703125 \nQ 3.609375 12.109375 3.609375 21.09375 \nQ 3.609375 30.171875 9.65625 36.421875 \nQ 15.71875 42.671875 24.8125 42.671875 \nz\n\" id=\"CrimsonText-Regular-111\"></path>\n      <path d=\"M 11.140625 53.03125 \nQ 8.296875 55.859375 8.296875 57.90625 \nQ 8.296875 59.96875 9.71875 61.375 \nQ 11.140625 62.796875 13.1875 62.796875 \nQ 15.234375 62.796875 16.640625 61.375 \nQ 18.0625 59.96875 18.0625 57.90625 \nQ 18.0625 55.859375 16.640625 54.4375 \nQ 15.234375 53.03125 13.1875 53.03125 \nQ 11.140625 53.03125 8.296875 55.859375 \nz\nM 17.671875 13.1875 \nQ 17.671875 7.515625 18.453125 4.5 \nQ 18.65625 3.8125 21 3.171875 \nQ 23.34375 2.546875 24.3125 2.546875 \nQ 24.609375 2.546875 24.703125 1.375 \nQ 24.8125 0.203125 24.609375 -0.296875 \nQ 14.84375 0.203125 14.15625 0.203125 \nQ 13.484375 0.203125 3.515625 -0.296875 \nQ 3.125 0.09375 3.125 1.3125 \nQ 3.125 2.546875 3.515625 2.546875 \nQ 4.6875 2.546875 6.984375 3.171875 \nQ 9.28125 3.8125 9.46875 4.5 \nQ 10.15625 7.328125 10.15625 11.328125 \nL 10.15625 29.78125 \nQ 10.15625 33.59375 8.796875 35.0625 \nQ 7.8125 36.234375 6.390625 36.671875 \nQ 4.984375 37.109375 4.046875 37.109375 \nQ 3.125 37.109375 3.125 37.3125 \nQ 3.125 39.65625 3.71875 39.75 \nQ 14.0625 41.3125 17.1875 42.28125 \nL 17.390625 42.390625 \nQ 17.578125 42.390625 17.671875 42.390625 \nQ 18.0625 42.390625 18.15625 41.546875 \nQ 18.265625 40.71875 18.171875 40.328125 \nQ 17.671875 36.421875 17.671875 33.296875 \nz\n\" id=\"CrimsonText-Regular-105\"></path>\n      <path d=\"M 24.21875 38.875 \nQ 18.5625 38.875 15.328125 33.796875 \nQ 12.109375 28.71875 12.109375 21.96875 \nQ 12.109375 14.84375 15.921875 9.609375 \nQ 19.734375 4.390625 26.46875 4.390625 \nQ 29.78125 4.390625 31.640625 5.90625 \nQ 33.5 7.421875 33.5 9.96875 \nL 33.5 33.203125 \nQ 33.5 35.25 31.296875 37.0625 \nQ 29.109375 38.875 24.21875 38.875 \nz\nM 25.484375 42.96875 \nQ 29.6875 42.96875 32.8125 41.3125 \nQ 33.5 41.3125 33.5 43.0625 \nL 33.5 53.609375 \nQ 33.5 56.9375 32.90625 59.859375 \nQ 32.421875 61.421875 27.9375 61.421875 \nL 27.046875 61.421875 \nQ 26.46875 61.421875 26.46875 62.5 \nQ 26.46875 64.0625 27.046875 64.0625 \nQ 29.984375 64.359375 32.46875 64.84375 \nQ 34.96875 65.328125 36.375 65.8125 \nQ 37.796875 66.3125 38.765625 66.75 \nQ 39.75 67.1875 40.234375 67.484375 \nL 40.625 67.78125 \nL 40.828125 67.78125 \nQ 41.21875 67.78125 41.609375 67.234375 \nQ 42 66.703125 42.09375 66.21875 \nQ 41.015625 63.09375 41.015625 57.71875 \nL 41.015625 13.765625 \nQ 41.015625 9.078125 41.609375 6.34375 \nQ 41.796875 5.671875 42.671875 5.28125 \nQ 43.5625 4.890625 44.484375 4.78125 \nQ 45.40625 4.6875 46.296875 4.6875 \nL 47.171875 4.59375 \nQ 47.46875 4.5 47.46875 3.421875 \nQ 47.46875 1.953125 46.875 1.953125 \nQ 45.40625 1.859375 43.59375 1.5625 \nQ 41.796875 1.265625 40.1875 0.921875 \nQ 38.578125 0.59375 37.203125 0.25 \nQ 35.84375 -0.09375 34.96875 -0.390625 \nL 34.078125 -0.59375 \nQ 33.5 -0.59375 33.5 1.078125 \nL 33.5 2.25 \nQ 33.5 2.828125 33.109375 2.640625 \nQ 27.640625 -0.390625 22.75 -0.390625 \nQ 14.65625 -0.390625 9.1875 5.375 \nQ 3.71875 11.140625 3.71875 19.140625 \nQ 3.71875 28.609375 10.40625 35.78125 \nQ 17.09375 42.96875 25.484375 42.96875 \nz\n\" id=\"CrimsonText-Regular-100\"></path>\n      <path d=\"M 31.453125 42.78125 \nQ 38.28125 42.78125 41.015625 37.890625 \nQ 43.75 33.015625 43.75 22.078125 \nL 43.75 13.1875 \nQ 43.75 7.515625 44.53125 4.5 \nQ 44.734375 3.8125 47.078125 3.171875 \nQ 49.421875 2.546875 50.390625 2.546875 \nQ 50.6875 2.546875 50.78125 1.375 \nQ 50.875 0.203125 50.6875 -0.296875 \nQ 40.921875 0.203125 40.234375 0.203125 \nQ 40.046875 0.203125 29.984375 -0.296875 \nQ 29.59375 0.09375 29.59375 1.3125 \nQ 29.59375 2.546875 29.984375 2.546875 \nQ 31.15625 2.546875 33.25 3.171875 \nQ 35.359375 3.8125 35.546875 4.5 \nQ 36.234375 7.328125 36.234375 11.328125 \nL 36.234375 21.09375 \nQ 36.234375 30.171875 33.890625 33.484375 \nQ 31.546875 36.8125 26.265625 36.8125 \nQ 23.140625 36.8125 20.265625 34.515625 \nQ 17.390625 32.234375 17.390625 30.375 \nL 17.390625 13.1875 \nQ 17.390625 7.515625 18.171875 4.5 \nQ 18.359375 3.8125 20.703125 3.171875 \nQ 23.046875 2.546875 24.03125 2.546875 \nQ 24.3125 2.546875 24.40625 1.375 \nQ 24.515625 0.203125 24.3125 -0.296875 \nQ 14.546875 0.203125 13.875 0.203125 \nQ 13.28125 0.203125 3.21875 -0.296875 \nQ 2.828125 0.09375 2.828125 1.3125 \nQ 2.828125 2.546875 3.21875 2.546875 \nQ 4.390625 2.546875 6.6875 3.171875 \nQ 8.984375 3.8125 9.1875 4.5 \nQ 9.859375 7.328125 9.859375 11.328125 \nL 9.859375 29.78125 \nQ 9.859375 33.59375 8.5 35.0625 \nQ 7.515625 36.234375 6.09375 36.671875 \nQ 4.6875 37.109375 3.75 37.109375 \nQ 2.828125 37.109375 2.828125 37.3125 \nQ 2.828125 39.65625 3.421875 39.75 \nQ 13.765625 41.3125 16.890625 42.28125 \nQ 17 42.28125 17.1875 42.328125 \nQ 17.390625 42.390625 17.390625 42.390625 \nQ 17.78125 42.390625 17.875 41.546875 \nQ 17.96875 40.71875 17.875 40.328125 \nQ 17.484375 37.59375 17.484375 36.421875 \nQ 17.484375 36.03125 17.671875 36.03125 \nQ 17.78125 36.03125 17.96875 36.234375 \nQ 20.21875 38.578125 24.078125 40.671875 \nQ 27.9375 42.78125 31.453125 42.78125 \nz\n\" id=\"CrimsonText-Regular-110\"></path>\n     </defs>\n     <g transform=\"translate(17.367188 195.758672)rotate(-90)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-78\"></use>\n      <use x=\"70.410156\" xlink:href=\"#CrimsonText-Regular-117\"></use>\n      <use x=\"120.898438\" xlink:href=\"#CrimsonText-Regular-109\"></use>\n      <use x=\"199.023438\" xlink:href=\"#CrimsonText-Regular-98\"></use>\n      <use x=\"247.753906\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"289.746094\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"326.855469\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"349.21875\" xlink:href=\"#CrimsonText-Regular-111\"></use>\n      <use x=\"399.023438\" xlink:href=\"#CrimsonText-Regular-102\"></use>\n      <use x=\"428.417969\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"450.78125\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"487.890625\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"529.882812\" xlink:href=\"#CrimsonText-Regular-115\"></use>\n      <use x=\"564.941406\" xlink:href=\"#CrimsonText-Regular-105\"></use>\n      <use x=\"591.210938\" xlink:href=\"#CrimsonText-Regular-100\"></use>\n      <use x=\"639.746094\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"681.738281\" xlink:href=\"#CrimsonText-Regular-110\"></use>\n      <use x=\"734.765625\" xlink:href=\"#CrimsonText-Regular-116\"></use>\n      <use x=\"765.429688\" xlink:href=\"#CrimsonText-Regular-115\"></use>\n     </g>\n    </g>\n   </g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 19.867264 268.02 \nL 295.980548 268.02 \nL 295.980548 7.2 \nL 19.867264 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n    <g id=\"ytick_9\"></g>\n    <g id=\"ytick_10\"></g>\n    <g id=\"ytick_11\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 105.977298 246.558847 \nL 105.977298 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 146.422346 246.558847 \nL 146.422346 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 186.867393 246.558847 \nL 186.867393 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 227.312441 246.558847 \nL 227.312441 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 267.757488 246.558847 \nL 267.757488 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 216.225061 \nL 272.813119 216.225061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 190.946906 \nL 272.813119 190.946906 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 165.668752 \nL 272.813119 165.668752 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 140.390597 \nL 272.813119 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 115.112442 \nL 272.813119 115.112442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 89.834288 \nL 272.813119 89.834288 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 64.556133 \nL 272.813119 64.556133 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 39.277978 \nL 272.813119 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 60.47662 241.503216 \nL 277.86875 241.503216 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 274.951665 -42.65124 \nL 277.86875 -43.635691 \nL 274.951665 -44.620141 \nL 274.951665 -42.65124 \nL 277.86875 -43.635691 \n\" id=\"m9ab07ca738\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m9ab07ca738\" y=\"285.138906\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 65.532251 246.558847 \nL 65.532251 29.166716 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 66.565148 -252.397951 \nL 65.532251 -255.97219 \nL 64.499354 -252.397951 \nL 66.565148 -252.397951 \nL 65.532251 -255.97219 \n\" id=\"m0c1c9d11bb\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m0c1c9d11bb\" y=\"285.138906\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 105.977298 245.228417 \nL 105.977298 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 146.422346 245.228417 \nL 146.422346 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 186.867393 245.228417 \nL 186.867393 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 227.312441 245.228417 \nL 227.312441 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 267.757488 245.228417 \nL 267.757488 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 216.225061 \nL 69.257453 216.225061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 190.946906 \nL 69.257453 190.946906 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 165.668752 \nL 69.257453 165.668752 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 140.390597 \nL 69.257453 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 115.112442 \nL 69.257453 115.112442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 89.834288 \nL 69.257453 89.834288 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 64.556133 \nL 69.257453 64.556133 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 61.807049 39.277978 \nL 69.257453 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 224.819634 \nL 32.417868 213.697246 \nL 58.707149 213.697246 \nL 58.707149 224.819634 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 5,000 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n      <path d=\"M 11.53125 -1.375 \nQ 11.53125 0.390625 10.0625 3.421875 \nQ 8.59375 6.453125 8.59375 7.421875 \nQ 8.59375 9.578125 10.734375 11.078125 \nQ 12.890625 12.59375 15.625 12.59375 \nQ 16.890625 12.59375 17.96875 12.203125 \nQ 19.234375 10.359375 19.234375 5.953125 \nQ 19.234375 4.109375 19.046875 3.421875 \nQ 17.671875 -2.9375 15.234375 -6.890625 \nQ 12.796875 -10.84375 6.640625 -15.921875 \nL 6.546875 -15.921875 \nQ 6.15625 -15.921875 5.21875 -15.140625 \nQ 4.296875 -14.359375 4.296875 -13.765625 \nQ 4.296875 -13.578125 5.421875 -12.546875 \nQ 6.546875 -11.53125 7.90625 -10.15625 \nQ 9.28125 -8.796875 10.40625 -6.34375 \nQ 11.53125 -3.90625 11.53125 -1.375 \nz\n\" id=\"CrimsonText-Regular-44\"></path>\n     </defs>\n     <g transform=\"translate(26.629924 223.444519)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"70.703125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 5,000 -->\n     <g transform=\"translate(26.629924 223.444519)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"70.703125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 199.541479 \nL 32.417868 188.419091 \nL 58.707149 188.419091 \nL 58.707149 199.541479 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 10,000 -->\n     <g transform=\"translate(19.554143 198.166364)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.871094\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.136719\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.402344\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 10,000 -->\n     <g transform=\"translate(19.554143 198.166364)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.871094\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.136719\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.402344\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 174.263324 \nL 32.417868 163.140936 \nL 58.707149 163.140936 \nL 58.707149 174.263324 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 15,000 -->\n     <g transform=\"translate(19.54008 172.888209)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 15,000 -->\n     <g transform=\"translate(19.54008 172.888209)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 148.98517 \nL 32.417868 137.862782 \nL 58.707149 137.862782 \nL 58.707149 148.98517 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 20,000 -->\n     <g transform=\"translate(19.554143 147.610055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.871094\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.136719\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.402344\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 20,000 -->\n     <g transform=\"translate(19.554143 147.610055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.871094\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.136719\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.402344\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 123.707015 \nL 32.417868 112.584627 \nL 58.707149 112.584627 \nL 58.707149 123.707015 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 25,000 -->\n     <g transform=\"translate(19.54008 122.3319)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 25,000 -->\n     <g transform=\"translate(19.54008 122.3319)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 98.42886 \nL 32.417868 87.306472 \nL 58.707149 87.306472 \nL 58.707149 98.42886 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 30,000 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(19.54008 97.053745)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 30,000 -->\n     <g transform=\"translate(19.54008 97.053745)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.96875\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.234375\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.5\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 73.150706 \nL 32.417868 62.028318 \nL 58.707149 62.028318 \nL 58.707149 73.150706 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 35,000 -->\n     <g transform=\"translate(19.526018 71.775591)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.726562\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"118.066406\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.332031\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.597656\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 35,000 -->\n     <g transform=\"translate(19.526018 71.775591)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"94.726562\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"118.066406\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"165.332031\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.597656\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 32.417868 47.872551 \nL 32.417868 36.750163 \nL 58.707149 36.750163 \nL 58.707149 47.872551 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 40,000 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(19.582268 46.497436)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.335938\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.675781\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"164.941406\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.207031\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 40,000 -->\n     <g transform=\"translate(19.582268 46.497436)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.335938\" xlink:href=\"#CrimsonText-Regular-44\"></use>\n      <use x=\"117.675781\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"164.941406\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"212.207031\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 101.427231 256.164545 \nL 101.427231 245.042157 \nL 109.010677 245.042157 \nL 109.010677 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 2 -->\n     <g transform=\"translate(101.41527 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 2 -->\n     <g transform=\"translate(101.41527 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 141.872278 256.164545 \nL 141.872278 245.042157 \nL 149.455724 245.042157 \nL 149.455724 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 4 -->\n     <g transform=\"translate(141.888443 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 4 -->\n     <g transform=\"translate(141.888443 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 182.317326 256.164545 \nL 182.317326 245.042157 \nL 189.900772 245.042157 \nL 189.900772 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(182.305365 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 6 -->\n     <g transform=\"translate(182.305365 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 222.762373 256.164545 \nL 222.762373 245.042157 \nL 230.345819 245.042157 \nL 230.345819 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(222.750413 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 8 -->\n     <g transform=\"translate(222.750413 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 259.162916 256.164545 \nL 259.162916 245.042157 \nL 273.318682 245.042157 \nL 273.318682 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 10 -->\n     <g transform=\"translate(258.633432 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- 10 -->\n     <g transform=\"translate(258.633432 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(54.136837 251.62363)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(62.023657 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(279.943616 244.798528)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"m35df460c05\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#p542a9fb88b)\">\n     <use style=\"stroke:#000000;\" x=\"65.532251\" xlink:href=\"#m35df460c05\" y=\"140.390597\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p542a9fb88b)\" d=\"M 65.532251 140.390597 \nL 82.958474 135.529756 \nL 99.979436 130.556452 \nL 117.000397 125.349752 \nL 133.616098 120.031417 \nL 149.826538 114.608208 \nL 165.631717 109.087546 \nL 181.031635 103.477502 \nL 196.431553 97.629778 \nL 211.42621 91.697973 \nL 226.015606 85.691834 \nL 240.605002 79.444892 \nL 254.789136 73.131444 \nL 267.757488 67.144147 \nL 267.757488 67.144147 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p542a9fb88b\">\n   <rect height=\"260.82\" width=\"276.113284\" x=\"19.867264\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a curve\" class=\"sr-only\"><ul><li>The curve is in quadrant 1.</li>\n<li>The curve trends gradually up from left to right.&nbsp;</li>\n<li>The curve begins at the point (0 comma 20,000).</li>\n<li>The curve passes through the following points:<br>\n<ul>\n<li>(0 comma 20,000)</li>\n<li>approximately (5 comma 26,263)</li>\n<li>approximately (10 comma 34,488)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The graph shown models the number of residents of a certain city <math alttext=\"x\"><mi>x</mi>\n</math> years after <math alttext=\"2010\"><mn>2010</mn></math>. How many residents does this model estimate the city had in <math alttext=\"2010\"><mn>2010</mn></math>?</p>","type":"mcq","correct_answer":["C"]},"createDate":1730147357398,"updateDate":1730147357398}$SATQ$::jsonb, 1730147357398, 1730147357398),
    ($SATQ$2f4eafcc$SATQ$, $SATQ$752821ca-8045-45d2-afe6-e57b8760f5f1$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="275.22pt" version="1.1" viewBox="0 0 287.764248 275.22" width="287.764248pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a parabola in the x y plane with the origin labeled O. The x axis ranges from negative 2 to 2. The y axis ranges from negative 2 to 12. Refer to long description.">
 <defs>
  <style type="text/css">
*{stroke-linecap:butt;stroke-linejoin:round;}
  </style>
 </defs>
 <g id="figure_1">
  <g id="patch_1">
   <path d="M 0 275.22 
L 287.764248 275.22 
L 287.764248 0 
L 0 0 
z
" style="fill:none;"></path>
  </g>
  <g id="axes_1">
   <g id="patch_2">
    <path d="M 8.404248 260.46 
L 280.564248 260.46 
L 280.564248 10.98 
L 8.404248 10.98 
z
" style="fill:none;"></path>
   </g>
   <g id="matplotlib.axis_1"></g>
   <g id="matplotlib.axis_2"></g>
  </g>
  <g id="axes_2">
   <g id="patch_3">
    <path d="M 7.2 268.02 
L 276.098496 268.02 
L 276.098496 7.2 
L 7.2 7.2 
z
" style="fill:none;"></path>
   </g>
   <g id="matplotlib.axis_3">
    <g id="xtick_1"></g>
    <g id="xtick_2"></g>
    <g id="xtick_3"></g>
    <g id="xtick_4"></g>
    <g id="xtick_5"></g>
    <g id="xtick_6"></g>
    <g id="xtick_7"></g>
    <g id="xtick_8"></g>
    <g id="xtick_9"></g>
    <g id="xtick_10"></g>
    <g id="xtick_11"></g>
   </g>
   <g id="matplotlib.axis_4">
    <g id="ytick_1"></g>
    <g id="ytick_2"></g>
    <g id="ytick_3"></g>
    <g id="ytick_4"></g>
    <g id="ytick_5"></g>
    <g id="ytick_6"></g>
    <g id="ytick_7"></g>
   </g>
   <g id="LineCollection_1">
    <path clip-path="url(#p5f1a02bda2)" d="M 37.782876 255.11539 
L 37.782876 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 90.24064 255.11539 
L 90.24064 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 195.156167 255.11539 
L 195.156167 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 247.61393 255.11539 
L 247.61393 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 249.869614 
L 252.859706 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 234.881681 
L 252.859706 234.881681 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 204.905817 
L 252.859706 204.905817 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 189.917884 
L 252.859706 189.917884 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 174.929952 
L 252.859706 174.929952 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 159.942019 
L 252.859706 159.942019 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 144.954087 
L 252.859706 144.954087 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 129.966154 
L 252.859706 129.966154 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 114.978222 
L 252.859706 114.978222 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 99.99029 
L 252.859706 99.99029 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 85.002357 
L 252.859706 85.002357 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 70.014425 
L 252.859706 70.014425 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 55.026492 
L 252.859706 55.026492 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 40.03856 
L 252.859706 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#p5f1a02bda2)" d="M 32.5371 219.893749 
L 258.105483 219.893749 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 255.26462 -54.3418 
L 258.105483 -55.326251 
L 255.26462 -56.310702 
L 255.26462 -54.3418 
L 258.105483 -55.326251 
" id="m47de733c46" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p5f1a02bda2)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m47de733c46" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#p5f1a02bda2)" d="M 142.698403 255.11539 
L 142.698403 29.547007 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 143.704311 -242.098754 
L 142.698403 -245.672993 
L 141.692495 -242.098754 
L 143.704311 -242.098754 
L 142.698403 -245.672993 
" id="mdcf4ce7256" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p5f1a02bda2)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#mdcf4ce7256" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#p5f1a02bda2)" d="M 37.782876 223.759058 
L 37.782876 216.02844 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 90.24064 223.759058 
L 90.24064 216.02844 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 195.156167 223.759058 
L 195.156167 216.02844 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 247.61393 223.759058 
L 247.61393 216.02844 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 249.869614 
L 146.563712 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 234.881681 
L 146.563712 234.881681 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 204.905817 
L 146.563712 204.905817 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 189.917884 
L 146.563712 189.917884 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 174.929952 
L 146.563712 174.929952 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 159.942019 
L 146.563712 159.942019 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 144.954087 
L 146.563712 144.954087 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 129.966154 
L 146.563712 129.966154 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 114.978222 
L 146.563712 114.978222 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 99.99029 
L 146.563712 99.99029 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 85.002357 
L 146.563712 85.002357 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 70.014425 
L 146.563712 70.014425 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 55.026492 
L 146.563712 55.026492 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p5f1a02bda2)" d="M 138.833094 40.03856 
L 146.563712 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#p5f1a02bda2)" d="M 127.74794 256.164545 
L 127.74794 244.623837 
L 135.616605 244.623837 
L 135.616605 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#p5f1a02bda2)" d="M 119.616987 249.082747 
L 119.616987 253.541657 
L 130.10854 253.541657 
L 130.10854 249.082747 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_1">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- – -->
     <defs>
      <path d="M 2.734375 20.40625 
Q 2.734375 21.390625 3.078125 23.484375 
Q 3.421875 25.59375 4.109375 25.59375 
L 45.609375 25.59375 
Q 46.1875 25.59375 46.1875 24.703125 
Q 46.1875 23.734375 45.3125 20.21875 
Q 45.21875 19.921875 45.0625 19.765625 
Q 44.921875 19.625 44.734375 19.53125 
L 44.625 19.53125 
L 3.328125 19.53125 
Q 3.328125 19.53125 2.9375 19.734375 
Q 2.734375 20.015625 2.734375 20.40625 
z
" id="CrimsonText-Regular-8211"></path>
     </defs>
     <g transform="translate(120.437784 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_2">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 2 -->
     <defs>
      <path d="M 25 62.703125 
Q 31.546875 62.703125 35.296875 57.8125 
Q 39.0625 52.9375 39.0625 46.78125 
Q 39.0625 43.171875 37.84375 39.3125 
Q 36.625 35.453125 34.03125 31.4375 
Q 31.453125 27.4375 29.34375 24.453125 
Q 27.25 21.484375 23.53125 17.578125 
Q 19.828125 13.671875 18.40625 12.203125 
Q 17 10.75 13.875 7.71875 
Q 13.578125 7.234375 14.0625 7.03125 
L 32.90625 7.03125 
Q 35.640625 7.03125 36.859375 8.59375 
Q 38.09375 10.15625 39.359375 14.546875 
Q 39.75 15.625 40.71875 15.625 
Q 42 15.625 42.484375 15.234375 
Q 40.140625 3.515625 39.84375 1.5625 
Q 39.65625 0 37.890625 0 
L 5.859375 0 
Q 5.46875 0 5.125 1.125 
Q 4.78125 2.25 4.78125 2.9375 
Q 15.4375 13.671875 23.046875 25.234375 
Q 30.671875 36.8125 30.671875 44.828125 
Q 30.671875 50.09375 28.03125 52.96875 
Q 25.390625 55.859375 21.09375 55.859375 
Q 12.984375 55.859375 8.109375 47.75 
Q 7.515625 47.75 6.875 48.390625 
Q 6.25 49.03125 6.25 49.3125 
Q 6.546875 50.484375 7.859375 52.484375 
Q 9.1875 54.5 11.375 56.890625 
Q 13.578125 59.28125 17.234375 60.984375 
Q 20.90625 62.703125 25 62.703125 
z
" id="CrimsonText-Regular-50"></path>
     </defs>
     <g transform="translate(128.264472 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_3">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 2 -->
     <g transform="translate(128.264472 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#p5f1a02bda2)" d="M 127.74794 196.212816 
L 127.74794 184.672108 
L 135.616605 184.672108 
L 135.616605 196.212816 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_4">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 2 -->
     <g transform="translate(128.264472 194.657063)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_5">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 2 -->
     <g transform="translate(128.264472 194.657063)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#p5f1a02bda2)" d="M 127.74794 166.236951 
L 127.74794 154.696243 
L 135.616605 154.696243 
L 135.616605 166.236951 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_6">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 4 -->
     <defs>
      <path d="M 35.0625 62.984375 
Q 36.328125 62.984375 36.328125 62.015625 
L 36.328125 22.65625 
L 42.390625 22.65625 
Q 43.953125 22.65625 43.953125 17.96875 
Q 43.953125 17.390625 43.359375 17 
Q 43.359375 17 36.328125 17 
L 36.328125 -0.09375 
Q 36.03125 -0.59375 32.234375 -0.59375 
Q 28.609375 -0.59375 28.609375 0.203125 
L 28.609375 17 
L 3.90625 17 
Q 3.21875 17.875 3.21875 20.015625 
L 32.8125 61.8125 
Q 33.6875 62.984375 35.0625 62.984375 
z
M 28.609375 22.65625 
L 28.609375 48.640625 
Q 28.609375 49.515625 28.125 49.515625 
Q 28.125 49.421875 28.03125 49.3125 
L 10.25 23.828125 
Q 10.15625 23.734375 10.15625 23.53125 
Q 10.15625 22.65625 10.84375 22.65625 
z
" id="CrimsonText-Regular-52"></path>
     </defs>
     <g transform="translate(128.292597 164.681198)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_7">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 4 -->
     <g transform="translate(128.292597 164.681198)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#p5f1a02bda2)" d="M 127.74794 136.261086 
L 127.74794 124.720378 
L 135.616605 124.720378 
L 135.616605 136.261086 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_8">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 6 -->
     <defs>
      <path d="M 12.703125 20.515625 
Q 12.703125 13.671875 15.96875 8.4375 
Q 19.234375 3.21875 24.125 3.21875 
Q 28.421875 3.21875 31.640625 6.984375 
Q 34.859375 10.75 34.859375 17 
Q 34.859375 23.640625 31.6875 27.9375 
Q 28.515625 32.234375 22.359375 32.234375 
Q 19.734375 32.234375 17.28125 30.8125 
Q 14.84375 29.390625 14.15625 27.828125 
Q 12.796875 24.703125 12.703125 20.515625 
z
M 22.953125 -0.59375 
Q 14.84375 -0.59375 9.5625 5.703125 
Q 4.296875 12.015625 4.296875 20.3125 
Q 4.296875 27.9375 7.328125 34.96875 
Q 10.359375 42 15.484375 47.3125 
Q 20.609375 52.640625 26.515625 56.59375 
Q 32.421875 60.546875 39.0625 63.1875 
Q 39.65625 63.1875 40.484375 62.109375 
Q 41.3125 61.03125 41.3125 60.546875 
Q 31.453125 56.25 24.5625 50.140625 
Q 17.671875 44.046875 15.046875 34.375 
Q 14.84375 33.40625 15.140625 33.40625 
Q 15.328125 33.5 15.4375 33.59375 
Q 16.796875 34.671875 20.359375 35.9375 
Q 23.921875 37.203125 26.859375 37.203125 
Q 33.6875 37.203125 38.328125 31.484375 
Q 42.96875 25.78125 42.96875 19.046875 
Q 42.96875 10.9375 36.90625 5.171875 
Q 30.859375 -0.59375 22.953125 -0.59375 
z
" id="CrimsonText-Regular-54"></path>
     </defs>
     <g transform="translate(128.264472 134.705333)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_9">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 6 -->
     <g transform="translate(128.264472 134.705333)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#p5f1a02bda2)" d="M 127.74794 106.285221 
L 127.74794 94.744513 
L 135.616605 94.744513 
L 135.616605 106.285221 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_10">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 8 -->
     <defs>
      <path d="M 23.53125 2.640625 
Q 28.421875 2.640625 31.25 5.5625 
Q 34.078125 8.5 34.078125 13.484375 
Q 34.078125 16.3125 32.421875 19.09375 
Q 30.765625 21.875 28.21875 24.015625 
Q 25.6875 26.171875 24.265625 27.140625 
Q 22.859375 28.125 21.578125 28.8125 
Q 21.1875 29 21 29 
Q 20.703125 29 20.609375 28.90625 
Q 16.5 26.375 14.6875 23.1875 
Q 12.890625 20.015625 12.890625 15.328125 
Q 12.890625 9.671875 16.109375 6.15625 
Q 19.34375 2.640625 23.53125 2.640625 
z
M 23.53125 59.375 
Q 19.921875 59.375 17.53125 56.25 
Q 15.140625 53.125 15.140625 48.046875 
Q 15.140625 41.40625 25.296875 35.546875 
Q 25.6875 35.359375 25.875 35.359375 
Q 26.171875 35.359375 26.46875 35.546875 
Q 33.109375 39.9375 33.109375 47.46875 
Q 33.109375 52.046875 30.421875 55.703125 
Q 27.734375 59.375 23.53125 59.375 
z
M 24.125 62.796875 
Q 30.859375 62.796875 35.5 58.734375 
Q 40.140625 54.6875 40.140625 47.953125 
Q 40.140625 40.53125 29.203125 33.59375 
Q 28.515625 33.40625 29.203125 33.015625 
Q 34.28125 30.078125 38.140625 25.625 
Q 42 21.1875 42 16.3125 
Q 42 9.078125 36.375 4.09375 
Q 30.765625 -0.875 23.34375 -0.875 
Q 15.234375 -0.875 10.203125 3.515625 
Q 5.171875 7.90625 5.171875 15.046875 
Q 5.171875 16.3125 5.46875 17.53125 
Q 5.765625 18.75 6.109375 19.71875 
Q 6.453125 20.703125 7.234375 21.828125 
Q 8.015625 22.953125 8.546875 23.6875 
Q 9.078125 24.421875 10.15625 25.390625 
Q 11.234375 26.375 11.71875 26.8125 
Q 12.203125 27.25 13.46875 28.125 
Q 14.75 29 15.09375 29.25 
Q 15.4375 29.5 16.609375 30.28125 
L 17.875 31.0625 
Q 18.359375 31.34375 17.875 31.640625 
Q 14.0625 33.890625 10.984375 37.9375 
Q 7.90625 42 7.90625 46.875 
Q 7.90625 53.125 12.78125 57.953125 
Q 17.671875 62.796875 24.125 62.796875 
z
" id="CrimsonText-Regular-56"></path>
     </defs>
     <g transform="translate(128.264472 104.729468)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_11">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 8 -->
     <g transform="translate(128.264472 104.729468)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#p5f1a02bda2)" d="M 121.19072 76.309356 
L 121.19072 64.768648 
L 135.878894 64.768648 
L 135.878894 76.309356 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_12">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 10 -->
     <defs>
      <path d="M 12.796875 48.4375 
Q 12.203125 48.734375 11.609375 49.5625 
Q 11.03125 50.390625 11.03125 50.875 
Q 11.03125 51.265625 11.234375 51.46875 
Q 27.734375 62.703125 28.125 62.703125 
L 28.328125 62.703125 
Q 29.109375 62.703125 29.5 60.84375 
Q 28.515625 57.625 28.515625 51.65625 
L 28.515625 13.1875 
Q 28.515625 7.515625 29.296875 4.5 
Q 29.5 3.8125 32.171875 3.171875 
Q 34.859375 2.546875 35.84375 2.546875 
Q 36.234375 2.546875 36.234375 0.78125 
Q 36.234375 -0.09375 36.140625 -0.296875 
Q 26.375 0.203125 24.3125 0.203125 
Q 22.75 0.203125 12.984375 -0.296875 
Q 12.59375 0.09375 12.59375 1.3125 
Q 12.59375 2.546875 12.984375 2.546875 
Q 14.265625 2.546875 16.9375 3.171875 
Q 19.625 3.8125 19.828125 4.5 
Q 20.40625 6.84375 20.40625 10.0625 
L 20.40625 45.21875 
Q 20.40625 48.046875 20.203125 49.515625 
Q 20.015625 50.984375 19.765625 51.3125 
Q 19.53125 51.65625 19.046875 51.65625 
Q 18.453125 51.65625 17.328125 51.0625 
Q 16.21875 50.484375 14.75 49.609375 
Q 13.28125 48.734375 12.796875 48.4375 
z
" id="CrimsonText-Regular-49"></path>
      <path d="M 10.9375 31.25 
Q 10.9375 19.53125 14.359375 11.46875 
Q 17.78125 3.421875 23.140625 3.421875 
Q 29.390625 3.421875 32.859375 11.515625 
Q 36.328125 19.625 36.328125 31.734375 
Q 36.328125 43.359375 32.90625 51.125 
Q 29.5 58.890625 24.125 58.890625 
Q 18.171875 58.890625 14.546875 50.96875 
Q 10.9375 43.0625 10.9375 31.25 
z
M 2.34375 31.15625 
Q 2.34375 44.4375 8.109375 53.515625 
Q 13.875 62.59375 23.640625 62.59375 
Q 33.5 62.59375 39.203125 53.5625 
Q 44.921875 44.53125 44.921875 31.15625 
Q 44.921875 17.875 39.15625 8.78125 
Q 33.40625 -0.296875 23.640625 -0.296875 
Q 13.96875 -0.296875 8.15625 8.828125 
Q 2.34375 17.96875 2.34375 31.15625 
z
" id="CrimsonText-Regular-48"></path>
     </defs>
     <g transform="translate(121.174629 74.753603)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_13">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 10 -->
     <g transform="translate(121.174629 74.753603)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#p5f1a02bda2)" d="M 121.19072 46.333492 
L 121.19072 34.792784 
L 135.878894 34.792784 
L 135.878894 46.333492 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_14">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 12 -->
     <g transform="translate(121.174629 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_15">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 12 -->
     <g transform="translate(121.174629 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#p5f1a02bda2)" d="M 19.422659 228.286991 
L 19.422659 232.483612 
L 33.061677 232.483612 
L 33.061677 228.286991 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#p5f1a02bda2)" d="M 33.061677 235.1065 
L 33.061677 223.565792 
L 40.930342 223.565792 
L 40.930342 235.1065 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_16">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- – -->
     <g transform="translate(26.01381 233.813036)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_17">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 2 -->
     <g transform="translate(33.315921 233.813036)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_18">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 2 -->
     <g transform="translate(33.315921 233.813036)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#p5f1a02bda2)" d="M 242.892731 235.1065 
L 242.892731 223.565792 
L 250.761396 223.565792 
L 250.761396 235.1065 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_19">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 2 -->
     <g transform="translate(243.146974 233.813036)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_20">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- 2 -->
     <g transform="translate(243.146974 233.813036)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_21">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- O -->
     <defs>
      <path d="M 39.9375 61.03125 
Q 29.390625 61.03125 22.0625 50.140625 
Q 14.75 39.265625 14.75 26.078125 
Q 14.75 16.109375 19.09375 9.65625 
Q 23.4375 3.21875 31.453125 3.21875 
Q 41.609375 3.21875 49.03125 14.296875 
Q 56.453125 25.390625 56.453125 38.578125 
Q 56.453125 48.34375 52.15625 54.6875 
Q 47.859375 61.03125 39.9375 61.03125 
z
M 42.1875 65.140625 
Q 52.046875 65.140625 58.734375 57.765625 
Q 65.4375 50.390625 65.4375 39.9375 
Q 65.4375 29.390625 60.40625 19.921875 
Q 55.375 10.453125 46.875 4.734375 
Q 38.375 -0.984375 28.90625 -0.984375 
Q 18.453125 -0.984375 12.15625 6.484375 
Q 5.859375 13.96875 5.859375 25.296875 
Q 5.859375 35.453125 11.234375 44.78125 
Q 16.609375 54.109375 25 59.625 
Q 33.40625 65.140625 42.1875 65.140625 
z
" id="CrimsonText-Italic-79"></path>
     </defs>
     <g transform="translate(131.046292 230.27086)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_22">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- y -->
     <defs>
      <path d="M 21.09375 42.484375 
Q 24.03125 42.484375 25.921875 37.5 
Q 27.828125 32.515625 28.515625 24.453125 
Q 29.203125 16.40625 29.390625 11.859375 
Q 29.59375 7.328125 29.59375 2.734375 
Q 33.40625 7.421875 37.203125 14.6875 
Q 41.015625 21.96875 41.015625 27.828125 
Q 41.015625 33.59375 38.578125 38.28125 
Q 39.84375 42.484375 43.453125 42.484375 
Q 47.75 42.484375 47.75 34.765625 
Q 47.75 24.03125 39.34375 10.109375 
Q 30.953125 -3.8125 20.359375 -13.28125 
Q 9.765625 -22.75 3.21875 -22.75 
Q 0.6875 -22.75 -0.96875 -21.578125 
Q -2.640625 -20.40625 -2.640625 -18.75 
Q -2.640625 -15.625 -0.390625 -14.453125 
Q 1.765625 -15.71875 6.15625 -15.71875 
Q 14.265625 -15.71875 20.21875 -7.03125 
Q 22.46875 -3.71875 22.46875 6.0625 
Q 22.46875 10.84375 22.21875 15.578125 
Q 21.96875 20.3125 21.328125 25.296875 
Q 20.703125 30.28125 19.484375 33.34375 
Q 18.265625 36.421875 16.609375 36.421875 
Q 15.71875 36.421875 13.953125 34.765625 
Q 12.203125 33.109375 11.234375 31.84375 
Q 11.03125 31.84375 10.5 32.765625 
Q 9.96875 33.6875 9.96875 34.078125 
Q 10.546875 35.546875 14.59375 39.015625 
Q 18.65625 42.484375 21.09375 42.484375 
z
" id="CrimsonText-Italic-121"></path>
     </defs>
     <g transform="translate(139.189809 22.350767)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_23">
    <g clip-path="url(#p5f1a02bda2)">
     <!-- x -->
     <defs>
      <path d="M 20.3125 42.484375 
Q 24.421875 42.484375 26.953125 33.984375 
L 29 27.046875 
L 34.765625 36.921875 
Q 37.984375 42.484375 42.96875 42.484375 
Q 46.296875 42.484375 48.640625 40.53125 
Q 49.421875 38.96875 49.421875 37.984375 
Q 49.421875 36.53125 48.390625 35.5 
Q 47.359375 34.46875 46.296875 34.46875 
Q 45.015625 34.46875 43.40625 35.984375 
Q 41.796875 37.5 40.4375 37.5 
Q 39.265625 37.5 37.796875 34.96875 
L 30.46875 22.46875 
L 34.671875 8.6875 
Q 35.640625 5.375 37.3125 5.375 
Q 38.765625 5.375 40.421875 6.890625 
Q 42.09375 8.40625 42.78125 9.671875 
Q 43.171875 9.671875 43.75 8.890625 
Q 44.34375 8.109375 44.34375 7.71875 
Q 44.046875 6.0625 40.71875 2.78125 
Q 37.40625 -0.484375 34.375 -0.484375 
Q 30.28125 -0.484375 27.734375 8.015625 
L 25.484375 15.625 
L 19.34375 4.984375 
Q 16.109375 -0.59375 11.140625 -0.59375 
Q 7.8125 -0.59375 5.46875 1.375 
Q 4.6875 2.734375 4.6875 3.90625 
Q 4.6875 5.375 5.703125 6.390625 
Q 6.734375 7.421875 7.8125 7.421875 
Q 9.078125 7.421875 10.6875 5.90625 
Q 12.3125 4.390625 13.671875 4.390625 
Q 14.84375 4.390625 16.3125 6.9375 
L 24.03125 20.21875 
L 20.015625 33.296875 
Q 19.046875 36.625 17.390625 36.625 
Q 15.921875 36.625 14.25 35.109375 
Q 12.59375 33.59375 11.921875 32.328125 
Q 11.53125 32.328125 10.9375 33.109375 
Q 10.359375 33.890625 10.359375 34.28125 
Q 10.640625 35.9375 13.953125 39.203125 
Q 17.28125 42.484375 20.3125 42.484375 
z
" id="CrimsonText-Italic-120"></path>
     </defs>
     <g transform="translate(260.389509 223.189061)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-120"></use>
     </g>
    </g>
   </g>
   <g id="line2d_1">
    <defs>
     <path d="M 0 3 
C 0.795609 3 1.55874 2.683901 2.12132 2.12132 
C 2.683901 1.55874 3 0.795609 3 0 
C 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 
C 1.55874 -2.683901 0.795609 -3 0 -3 
C -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 
C -2.683901 -1.55874 -3 -0.795609 -3 0 
C -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 
C -1.55874 2.683901 -0.795609 3 0 3 
z
" id="m0c272d8048" style="stroke:#000000;"></path>
    </defs>
    <g clip-path="url(#p5f1a02bda2)">
     <use style="stroke:#000000;" x="142.698403" xlink:href="#m0c272d8048" y="114.978222"></use>
    </g>
   </g>
   <g id="line2d_2">
    <path clip-path="url(#p5f1a02bda2)" d="M 48.715957 34.798523 
L 53.761994 43.177285 
L 58.387529 50.45172 
L 63.013063 57.337715 
L 67.638597 63.835268 
L 72.264131 69.944381 
L 76.889666 75.665053 
L 81.094697 80.528588 
L 85.299728 85.071097 
L 89.504759 89.29258 
L 93.70979 93.193039 
L 97.914821 96.772472 
L 101.699349 99.719485 
L 105.483877 102.406467 
L 109.268405 104.833419 
L 113.052934 107.00034 
L 116.837462 108.907231 
L 120.62199 110.554091 
L 124.406518 111.940921 
L 128.191046 113.06772 
L 131.555071 113.851022 
L 134.919095 114.428867 
L 138.28312 114.801257 
L 141.647145 114.96819 
L 145.01117 114.929667 
L 148.375195 114.685688 
L 151.73922 114.236252 
L 155.103245 113.58136 
L 158.46727 112.721012 
L 162.251798 111.507536 
L 166.036326 110.03403 
L 169.820854 108.300493 
L 173.605382 106.306925 
L 177.38991 104.053327 
L 181.174438 101.539699 
L 184.958966 98.766039 
L 188.743494 95.732349 
L 192.948525 92.056609 
L 197.153556 88.059843 
L 201.358587 83.742052 
L 205.563619 79.103235 
L 209.76865 74.143393 
L 213.973681 68.862526 
L 218.599215 62.682787 
L 223.224749 56.114608 
L 227.850284 49.157988 
L 232.475818 41.812927 
L 236.680849 34.798523 
L 236.680849 34.798523 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="p5f1a02bda2">
   <rect height="260.82" width="268.898496" x="7.2" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a parabola" class="sr-only"><ul>
<li>The parabola opens upward.</li>
<li>The vertex is at the point (0 comma 7).</li>
<li>The parabola passes through the following points:<br>
<ul>
<li>(negative 1 comma StartFraction 26 Over 3 EndFraction)</li>
<li>(0 comma 7)</li>
<li>(1 comma StartFraction 26 Over 3 EndFraction)</li>
</ul>
</li>
</ul></div></figure></p>
<p style="text-align: left;">The parabola shown intersects the&nbsp;<em>y</em>-axis at the point <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext="y"><mi>y</mi>
</math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["7"]$SATQ$::jsonb, $SATQ$["7"]$SATQ$::jsonb, $SATQ$<p>The correct answer is <math alttext="7"><mn>7</mn>
</math>. It's given that the parabola intersects the <em>y</em>-axis at the point <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. The graph shows that the parabola intersects the <em>y</em>-axis at the point <math alttext="left parenthesis 0 comma 7 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>7</mn></mrow></mfenced></math>. Therefore, the value of <math alttext="y"><mi>y</mi>
</math> is <math alttext="7"><mn>7</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"2f4eafcc","external_id":"752821ca-8045-45d2-afe6-e57b8760f5f1","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"76e94451-5340-4887-bc33-96315fc042d9","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"E","score_band_range_cd":1,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 287.764248 275.22\" width=\"287.764248pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a parabola in the x y plane with the origin labeled O. The x axis ranges from negative 2 to 2. The y axis ranges from negative 2 to 12. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 287.764248 275.22 \nL 287.764248 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 8.404248 260.46 \nL 280.564248 260.46 \nL 280.564248 10.98 \nL 8.404248 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 276.098496 268.02 \nL 276.098496 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n    <g id=\"xtick_10\"></g>\n    <g id=\"xtick_11\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 37.782876 255.11539 \nL 37.782876 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 90.24064 255.11539 \nL 90.24064 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 195.156167 255.11539 \nL 195.156167 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 247.61393 255.11539 \nL 247.61393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 249.869614 \nL 252.859706 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 234.881681 \nL 252.859706 234.881681 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 204.905817 \nL 252.859706 204.905817 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 189.917884 \nL 252.859706 189.917884 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 174.929952 \nL 252.859706 174.929952 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 159.942019 \nL 252.859706 159.942019 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 144.954087 \nL 252.859706 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 129.966154 \nL 252.859706 129.966154 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 114.978222 \nL 252.859706 114.978222 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 99.99029 \nL 252.859706 99.99029 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 85.002357 \nL 252.859706 85.002357 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 70.014425 \nL 252.859706 70.014425 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 55.026492 \nL 252.859706 55.026492 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 40.03856 \nL 252.859706 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 219.893749 \nL 258.105483 219.893749 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 255.26462 -54.3418 \nL 258.105483 -55.326251 \nL 255.26462 -56.310702 \nL 255.26462 -54.3418 \nL 258.105483 -55.326251 \n\" id=\"m47de733c46\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m47de733c46\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 142.698403 255.11539 \nL 142.698403 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 143.704311 -242.098754 \nL 142.698403 -245.672993 \nL 141.692495 -242.098754 \nL 143.704311 -242.098754 \nL 142.698403 -245.672993 \n\" id=\"mdcf4ce7256\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mdcf4ce7256\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 37.782876 223.759058 \nL 37.782876 216.02844 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 90.24064 223.759058 \nL 90.24064 216.02844 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 195.156167 223.759058 \nL 195.156167 216.02844 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 247.61393 223.759058 \nL 247.61393 216.02844 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 249.869614 \nL 146.563712 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 234.881681 \nL 146.563712 234.881681 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 204.905817 \nL 146.563712 204.905817 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 189.917884 \nL 146.563712 189.917884 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 174.929952 \nL 146.563712 174.929952 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 159.942019 \nL 146.563712 159.942019 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 144.954087 \nL 146.563712 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 129.966154 \nL 146.563712 129.966154 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 114.978222 \nL 146.563712 114.978222 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 99.99029 \nL 146.563712 99.99029 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 85.002357 \nL 146.563712 85.002357 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 70.014425 \nL 146.563712 70.014425 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 55.026492 \nL 146.563712 55.026492 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 40.03856 \nL 146.563712 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 127.74794 256.164545 \nL 127.74794 244.623837 \nL 135.616605 244.623837 \nL 135.616605 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 119.616987 249.082747 \nL 119.616987 253.541657 \nL 130.10854 253.541657 \nL 130.10854 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(120.437784 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 127.74794 196.212816 \nL 127.74794 184.672108 \nL 135.616605 184.672108 \nL 135.616605 196.212816 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 194.657063)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 194.657063)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 127.74794 166.236951 \nL 127.74794 154.696243 \nL 135.616605 154.696243 \nL 135.616605 166.236951 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(128.292597 164.681198)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 164.681198)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 127.74794 136.261086 \nL 127.74794 124.720378 \nL 135.616605 124.720378 \nL 135.616605 136.261086 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 134.705333)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 134.705333)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 127.74794 106.285221 \nL 127.74794 94.744513 \nL 135.616605 94.744513 \nL 135.616605 106.285221 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 104.729468)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 8 -->\n     <g transform=\"translate(128.264472 104.729468)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 121.19072 76.309356 \nL 121.19072 64.768648 \nL 135.878894 64.768648 \nL 135.878894 76.309356 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(121.174629 74.753603)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 10 -->\n     <g transform=\"translate(121.174629 74.753603)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 121.19072 46.333492 \nL 121.19072 34.792784 \nL 135.878894 34.792784 \nL 135.878894 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 12 -->\n     <g transform=\"translate(121.174629 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 12 -->\n     <g transform=\"translate(121.174629 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 19.422659 228.286991 \nL 19.422659 232.483612 \nL 33.061677 232.483612 \nL 33.061677 228.286991 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 33.061677 235.1065 \nL 33.061677 223.565792 \nL 40.930342 223.565792 \nL 40.930342 235.1065 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- – -->\n     <g transform=\"translate(26.01381 233.813036)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(33.315921 233.813036)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(33.315921 233.813036)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 242.892731 235.1065 \nL 242.892731 223.565792 \nL 250.761396 223.565792 \nL 250.761396 235.1065 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(243.146974 233.813036)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(243.146974 233.813036)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(131.046292 230.27086)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(139.189809 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(260.389509 223.189061)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"m0c272d8048\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <use style=\"stroke:#000000;\" x=\"142.698403\" xlink:href=\"#m0c272d8048\" y=\"114.978222\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 48.715957 34.798523 \nL 53.761994 43.177285 \nL 58.387529 50.45172 \nL 63.013063 57.337715 \nL 67.638597 63.835268 \nL 72.264131 69.944381 \nL 76.889666 75.665053 \nL 81.094697 80.528588 \nL 85.299728 85.071097 \nL 89.504759 89.29258 \nL 93.70979 93.193039 \nL 97.914821 96.772472 \nL 101.699349 99.719485 \nL 105.483877 102.406467 \nL 109.268405 104.833419 \nL 113.052934 107.00034 \nL 116.837462 108.907231 \nL 120.62199 110.554091 \nL 124.406518 111.940921 \nL 128.191046 113.06772 \nL 131.555071 113.851022 \nL 134.919095 114.428867 \nL 138.28312 114.801257 \nL 141.647145 114.96819 \nL 145.01117 114.929667 \nL 148.375195 114.685688 \nL 151.73922 114.236252 \nL 155.103245 113.58136 \nL 158.46727 112.721012 \nL 162.251798 111.507536 \nL 166.036326 110.03403 \nL 169.820854 108.300493 \nL 173.605382 106.306925 \nL 177.38991 104.053327 \nL 181.174438 101.539699 \nL 184.958966 98.766039 \nL 188.743494 95.732349 \nL 192.948525 92.056609 \nL 197.153556 88.059843 \nL 201.358587 83.742052 \nL 205.563619 79.103235 \nL 209.76865 74.143393 \nL 213.973681 68.862526 \nL 218.599215 62.682787 \nL 223.224749 56.114608 \nL 227.850284 49.157988 \nL 232.475818 41.812927 \nL 236.680849 34.798523 \nL 236.680849 34.798523 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p5f1a02bda2\">\n   <rect height=\"260.82\" width=\"268.898496\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a parabola\" class=\"sr-only\"><ul>\n<li>The parabola opens upward.</li>\n<li>The vertex is at the point (0 comma 7).</li>\n<li>The parabola passes through the following points:<br>\n<ul>\n<li>(negative 1 comma StartFraction 26 Over 3 EndFraction)</li>\n<li>(0 comma 7)</li>\n<li>(1 comma StartFraction 26 Over 3 EndFraction)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The parabola shown intersects the&nbsp;<em>y</em>-axis at the point <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"y\"><mi>y</mi>\n</math>?</p>","answerOptions":[],"keys":["7"],"correct_answer":["7"],"rationale":"<p>The correct answer is <math alttext=\"7\"><mn>7</mn>\n</math>. It's given that the parabola intersects the <em>y</em>-axis at the point <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. The graph shows that the parabola intersects the <em>y</em>-axis at the point <math alttext=\"left parenthesis 0 comma 7 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>7</mn></mrow></mfenced></math>. Therefore, the value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"7\"><mn>7</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357399,"pPcc":"SAT#P","questionId":"2f4eafcc","skill_cd":"P.C.","score_band_range_cd":1,"skill_desc":"Nonlinear functions","createDate":1730147357399,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"752821ca-8045-45d2-afe6-e57b8760f5f1","primary_class_cd":"P","uId":"76e94451-5340-4887-bc33-96315fc042d9","difficulty":"E"},"raw_detail":{"answerOptions":[],"externalid":"752821ca-8045-45d2-afe6-e57b8760f5f1","keys":["7"],"rationale":"<p>The correct answer is <math alttext=\"7\"><mn>7</mn>\n</math>. It's given that the parabola intersects the <em>y</em>-axis at the point <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. The graph shows that the parabola intersects the <em>y</em>-axis at the point <math alttext=\"left parenthesis 0 comma 7 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>7</mn></mrow></mfenced></math>. Therefore, the value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"7\"><mn>7</mn>\n</math>.</p>","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 287.764248 275.22\" width=\"287.764248pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a parabola in the x y plane with the origin labeled O. The x axis ranges from negative 2 to 2. The y axis ranges from negative 2 to 12. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 287.764248 275.22 \nL 287.764248 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 8.404248 260.46 \nL 280.564248 260.46 \nL 280.564248 10.98 \nL 8.404248 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 276.098496 268.02 \nL 276.098496 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n    <g id=\"xtick_10\"></g>\n    <g id=\"xtick_11\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 37.782876 255.11539 \nL 37.782876 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 90.24064 255.11539 \nL 90.24064 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 195.156167 255.11539 \nL 195.156167 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 247.61393 255.11539 \nL 247.61393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 249.869614 \nL 252.859706 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 234.881681 \nL 252.859706 234.881681 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 204.905817 \nL 252.859706 204.905817 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 189.917884 \nL 252.859706 189.917884 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 174.929952 \nL 252.859706 174.929952 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 159.942019 \nL 252.859706 159.942019 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 144.954087 \nL 252.859706 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 129.966154 \nL 252.859706 129.966154 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 114.978222 \nL 252.859706 114.978222 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 99.99029 \nL 252.859706 99.99029 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 85.002357 \nL 252.859706 85.002357 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 70.014425 \nL 252.859706 70.014425 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 55.026492 \nL 252.859706 55.026492 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 40.03856 \nL 252.859706 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 32.5371 219.893749 \nL 258.105483 219.893749 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 255.26462 -54.3418 \nL 258.105483 -55.326251 \nL 255.26462 -56.310702 \nL 255.26462 -54.3418 \nL 258.105483 -55.326251 \n\" id=\"m47de733c46\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m47de733c46\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 142.698403 255.11539 \nL 142.698403 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 143.704311 -242.098754 \nL 142.698403 -245.672993 \nL 141.692495 -242.098754 \nL 143.704311 -242.098754 \nL 142.698403 -245.672993 \n\" id=\"mdcf4ce7256\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mdcf4ce7256\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 37.782876 223.759058 \nL 37.782876 216.02844 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 90.24064 223.759058 \nL 90.24064 216.02844 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 195.156167 223.759058 \nL 195.156167 216.02844 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 247.61393 223.759058 \nL 247.61393 216.02844 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 249.869614 \nL 146.563712 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 234.881681 \nL 146.563712 234.881681 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 204.905817 \nL 146.563712 204.905817 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 189.917884 \nL 146.563712 189.917884 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 174.929952 \nL 146.563712 174.929952 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 159.942019 \nL 146.563712 159.942019 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 144.954087 \nL 146.563712 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 129.966154 \nL 146.563712 129.966154 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 114.978222 \nL 146.563712 114.978222 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 99.99029 \nL 146.563712 99.99029 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 85.002357 \nL 146.563712 85.002357 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 70.014425 \nL 146.563712 70.014425 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 55.026492 \nL 146.563712 55.026492 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 138.833094 40.03856 \nL 146.563712 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 127.74794 256.164545 \nL 127.74794 244.623837 \nL 135.616605 244.623837 \nL 135.616605 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 119.616987 249.082747 \nL 119.616987 253.541657 \nL 130.10854 253.541657 \nL 130.10854 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(120.437784 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 127.74794 196.212816 \nL 127.74794 184.672108 \nL 135.616605 184.672108 \nL 135.616605 196.212816 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 194.657063)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 194.657063)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 127.74794 166.236951 \nL 127.74794 154.696243 \nL 135.616605 154.696243 \nL 135.616605 166.236951 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(128.292597 164.681198)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 164.681198)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 127.74794 136.261086 \nL 127.74794 124.720378 \nL 135.616605 124.720378 \nL 135.616605 136.261086 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 134.705333)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 134.705333)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 127.74794 106.285221 \nL 127.74794 94.744513 \nL 135.616605 94.744513 \nL 135.616605 106.285221 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 104.729468)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 8 -->\n     <g transform=\"translate(128.264472 104.729468)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 121.19072 76.309356 \nL 121.19072 64.768648 \nL 135.878894 64.768648 \nL 135.878894 76.309356 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(121.174629 74.753603)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 10 -->\n     <g transform=\"translate(121.174629 74.753603)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 121.19072 46.333492 \nL 121.19072 34.792784 \nL 135.878894 34.792784 \nL 135.878894 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 12 -->\n     <g transform=\"translate(121.174629 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 12 -->\n     <g transform=\"translate(121.174629 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 19.422659 228.286991 \nL 19.422659 232.483612 \nL 33.061677 232.483612 \nL 33.061677 228.286991 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 33.061677 235.1065 \nL 33.061677 223.565792 \nL 40.930342 223.565792 \nL 40.930342 235.1065 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- – -->\n     <g transform=\"translate(26.01381 233.813036)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(33.315921 233.813036)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(33.315921 233.813036)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 242.892731 235.1065 \nL 242.892731 223.565792 \nL 250.761396 223.565792 \nL 250.761396 235.1065 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(243.146974 233.813036)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- 2 -->\n     <g transform=\"translate(243.146974 233.813036)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(131.046292 230.27086)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(139.189809 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(260.389509 223.189061)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"m0c272d8048\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#p5f1a02bda2)\">\n     <use style=\"stroke:#000000;\" x=\"142.698403\" xlink:href=\"#m0c272d8048\" y=\"114.978222\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p5f1a02bda2)\" d=\"M 48.715957 34.798523 \nL 53.761994 43.177285 \nL 58.387529 50.45172 \nL 63.013063 57.337715 \nL 67.638597 63.835268 \nL 72.264131 69.944381 \nL 76.889666 75.665053 \nL 81.094697 80.528588 \nL 85.299728 85.071097 \nL 89.504759 89.29258 \nL 93.70979 93.193039 \nL 97.914821 96.772472 \nL 101.699349 99.719485 \nL 105.483877 102.406467 \nL 109.268405 104.833419 \nL 113.052934 107.00034 \nL 116.837462 108.907231 \nL 120.62199 110.554091 \nL 124.406518 111.940921 \nL 128.191046 113.06772 \nL 131.555071 113.851022 \nL 134.919095 114.428867 \nL 138.28312 114.801257 \nL 141.647145 114.96819 \nL 145.01117 114.929667 \nL 148.375195 114.685688 \nL 151.73922 114.236252 \nL 155.103245 113.58136 \nL 158.46727 112.721012 \nL 162.251798 111.507536 \nL 166.036326 110.03403 \nL 169.820854 108.300493 \nL 173.605382 106.306925 \nL 177.38991 104.053327 \nL 181.174438 101.539699 \nL 184.958966 98.766039 \nL 188.743494 95.732349 \nL 192.948525 92.056609 \nL 197.153556 88.059843 \nL 201.358587 83.742052 \nL 205.563619 79.103235 \nL 209.76865 74.143393 \nL 213.973681 68.862526 \nL 218.599215 62.682787 \nL 223.224749 56.114608 \nL 227.850284 49.157988 \nL 232.475818 41.812927 \nL 236.680849 34.798523 \nL 236.680849 34.798523 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p5f1a02bda2\">\n   <rect height=\"260.82\" width=\"268.898496\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a parabola\" class=\"sr-only\"><ul>\n<li>The parabola opens upward.</li>\n<li>The vertex is at the point (0 comma 7).</li>\n<li>The parabola passes through the following points:<br>\n<ul>\n<li>(negative 1 comma StartFraction 26 Over 3 EndFraction)</li>\n<li>(0 comma 7)</li>\n<li>(1 comma StartFraction 26 Over 3 EndFraction)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The parabola shown intersects the&nbsp;<em>y</em>-axis at the point <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"y\"><mi>y</mi>\n</math>?</p>","type":"spr","correct_answer":["7"]},"createDate":1730147357399,"updateDate":1730147357399}$SATQ$::jsonb, 1730147357399, 1730147357399),
    ($SATQ$2f51abc2$SATQ$, $SATQ$72f977c3-5379-42b1-947f-d9fc4dbc27fb$SATQ$::uuid, $SATQ$c794eadb-9047-4fe9-ac05-64d5dd88c0ae$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="f left parenthesis x right parenthesis equals StartAbsoluteValue 59 minus 2 x EndAbsoluteValue"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced open="|" close="|"><mrow><mrow><mn>59</mn></mrow><mo>-</mo><mn>2</mn><mi>x</mi></mrow></mfenced></math></p>
<p style="text-align: left;">The function <math alttext="f"><mi>f</mi>
</math> is defined by the given equation. For which of the following values of <math alttext="k"><mi>k</mi>
</math> does <math alttext="f left parenthesis k right parenthesis equals 3 k"><mi>f</mi><mfenced><mi>k</mi></mfenced><mo>=</mo><mn>3</mn><mi>k</mi></math>?</p>$SATQ$, $SATQ$[{"id":"586b3464-7b74-45eb-9fe4-9cbc9ebfd120","content":"<p><math alttext=\"StartFraction 59 Over 5 EndFraction\"><mfrac>\n\t<mn>59</mn>\n\t<mn>5</mn>\n</mfrac>\n</math></p>"},{"id":"6d3fd208-dc05-4280-9d02-38db22c098d6","content":"<p><math alttext=\"StartFraction 59 Over 2 EndFraction\"><mfrac>\n\t<mn>59</mn>\n\t<mn>2</mn>\n</mfrac>\n</math></p>"},{"id":"7b9dc388-0fd4-4e6f-a899-5a5232f8a6a7","content":"<p><math alttext=\"StartFraction 177 Over 5 EndFraction\"><mfrac>\n\t<mn>177</mn>\n\t<mn>5</mn>\n</mfrac>\n</math></p>"},{"id":"3f20ebb4-56b8-45d4-b826-e438257dac80","content":"<p><math alttext=\"59\"><mn>59</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["586b3464-7b74-45eb-9fe4-9cbc9ebfd120"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. The value of <math alttext="k"><mi>k</mi>
</math> for which <math alttext="f left parenthesis k right parenthesis equals 3 k"><mi>f</mi><mfenced><mi>k</mi></mfenced><mo>=</mo><mn>3</mn><mi>k</mi></math> can be found by substituting <math alttext="k"><mi>k</mi>
</math> for <math alttext="x"><mi>x</mi>
</math> and <math alttext="3 k"><mrow>
	<mn>3</mn>
	<mi>k</mi>
</mrow>
</math> for&nbsp;<math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> in the given equation, <math alttext="f left parenthesis x right parenthesis equals StartAbsoluteValue 59 minus 2 x EndAbsoluteValue"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced open="|" close="|"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>x</mi></mrow></mfenced></math>, which yields <math alttext="3 k equals StartAbsoluteValue 59 minus 2 k EndAbsoluteValue"><mn>3</mn><mi>k</mi><mo>=</mo><mfenced open="|" close="|"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></mrow></mfenced></math>. For this equation to be true, either&nbsp;<math alttext="minus 3 k equals 59 minus 2 k"><mo>-</mo><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math> or <math alttext="3 k equals 59 minus 2 k"><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math>. Adding <math alttext="2 k"><mrow>
	<mn>2</mn>
	<mi>k</mi>
</mrow>
</math> to both sides of the equation <math alttext="minus 3 k equals 59 minus 2 k"><mo>-</mo><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math> yields <math alttext="negative k equals 59"><mo>-</mo><mi>k</mi><mo>=</mo><mn>59</mn></math>. Dividing both sides of this equation by <math alttext="negative 1"><mo>-</mo><mn>1</mn>
</math> yields <math alttext="k equals negative 59"><mi>k</mi><mo>=</mo><mo>-</mo><mn>59</mn></math>. To check whether <math alttext="negative 59"><mo>-</mo><mn>59</mn>
</math> is the value of <math alttext="k"><mi>k</mi>
</math>, substituting <math alttext="negative 59"><mo>-</mo><mn>59</mn>
</math> for <math alttext="k"><mi>k</mi>
</math> in the equation <math alttext="3 k equals StartAbsoluteValue 59 minus 2 k EndAbsoluteValue"><mn>3</mn><mi>k</mi><mo>=</mo><mfenced open="|" close="|"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></mrow></mfenced></math> yields <math alttext="3 left parenthesis negative 59 right parenthesis equals StartAbsoluteValue 59 minus 2 left parenthesis negative 59 right parenthesis EndAbsoluteValue"><mn>3</mn><mfenced><mrow><mo>-</mo><mn>59</mn></mrow></mfenced><mo>=</mo><mfenced open="|" close="|"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mfenced><mrow><mo>-</mo><mn>59</mn></mrow></mfenced></mrow></mfenced></math>, which is equivalent to <math alttext="negative 177 equals StartAbsoluteValue 177 EndAbsoluteValue"><mo>-</mo><mn>177</mn><mo>=</mo><mfenced open="|" close="|"><mn>177</mn></mfenced></math>, or <math alttext="negative 177 equals 177"><mo>-</mo><mn>177</mn><mo>=</mo><mn>177</mn></math>, which isn't a true statement. Therefore, <math alttext="negative 59"><mo>-</mo><mn>59</mn>
</math> isn't the value of <math alttext="k"><mi>k</mi>
</math>. Adding <math alttext="2 k"><mrow>
	<mn>2</mn>
	<mi>k</mi>
</mrow>
</math> to both sides of the equation <math alttext="3 k equals 59 minus 2 k"><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math> yields <math alttext="5 k equals 59"><mn>5</mn><mi>k</mi><mo>=</mo><mn>59</mn></math>. Dividing both sides of this equation by <math alttext="5"><mn>5</mn>
</math> yields <math alttext="k equals StartFraction 59 Over 5 EndFraction"><mi>k</mi><mo>=</mo><mfrac><mn>59</mn><mn>5</mn></mfrac></math>. To check whether <math alttext="StartFraction 59 Over 5 EndFraction"><mfrac>
	<mn>59</mn>
	<mn>5</mn>
</mfrac>
</math> is the value of <math alttext="k"><mi>k</mi>
</math>, substituting <math alttext="StartFraction 59 Over 5 EndFraction"><mfrac>
	<mn>59</mn>
	<mn>5</mn>
</mfrac>
</math>&nbsp;for <math alttext="k"><mi>k</mi>
</math> in the equation&nbsp;<math alttext="3 k equals StartAbsoluteValue 59 minus 2 k EndAbsoluteValue"><mn>3</mn><mi>k</mi><mo>=</mo><mfenced open="|" close="|"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></mrow></mfenced></math> yields <math alttext="3 left parenthesis StartFraction 59 Over 5 EndFraction right parenthesis equals StartAbsoluteValue 59 minus 2 left parenthesis StartFraction 59 Over 5 EndFraction right parenthesis EndAbsoluteValue"><mn>3</mn><mfenced><mfrac><mn>59</mn><mn>5</mn></mfrac></mfenced><mo>=</mo><mfenced open="|" close="|"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mfenced><mfrac><mn>59</mn><mn>5</mn></mfrac></mfenced></mrow></mfenced></math>, which is equivalent to <math alttext="StartFraction 177 Over 5 EndFraction equals StartAbsoluteValue StartFraction 177 Over 5 EndFraction EndAbsoluteValue"><mfrac><mn>177</mn><mn>5</mn></mfrac><mo>=</mo><mfenced open="|" close="|"><mfrac><mn>177</mn><mn>5</mn></mfrac></mfenced></math>, or <math alttext="StartFraction 177 Over 5 EndFraction equals StartFraction 177 Over 5 EndFraction"><mfrac><mn>177</mn><mn>5</mn></mfrac><mo>=</mo><mfrac><mn>177</mn><mn>5</mn></mfrac></math>, which is a true statement. Therefore, the value of <math alttext="k"><mi>k</mi>
</math> for which <math alttext="f left parenthesis k right parenthesis equals 3 k"><mi>f</mi><mfenced><mi>k</mi></mfenced><mo>=</mo><mn>3</mn><mi>k</mi></math>&nbsp;is <math alttext="StartFraction 59 Over 5 EndFraction"><mfrac><mn>59</mn><mn>5</mn></mfrac></math>.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"2f51abc2","external_id":"72f977c3-5379-42b1-947f-d9fc4dbc27fb","disclosed_item_id":null,"source":"qbank","vaultid":"c794eadb-9047-4fe9-ac05-64d5dd88c0ae","uId":"4e3ad962-acda-4c81-9041-1cf91af25ed2","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"f left parenthesis x right parenthesis equals StartAbsoluteValue 59 minus 2 x EndAbsoluteValue\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mrow><mn>59</mn></mrow><mo>-</mo><mn>2</mn><mi>x</mi></mrow></mfenced></math></p>\n<p style=\"text-align: left;\">The function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by the given equation. For which of the following values of <math alttext=\"k\"><mi>k</mi>\n</math> does <math alttext=\"f left parenthesis k right parenthesis equals 3 k\"><mi>f</mi><mfenced><mi>k</mi></mfenced><mo>=</mo><mn>3</mn><mi>k</mi></math>?</p>","answerOptions":[{"id":"586b3464-7b74-45eb-9fe4-9cbc9ebfd120","content":"<p><math alttext=\"StartFraction 59 Over 5 EndFraction\"><mfrac>\n\t<mn>59</mn>\n\t<mn>5</mn>\n</mfrac>\n</math></p>"},{"id":"6d3fd208-dc05-4280-9d02-38db22c098d6","content":"<p><math alttext=\"StartFraction 59 Over 2 EndFraction\"><mfrac>\n\t<mn>59</mn>\n\t<mn>2</mn>\n</mfrac>\n</math></p>"},{"id":"7b9dc388-0fd4-4e6f-a899-5a5232f8a6a7","content":"<p><math alttext=\"StartFraction 177 Over 5 EndFraction\"><mfrac>\n\t<mn>177</mn>\n\t<mn>5</mn>\n</mfrac>\n</math></p>"},{"id":"3f20ebb4-56b8-45d4-b826-e438257dac80","content":"<p><math alttext=\"59\"><mn>59</mn>\n</math></p>"}],"keys":["586b3464-7b74-45eb-9fe4-9cbc9ebfd120"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. The value of <math alttext=\"k\"><mi>k</mi>\n</math> for which <math alttext=\"f left parenthesis k right parenthesis equals 3 k\"><mi>f</mi><mfenced><mi>k</mi></mfenced><mo>=</mo><mn>3</mn><mi>k</mi></math> can be found by substituting <math alttext=\"k\"><mi>k</mi>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"3 k\"><mrow>\n\t<mn>3</mn>\n\t<mi>k</mi>\n</mrow>\n</math> for&nbsp;<math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> in the given equation, <math alttext=\"f left parenthesis x right parenthesis equals StartAbsoluteValue 59 minus 2 x EndAbsoluteValue\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>x</mi></mrow></mfenced></math>, which yields <math alttext=\"3 k equals StartAbsoluteValue 59 minus 2 k EndAbsoluteValue\"><mn>3</mn><mi>k</mi><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></mrow></mfenced></math>. For this equation to be true, either&nbsp;<math alttext=\"minus 3 k equals 59 minus 2 k\"><mo>-</mo><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math> or <math alttext=\"3 k equals 59 minus 2 k\"><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math>. Adding <math alttext=\"2 k\"><mrow>\n\t<mn>2</mn>\n\t<mi>k</mi>\n</mrow>\n</math> to both sides of the equation <math alttext=\"minus 3 k equals 59 minus 2 k\"><mo>-</mo><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math> yields <math alttext=\"negative k equals 59\"><mo>-</mo><mi>k</mi><mo>=</mo><mn>59</mn></math>. Dividing both sides of this equation by <math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math> yields <math alttext=\"k equals negative 59\"><mi>k</mi><mo>=</mo><mo>-</mo><mn>59</mn></math>. To check whether <math alttext=\"negative 59\"><mo>-</mo><mn>59</mn>\n</math> is the value of <math alttext=\"k\"><mi>k</mi>\n</math>, substituting <math alttext=\"negative 59\"><mo>-</mo><mn>59</mn>\n</math> for <math alttext=\"k\"><mi>k</mi>\n</math> in the equation <math alttext=\"3 k equals StartAbsoluteValue 59 minus 2 k EndAbsoluteValue\"><mn>3</mn><mi>k</mi><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></mrow></mfenced></math> yields <math alttext=\"3 left parenthesis negative 59 right parenthesis equals StartAbsoluteValue 59 minus 2 left parenthesis negative 59 right parenthesis EndAbsoluteValue\"><mn>3</mn><mfenced><mrow><mo>-</mo><mn>59</mn></mrow></mfenced><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mfenced><mrow><mo>-</mo><mn>59</mn></mrow></mfenced></mrow></mfenced></math>, which is equivalent to <math alttext=\"negative 177 equals StartAbsoluteValue 177 EndAbsoluteValue\"><mo>-</mo><mn>177</mn><mo>=</mo><mfenced open=\"|\" close=\"|\"><mn>177</mn></mfenced></math>, or <math alttext=\"negative 177 equals 177\"><mo>-</mo><mn>177</mn><mo>=</mo><mn>177</mn></math>, which isn't a true statement. Therefore, <math alttext=\"negative 59\"><mo>-</mo><mn>59</mn>\n</math> isn't the value of <math alttext=\"k\"><mi>k</mi>\n</math>. Adding <math alttext=\"2 k\"><mrow>\n\t<mn>2</mn>\n\t<mi>k</mi>\n</mrow>\n</math> to both sides of the equation <math alttext=\"3 k equals 59 minus 2 k\"><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math> yields <math alttext=\"5 k equals 59\"><mn>5</mn><mi>k</mi><mo>=</mo><mn>59</mn></math>. Dividing both sides of this equation by <math alttext=\"5\"><mn>5</mn>\n</math> yields <math alttext=\"k equals StartFraction 59 Over 5 EndFraction\"><mi>k</mi><mo>=</mo><mfrac><mn>59</mn><mn>5</mn></mfrac></math>. To check whether <math alttext=\"StartFraction 59 Over 5 EndFraction\"><mfrac>\n\t<mn>59</mn>\n\t<mn>5</mn>\n</mfrac>\n</math> is the value of <math alttext=\"k\"><mi>k</mi>\n</math>, substituting <math alttext=\"StartFraction 59 Over 5 EndFraction\"><mfrac>\n\t<mn>59</mn>\n\t<mn>5</mn>\n</mfrac>\n</math>&nbsp;for <math alttext=\"k\"><mi>k</mi>\n</math> in the equation&nbsp;<math alttext=\"3 k equals StartAbsoluteValue 59 minus 2 k EndAbsoluteValue\"><mn>3</mn><mi>k</mi><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></mrow></mfenced></math> yields <math alttext=\"3 left parenthesis StartFraction 59 Over 5 EndFraction right parenthesis equals StartAbsoluteValue 59 minus 2 left parenthesis StartFraction 59 Over 5 EndFraction right parenthesis EndAbsoluteValue\"><mn>3</mn><mfenced><mfrac><mn>59</mn><mn>5</mn></mfrac></mfenced><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mfenced><mfrac><mn>59</mn><mn>5</mn></mfrac></mfenced></mrow></mfenced></math>, which is equivalent to <math alttext=\"StartFraction 177 Over 5 EndFraction equals StartAbsoluteValue StartFraction 177 Over 5 EndFraction EndAbsoluteValue\"><mfrac><mn>177</mn><mn>5</mn></mfrac><mo>=</mo><mfenced open=\"|\" close=\"|\"><mfrac><mn>177</mn><mn>5</mn></mfrac></mfenced></math>, or <math alttext=\"StartFraction 177 Over 5 EndFraction equals StartFraction 177 Over 5 EndFraction\"><mfrac><mn>177</mn><mn>5</mn></mfrac><mo>=</mo><mfrac><mn>177</mn><mn>5</mn></mfrac></math>, which is a true statement. Therefore, the value of <math alttext=\"k\"><mi>k</mi>\n</math> for which <math alttext=\"f left parenthesis k right parenthesis equals 3 k\"><mi>f</mi><mfenced><mi>k</mi></mfenced><mo>=</mo><mn>3</mn><mi>k</mi></math>&nbsp;is <math alttext=\"StartFraction 59 Over 5 EndFraction\"><mfrac><mn>59</mn><mn>5</mn></mfrac></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959829,"pPcc":"SAT#P","questionId":"2f51abc2","skill_cd":"P.C.","score_band_range_cd":6,"skill_desc":"Nonlinear functions","createDate":1691007959829,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"72f977c3-5379-42b1-947f-d9fc4dbc27fb","primary_class_cd":"P","uId":"4e3ad962-acda-4c81-9041-1cf91af25ed2","difficulty":"H"},"raw_detail":{"keys":["586b3464-7b74-45eb-9fe4-9cbc9ebfd120"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. The value of <math alttext=\"k\"><mi>k</mi>\n</math> for which <math alttext=\"f left parenthesis k right parenthesis equals 3 k\"><mi>f</mi><mfenced><mi>k</mi></mfenced><mo>=</mo><mn>3</mn><mi>k</mi></math> can be found by substituting <math alttext=\"k\"><mi>k</mi>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"3 k\"><mrow>\n\t<mn>3</mn>\n\t<mi>k</mi>\n</mrow>\n</math> for&nbsp;<math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> in the given equation, <math alttext=\"f left parenthesis x right parenthesis equals StartAbsoluteValue 59 minus 2 x EndAbsoluteValue\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>x</mi></mrow></mfenced></math>, which yields <math alttext=\"3 k equals StartAbsoluteValue 59 minus 2 k EndAbsoluteValue\"><mn>3</mn><mi>k</mi><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></mrow></mfenced></math>. For this equation to be true, either&nbsp;<math alttext=\"minus 3 k equals 59 minus 2 k\"><mo>-</mo><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math> or <math alttext=\"3 k equals 59 minus 2 k\"><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math>. Adding <math alttext=\"2 k\"><mrow>\n\t<mn>2</mn>\n\t<mi>k</mi>\n</mrow>\n</math> to both sides of the equation <math alttext=\"minus 3 k equals 59 minus 2 k\"><mo>-</mo><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math> yields <math alttext=\"negative k equals 59\"><mo>-</mo><mi>k</mi><mo>=</mo><mn>59</mn></math>. Dividing both sides of this equation by <math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math> yields <math alttext=\"k equals negative 59\"><mi>k</mi><mo>=</mo><mo>-</mo><mn>59</mn></math>. To check whether <math alttext=\"negative 59\"><mo>-</mo><mn>59</mn>\n</math> is the value of <math alttext=\"k\"><mi>k</mi>\n</math>, substituting <math alttext=\"negative 59\"><mo>-</mo><mn>59</mn>\n</math> for <math alttext=\"k\"><mi>k</mi>\n</math> in the equation <math alttext=\"3 k equals StartAbsoluteValue 59 minus 2 k EndAbsoluteValue\"><mn>3</mn><mi>k</mi><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></mrow></mfenced></math> yields <math alttext=\"3 left parenthesis negative 59 right parenthesis equals StartAbsoluteValue 59 minus 2 left parenthesis negative 59 right parenthesis EndAbsoluteValue\"><mn>3</mn><mfenced><mrow><mo>-</mo><mn>59</mn></mrow></mfenced><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mfenced><mrow><mo>-</mo><mn>59</mn></mrow></mfenced></mrow></mfenced></math>, which is equivalent to <math alttext=\"negative 177 equals StartAbsoluteValue 177 EndAbsoluteValue\"><mo>-</mo><mn>177</mn><mo>=</mo><mfenced open=\"|\" close=\"|\"><mn>177</mn></mfenced></math>, or <math alttext=\"negative 177 equals 177\"><mo>-</mo><mn>177</mn><mo>=</mo><mn>177</mn></math>, which isn't a true statement. Therefore, <math alttext=\"negative 59\"><mo>-</mo><mn>59</mn>\n</math> isn't the value of <math alttext=\"k\"><mi>k</mi>\n</math>. Adding <math alttext=\"2 k\"><mrow>\n\t<mn>2</mn>\n\t<mi>k</mi>\n</mrow>\n</math> to both sides of the equation <math alttext=\"3 k equals 59 minus 2 k\"><mn>3</mn><mi>k</mi><mo>=</mo><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></math> yields <math alttext=\"5 k equals 59\"><mn>5</mn><mi>k</mi><mo>=</mo><mn>59</mn></math>. Dividing both sides of this equation by <math alttext=\"5\"><mn>5</mn>\n</math> yields <math alttext=\"k equals StartFraction 59 Over 5 EndFraction\"><mi>k</mi><mo>=</mo><mfrac><mn>59</mn><mn>5</mn></mfrac></math>. To check whether <math alttext=\"StartFraction 59 Over 5 EndFraction\"><mfrac>\n\t<mn>59</mn>\n\t<mn>5</mn>\n</mfrac>\n</math> is the value of <math alttext=\"k\"><mi>k</mi>\n</math>, substituting <math alttext=\"StartFraction 59 Over 5 EndFraction\"><mfrac>\n\t<mn>59</mn>\n\t<mn>5</mn>\n</mfrac>\n</math>&nbsp;for <math alttext=\"k\"><mi>k</mi>\n</math> in the equation&nbsp;<math alttext=\"3 k equals StartAbsoluteValue 59 minus 2 k EndAbsoluteValue\"><mn>3</mn><mi>k</mi><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mi>k</mi></mrow></mfenced></math> yields <math alttext=\"3 left parenthesis StartFraction 59 Over 5 EndFraction right parenthesis equals StartAbsoluteValue 59 minus 2 left parenthesis StartFraction 59 Over 5 EndFraction right parenthesis EndAbsoluteValue\"><mn>3</mn><mfenced><mfrac><mn>59</mn><mn>5</mn></mfrac></mfenced><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mn>59</mn><mo>-</mo><mn>2</mn><mfenced><mfrac><mn>59</mn><mn>5</mn></mfrac></mfenced></mrow></mfenced></math>, which is equivalent to <math alttext=\"StartFraction 177 Over 5 EndFraction equals StartAbsoluteValue StartFraction 177 Over 5 EndFraction EndAbsoluteValue\"><mfrac><mn>177</mn><mn>5</mn></mfrac><mo>=</mo><mfenced open=\"|\" close=\"|\"><mfrac><mn>177</mn><mn>5</mn></mfrac></mfenced></math>, or <math alttext=\"StartFraction 177 Over 5 EndFraction equals StartFraction 177 Over 5 EndFraction\"><mfrac><mn>177</mn><mn>5</mn></mfrac><mo>=</mo><mfrac><mn>177</mn><mn>5</mn></mfrac></math>, which is a true statement. Therefore, the value of <math alttext=\"k\"><mi>k</mi>\n</math> for which <math alttext=\"f left parenthesis k right parenthesis equals 3 k\"><mi>f</mi><mfenced><mi>k</mi></mfenced><mo>=</mo><mn>3</mn><mi>k</mi></math>&nbsp;is <math alttext=\"StartFraction 59 Over 5 EndFraction\"><mfrac><mn>59</mn><mn>5</mn></mfrac></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"f left parenthesis x right parenthesis equals StartAbsoluteValue 59 minus 2 x EndAbsoluteValue\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced open=\"|\" close=\"|\"><mrow><mrow><mn>59</mn></mrow><mo>-</mo><mn>2</mn><mi>x</mi></mrow></mfenced></math></p>\n<p style=\"text-align: left;\">The function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by the given equation. For which of the following values of <math alttext=\"k\"><mi>k</mi>\n</math> does <math alttext=\"f left parenthesis k right parenthesis equals 3 k\"><mi>f</mi><mfenced><mi>k</mi></mfenced><mo>=</mo><mn>3</mn><mi>k</mi></math>?</p>","externalid":"72f977c3-5379-42b1-947f-d9fc4dbc27fb","templateid":"a6f597ab-667b-4c7f-94ad-7cb5ea819ccb","vaultid":"c794eadb-9047-4fe9-ac05-64d5dd88c0ae","type":"mcq","answerOptions":[{"id":"586b3464-7b74-45eb-9fe4-9cbc9ebfd120","content":"<p><math alttext=\"StartFraction 59 Over 5 EndFraction\"><mfrac>\n\t<mn>59</mn>\n\t<mn>5</mn>\n</mfrac>\n</math></p>"},{"id":"6d3fd208-dc05-4280-9d02-38db22c098d6","content":"<p><math alttext=\"StartFraction 59 Over 2 EndFraction\"><mfrac>\n\t<mn>59</mn>\n\t<mn>2</mn>\n</mfrac>\n</math></p>"},{"id":"7b9dc388-0fd4-4e6f-a899-5a5232f8a6a7","content":"<p><math alttext=\"StartFraction 177 Over 5 EndFraction\"><mfrac>\n\t<mn>177</mn>\n\t<mn>5</mn>\n</mfrac>\n</math></p>"},{"id":"3f20ebb4-56b8-45d4-b826-e438257dac80","content":"<p><math alttext=\"59\"><mn>59</mn>\n</math></p>"}],"correct_answer":["A"]},"createDate":1691007959829,"updateDate":1691007959829}$SATQ$::jsonb, 1691007959829, 1691007959829),
    ($SATQ$2f8a580c$SATQ$, $SATQ$84e5072e-3d6b-4453-a0ee-23b7b7999691$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">The function <math alttext="k"><mi>k</mi>
</math> is defined by&nbsp;<math alttext="k left parenthesis x right parenthesis equals x cubed plus 110"><mi>k</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>110</mn></mrow></math>. What is the value of&nbsp;<math alttext="k left parenthesis x right parenthesis"><mi>k</mi><mfenced><mi>x</mi></mfenced></math> when&nbsp;<math alttext="x equals 2"><mi>x</mi><mo>=</mo><mrow><mn>2</mn></mrow></math>?</p>$SATQ$, $SATQ$[{"id":"471ca431-f884-4e5a-a592-9fdd3263371c","content":"<p style=\"text-align: left;\"><math alttext=\"118\"><mn>118</mn>\n</math></p>"},{"id":"507bc356-6faa-41fd-aaee-58af5174bbb8","content":"<p style=\"text-align: left;\"><math alttext=\"116\"><mn>116</mn>\n</math></p>"},{"id":"044bd4b6-0c0a-4ed3-a412-ce8ea96a4a5f","content":"<p style=\"text-align: left;\"><math alttext=\"115\"><mn>115</mn>\n</math></p>"},{"id":"c7fc8408-3755-45f8-9e5c-f6d4a4cc9059","content":"<p style=\"text-align: left;\"><math alttext=\"110\"><mn>110</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["471ca431-f884-4e5a-a592-9fdd3263371c"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. Substituting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2"><mn>2</mn></math> for <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x"><mi>x</mi></math> in the given equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis 2 right parenthesis equals 2 cubed plus 110"><mi>k</mi><mo>(</mo><mn>2</mn><mo>)</mo><mo>=</mo><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>110</mn></math>, which is equivalent to&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis 2 right parenthesis equals 8 plus 110"><mi>k</mi><mo>(</mo><mn>2</mn><mo>)</mo><mo>=</mo><mn>8</mn><mo>+</mo><mn>110</mn></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis 2 right parenthesis equals 118"><mi>k</mi><mo>(</mo><mn>2</mn><mo>)</mo><mo>=</mo><mn>118</mn></math>. Therefore, the value of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis x right parenthesis"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x equals 2"><mi>x</mi><mo>=</mo><mn>2</mn></math> is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="118"><mn>118</mn></math>.</p>
<p style="text-align: left;">Choice B is incorrect. This is the value of&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis x right parenthesis"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x equals 2"><mi>x</mi><mo>=</mo><mn>2</mn></math>&nbsp;if&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis x right parenthesis equals 3 x plus 110"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>110</mn></math>, not&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis x right parenthesis equals x cubed plus 110"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>110</mn></math>.</p>
<p style="text-align: left;">Choice C is incorrect. This is the value of&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis x right parenthesis"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x equals 2"><mi>x</mi><mo>=</mo><mn>2</mn></math>&nbsp;if <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis x right parenthesis equals x plus 3 plus 110"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mi>x</mi><mo>+</mo><mn>3</mn><mo>+</mo><mn>110</mn></math>, not&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis x right parenthesis equals x cubed plus 110"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>110</mn></math>.</p>
<p style="text-align: left;">Choice D is incorrect. This is the value of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="k left parenthesis x right parenthesis"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x equals 0"><mi>x</mi><mo>=</mo><mn>0</mn></math>, not&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x equals 2"><mi>x</mi><mo>=</mo><mn>2</mn></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"2f8a580c","external_id":"84e5072e-3d6b-4453-a0ee-23b7b7999691","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"92851fc8-6d7b-40a7-b0a4-41fda4465bf5","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">The function <math alttext=\"k\"><mi>k</mi>\n</math> is defined by&nbsp;<math alttext=\"k left parenthesis x right parenthesis equals x cubed plus 110\"><mi>k</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>110</mn></mrow></math>. What is the value of&nbsp;<math alttext=\"k left parenthesis x right parenthesis\"><mi>k</mi><mfenced><mi>x</mi></mfenced></math> when&nbsp;<math alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mrow><mn>2</mn></mrow></math>?</p>","answerOptions":[{"id":"471ca431-f884-4e5a-a592-9fdd3263371c","content":"<p style=\"text-align: left;\"><math alttext=\"118\"><mn>118</mn>\n</math></p>"},{"id":"507bc356-6faa-41fd-aaee-58af5174bbb8","content":"<p style=\"text-align: left;\"><math alttext=\"116\"><mn>116</mn>\n</math></p>"},{"id":"044bd4b6-0c0a-4ed3-a412-ce8ea96a4a5f","content":"<p style=\"text-align: left;\"><math alttext=\"115\"><mn>115</mn>\n</math></p>"},{"id":"c7fc8408-3755-45f8-9e5c-f6d4a4cc9059","content":"<p style=\"text-align: left;\"><math alttext=\"110\"><mn>110</mn>\n</math></p>"}],"keys":["471ca431-f884-4e5a-a592-9fdd3263371c"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2\"><mn>2</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> in the given equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis 2 right parenthesis equals 2 cubed plus 110\"><mi>k</mi><mo>(</mo><mn>2</mn><mo>)</mo><mo>=</mo><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>110</mn></math>, which is equivalent to&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis 2 right parenthesis equals 8 plus 110\"><mi>k</mi><mo>(</mo><mn>2</mn><mo>)</mo><mo>=</mo><mn>8</mn><mo>+</mo><mn>110</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis 2 right parenthesis equals 118\"><mi>k</mi><mo>(</mo><mn>2</mn><mo>)</mo><mo>=</mo><mn>118</mn></math>. Therefore, the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mn>2</mn></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"118\"><mn>118</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the value of&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mn>2</mn></math>&nbsp;if&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis equals 3 x plus 110\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>110</mn></math>, not&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis equals x cubed plus 110\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>110</mn></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This is the value of&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mn>2</mn></math>&nbsp;if <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis equals x plus 3 plus 110\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mi>x</mi><mo>+</mo><mn>3</mn><mo>+</mo><mn>110</mn></math>, not&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis equals x cubed plus 110\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>110</mn></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This is the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 0\"><mi>x</mi><mo>=</mo><mn>0</mn></math>, not&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mn>2</mn></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1776362727993,"pPcc":"SAT#P","questionId":"2f8a580c","skill_cd":"P.C.","score_band_range_cd":2,"skill_desc":"Nonlinear functions","createDate":1776362727993,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"84e5072e-3d6b-4453-a0ee-23b7b7999691","primary_class_cd":"P","uId":"92851fc8-6d7b-40a7-b0a4-41fda4465bf5","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">The function <math alttext=\"k\"><mi>k</mi>\n</math> is defined by&nbsp;<math alttext=\"k left parenthesis x right parenthesis equals x cubed plus 110\"><mi>k</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>110</mn></mrow></math>. What is the value of&nbsp;<math alttext=\"k left parenthesis x right parenthesis\"><mi>k</mi><mfenced><mi>x</mi></mfenced></math> when&nbsp;<math alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mrow><mn>2</mn></mrow></math>?</p>","keys":["471ca431-f884-4e5a-a592-9fdd3263371c"],"answerOptions":[{"id":"471ca431-f884-4e5a-a592-9fdd3263371c","content":"<p style=\"text-align: left;\"><math alttext=\"118\"><mn>118</mn>\n</math></p>"},{"id":"507bc356-6faa-41fd-aaee-58af5174bbb8","content":"<p style=\"text-align: left;\"><math alttext=\"116\"><mn>116</mn>\n</math></p>"},{"id":"044bd4b6-0c0a-4ed3-a412-ce8ea96a4a5f","content":"<p style=\"text-align: left;\"><math alttext=\"115\"><mn>115</mn>\n</math></p>"},{"id":"c7fc8408-3755-45f8-9e5c-f6d4a4cc9059","content":"<p style=\"text-align: left;\"><math alttext=\"110\"><mn>110</mn>\n</math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice A is correct. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2\"><mn>2</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> in the given equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis 2 right parenthesis equals 2 cubed plus 110\"><mi>k</mi><mo>(</mo><mn>2</mn><mo>)</mo><mo>=</mo><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>110</mn></math>, which is equivalent to&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis 2 right parenthesis equals 8 plus 110\"><mi>k</mi><mo>(</mo><mn>2</mn><mo>)</mo><mo>=</mo><mn>8</mn><mo>+</mo><mn>110</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis 2 right parenthesis equals 118\"><mi>k</mi><mo>(</mo><mn>2</mn><mo>)</mo><mo>=</mo><mn>118</mn></math>. Therefore, the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mn>2</mn></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"118\"><mn>118</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the value of&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mn>2</mn></math>&nbsp;if&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis equals 3 x plus 110\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>110</mn></math>, not&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis equals x cubed plus 110\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>110</mn></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This is the value of&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mn>2</mn></math>&nbsp;if <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis equals x plus 3 plus 110\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mi>x</mi><mo>+</mo><mn>3</mn><mo>+</mo><mn>110</mn></math>, not&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis equals x cubed plus 110\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>110</mn></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This is the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"k left parenthesis x right parenthesis\"><mi>k</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 0\"><mi>x</mi><mo>=</mo><mn>0</mn></math>, not&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mn>2</mn></math>.</p>","externalid":"84e5072e-3d6b-4453-a0ee-23b7b7999691","correct_answer":["A"]},"createDate":1776362727993,"updateDate":1776362727993}$SATQ$::jsonb, 1776362727993, 1776362727993),
    ($SATQ$2f958af9$SATQ$, NULL, NULL, $SATQ$04588-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="standalone_statement style:1 ">
            <span class="math_expression ">
              <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_004_b40c8cad.png" alt="v squared equals, the fraction with numerator L T, and denominator m"></span></span>
          <p class="stem_paragraph ">The formula above expresses the square of the speed&nbsp;<span class="italic">v</span> of a wave moving along a string in terms of tension&nbsp;<span class="italic">T</span>, mass&nbsp;<span class="italic">m</span>, and length&nbsp;<span class="italic">L</span> of the string. What is <span class="italic">T</span> in terms of <span class="italic">m</span>, <span class="italic">v</span>, and <span class="italic">L</span> ?</p></p>
$SATQ$, $SATQ$[{"id":"a","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_000_c0f038ef.png\" alt=\"T equals, the fraction with numerator m v squared, and denominator L\"></span></span>\n"},{"id":"b","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_001_0343751e.png\" alt=\"T equals, the fraction with numerator m, and denominator v squared L, end fraction\"></span></span>\n"},{"id":"c","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_002_ea6dd447.png\" alt=\"T equals, the fraction with numerator m L, and denominator v squared, end fraction\"></span></span>\n"},{"id":"d","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_003_394e400e.png\" alt=\"T equals, the fraction with numerator L, and denominator m v squared, end fraction\"></span></span>\n"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice A is correct. To write the formula as <span class="italic">T</span> in terms of <span class="italic">m, v,</span> and <span class="italic">L </span>means to isolate <span class="italic">T</span> on one side of the equation. First, multiply both sides of the equation by <span class="italic">m</span>, which gives <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_005_82158289.png" alt="m v squared, equals the fraction with numerator m L T, and denominator m"></span>, which simplifies to <span class="italic">mv</span><sup>2 </sup>= <span class="italic">LT</span>. Next, divide both sides of the equation by <span class="italic">L</span>, which gives <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_006_be1428cb.png" alt="the fraction with numerator m v squared, and denominator L, equals the fraction with numerator L T, and denominator L"></span>, which simplifies to <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_007_c0f038ef.png" alt="T equals the fraction with numerator m v squared, and denominator L"></span>.<p>Choices B, C, and D are incorrect and may be the result of incorrectly applying operations to each side of the equation.</p></p>
$SATQ$, false, 8, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"2f958af9","external_id":null,"disclosed_item_id":"04588-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p class=\"standalone_statement style:1 \">\n            <span class=\"math_expression \">\n              <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_004_b40c8cad.png\" alt=\"v squared equals, the fraction with numerator L T, and denominator m\"></span></span>\n          <p class=\"stem_paragraph \">The formula above expresses the square of the speed&nbsp;<span class=\"italic\">v</span> of a wave moving along a string in terms of tension&nbsp;<span class=\"italic\">T</span>, mass&nbsp;<span class=\"italic\">m</span>, and length&nbsp;<span class=\"italic\">L</span> of the string. What is <span class=\"italic\">T</span> in terms of <span class=\"italic\">m</span>, <span class=\"italic\">v</span>, and <span class=\"italic\">L</span> ?</p></p>\n","answerOptions":[{"id":"a","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_000_c0f038ef.png\" alt=\"T equals, the fraction with numerator m v squared, and denominator L\"></span></span>\n"},{"id":"b","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_001_0343751e.png\" alt=\"T equals, the fraction with numerator m, and denominator v squared L, end fraction\"></span></span>\n"},{"id":"c","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_002_ea6dd447.png\" alt=\"T equals, the fraction with numerator m L, and denominator v squared, end fraction\"></span></span>\n"},{"id":"d","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_003_394e400e.png\" alt=\"T equals, the fraction with numerator L, and denominator m v squared, end fraction\"></span></span>\n"}],"keys":null,"correct_answer":["A"],"rationale":"<p>Choice A is correct. To write the formula as <span class=\"italic\">T</span> in terms of <span class=\"italic\">m, v,</span> and <span class=\"italic\">L </span>means to isolate <span class=\"italic\">T</span> on one side of the equation. First, multiply both sides of the equation by <span class=\"italic\">m</span>, which gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_005_82158289.png\" alt=\"m v squared, equals the fraction with numerator m L T, and denominator m\"></span>, which simplifies to <span class=\"italic\">mv</span><sup>2 </sup>= <span class=\"italic\">LT</span>. Next, divide both sides of the equation by <span class=\"italic\">L</span>, which gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_006_be1428cb.png\" alt=\"the fraction with numerator m v squared, and denominator L, equals the fraction with numerator L T, and denominator L\"></span>, which simplifies to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2f958af9/img_007_c0f038ef.png\" alt=\"T equals the fraction with numerator m v squared, and denominator L\"></span>.<p>Choices B, C, and D are incorrect and may be the result of incorrectly applying operations to each side of the equation.</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":8,"raw_list":{"updateDate":1691007959628,"pPcc":"SAT#P","questionId":"2f958af9","skill_cd":"P.B.","score_band_range_cd":4,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1691007959628,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"04588-DC","external_id":null,"primary_class_cd":"P","uId":"c231b5bc-9dcf-4b98-9fd6-770121adba60","difficulty":"M"},"raw_detail":{"item_id":"04588-DC","section":"Math","prompt":"<p class=\"standalone_statement style:1 \">\n            <span class=\"math_expression \">\n              <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD8AAAAsCAYAAADSHWDqAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABiElEQVRoQ+2YgRHCIAxFOx4DMQ67sEo3iYGUEjm00JOa0rw7Tq9V8ZPkE7pIB8CDxRfjVtguvQGwgjNLuPd1fPq+aGB1YPDFemj680eLdStWZ1CEAdTSJr5zsUTjLaatcZjcbWJ6F0ssez1jGLdLh/Qullh66/fMYolFjNmBt+EHt2FxmvFp1W128T/+uN4pAvlH4yQX1FWs346FpsX6cWCiWFZHlF5joy/W7K6IfL/Z0eeHml2apNWEzpLMLrytjXL+4c3NVN1TD0OcVAI1o+CGU7r9VMQtohTPIk1byHvN1baU3XQOhqiyIaFZzFRt4hFlWv+xvsN8V4wM375S1M/0x/dMeya4LIFHEBzfOH866rcmO/rDoh6gdH9g1BVFNvlhBdtSt0aMd6FTlm48g1iLwsmU0ykTb+2Cp9yqcwOVhSXxPNJ/7E7HkYTy7rAmNJfGTOIr6VwexfcD2ejneFfzUSg7eabSmMrwaoetmtDydDoFWu8NQmkrfMADGEVRFEVRFKXKsrwAT0y62wj30PQAAAAASUVORK5CYII=\" alt=\"v squared equals, the fraction with numerator L T, and denominator m\"></span></span>\n          <p class=\"stem_paragraph \">The formula above expresses the square of the speed&nbsp;<span class=\"italic\">v</span> of a wave moving along a string in terms of tension&nbsp;<span class=\"italic\">T</span>, mass&nbsp;<span class=\"italic\">m</span>, and length&nbsp;<span class=\"italic\">L</span> of the string. What is <span class=\"italic\">T</span> in terms of <span class=\"italic\">m</span>, <span class=\"italic\">v</span>, and <span class=\"italic\">L</span> ?</p></p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEMAAAA0CAYAAADR7YUKAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAaPUZr5AAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABg0lEQVRoQ+2Xga3DIAxEMx4DMQ67ZJVs4mIcyBW5X9VX+/WJ70moCbRVfTnOdLs7smfRFxtZdhG9joccRdKWpBwmQBMmFam38QRpxed9FC7VFzmyO5DQzkDMFZtUowQXomUHhTi7yRWiy3CUVH+wBpxZuk6NALQ1m0u1Mp3bc72fMkDqXUn2ubmbLEUrLueR+N3edWkIYE/a1ptAsxjgBBTwGgt0kx5w+GO7GF0IBYtFYdoauKK9eVV64Rhy3n6/tlJl2gbe+5dkfsrKnAnjyZ9z2C77GrpoWV4WDpbvxY/8AAE8MZfEe6pz4cq8LRQVMZX9Pq74TV6cU9ByP+SKYcn2pa/Ht5R/t3Brvc+dwj77RVd4Fg2LZ9uwmEVv0K8/wdzmPPpW0sufxtLu8vp7WP4wPId7/sHw8dqcR4ht4vX3sLwTniEY1md4VhUWOWzxhAzwhAzwhAww5E94QgYYngDDE2B4Ai08+XeB4fkEwxPo4amX3mCoEkIIIYQQQgi5K9v2ABP6w9JUn10zAAAAAElFTkSuQmCC\" alt=\"T equals, the fraction with numerator m v squared, and denominator L\"></span></span>\n"},"b":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAAAmCAYAAAB0xJ2ZAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAATRJrTQAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABcUlEQVRoQ+1Y0RWDIAxkPAZiHHZhFTehgRhBXmrBvmoTvD6eFL8uyR2JRgIWb6MxLgb4OWNgD8uF9Fzf4Zn1Sz5Th+ASYQfkUxAAi4+2IR2Dgye+T//VIG5ZL+QoAHXGMQA2wpGyAKxkoeIPyRaZaAsAU9pZEtZH4J/PQBPR2/2ZGrwlu5pgAslEnQkS2Z3WGbIok0f/5/W/lRVsj9bVJdZLFq/JIomvoVZTveBKbypgmSk0lV60Vw+H0qEdL3FVxN2zU+FCA9yq5KbFo3eoUCsBtUNFL3oMUC22sp7WAP+8AUJ/In+ZTKbtxJeDMZNUM+FKmijXic16ugqoQWbdetWFTdx9ODJq9VPspy5V9BTLNWD1YNbeAhxEN3E5e20AqoxjdqkHoFVuAfFTLJI9T0i8AbKNzoCexRtgfbVR9keyKf4zXk26lUMPsgFK7wwTCevDcPbFGyChOP1YJtV0gFj640TIANOWW2KN8cGDX8OYF4wvwNXlqqgcAAAAAElFTkSuQmCC\" alt=\"T equals, the fraction with numerator m, and denominator v squared L, end fraction\"></span></span>\n"},"c":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD0AAAAsCAYAAADW6LDXAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABh0lEQVRoQ+1Y0a3DIAzMeAzEOOzCKtnEz2BM/HhOX0vVSsachEId5ePw+Wx6WAdAhoiPkE5oofUBZ4KAj5jBD+kzBSQbABNtkzQRiChYkiyG4MAUXu8oJqWcI8ZCAuTcY6ZQCcSIhAtxRJMuvupEIUd8tvdINYXrYMyBDYkJ1VgjLTNLpEnO5k1MMyRJsIVECZREGzcxKdsW+lOvXc4tZt7EbgmKeh3lXL8ZDsoMmOCv2lXqleTM9WzdxGbqWTmUl9BPDbeP1qdc8j+CLdRaGmWWD6pstfWyuZlvBTMw3wpmYL4VzGBsHxq4BMr20TKhFvOtYAZfNLGuhi8uHVr70LCUvLX+uDyeMbGl0CXrysSMDSXkP+wfDkpS3rjq73IAq5dlJSnKkErTmQG7yLQEG7AVL3ob7m6Ez06PZqANSfIyNLr3Eqjj8EhaZJbGZe7RvIy7NxG8SLi48qrDx2pyHiHbEGd5+T8qJdFR6kujOHhI2UeWGZdDO5qpSdaOsryxsbGxcYvj+AEirb3YDHEqgwAAAABJRU5ErkJggg==\" alt=\"T equals, the fraction with numerator m L, and denominator v squared, end fraction\"></span></span>\n"},"d":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEMAAAAsCAYAAAA+aAX8AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABgklEQVRoQ+2YgY0DIQwEKY+CKIdeaOU68RuMYR+R5BTp8wE8EsoJclK82GuIWxGiRIE/fLyoTp0LXZE8f4REJsYVPYvgiRPDxEjBkfORWIuzxSCWIHoWg2ukTp2LmSdg5gmYeQLFPF3gYjHzNPNUPmKeTXF+fDb+28HVPPPjbPyJqVr7Aqx9Ada+gDtnfy2l/PhsLJ1d1r6AD5pny54vGHMoBV587RdHlImYpx13C/bHSaWlvpknq7DhYUs8UD3s4PKXze3NoAhzqgWU4KHkxQasORSOzgxEm8NOfvgWdguv3D1Rfx399AtH/WqAsiZzem+aHRDxojl2k6UowYXQHF/Tm5eaALLTsl4EGsWATEAB+1igm/SLX/+xKgbeoDFYFKasQVaUL6+KBo4mN6t3vEjKO3199v0lGXc5M3pC2/k6h+1S17b4E/th4JDyGnzzDxBgJuaSzHZ1DDwzlkUmi+hj2icr3vGLOgUtd4OsyNwNXFrv704h726SFYZhGMbyOPcDxkjD0uJk1SsAAAAASUVORK5CYII=\" alt=\"T equals, the fraction with numerator L, and denominator m v squared, end fraction\"></span></span>\n"}},"correct_choice":"a","rationale":"<p>Choice A is correct. To write the formula as <span class=\"italic\">T</span> in terms of <span class=\"italic\">m, v,</span> and <span class=\"italic\">L </span>means to isolate <span class=\"italic\">T</span> on one side of the equation. First, multiply both sides of the equation by <span class=\"italic\">m</span>, which gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF0AAAAsCAYAAAAHD7SnAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACHUlEQVR4Xu2YAZKDIAxFPR4H8jjexat4EzZAkEBTBdwp1v43w7QbdFZ/vh/qBHSsXe1MH2bZLJcyrN3sYiY3dzjenQ8U7LZYQx/zaqtEO2sSqGBbDIlnLGlYJ3pjkx5PEHAmLwY3UslOpE6ae42CdaaaWShE6kRsbdLj8QLOMwnuhCfYlTS1C23XmT55PuY1N6aG1iY9mpi1UVBfY9Gls4Powamt+dzTpEejZa0UmEsigohvXkTDzYXHWDrtk8jY4NJLFOxO5VrzIqo0cQjBLelC/IUNyLy3AosoKJ3qz2kwiXxKuDQGL/LLjX32wqLAWXYXAjukQbSmnHHbRXSE07vyXGnKEfH42y2i8cLkzX+CM4G5FJzKosVGua/aKO9Ba+xwbnlRT0ZzGhCkx44zyg1+5MJcqGUrfJHRchGSixNPg5KQa/U/lX0jStGFs2Wj0siz1LEvRCfjcfGUbjyJEkXPtlZCVNkAPydc7g8Gx0SBpZu0PJYrfzgnzWvHD8L9/7uOROlaR5nZu5O5JreBca52byv52Xh5K7CIiijOnu9CaK1p4ADNpaXAjjJOHK5ZZlm7Xf6z9OQ5l8RWEi5volbgsKXMdybhXLgcAABOSLEqtrEcqWn9Qpz+K62vQtzf4ALpR1oSNIqebZ2VjQfo5MrWGXSixcbZqxB/EOin51UIuMCVVyGgE+T5AGoF1l6FAAAAAAAAAAAA38I0/QFUWXmuVjW8BgAAAABJRU5ErkJggg==\" alt=\"m v squared, equals the fraction with numerator m L T, and denominator m\"></span>, which simplifies to <span class=\"italic\">mv</span><sup>2 </sup>= <span class=\"italic\">LT</span>. Next, divide both sides of the equation by <span class=\"italic\">L</span>, which gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFYAAAA0CAYAAAAQas+mAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAaPUZr5AAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB3ElEQVR4Xu2Zi7GDIBBFLY+CKMdebMVOCMtPwsP4VkHW5J4ZJgo67H/VTHdjFm3oxw9tFmPoGFzBrLNRkzLz6o3pjKxmY09h3Cs4Q+olGdHYeNWI2vYgYjvgo3UyNoCHGTXKoGxtClNvGOvyWcV+sD/27r8dX2vHGpXgynHkiKH4p4KtgY1knRVLlmYB4Tem5uI9ZadS8/Fr76mwaHte1MyUTiRN8VQwmpq8n+A6Yhe3sdapc0eP2aVkTB+Bft1tXBo2i9DcGdsY81SQOzxMHcJ1RJVYT3LFo2HzGpMbLjeyWzsh/F1w62UzXaIRKYPDVLU+buXCUqR67Xop1PT7RLPGVUYfUaZC8mKYi5uTsHHtsiCd4NbLZkGya8QsFUov5sasOUYSTj+GfHlmhik+tWirpUKZ+gQJrOZFdLTWguSINo3rRH0NU2GOFw13w62X8frrjeufRnReLDbz98qNViIGDh3WRh5QBLfRAQDA00gN5GCgDv4Qf7w/cPSgtk+P8SxQCgAAvwr33VsyonT5pndpUbpwPxpLRpQuTb5VCkGMLmc+GktFlC5oXJ1A4+oEGlcnXLEX/P8WBzG6oHF1Ao2rE7HY02FtPKmhfZMuAAAAAAAAAAAAAABcYZpegYulkW2lAYEAAAAASUVORK5CYII=\" alt=\"the fraction with numerator m v squared, and denominator L, equals the fraction with numerator L T, and denominator L\"></span>, which simplifies to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEMAAAA0CAYAAADR7YUKAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAaPUZr5AAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABg0lEQVRoQ+2Xga3DIAxEMx4DMQ67ZJVs4mIcyBW5X9VX+/WJ70moCbRVfTnOdLs7smfRFxtZdhG9joccRdKWpBwmQBMmFam38QRpxed9FC7VFzmyO5DQzkDMFZtUowQXomUHhTi7yRWiy3CUVH+wBpxZuk6NALQ1m0u1Mp3bc72fMkDqXUn2ubmbLEUrLueR+N3edWkIYE/a1ptAsxjgBBTwGgt0kx5w+GO7GF0IBYtFYdoauKK9eVV64Rhy3n6/tlJl2gbe+5dkfsrKnAnjyZ9z2C77GrpoWV4WDpbvxY/8AAE8MZfEe6pz4cq8LRQVMZX9Pq74TV6cU9ByP+SKYcn2pa/Ht5R/t3Brvc+dwj77RVd4Fg2LZ9uwmEVv0K8/wdzmPPpW0sufxtLu8vp7WP4wPId7/sHw8dqcR4ht4vX3sLwTniEY1md4VhUWOWzxhAzwhAzwhAww5E94QgYYngDDE2B4Ai08+XeB4fkEwxPo4amX3mCoEkIIIYQQQgi5K9v2ABP6w9JUn10zAAAAAElFTkSuQmCC\" alt=\"T equals the fraction with numerator m v squared, and denominator L\"></span>.<p>Choices B, C, and D are incorrect and may be the result of incorrectly applying operations to each side of the equation.</p></p>\n"}},"createDate":1691007959628,"updateDate":1691007959628}$SATQ$::jsonb, 1691007959628, 1691007959628)
ON CONFLICT (question_id) DO UPDATE SET
    external_id = excluded.external_id,
    vault_id = excluded.vault_id,
    disclosed_item_id = excluded.disclosed_item_id,
    source = excluded.source,
    program = excluded.program,
    test_type = excluded.test_type,
    test_type_desc = excluded.test_type_desc,
    domain = excluded.domain,
    primary_class_cd = excluded.primary_class_cd,
    skill_cd = excluded.skill_cd,
    skill_desc = excluded.skill_desc,
    difficulty = excluded.difficulty,
    score_band_range_cd = excluded.score_band_range_cd,
    question_type = excluded.question_type,
    stimulus_html = excluded.stimulus_html,
    stem_html = excluded.stem_html,
    answer_options = excluded.answer_options,
    correct_answer = excluded.correct_answer,
    answer_keys = excluded.answer_keys,
    rationale_html = excluded.rationale_html,
    correct_answer_extracted_from_rationale = excluded.correct_answer_extracted_from_rationale,
    image_count = excluded.image_count,
    parent_template_name = excluded.parent_template_name,
    parent_template_id = excluded.parent_template_id,
    template_cluster_id = excluded.template_cluster_id,
    template_cluster_name = excluded.template_cluster_name,
    origin = excluded.origin,
    position = excluded.position,
    answer_style = excluded.answer_style,
    section = excluded.section,
    raw_payload = excluded.raw_payload,
    created_date = excluded.created_date,
    updated_date = excluded.updated_date,
    scraped_at = now();
