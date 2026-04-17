-- batch 75/138 (25 rows)
INSERT INTO sat_questions (question_id, external_id, vault_id, disclosed_item_id, source, program, test_type, test_type_desc, domain, primary_class_cd, skill_cd, skill_desc, difficulty, score_band_range_cd, question_type, stimulus_html, stem_html, answer_options, correct_answer, answer_keys, rationale_html, correct_answer_extracted_from_rationale, image_count, parent_template_name, parent_template_id, template_cluster_id, template_cluster_name, origin, position, answer_style, section, raw_payload, created_date, updated_date) VALUES
    ($SATQ$4a090a46$SATQ$, $SATQ$43bbec1d-b28f-43e6-89b0-1582a7e5c4a3$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.E.$SATQ$, $SATQ$Linear inequalities in one or two variables$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">Julissa needs at least <math alttext="100"><mn>100</mn>
</math> hours of flight time to get her private pilot certification. If Julissa already has <math alttext="86"><mn>86</mn>
</math> hours of flight time, what is the minimum number of additional hours of flight time Julissa needs to get her private pilot certification?</p>$SATQ$, $SATQ$[{"id":"57fd4110-f908-4ae6-a2c1-74a345eac99c","content":"<p><math alttext=\"14\"><mn>14</mn>\n</math></p>"},{"id":"7e09cb3b-e754-4253-9235-76b0c80d1de6","content":"<p><math alttext=\"76\"><mn>76</mn>\n</math></p>"},{"id":"2bb8cdbc-d38a-45c6-94c0-15cc829e06de","content":"<p><math alttext=\"86\"><mn>86</mn>\n</math></p>"},{"id":"c3da1ea5-3e74-4cef-8802-b11c51ca145b","content":"<p><math alttext=\"186\"><mn>186</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["57fd4110-f908-4ae6-a2c1-74a345eac99c"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It's given that Julissa already has <math alttext="86"><mn>86</mn>
</math> hours of flight time. Let <math alttext="x"><mi>x</mi>
</math> represent the number of additional hours of flight time Julissa needs to get her private pilot certification. After completing <math alttext="x"><mi>x</mi>
</math> hours of flight time, Julissa will have completed a total of <math alttext="86 plus x"><mn>86</mn><mo>+</mo><mi>x</mi></math>&nbsp;hours of flight time. It's given that Julissa needs at least <math alttext="100"><mn>100</mn>
</math> hours of flight time to get her private pilot certification. Therefore,&nbsp;<math alttext="86 plus x greater than or equals 100"><mn>86</mn><mo>+</mo><mi>x</mi><mo>&ge;</mo><mn>100</mn></math>. Subtracting <math alttext="86"><mn>86</mn>
</math> from both sides of this inequality yields&nbsp;<math alttext="x greater than or equals 14"><mi>x</mi><mo>&ge;</mo><mn>14</mn></math>. Thus, <math alttext="14"><mn>14</mn>
</math> is the minimum number of additional hours of flight time Julissa needs to get her private pilot certification.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect. This is the number of hours of flight time Julissa already has, rather than the minimum number of additional hours of flight time Julissa needs.</p>
<p style="text-align: left;">Choice D is incorrect. This is the number of hours of flight time Julissa will have if she completes <math alttext="100"><mn>100</mn>
</math> more hours of flight time, rather than the minimum number of additional hours of flight time Julissa needs.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4a090a46","external_id":"43bbec1d-b28f-43e6-89b0-1582a7e5c4a3","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"46c2bc4a-acbb-4446-90c7-8d9657997d29","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.E.","skill_desc":"Linear inequalities in one or two variables","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">Julissa needs at least <math alttext=\"100\"><mn>100</mn>\n</math> hours of flight time to get her private pilot certification. If Julissa already has <math alttext=\"86\"><mn>86</mn>\n</math> hours of flight time, what is the minimum number of additional hours of flight time Julissa needs to get her private pilot certification?</p>","answerOptions":[{"id":"57fd4110-f908-4ae6-a2c1-74a345eac99c","content":"<p><math alttext=\"14\"><mn>14</mn>\n</math></p>"},{"id":"7e09cb3b-e754-4253-9235-76b0c80d1de6","content":"<p><math alttext=\"76\"><mn>76</mn>\n</math></p>"},{"id":"2bb8cdbc-d38a-45c6-94c0-15cc829e06de","content":"<p><math alttext=\"86\"><mn>86</mn>\n</math></p>"},{"id":"c3da1ea5-3e74-4cef-8802-b11c51ca145b","content":"<p><math alttext=\"186\"><mn>186</mn>\n</math></p>"}],"keys":["57fd4110-f908-4ae6-a2c1-74a345eac99c"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that Julissa already has <math alttext=\"86\"><mn>86</mn>\n</math> hours of flight time. Let <math alttext=\"x\"><mi>x</mi>\n</math> represent the number of additional hours of flight time Julissa needs to get her private pilot certification. After completing <math alttext=\"x\"><mi>x</mi>\n</math> hours of flight time, Julissa will have completed a total of <math alttext=\"86 plus x\"><mn>86</mn><mo>+</mo><mi>x</mi></math>&nbsp;hours of flight time. It's given that Julissa needs at least <math alttext=\"100\"><mn>100</mn>\n</math> hours of flight time to get her private pilot certification. Therefore,&nbsp;<math alttext=\"86 plus x greater than or equals 100\"><mn>86</mn><mo>+</mo><mi>x</mi><mo>&ge;</mo><mn>100</mn></math>. Subtracting <math alttext=\"86\"><mn>86</mn>\n</math> from both sides of this inequality yields&nbsp;<math alttext=\"x greater than or equals 14\"><mi>x</mi><mo>&ge;</mo><mn>14</mn></math>. Thus, <math alttext=\"14\"><mn>14</mn>\n</math> is the minimum number of additional hours of flight time Julissa needs to get her private pilot certification.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This is the number of hours of flight time Julissa already has, rather than the minimum number of additional hours of flight time Julissa needs.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This is the number of hours of flight time Julissa will have if she completes <math alttext=\"100\"><mn>100</mn>\n</math> more hours of flight time, rather than the minimum number of additional hours of flight time Julissa needs.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554981,"pPcc":"SAT#H","questionId":"4a090a46","skill_cd":"H.E.","score_band_range_cd":1,"skill_desc":"Linear inequalities in one or two variables","createDate":1743430554981,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"43bbec1d-b28f-43e6-89b0-1582a7e5c4a3","primary_class_cd":"H","uId":"46c2bc4a-acbb-4446-90c7-8d9657997d29","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">Julissa needs at least <math alttext=\"100\"><mn>100</mn>\n</math> hours of flight time to get her private pilot certification. If Julissa already has <math alttext=\"86\"><mn>86</mn>\n</math> hours of flight time, what is the minimum number of additional hours of flight time Julissa needs to get her private pilot certification?</p>","keys":["57fd4110-f908-4ae6-a2c1-74a345eac99c"],"answerOptions":[{"id":"57fd4110-f908-4ae6-a2c1-74a345eac99c","content":"<p><math alttext=\"14\"><mn>14</mn>\n</math></p>"},{"id":"7e09cb3b-e754-4253-9235-76b0c80d1de6","content":"<p><math alttext=\"76\"><mn>76</mn>\n</math></p>"},{"id":"2bb8cdbc-d38a-45c6-94c0-15cc829e06de","content":"<p><math alttext=\"86\"><mn>86</mn>\n</math></p>"},{"id":"c3da1ea5-3e74-4cef-8802-b11c51ca145b","content":"<p><math alttext=\"186\"><mn>186</mn>\n</math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that Julissa already has <math alttext=\"86\"><mn>86</mn>\n</math> hours of flight time. Let <math alttext=\"x\"><mi>x</mi>\n</math> represent the number of additional hours of flight time Julissa needs to get her private pilot certification. After completing <math alttext=\"x\"><mi>x</mi>\n</math> hours of flight time, Julissa will have completed a total of <math alttext=\"86 plus x\"><mn>86</mn><mo>+</mo><mi>x</mi></math>&nbsp;hours of flight time. It's given that Julissa needs at least <math alttext=\"100\"><mn>100</mn>\n</math> hours of flight time to get her private pilot certification. Therefore,&nbsp;<math alttext=\"86 plus x greater than or equals 100\"><mn>86</mn><mo>+</mo><mi>x</mi><mo>&ge;</mo><mn>100</mn></math>. Subtracting <math alttext=\"86\"><mn>86</mn>\n</math> from both sides of this inequality yields&nbsp;<math alttext=\"x greater than or equals 14\"><mi>x</mi><mo>&ge;</mo><mn>14</mn></math>. Thus, <math alttext=\"14\"><mn>14</mn>\n</math> is the minimum number of additional hours of flight time Julissa needs to get her private pilot certification.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This is the number of hours of flight time Julissa already has, rather than the minimum number of additional hours of flight time Julissa needs.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This is the number of hours of flight time Julissa will have if she completes <math alttext=\"100\"><mn>100</mn>\n</math> more hours of flight time, rather than the minimum number of additional hours of flight time Julissa needs.</p>","externalid":"43bbec1d-b28f-43e6-89b0-1582a7e5c4a3","correct_answer":["A"]},"createDate":1743430554981,"updateDate":1743430554981}$SATQ$::jsonb, 1743430554981, 1743430554981),
    ($SATQ$4acd05cd$SATQ$, $SATQ$243f2e8b-7dd9-4a6f-b01e-582ee9fbb34c$SATQ$::uuid, $SATQ$090351f0-3383-4f8c-b4a4-e365ed9a1c1a$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="275.22pt" version="1.1" viewBox="0 0 287.764248 275.22" width="287.764248pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a line in the x y plane with the origin labeled O. The x axis ranges from negative 8 to 8 in increments of 1, with values marked every 2 grid lines. The y axis ranges from negative 6 to 10 in increments of 1, with values marked every 2 grid lines. Refer to long description.">
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
    <path clip-path="url(#p58464d68db)" d="M 37.782876 255.11539 
L 37.782876 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 50.897317 255.11539 
L 50.897317 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 64.011758 255.11539 
L 64.011758 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 77.126199 255.11539 
L 77.126199 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 90.24064 255.11539 
L 90.24064 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 103.35508 255.11539 
L 103.35508 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 116.469521 255.11539 
L 116.469521 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 129.583962 255.11539 
L 129.583962 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 155.812844 255.11539 
L 155.812844 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 168.927285 255.11539 
L 168.927285 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 182.041726 255.11539 
L 182.041726 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 195.156167 255.11539 
L 195.156167 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 208.270607 255.11539 
L 208.270607 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 221.385048 255.11539 
L 221.385048 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 234.499489 255.11539 
L 234.499489 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 247.61393 255.11539 
L 247.61393 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 249.869614 
L 252.859706 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 236.755173 
L 252.859706 236.755173 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 223.640732 
L 252.859706 223.640732 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 210.526291 
L 252.859706 210.526291 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 197.41185 
L 252.859706 197.41185 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 184.297409 
L 252.859706 184.297409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 158.068528 
L 252.859706 158.068528 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 144.954087 
L 252.859706 144.954087 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 131.839646 
L 252.859706 131.839646 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 118.725205 
L 252.859706 118.725205 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 105.610764 
L 252.859706 105.610764 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 92.496323 
L 252.859706 92.496323 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 79.381883 
L 252.859706 79.381883 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 66.267442 
L 252.859706 66.267442 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 53.153001 
L 252.859706 53.153001 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p58464d68db)" d="M 32.5371 40.03856 
L 252.859706 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#p58464d68db)" d="M 32.5371 171.182969 
L 258.105483 171.182969 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 255.26462 -103.052581 
L 258.105483 -104.037031 
L 255.26462 -105.021482 
L 255.26462 -103.052581 
L 258.105483 -104.037031 
" id="m9456a2cda2" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p58464d68db)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m9456a2cda2" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#p58464d68db)" d="M 142.698403 255.11539 
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
" id="m2e5a5b59f6" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p58464d68db)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m2e5a5b59f6" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#p58464d68db)" d="M 37.782876 175.048278 
L 37.782876 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 50.897317 175.048278 
L 50.897317 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 64.011758 175.048278 
L 64.011758 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 77.126199 175.048278 
L 77.126199 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 90.24064 175.048278 
L 90.24064 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 103.35508 175.048278 
L 103.35508 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 116.469521 175.048278 
L 116.469521 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 129.583962 175.048278 
L 129.583962 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 155.812844 175.048278 
L 155.812844 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 168.927285 175.048278 
L 168.927285 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 182.041726 175.048278 
L 182.041726 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 195.156167 175.048278 
L 195.156167 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 208.270607 175.048278 
L 208.270607 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 221.385048 175.048278 
L 221.385048 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 234.499489 175.048278 
L 234.499489 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 247.61393 175.048278 
L 247.61393 167.31766 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#p58464d68db)" d="M 138.833094 249.869614 
L 146.563712 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 236.755173 
L 146.563712 236.755173 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 223.640732 
L 146.563712 223.640732 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 210.526291 
L 146.563712 210.526291 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 197.41185 
L 146.563712 197.41185 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 184.297409 
L 146.563712 184.297409 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 158.068528 
L 146.563712 158.068528 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 144.954087 
L 146.563712 144.954087 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 131.839646 
L 146.563712 131.839646 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 118.725205 
L 146.563712 118.725205 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 105.610764 
L 146.563712 105.610764 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 92.496323 
L 146.563712 92.496323 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 79.381883 
L 146.563712 79.381883 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 66.267442 
L 146.563712 66.267442 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 53.153001 
L 146.563712 53.153001 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p58464d68db)" d="M 138.833094 40.03856 
L 146.563712 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#p58464d68db)" d="M 127.74794 256.164545 
L 127.74794 244.623837 
L 135.616605 244.623837 
L 135.616605 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#p58464d68db)" d="M 119.616987 249.082747 
L 119.616987 253.541657 
L 130.10854 253.541657 
L 130.10854 249.082747 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_1">
    <g clip-path="url(#p58464d68db)">
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
    <g clip-path="url(#p58464d68db)">
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
     <g transform="translate(128.264472 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_3">
    <g clip-path="url(#p58464d68db)">
     <!-- 6 -->
     <g transform="translate(128.264472 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#p58464d68db)" d="M 127.74794 229.935664 
L 127.74794 218.394956 
L 135.616605 218.394956 
L 135.616605 229.935664 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#p58464d68db)" d="M 119.616987 222.853866 
L 119.616987 227.312776 
L 130.10854 227.312776 
L 130.10854 222.853866 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_4">
    <g clip-path="url(#p58464d68db)">
     <!-- – -->
     <g transform="translate(120.437784 228.379911)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_5">
    <g clip-path="url(#p58464d68db)">
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
     <g transform="translate(128.292597 228.379911)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_6">
    <g clip-path="url(#p58464d68db)">
     <!-- 4 -->
     <g transform="translate(128.292597 228.379911)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#p58464d68db)" d="M 127.74794 203.706782 
L 127.74794 192.166074 
L 135.616605 192.166074 
L 135.616605 203.706782 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#p58464d68db)" d="M 119.616987 196.624984 
L 119.616987 201.083894 
L 130.10854 201.083894 
L 130.10854 196.624984 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_7">
    <g clip-path="url(#p58464d68db)">
     <!-- – -->
     <g transform="translate(120.437784 202.151029)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_8">
    <g clip-path="url(#p58464d68db)">
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
     <g transform="translate(128.264472 202.151029)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_9">
    <g clip-path="url(#p58464d68db)">
     <!-- 2 -->
     <g transform="translate(128.264472 202.151029)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#p58464d68db)" d="M 127.74794 151.249019 
L 127.74794 139.708311 
L 135.616605 139.708311 
L 135.616605 151.249019 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_10">
    <g clip-path="url(#p58464d68db)">
     <!-- 2 -->
     <g transform="translate(128.264472 149.693265)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_11">
    <g clip-path="url(#p58464d68db)">
     <!-- 2 -->
     <g transform="translate(128.264472 149.693265)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#p58464d68db)" d="M 127.74794 125.020137 
L 127.74794 113.479429 
L 135.616605 113.479429 
L 135.616605 125.020137 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_12">
    <g clip-path="url(#p58464d68db)">
     <!-- 4 -->
     <g transform="translate(128.292597 123.464384)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_13">
    <g clip-path="url(#p58464d68db)">
     <!-- 4 -->
     <g transform="translate(128.292597 123.464384)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#p58464d68db)" d="M 127.74794 98.791255 
L 127.74794 87.250547 
L 135.616605 87.250547 
L 135.616605 98.791255 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_14">
    <g clip-path="url(#p58464d68db)">
     <!-- 6 -->
     <g transform="translate(128.264472 97.235502)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_15">
    <g clip-path="url(#p58464d68db)">
     <!-- 6 -->
     <g transform="translate(128.264472 97.235502)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#p58464d68db)" d="M 127.74794 72.562373 
L 127.74794 61.021665 
L 135.616605 61.021665 
L 135.616605 72.562373 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_16">
    <g clip-path="url(#p58464d68db)">
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
     <g transform="translate(128.264472 71.00662)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_17">
    <g clip-path="url(#p58464d68db)">
     <!-- 8 -->
     <g transform="translate(128.264472 71.00662)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#p58464d68db)" d="M 121.19072 46.333492 
L 121.19072 34.792784 
L 135.878894 34.792784 
L 135.878894 46.333492 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_18">
    <g clip-path="url(#p58464d68db)">
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
     <g transform="translate(121.174629 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_19">
    <g clip-path="url(#p58464d68db)">
     <!-- 10 -->
     <g transform="translate(121.174629 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#p58464d68db)" d="M 19.422659 179.576211 
L 19.422659 183.772832 
L 111.748323 183.772832 
L 111.748323 179.576211 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#p58464d68db)" d="M 33.061677 186.39572 
L 33.061677 174.855012 
L 40.930342 174.855012 
L 40.930342 186.39572 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_20">
    <g clip-path="url(#p58464d68db)">
     <!-- – -->
     <g transform="translate(26.01381 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_21">
    <g clip-path="url(#p58464d68db)">
     <!-- 8 -->
     <g transform="translate(33.315921 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_22">
    <g clip-path="url(#p58464d68db)">
     <!-- 8 -->
     <g transform="translate(33.315921 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_14">
    <path clip-path="url(#p58464d68db)" d="M 59.290559 186.39572 
L 59.290559 174.855012 
L 67.159224 174.855012 
L 67.159224 186.39572 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_23">
    <g clip-path="url(#p58464d68db)">
     <!-- – -->
     <g transform="translate(52.242692 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_24">
    <g clip-path="url(#p58464d68db)">
     <!-- 6 -->
     <g transform="translate(59.544802 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_25">
    <g clip-path="url(#p58464d68db)">
     <!-- 6 -->
     <g transform="translate(59.544802 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_15">
    <path clip-path="url(#p58464d68db)" d="M 85.519441 186.39572 
L 85.519441 174.855012 
L 93.388105 174.855012 
L 93.388105 186.39572 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_26">
    <g clip-path="url(#p58464d68db)">
     <!-- – -->
     <g transform="translate(78.471573 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_27">
    <g clip-path="url(#p58464d68db)">
     <!-- 4 -->
     <g transform="translate(85.801809 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_28">
    <g clip-path="url(#p58464d68db)">
     <!-- 4 -->
     <g transform="translate(85.801809 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_16">
    <path clip-path="url(#p58464d68db)" d="M 111.748323 186.39572 
L 111.748323 174.855012 
L 119.616987 174.855012 
L 119.616987 186.39572 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_29">
    <g clip-path="url(#p58464d68db)">
     <!-- – -->
     <g transform="translate(104.700455 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_30">
    <g clip-path="url(#p58464d68db)">
     <!-- 2 -->
     <g transform="translate(112.002566 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_31">
    <g clip-path="url(#p58464d68db)">
     <!-- 2 -->
     <g transform="translate(112.002566 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_17">
    <path clip-path="url(#p58464d68db)" d="M 164.206086 186.39572 
L 164.206086 174.855012 
L 172.074751 174.855012 
L 172.074751 186.39572 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_32">
    <g clip-path="url(#p58464d68db)">
     <!-- 2 -->
     <g transform="translate(164.460329 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_33">
    <g clip-path="url(#p58464d68db)">
     <!-- 2 -->
     <g transform="translate(164.460329 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_18">
    <path clip-path="url(#p58464d68db)" d="M 190.434968 186.39572 
L 190.434968 174.855012 
L 198.303632 174.855012 
L 198.303632 186.39572 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_34">
    <g clip-path="url(#p58464d68db)">
     <!-- 4 -->
     <g transform="translate(190.717336 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_35">
    <g clip-path="url(#p58464d68db)">
     <!-- 4 -->
     <g transform="translate(190.717336 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_19">
    <path clip-path="url(#p58464d68db)" d="M 216.66385 186.39572 
L 216.66385 174.855012 
L 224.532514 174.855012 
L 224.532514 186.39572 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_36">
    <g clip-path="url(#p58464d68db)">
     <!-- 6 -->
     <g transform="translate(216.918093 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_37">
    <g clip-path="url(#p58464d68db)">
     <!-- 6 -->
     <g transform="translate(216.918093 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_20">
    <path clip-path="url(#p58464d68db)" d="M 242.892731 186.39572 
L 242.892731 174.855012 
L 250.761396 174.855012 
L 250.761396 186.39572 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_38">
    <g clip-path="url(#p58464d68db)">
     <!-- 8 -->
     <g transform="translate(243.146974 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_39">
    <g clip-path="url(#p58464d68db)">
     <!-- 8 -->
     <g transform="translate(243.146974 185.102256)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_40">
    <g clip-path="url(#p58464d68db)">
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
     <g transform="translate(131.046292 181.560079)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_41">
    <g clip-path="url(#p58464d68db)">
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
   <g id="text_42">
    <g clip-path="url(#p58464d68db)">
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
     <g transform="translate(260.389509 174.478281)scale(0.15 -0.15)">
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
" id="mf6dabdb7f3" style="stroke:#000000;"></path>
    </defs>
    <g clip-path="url(#p58464d68db)">
     <use style="stroke:#000000;" x="142.698403" xlink:href="#mf6dabdb7f3" y="236.755173"></use>
     <use style="stroke:#000000;" x="155.812844" xlink:href="#mf6dabdb7f3" y="210.526291"></use>
     <use style="stroke:#000000;" x="168.927285" xlink:href="#mf6dabdb7f3" y="184.297409"></use>
    </g>
   </g>
   <g id="line2d_2">
    <path clip-path="url(#p58464d68db)" d="M 133.657586 254.836807 
L 243.408899 35.334181 
L 243.408899 35.334181 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="p58464d68db">
   <rect height="260.82" width="268.898496" x="7.2" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a line" class="sr-only"><ul>
<li>The line slants sharply up from left to right.</li>
<li>The line passes through the following points:
<ul>
<li>(0 comma negative 5)</li>
<li>(1 comma negative 3)</li>
<li>(2 comma negative 1)</li>
</ul>
</li>
</ul></div></figure></p>
<p style="text-align: left;">The graph shows the linear relationship between <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math>. Which table gives three values of <math alttext="x"><mi>x</mi>
</math> and their corresponding values of <math alttext="y"><mi>y</mi>
</math> for this relationship?</p>$SATQ$, $SATQ$[{"id":"ab78189e-b694-47ff-832a-a911d704488f","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<th style=\"text-align: center; width: 34.6701px;\" scope=\"col\" id=\"ab78189e-b694-47ff-832a-a911d704488f_option_1_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 46.4931px;\" scope=\"col\" id=\"ab78189e-b694-47ff-832a-a911d704488f_option_1_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"b861b370-77c6-4ef5-9643-f31d12d7e7a6","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<th style=\"text-align: center; width: 34.6701px;\" scope=\"col\" id=\"b861b370-77c6-4ef5-9643-f31d12d7e7a6_option_2_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 46.4931px;\" scope=\"col\" id=\"b861b370-77c6-4ef5-9643-f31d12d7e7a6_option_2_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"32680733-93dc-49f5-b0ae-b5cfd4305502","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<th style=\"text-align: center; width: 34.6701px;\" scope=\"col\" id=\"32680733-93dc-49f5-b0ae-b5cfd4305502_option_3_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 46.4931px;\" scope=\"col\" id=\"32680733-93dc-49f5-b0ae-b5cfd4305502_option_3_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"157b42e7-024a-49c7-ba0a-140b33698366","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<thead>\n<tr style=\"height: 22.3958px;\">\n<th style=\" text-align: center;\" scope=\"col\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\" text-align: center;\" scope=\"col\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n</thead>\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<td style=\"text-align: center; width: 34.6701px;\" id=\"157b42e7-024a-49c7-ba0a-140b33698366_option_4_tableColumn_1\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\"text-align: center; width: 46.4931px;\" id=\"157b42e7-024a-49c7-ba0a-140b33698366_option_4_tableColumn_2\"><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["157b42e7-024a-49c7-ba0a-140b33698366"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. It&rsquo;s given that the graph shows the linear relationship between <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math>. The given graph passes through the points <math alttext="left parenthesis 0 comma negative 5 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mn>5</mn></mrow></mfenced></math>, <math alttext="left parenthesis 1 comma negative 3 right parenthesis"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>, and <math alttext="left parenthesis 2 comma negative 1 right parenthesis"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>1</mn></mrow></mfenced></math>. It follows that when <math alttext="x equals 0"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>, the corresponding value of <math alttext="y"><mi>y</mi>
</math> is <math alttext="negative 5"><mo>-</mo><mn>5</mn>
</math>, when <math alttext="x equals 1"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>1</mn>
</mrow>
</math>, the corresponding value of <math alttext="y"><mi>y</mi>
</math> is <math alttext="negative 3"><mo>-</mo><mn>3</mn>
</math>, and when <math alttext="x equals 2"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>2</mn>
</mrow>
</math>, the corresponding value of <math alttext="y"><mi>y</mi>
</math> is <math alttext="negative 1"><mo>-</mo><mn>1</mn>
</math>. Of the given choices, only the table in choice D gives these three values of <math alttext="x"><mi>x</mi>
</math> and their corresponding values of <math alttext="y"><mi>y</mi>
</math> for the relationship shown in the graph.</p>
<p style="text-align: left;">Choice A is incorrect. This table represents a relationship between <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math> such that the graph passes through the points <math alttext="left parenthesis 0 comma 0 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, <math alttext="left parenthesis 1 comma negative 7 right parenthesis"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>7</mn></mrow></mfenced></math>, and <math alttext="left parenthesis 2 comma negative 9 right parenthesis"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>9</mn></mrow></mfenced></math>.</p>
<p style="text-align: left;">Choice B is incorrect. This table represents a relationship between <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math> such that the graph passes through the points <math alttext="left parenthesis 0 comma 0 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, <math alttext="left parenthesis 1 comma negative 3 right parenthesis"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>, and <math alttext="left parenthesis 2 comma negative 1 right parenthesis"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>1</mn></mrow></mfenced></math>.</p>
<p style="text-align: left;">Choice C is incorrect. This table represents a linear relationship between <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math> such that the graph passes through the points <math alttext="left parenthesis 0 comma negative 5 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mn>5</mn></mrow></mfenced></math>, <math alttext="left parenthesis 1 comma negative 7 right parenthesis"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>7</mn></mrow></mfenced></math>, and <math alttext="left parenthesis 2 comma negative 9 right parenthesis"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>9</mn></mrow></mfenced></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"4acd05cd","external_id":"243f2e8b-7dd9-4a6f-b01e-582ee9fbb34c","disclosed_item_id":null,"source":"qbank","vaultid":"090351f0-3383-4f8c-b4a4-e365ed9a1c1a","uId":"ac1ac3f7-70f6-49e3-bbf0-13c1dc0da804","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 287.764248 275.22\" width=\"287.764248pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a line in the x y plane with the origin labeled O. The x axis ranges from negative 8 to 8 in increments of 1, with values marked every 2 grid lines. The y axis ranges from negative 6 to 10 in increments of 1, with values marked every 2 grid lines. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M -0 275.22 \nL 287.764248 275.22 \nL 287.764248 0 \nL -0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 8.404248 260.46 \nL 280.564248 260.46 \nL 280.564248 10.98 \nL 8.404248 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 276.098496 268.02 \nL 276.098496 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 37.782876 255.11539 \nL 37.782876 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 50.897317 255.11539 \nL 50.897317 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 64.011758 255.11539 \nL 64.011758 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 77.126199 255.11539 \nL 77.126199 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 90.24064 255.11539 \nL 90.24064 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 103.35508 255.11539 \nL 103.35508 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 116.469521 255.11539 \nL 116.469521 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 129.583962 255.11539 \nL 129.583962 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 155.812844 255.11539 \nL 155.812844 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 168.927285 255.11539 \nL 168.927285 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 182.041726 255.11539 \nL 182.041726 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 195.156167 255.11539 \nL 195.156167 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 208.270607 255.11539 \nL 208.270607 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 221.385048 255.11539 \nL 221.385048 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 234.499489 255.11539 \nL 234.499489 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 247.61393 255.11539 \nL 247.61393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 249.869614 \nL 252.859706 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 236.755173 \nL 252.859706 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 223.640732 \nL 252.859706 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 210.526291 \nL 252.859706 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 197.41185 \nL 252.859706 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 184.297409 \nL 252.859706 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 158.068528 \nL 252.859706 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 144.954087 \nL 252.859706 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 131.839646 \nL 252.859706 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 118.725205 \nL 252.859706 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 105.610764 \nL 252.859706 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 92.496323 \nL 252.859706 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 79.381883 \nL 252.859706 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 66.267442 \nL 252.859706 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 53.153001 \nL 252.859706 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 40.03856 \nL 252.859706 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 171.182969 \nL 258.105483 171.182969 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 255.26462 -103.052581 \nL 258.105483 -104.037031 \nL 255.26462 -105.021482 \nL 255.26462 -103.052581 \nL 258.105483 -104.037031 \n\" id=\"m9456a2cda2\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p58464d68db)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m9456a2cda2\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 142.698403 255.11539 \nL 142.698403 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 143.704311 -242.098754 \nL 142.698403 -245.672993 \nL 141.692495 -242.098754 \nL 143.704311 -242.098754 \nL 142.698403 -245.672993 \n\" id=\"m2e5a5b59f6\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p58464d68db)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m2e5a5b59f6\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 37.782876 175.048278 \nL 37.782876 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 50.897317 175.048278 \nL 50.897317 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 64.011758 175.048278 \nL 64.011758 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 77.126199 175.048278 \nL 77.126199 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 90.24064 175.048278 \nL 90.24064 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 103.35508 175.048278 \nL 103.35508 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 116.469521 175.048278 \nL 116.469521 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 129.583962 175.048278 \nL 129.583962 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 155.812844 175.048278 \nL 155.812844 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 168.927285 175.048278 \nL 168.927285 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 182.041726 175.048278 \nL 182.041726 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 195.156167 175.048278 \nL 195.156167 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 208.270607 175.048278 \nL 208.270607 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 221.385048 175.048278 \nL 221.385048 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 234.499489 175.048278 \nL 234.499489 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 247.61393 175.048278 \nL 247.61393 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 249.869614 \nL 146.563712 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 236.755173 \nL 146.563712 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 223.640732 \nL 146.563712 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 210.526291 \nL 146.563712 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 197.41185 \nL 146.563712 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 184.297409 \nL 146.563712 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 158.068528 \nL 146.563712 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 144.954087 \nL 146.563712 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 131.839646 \nL 146.563712 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 118.725205 \nL 146.563712 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 105.610764 \nL 146.563712 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 92.496323 \nL 146.563712 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 79.381883 \nL 146.563712 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 66.267442 \nL 146.563712 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 53.153001 \nL 146.563712 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 40.03856 \nL 146.563712 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 256.164545 \nL 127.74794 244.623837 \nL 135.616605 244.623837 \nL 135.616605 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 119.616987 249.082747 \nL 119.616987 253.541657 \nL 130.10854 253.541657 \nL 130.10854 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(120.437784 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 229.935664 \nL 127.74794 218.394956 \nL 135.616605 218.394956 \nL 135.616605 229.935664 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 119.616987 222.853866 \nL 119.616987 227.312776 \nL 130.10854 227.312776 \nL 130.10854 222.853866 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(120.437784 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(128.292597 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 203.706782 \nL 127.74794 192.166074 \nL 135.616605 192.166074 \nL 135.616605 203.706782 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 119.616987 196.624984 \nL 119.616987 201.083894 \nL 130.10854 201.083894 \nL 130.10854 196.624984 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(120.437784 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 151.249019 \nL 127.74794 139.708311 \nL 135.616605 139.708311 \nL 135.616605 151.249019 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 125.020137 \nL 127.74794 113.479429 \nL 135.616605 113.479429 \nL 135.616605 125.020137 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 98.791255 \nL 127.74794 87.250547 \nL 135.616605 87.250547 \nL 135.616605 98.791255 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 72.562373 \nL 127.74794 61.021665 \nL 135.616605 61.021665 \nL 135.616605 72.562373 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <g transform=\"translate(128.264472 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 121.19072 46.333492 \nL 121.19072 34.792784 \nL 135.878894 34.792784 \nL 135.878894 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(121.174629 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 10 -->\n     <g transform=\"translate(121.174629 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 19.422659 179.576211 \nL 19.422659 183.772832 \nL 111.748323 183.772832 \nL 111.748323 179.576211 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 33.061677 186.39572 \nL 33.061677 174.855012 \nL 40.930342 174.855012 \nL 40.930342 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(26.01381 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 59.290559 186.39572 \nL 59.290559 174.855012 \nL 67.159224 174.855012 \nL 67.159224 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(52.242692 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 85.519441 186.39572 \nL 85.519441 174.855012 \nL 93.388105 174.855012 \nL 93.388105 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(78.471573 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 111.748323 186.39572 \nL 111.748323 174.855012 \nL 119.616987 174.855012 \nL 119.616987 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(104.700455 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 164.206086 186.39572 \nL 164.206086 174.855012 \nL 172.074751 174.855012 \nL 172.074751 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 190.434968 186.39572 \nL 190.434968 174.855012 \nL 198.303632 174.855012 \nL 198.303632 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 216.66385 186.39572 \nL 216.66385 174.855012 \nL 224.532514 174.855012 \nL 224.532514 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 242.892731 186.39572 \nL 242.892731 174.855012 \nL 250.761396 174.855012 \nL 250.761396 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(131.046292 181.560079)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(139.189809 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(260.389509 174.478281)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"mf6dabdb7f3\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#p58464d68db)\">\n     <use style=\"stroke:#000000;\" x=\"142.698403\" xlink:href=\"#mf6dabdb7f3\" y=\"236.755173\"></use>\n     <use style=\"stroke:#000000;\" x=\"155.812844\" xlink:href=\"#mf6dabdb7f3\" y=\"210.526291\"></use>\n     <use style=\"stroke:#000000;\" x=\"168.927285\" xlink:href=\"#mf6dabdb7f3\" y=\"184.297409\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 133.657586 254.836807 \nL 243.408899 35.334181 \nL 243.408899 35.334181 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p58464d68db\">\n   <rect height=\"260.82\" width=\"268.898496\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a line\" class=\"sr-only\"><ul>\n<li>The line slants sharply up from left to right.</li>\n<li>The line passes through the following points:\n<ul>\n<li>(0 comma negative 5)</li>\n<li>(1 comma negative 3)</li>\n<li>(2 comma negative 1)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The graph shows the linear relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>. Which table gives three values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"y\"><mi>y</mi>\n</math> for this relationship?</p>","answerOptions":[{"id":"ab78189e-b694-47ff-832a-a911d704488f","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<th style=\"text-align: center; width: 34.6701px;\" scope=\"col\" id=\"ab78189e-b694-47ff-832a-a911d704488f_option_1_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 46.4931px;\" scope=\"col\" id=\"ab78189e-b694-47ff-832a-a911d704488f_option_1_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"b861b370-77c6-4ef5-9643-f31d12d7e7a6","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<th style=\"text-align: center; width: 34.6701px;\" scope=\"col\" id=\"b861b370-77c6-4ef5-9643-f31d12d7e7a6_option_2_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 46.4931px;\" scope=\"col\" id=\"b861b370-77c6-4ef5-9643-f31d12d7e7a6_option_2_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"32680733-93dc-49f5-b0ae-b5cfd4305502","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<th style=\"text-align: center; width: 34.6701px;\" scope=\"col\" id=\"32680733-93dc-49f5-b0ae-b5cfd4305502_option_3_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 46.4931px;\" scope=\"col\" id=\"32680733-93dc-49f5-b0ae-b5cfd4305502_option_3_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"157b42e7-024a-49c7-ba0a-140b33698366","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<thead>\n<tr style=\"height: 22.3958px;\">\n<th style=\" text-align: center;\" scope=\"col\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\" text-align: center;\" scope=\"col\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n</thead>\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<td style=\"text-align: center; width: 34.6701px;\" id=\"157b42e7-024a-49c7-ba0a-140b33698366_option_4_tableColumn_1\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\"text-align: center; width: 46.4931px;\" id=\"157b42e7-024a-49c7-ba0a-140b33698366_option_4_tableColumn_2\"><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"}],"keys":["157b42e7-024a-49c7-ba0a-140b33698366"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. It&rsquo;s given that the graph shows the linear relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>. The given graph passes through the points <math alttext=\"left parenthesis 0 comma negative 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mn>5</mn></mrow></mfenced></math>, <math alttext=\"left parenthesis 1 comma negative 3 right parenthesis\"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>, and <math alttext=\"left parenthesis 2 comma negative 1 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>1</mn></mrow></mfenced></math>. It follows that when <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, the corresponding value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math>, when <math alttext=\"x equals 1\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>1</mn>\n</mrow>\n</math>, the corresponding value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math>, and when <math alttext=\"x equals 2\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>2</mn>\n</mrow>\n</math>, the corresponding value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math>. Of the given choices, only the table in choice D gives these three values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"y\"><mi>y</mi>\n</math> for the relationship shown in the graph.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This table represents a relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math> such that the graph passes through the points <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, <math alttext=\"left parenthesis 1 comma negative 7 right parenthesis\"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>7</mn></mrow></mfenced></math>, and <math alttext=\"left parenthesis 2 comma negative 9 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>9</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This table represents a relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math> such that the graph passes through the points <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, <math alttext=\"left parenthesis 1 comma negative 3 right parenthesis\"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>, and <math alttext=\"left parenthesis 2 comma negative 1 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>1</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This table represents a linear relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math> such that the graph passes through the points <math alttext=\"left parenthesis 0 comma negative 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mn>5</mn></mrow></mfenced></math>, <math alttext=\"left parenthesis 1 comma negative 7 right parenthesis\"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>7</mn></mrow></mfenced></math>, and <math alttext=\"left parenthesis 2 comma negative 9 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>9</mn></mrow></mfenced></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959815,"pPcc":"SAT#H","questionId":"4acd05cd","skill_cd":"H.C.","score_band_range_cd":2,"skill_desc":"Linear equations in two variables","createDate":1691007959815,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"243f2e8b-7dd9-4a6f-b01e-582ee9fbb34c","primary_class_cd":"H","uId":"ac1ac3f7-70f6-49e3-bbf0-13c1dc0da804","difficulty":"E"},"raw_detail":{"keys":["157b42e7-024a-49c7-ba0a-140b33698366"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. It&rsquo;s given that the graph shows the linear relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>. The given graph passes through the points <math alttext=\"left parenthesis 0 comma negative 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mn>5</mn></mrow></mfenced></math>, <math alttext=\"left parenthesis 1 comma negative 3 right parenthesis\"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>, and <math alttext=\"left parenthesis 2 comma negative 1 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>1</mn></mrow></mfenced></math>. It follows that when <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, the corresponding value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math>, when <math alttext=\"x equals 1\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>1</mn>\n</mrow>\n</math>, the corresponding value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math>, and when <math alttext=\"x equals 2\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>2</mn>\n</mrow>\n</math>, the corresponding value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math>. Of the given choices, only the table in choice D gives these three values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"y\"><mi>y</mi>\n</math> for the relationship shown in the graph.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This table represents a relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math> such that the graph passes through the points <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, <math alttext=\"left parenthesis 1 comma negative 7 right parenthesis\"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>7</mn></mrow></mfenced></math>, and <math alttext=\"left parenthesis 2 comma negative 9 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>9</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This table represents a relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math> such that the graph passes through the points <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, <math alttext=\"left parenthesis 1 comma negative 3 right parenthesis\"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>, and <math alttext=\"left parenthesis 2 comma negative 1 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>1</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This table represents a linear relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math> such that the graph passes through the points <math alttext=\"left parenthesis 0 comma negative 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mn>5</mn></mrow></mfenced></math>, <math alttext=\"left parenthesis 1 comma negative 7 right parenthesis\"><mfenced><mrow><mn>1</mn><mo>,</mo><mo>-</mo><mn>7</mn></mrow></mfenced></math>, and <math alttext=\"left parenthesis 2 comma negative 9 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mo>-</mo><mn>9</mn></mrow></mfenced></math>.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 287.764248 275.22\" width=\"287.764248pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a line in the x y plane with the origin labeled O. The x axis ranges from negative 8 to 8 in increments of 1, with values marked every 2 grid lines. The y axis ranges from negative 6 to 10 in increments of 1, with values marked every 2 grid lines. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M -0 275.22 \nL 287.764248 275.22 \nL 287.764248 0 \nL -0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 8.404248 260.46 \nL 280.564248 260.46 \nL 280.564248 10.98 \nL 8.404248 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 276.098496 268.02 \nL 276.098496 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 37.782876 255.11539 \nL 37.782876 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 50.897317 255.11539 \nL 50.897317 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 64.011758 255.11539 \nL 64.011758 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 77.126199 255.11539 \nL 77.126199 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 90.24064 255.11539 \nL 90.24064 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 103.35508 255.11539 \nL 103.35508 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 116.469521 255.11539 \nL 116.469521 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 129.583962 255.11539 \nL 129.583962 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 155.812844 255.11539 \nL 155.812844 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 168.927285 255.11539 \nL 168.927285 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 182.041726 255.11539 \nL 182.041726 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 195.156167 255.11539 \nL 195.156167 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 208.270607 255.11539 \nL 208.270607 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 221.385048 255.11539 \nL 221.385048 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 234.499489 255.11539 \nL 234.499489 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 247.61393 255.11539 \nL 247.61393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 249.869614 \nL 252.859706 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 236.755173 \nL 252.859706 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 223.640732 \nL 252.859706 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 210.526291 \nL 252.859706 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 197.41185 \nL 252.859706 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 184.297409 \nL 252.859706 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 158.068528 \nL 252.859706 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 144.954087 \nL 252.859706 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 131.839646 \nL 252.859706 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 118.725205 \nL 252.859706 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 105.610764 \nL 252.859706 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 92.496323 \nL 252.859706 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 79.381883 \nL 252.859706 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 66.267442 \nL 252.859706 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 53.153001 \nL 252.859706 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 40.03856 \nL 252.859706 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 32.5371 171.182969 \nL 258.105483 171.182969 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 255.26462 -103.052581 \nL 258.105483 -104.037031 \nL 255.26462 -105.021482 \nL 255.26462 -103.052581 \nL 258.105483 -104.037031 \n\" id=\"m9456a2cda2\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p58464d68db)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m9456a2cda2\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 142.698403 255.11539 \nL 142.698403 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 143.704311 -242.098754 \nL 142.698403 -245.672993 \nL 141.692495 -242.098754 \nL 143.704311 -242.098754 \nL 142.698403 -245.672993 \n\" id=\"m2e5a5b59f6\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p58464d68db)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m2e5a5b59f6\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 37.782876 175.048278 \nL 37.782876 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 50.897317 175.048278 \nL 50.897317 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 64.011758 175.048278 \nL 64.011758 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 77.126199 175.048278 \nL 77.126199 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 90.24064 175.048278 \nL 90.24064 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 103.35508 175.048278 \nL 103.35508 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 116.469521 175.048278 \nL 116.469521 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 129.583962 175.048278 \nL 129.583962 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 155.812844 175.048278 \nL 155.812844 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 168.927285 175.048278 \nL 168.927285 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 182.041726 175.048278 \nL 182.041726 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 195.156167 175.048278 \nL 195.156167 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 208.270607 175.048278 \nL 208.270607 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 221.385048 175.048278 \nL 221.385048 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 234.499489 175.048278 \nL 234.499489 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 247.61393 175.048278 \nL 247.61393 167.31766 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 249.869614 \nL 146.563712 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 236.755173 \nL 146.563712 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 223.640732 \nL 146.563712 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 210.526291 \nL 146.563712 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 197.41185 \nL 146.563712 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 184.297409 \nL 146.563712 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 158.068528 \nL 146.563712 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 144.954087 \nL 146.563712 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 131.839646 \nL 146.563712 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 118.725205 \nL 146.563712 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 105.610764 \nL 146.563712 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 92.496323 \nL 146.563712 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 79.381883 \nL 146.563712 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 66.267442 \nL 146.563712 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 53.153001 \nL 146.563712 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 138.833094 40.03856 \nL 146.563712 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 256.164545 \nL 127.74794 244.623837 \nL 135.616605 244.623837 \nL 135.616605 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 119.616987 249.082747 \nL 119.616987 253.541657 \nL 130.10854 253.541657 \nL 130.10854 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(120.437784 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 229.935664 \nL 127.74794 218.394956 \nL 135.616605 218.394956 \nL 135.616605 229.935664 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 119.616987 222.853866 \nL 119.616987 227.312776 \nL 130.10854 227.312776 \nL 130.10854 222.853866 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(120.437784 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(128.292597 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 203.706782 \nL 127.74794 192.166074 \nL 135.616605 192.166074 \nL 135.616605 203.706782 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 119.616987 196.624984 \nL 119.616987 201.083894 \nL 130.10854 201.083894 \nL 130.10854 196.624984 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(120.437784 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 151.249019 \nL 127.74794 139.708311 \nL 135.616605 139.708311 \nL 135.616605 151.249019 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(128.264472 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 125.020137 \nL 127.74794 113.479429 \nL 135.616605 113.479429 \nL 135.616605 125.020137 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(128.292597 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 98.791255 \nL 127.74794 87.250547 \nL 135.616605 87.250547 \nL 135.616605 98.791255 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(128.264472 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 127.74794 72.562373 \nL 127.74794 61.021665 \nL 135.616605 61.021665 \nL 135.616605 72.562373 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(128.264472 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <g transform=\"translate(128.264472 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 121.19072 46.333492 \nL 121.19072 34.792784 \nL 135.878894 34.792784 \nL 135.878894 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(121.174629 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 10 -->\n     <g transform=\"translate(121.174629 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 19.422659 179.576211 \nL 19.422659 183.772832 \nL 111.748323 183.772832 \nL 111.748323 179.576211 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 33.061677 186.39572 \nL 33.061677 174.855012 \nL 40.930342 174.855012 \nL 40.930342 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(26.01381 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 59.290559 186.39572 \nL 59.290559 174.855012 \nL 67.159224 174.855012 \nL 67.159224 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(52.242692 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 85.519441 186.39572 \nL 85.519441 174.855012 \nL 93.388105 174.855012 \nL 93.388105 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(78.471573 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 111.748323 186.39572 \nL 111.748323 174.855012 \nL 119.616987 174.855012 \nL 119.616987 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- – -->\n     <g transform=\"translate(104.700455 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 164.206086 186.39572 \nL 164.206086 174.855012 \nL 172.074751 174.855012 \nL 172.074751 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 190.434968 186.39572 \nL 190.434968 174.855012 \nL 198.303632 174.855012 \nL 198.303632 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 216.66385 186.39572 \nL 216.66385 174.855012 \nL 224.532514 174.855012 \nL 224.532514 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 242.892731 186.39572 \nL 242.892731 174.855012 \nL 250.761396 174.855012 \nL 250.761396 186.39572 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 185.102256)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(131.046292 181.560079)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(139.189809 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#p58464d68db)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(260.389509 174.478281)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"mf6dabdb7f3\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#p58464d68db)\">\n     <use style=\"stroke:#000000;\" x=\"142.698403\" xlink:href=\"#mf6dabdb7f3\" y=\"236.755173\"></use>\n     <use style=\"stroke:#000000;\" x=\"155.812844\" xlink:href=\"#mf6dabdb7f3\" y=\"210.526291\"></use>\n     <use style=\"stroke:#000000;\" x=\"168.927285\" xlink:href=\"#mf6dabdb7f3\" y=\"184.297409\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p58464d68db)\" d=\"M 133.657586 254.836807 \nL 243.408899 35.334181 \nL 243.408899 35.334181 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p58464d68db\">\n   <rect height=\"260.82\" width=\"268.898496\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a line\" class=\"sr-only\"><ul>\n<li>The line slants sharply up from left to right.</li>\n<li>The line passes through the following points:\n<ul>\n<li>(0 comma negative 5)</li>\n<li>(1 comma negative 3)</li>\n<li>(2 comma negative 1)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The graph shows the linear relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>. Which table gives three values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"y\"><mi>y</mi>\n</math> for this relationship?</p>","externalid":"243f2e8b-7dd9-4a6f-b01e-582ee9fbb34c","templateid":"4951a30b-f87a-4549-946c-1309095006f7","vaultid":"090351f0-3383-4f8c-b4a4-e365ed9a1c1a","type":"mcq","answerOptions":[{"id":"ab78189e-b694-47ff-832a-a911d704488f","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<th style=\"text-align: center; width: 34.6701px;\" scope=\"col\" id=\"ab78189e-b694-47ff-832a-a911d704488f_option_1_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 46.4931px;\" scope=\"col\" id=\"ab78189e-b694-47ff-832a-a911d704488f_option_1_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"b861b370-77c6-4ef5-9643-f31d12d7e7a6","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<th style=\"text-align: center; width: 34.6701px;\" scope=\"col\" id=\"b861b370-77c6-4ef5-9643-f31d12d7e7a6_option_2_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 46.4931px;\" scope=\"col\" id=\"b861b370-77c6-4ef5-9643-f31d12d7e7a6_option_2_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"32680733-93dc-49f5-b0ae-b5cfd4305502","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<th style=\"text-align: center; width: 34.6701px;\" scope=\"col\" id=\"32680733-93dc-49f5-b0ae-b5cfd4305502_option_3_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 46.4931px;\" scope=\"col\" id=\"32680733-93dc-49f5-b0ae-b5cfd4305502_option_3_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"157b42e7-024a-49c7-ba0a-140b33698366","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<thead>\n<tr style=\"height: 22.3958px;\">\n<th style=\" text-align: center;\" scope=\"col\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\" text-align: center;\" scope=\"col\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n</thead>\n<tbody>\n<tr style=\"height: 22.3958px;\">\n<td style=\"text-align: center; width: 34.6701px;\" id=\"157b42e7-024a-49c7-ba0a-140b33698366_option_4_tableColumn_1\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\"text-align: center; width: 46.4931px;\" id=\"157b42e7-024a-49c7-ba0a-140b33698366_option_4_tableColumn_2\"><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math></td>\n</tr>\n<tr style=\"height: 22.3958px;\">\n<td style=\" text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"}],"correct_answer":["D"]},"createDate":1691007959815,"updateDate":1691007959815}$SATQ$::jsonb, 1691007959815, 1691007959815),
    ($SATQ$4b06557b$SATQ$, $SATQ$a90c85c1-804c-489e-9c12-436ca82f1f2d$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="275.22pt" version="1.1" viewBox="0 0 287.764248 275.22" width="287.764248pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a system of 2 lines in the x y plane with the origin labeled O. The x axis ranges from negative 1 to 9 in increments of 1. The y axis ranges from negative 2 to 5 in increments of 1. Refer to long description.">
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
   </g>
   <g id="LineCollection_1">
    <path clip-path="url(#pd58b3314fd)" d="M 37.782876 255.11539 
L 37.782876 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 79.749087 255.11539 
L 79.749087 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 100.732192 255.11539 
L 100.732192 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 121.715298 255.11539 
L 121.715298 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 142.698403 255.11539 
L 142.698403 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 163.681508 255.11539 
L 163.681508 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 184.664614 255.11539 
L 184.664614 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 205.647719 255.11539 
L 205.647719 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 226.630825 255.11539 
L 226.630825 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 247.61393 255.11539 
L 247.61393 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 32.5371 249.869614 
L 252.859706 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 32.5371 219.893749 
L 252.859706 219.893749 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 32.5371 159.942019 
L 252.859706 159.942019 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 32.5371 129.966154 
L 252.859706 129.966154 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 32.5371 99.99029 
L 252.859706 99.99029 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 32.5371 70.014425 
L 252.859706 70.014425 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 32.5371 40.03856 
L 252.859706 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#pd58b3314fd)" d="M 32.5371 189.917884 
L 258.105483 189.917884 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 255.26462 -84.317665 
L 258.105483 -85.302116 
L 255.26462 -86.286566 
L 255.26462 -84.317665 
L 258.105483 -85.302116 
" id="m26f6e98d36" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#pd58b3314fd)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m26f6e98d36" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#pd58b3314fd)" d="M 58.765981 255.11539 
L 58.765981 29.547007 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 59.771889 -242.098754 
L 58.765981 -245.672993 
L 57.760074 -242.098754 
L 59.771889 -242.098754 
L 58.765981 -245.672993 
" id="m2a4df4c3bb" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#pd58b3314fd)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m2a4df4c3bb" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#pd58b3314fd)" d="M 37.782876 193.783193 
L 37.782876 186.052575 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 79.749087 193.783193 
L 79.749087 186.052575 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 100.732192 193.783193 
L 100.732192 186.052575 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 121.715298 193.783193 
L 121.715298 186.052575 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 142.698403 193.783193 
L 142.698403 186.052575 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 163.681508 193.783193 
L 163.681508 186.052575 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 184.664614 193.783193 
L 184.664614 186.052575 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 205.647719 193.783193 
L 205.647719 186.052575 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 226.630825 193.783193 
L 226.630825 186.052575 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 247.61393 193.783193 
L 247.61393 186.052575 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#pd58b3314fd)" d="M 54.900673 249.869614 
L 62.63129 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 54.900673 219.893749 
L 62.63129 219.893749 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 54.900673 159.942019 
L 62.63129 159.942019 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 54.900673 129.966154 
L 62.63129 129.966154 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 54.900673 99.99029 
L 62.63129 99.99029 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 54.900673 70.014425 
L 62.63129 70.014425 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pd58b3314fd)" d="M 54.900673 40.03856 
L 62.63129 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#pd58b3314fd)" d="M 43.815519 256.164545 
L 43.815519 244.623837 
L 51.684183 244.623837 
L 51.684183 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#pd58b3314fd)" d="M 35.684566 249.082747 
L 35.684566 253.541657 
L 46.176118 253.541657 
L 46.176118 249.082747 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_1">
    <g clip-path="url(#pd58b3314fd)">
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
     <g transform="translate(36.505363 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_2">
    <g clip-path="url(#pd58b3314fd)">
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
     <g transform="translate(44.332051 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_3">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 2 -->
     <g transform="translate(44.332051 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#pd58b3314fd)" d="M 43.815519 226.188681 
L 43.815519 214.647973 
L 51.684183 214.647973 
L 51.684183 226.188681 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#pd58b3314fd)" d="M 35.684566 219.106883 
L 35.684566 223.565792 
L 46.176118 223.565792 
L 46.176118 219.106883 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_4">
    <g clip-path="url(#pd58b3314fd)">
     <!-- – -->
     <g transform="translate(36.505363 224.632927)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_5">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 1 -->
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
     </defs>
     <g transform="translate(44.332051 224.632927)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_6">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 1 -->
     <g transform="translate(44.332051 224.632927)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#pd58b3314fd)" d="M 43.815519 166.236951 
L 43.815519 154.696243 
L 51.684183 154.696243 
L 51.684183 166.236951 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_7">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 1 -->
     <g transform="translate(44.332051 164.681198)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_8">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 1 -->
     <g transform="translate(44.332051 164.681198)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#pd58b3314fd)" d="M 43.815519 136.261086 
L 43.815519 124.720378 
L 51.684183 124.720378 
L 51.684183 136.261086 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_9">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 2 -->
     <g transform="translate(44.332051 134.705333)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_10">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 2 -->
     <g transform="translate(44.332051 134.705333)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#pd58b3314fd)" d="M 43.815519 106.285221 
L 43.815519 94.744513 
L 51.684183 94.744513 
L 51.684183 106.285221 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_11">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 3 -->
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
     <g transform="translate(44.317988 104.729468)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="text_12">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 3 -->
     <g transform="translate(44.317988 104.729468)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#pd58b3314fd)" d="M 43.815519 76.309356 
L 43.815519 64.768648 
L 51.684183 64.768648 
L 51.684183 76.309356 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_13">
    <g clip-path="url(#pd58b3314fd)">
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
     <g transform="translate(44.360176 74.753603)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_14">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 4 -->
     <g transform="translate(44.360176 74.753603)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#pd58b3314fd)" d="M 43.815519 46.333492 
L 43.815519 34.792784 
L 51.684183 34.792784 
L 51.684183 46.333492 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_15">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 5 -->
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
     </defs>
     <g transform="translate(44.317988 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_16">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 5 -->
     <g transform="translate(44.317988 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#pd58b3314fd)" d="M 19.422659 198.311126 
L 19.422659 202.507747 
L 33.061677 202.507747 
L 33.061677 198.311126 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#pd58b3314fd)" d="M 33.061677 205.130636 
L 33.061677 193.589928 
L 40.930342 193.589928 
L 40.930342 205.130636 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_17">
    <g clip-path="url(#pd58b3314fd)">
     <!-- – -->
     <g transform="translate(26.01381 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_18">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 1 -->
     <g transform="translate(33.315921 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_19">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 1 -->
     <g transform="translate(33.315921 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#pd58b3314fd)" d="M 75.027888 205.130636 
L 75.027888 193.589928 
L 82.896553 193.589928 
L 82.896553 205.130636 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_20">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 1 -->
     <g transform="translate(75.282131 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_21">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 1 -->
     <g transform="translate(75.282131 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#pd58b3314fd)" d="M 96.010994 205.130636 
L 96.010994 193.589928 
L 103.879658 193.589928 
L 103.879658 205.130636 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_22">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 2 -->
     <g transform="translate(96.265237 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_23">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 2 -->
     <g transform="translate(96.265237 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_14">
    <path clip-path="url(#pd58b3314fd)" d="M 116.994099 205.130636 
L 116.994099 193.589928 
L 124.862763 193.589928 
L 124.862763 205.130636 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_24">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 3 -->
     <g transform="translate(117.23428 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="text_25">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 3 -->
     <g transform="translate(117.23428 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_15">
    <path clip-path="url(#pd58b3314fd)" d="M 137.977204 205.130636 
L 137.977204 193.589928 
L 145.845869 193.589928 
L 145.845869 205.130636 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_26">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 4 -->
     <g transform="translate(138.259572 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_27">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 4 -->
     <g transform="translate(138.259572 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_16">
    <path clip-path="url(#pd58b3314fd)" d="M 158.96031 205.130636 
L 158.96031 193.589928 
L 166.828974 193.589928 
L 166.828974 205.130636 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_28">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 5 -->
     <g transform="translate(159.20049 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_29">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 5 -->
     <g transform="translate(159.20049 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_17">
    <path clip-path="url(#pd58b3314fd)" d="M 179.943415 205.130636 
L 179.943415 193.589928 
L 187.81208 193.589928 
L 187.81208 205.130636 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_30">
    <g clip-path="url(#pd58b3314fd)">
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
     <g transform="translate(180.197658 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_31">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 6 -->
     <g transform="translate(180.197658 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_18">
    <path clip-path="url(#pd58b3314fd)" d="M 200.926521 205.130636 
L 200.926521 193.589928 
L 208.795185 193.589928 
L 208.795185 205.130636 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_32">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 7 -->
     <defs>
      <path d="M 12.984375 54 
Q 11.328125 54 10 52.625 
Q 8.6875 51.265625 8.09375 49.890625 
Q 7.515625 48.53125 6.84375 46.296875 
Q 6.734375 45.90625 5.46875 45.796875 
Q 4.203125 45.703125 3.515625 46 
Q 3.71875 46.875 4.9375 52.484375 
Q 6.15625 58.109375 6.546875 60.640625 
Q 6.640625 61.8125 8.109375 61.8125 
L 36.328125 61.8125 
Q 37.890625 61.8125 40.328125 61.953125 
Q 42.78125 62.109375 42.875 62.109375 
Q 43.5625 62.109375 43.5625 61.234375 
Q 43.5625 60.640625 43.171875 59.71875 
Q 42.78125 58.796875 41.9375 57.125 
Q 41.109375 55.46875 40.71875 54.6875 
L 15.046875 -0.296875 
Q 14.75 -0.59375 13.96875 -0.59375 
Q 12.890625 -0.59375 11.71875 0.4375 
Q 10.546875 1.46875 10.546875 2.15625 
L 36.53125 54 
z
" id="CrimsonText-Regular-55"></path>
     </defs>
     <g transform="translate(201.194826 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="text_33">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 7 -->
     <g transform="translate(201.194826 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_19">
    <path clip-path="url(#pd58b3314fd)" d="M 221.909626 205.130636 
L 221.909626 193.589928 
L 229.77829 193.589928 
L 229.77829 205.130636 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_34">
    <g clip-path="url(#pd58b3314fd)">
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
     <g transform="translate(222.163869 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_35">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 8 -->
     <g transform="translate(222.163869 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_20">
    <path clip-path="url(#pd58b3314fd)" d="M 242.892731 205.130636 
L 242.892731 193.589928 
L 250.761396 193.589928 
L 250.761396 205.130636 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_36">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 9 -->
     <defs>
      <path d="M 34.46875 42.09375 
Q 34.46875 49.03125 31.203125 54.203125 
Q 27.9375 59.375 22.75 59.375 
Q 18.5625 59.375 15.53125 55.46875 
Q 12.5 51.5625 12.5 45.21875 
Q 12.5 38.875 15.71875 34.625 
Q 18.953125 30.375 24.90625 30.375 
Q 27.546875 30.375 29.984375 31.78125 
Q 32.421875 33.203125 33.109375 34.765625 
Q 34.375 37.703125 34.46875 42.09375 
z
M 24.3125 63.1875 
Q 32.328125 63.1875 37.59375 56.890625 
Q 42.875 50.59375 42.875 42.28125 
Q 42.875 34.671875 39.75 27.390625 
Q 36.625 20.125 31.6875 14.703125 
Q 26.765625 9.28125 21.234375 5.328125 
Q 15.71875 1.375 10.25 -0.59375 
Q 9.671875 -0.59375 8.890625 0.578125 
Q 8.109375 1.765625 8.109375 2.25 
Q 15.625 5.171875 22.5625 11.859375 
Q 29.5 18.5625 32.125 28.21875 
Q 32.328125 29.203125 32.03125 29.203125 
Q 31.84375 29.109375 31.734375 29 
Q 30.671875 27.734375 27.25 26.65625 
Q 23.828125 25.59375 21.1875 25.59375 
Q 14.15625 25.59375 9.265625 30.859375 
Q 4.390625 36.140625 4.390625 43.453125 
Q 4.390625 51.5625 10.390625 57.375 
Q 16.40625 63.1875 24.3125 63.1875 
z
" id="CrimsonText-Regular-57"></path>
     </defs>
     <g transform="translate(243.146974 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-57"></use>
     </g>
    </g>
   </g>
   <g id="text_37">
    <g clip-path="url(#pd58b3314fd)">
     <!-- 9 -->
     <g transform="translate(243.146974 203.837171)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-57"></use>
     </g>
    </g>
   </g>
   <g id="text_38">
    <g clip-path="url(#pd58b3314fd)">
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
     <g transform="translate(47.113871 200.294995)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_39">
    <g clip-path="url(#pd58b3314fd)">
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
     <g transform="translate(55.257388 22.350767)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_40">
    <g clip-path="url(#pd58b3314fd)">
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
     <g transform="translate(260.389509 193.213197)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-120"></use>
     </g>
    </g>
   </g>
   <g id="line2d_1">
    <path clip-path="url(#pd58b3314fd)" d="M 113.473437 253.879411 
L 181.594941 34.917433 
L 181.594941 34.917433 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
   <g id="line2d_2">
    <path clip-path="url(#pd58b3314fd)" d="M 92.868784 35.367972 
L 180.753935 255.080849 
L 180.753935 255.080849 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="pd58b3314fd">
   <rect height="260.82" width="268.898496" x="7.2" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a system of 2 lines" class="sr-only"><ul><li>For the first line in the system:<br>
<ul>
<li>The line slants sharply down from left to right.</li>
<li>The line passes through the following points:<br>
<ul>
<li>(4 comma 1)</li>
<li>(StartFraction 32 Over 7 EndFraction comma 0)</li>
</ul>
</li>
</ul>
</li>
<li>For the second line in the system:<br>
<ul>
<li>The line slants sharply up from left to right.</li>
<li>The line passes through the following points:<br>
<ul>
<li>(StartFraction 32 Over 9 EndFraction comma 0)</li>
<li>(4 comma 1)</li>
</ul>
</li>
</ul>
</li>
</ul></div></figure></p>
<p style="text-align: left;">The graph of a system of linear equations is shown. The solution to the system is <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext="x"><mi>x</mi>
</math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["4"]$SATQ$::jsonb, $SATQ$["4"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="4"><mn>4</mn>
</math>. A solution to a system of equations must satisfy each equation in the system. It follows that if <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> is a solution to the system, the point&nbsp;<math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> lies on the graph in the <em>xy</em>-plane of each equation in the system. According to the graph, the point <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> that lies on the graph of each equation in the system is <math alttext="left parenthesis 4 comma 1 right parenthesis"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>1</mn></mrow></mfenced></math>. Therefore, the solution to the system is <math alttext="left parenthesis 4 comma 1 right parenthesis"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>1</mn></mrow></mfenced></math>. It follows that the value of <math alttext="x"><mi>x</mi>
</math> is <math alttext="4"><mn>4</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4b06557b","external_id":"a90c85c1-804c-489e-9c12-436ca82f1f2d","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"bd9c7235-0cb0-474a-9ba6-ee4f0ff8372e","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"E","score_band_range_cd":2,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 287.764248 275.22\" width=\"287.764248pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a system of 2 lines in the x y plane with the origin labeled O. The x axis ranges from negative 1 to 9 in increments of 1. The y axis ranges from negative 2 to 5 in increments of 1. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 287.764248 275.22 \nL 287.764248 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 8.404248 260.46 \nL 280.564248 260.46 \nL 280.564248 10.98 \nL 8.404248 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 276.098496 268.02 \nL 276.098496 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n    <g id=\"xtick_10\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n    <g id=\"ytick_9\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 37.782876 255.11539 \nL 37.782876 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 79.749087 255.11539 \nL 79.749087 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 100.732192 255.11539 \nL 100.732192 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 121.715298 255.11539 \nL 121.715298 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 142.698403 255.11539 \nL 142.698403 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 163.681508 255.11539 \nL 163.681508 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 184.664614 255.11539 \nL 184.664614 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 205.647719 255.11539 \nL 205.647719 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 226.630825 255.11539 \nL 226.630825 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 247.61393 255.11539 \nL 247.61393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 249.869614 \nL 252.859706 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 219.893749 \nL 252.859706 219.893749 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 159.942019 \nL 252.859706 159.942019 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 129.966154 \nL 252.859706 129.966154 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 99.99029 \nL 252.859706 99.99029 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 70.014425 \nL 252.859706 70.014425 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 40.03856 \nL 252.859706 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 189.917884 \nL 258.105483 189.917884 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 255.26462 -84.317665 \nL 258.105483 -85.302116 \nL 255.26462 -86.286566 \nL 255.26462 -84.317665 \nL 258.105483 -85.302116 \n\" id=\"m26f6e98d36\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m26f6e98d36\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 58.765981 255.11539 \nL 58.765981 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 59.771889 -242.098754 \nL 58.765981 -245.672993 \nL 57.760074 -242.098754 \nL 59.771889 -242.098754 \nL 58.765981 -245.672993 \n\" id=\"m2a4df4c3bb\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m2a4df4c3bb\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 37.782876 193.783193 \nL 37.782876 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 79.749087 193.783193 \nL 79.749087 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 100.732192 193.783193 \nL 100.732192 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 121.715298 193.783193 \nL 121.715298 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 142.698403 193.783193 \nL 142.698403 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 163.681508 193.783193 \nL 163.681508 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 184.664614 193.783193 \nL 184.664614 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 205.647719 193.783193 \nL 205.647719 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 226.630825 193.783193 \nL 226.630825 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 247.61393 193.783193 \nL 247.61393 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 249.869614 \nL 62.63129 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 219.893749 \nL 62.63129 219.893749 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 159.942019 \nL 62.63129 159.942019 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 129.966154 \nL 62.63129 129.966154 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 99.99029 \nL 62.63129 99.99029 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 70.014425 \nL 62.63129 70.014425 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 40.03856 \nL 62.63129 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 256.164545 \nL 43.815519 244.623837 \nL 51.684183 244.623837 \nL 51.684183 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 35.684566 249.082747 \nL 35.684566 253.541657 \nL 46.176118 253.541657 \nL 46.176118 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(36.505363 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(44.332051 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <g transform=\"translate(44.332051 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 226.188681 \nL 43.815519 214.647973 \nL 51.684183 214.647973 \nL 51.684183 226.188681 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 35.684566 219.106883 \nL 35.684566 223.565792 \nL 46.176118 223.565792 \nL 46.176118 219.106883 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- – -->\n     <g transform=\"translate(36.505363 224.632927)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n     </defs>\n     <g transform=\"translate(44.332051 224.632927)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(44.332051 224.632927)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 166.236951 \nL 43.815519 154.696243 \nL 51.684183 154.696243 \nL 51.684183 166.236951 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(44.332051 164.681198)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(44.332051 164.681198)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 136.261086 \nL 43.815519 124.720378 \nL 51.684183 124.720378 \nL 51.684183 136.261086 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <g transform=\"translate(44.332051 134.705333)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <g transform=\"translate(44.332051 134.705333)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 106.285221 \nL 43.815519 94.744513 \nL 51.684183 94.744513 \nL 51.684183 106.285221 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 3 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(44.317988 104.729468)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 3 -->\n     <g transform=\"translate(44.317988 104.729468)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 76.309356 \nL 43.815519 64.768648 \nL 51.684183 64.768648 \nL 51.684183 76.309356 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(44.360176 74.753603)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 4 -->\n     <g transform=\"translate(44.360176 74.753603)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 46.333492 \nL 43.815519 34.792784 \nL 51.684183 34.792784 \nL 51.684183 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 5 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n     </defs>\n     <g transform=\"translate(44.317988 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 5 -->\n     <g transform=\"translate(44.317988 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 19.422659 198.311126 \nL 19.422659 202.507747 \nL 33.061677 202.507747 \nL 33.061677 198.311126 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 33.061677 205.130636 \nL 33.061677 193.589928 \nL 40.930342 193.589928 \nL 40.930342 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- – -->\n     <g transform=\"translate(26.01381 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(33.315921 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(33.315921 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 75.027888 205.130636 \nL 75.027888 193.589928 \nL 82.896553 193.589928 \nL 82.896553 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(75.282131 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(75.282131 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 96.010994 205.130636 \nL 96.010994 193.589928 \nL 103.879658 193.589928 \nL 103.879658 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <g transform=\"translate(96.265237 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <g transform=\"translate(96.265237 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 116.994099 205.130636 \nL 116.994099 193.589928 \nL 124.862763 193.589928 \nL 124.862763 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 3 -->\n     <g transform=\"translate(117.23428 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 3 -->\n     <g transform=\"translate(117.23428 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 137.977204 205.130636 \nL 137.977204 193.589928 \nL 145.845869 193.589928 \nL 145.845869 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 4 -->\n     <g transform=\"translate(138.259572 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 4 -->\n     <g transform=\"translate(138.259572 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 158.96031 205.130636 \nL 158.96031 193.589928 \nL 166.828974 193.589928 \nL 166.828974 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 5 -->\n     <g transform=\"translate(159.20049 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 5 -->\n     <g transform=\"translate(159.20049 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 179.943415 205.130636 \nL 179.943415 193.589928 \nL 187.81208 193.589928 \nL 187.81208 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(180.197658 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 6 -->\n     <g transform=\"translate(180.197658 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 200.926521 205.130636 \nL 200.926521 193.589928 \nL 208.795185 193.589928 \nL 208.795185 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 7 -->\n     <defs>\n      <path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n     </defs>\n     <g transform=\"translate(201.194826 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 7 -->\n     <g transform=\"translate(201.194826 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 221.909626 205.130636 \nL 221.909626 193.589928 \nL 229.77829 193.589928 \nL 229.77829 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(222.163869 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 8 -->\n     <g transform=\"translate(222.163869 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 242.892731 205.130636 \nL 242.892731 193.589928 \nL 250.761396 193.589928 \nL 250.761396 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 9 -->\n     <defs>\n      <path d=\"M 34.46875 42.09375 \nQ 34.46875 49.03125 31.203125 54.203125 \nQ 27.9375 59.375 22.75 59.375 \nQ 18.5625 59.375 15.53125 55.46875 \nQ 12.5 51.5625 12.5 45.21875 \nQ 12.5 38.875 15.71875 34.625 \nQ 18.953125 30.375 24.90625 30.375 \nQ 27.546875 30.375 29.984375 31.78125 \nQ 32.421875 33.203125 33.109375 34.765625 \nQ 34.375 37.703125 34.46875 42.09375 \nz\nM 24.3125 63.1875 \nQ 32.328125 63.1875 37.59375 56.890625 \nQ 42.875 50.59375 42.875 42.28125 \nQ 42.875 34.671875 39.75 27.390625 \nQ 36.625 20.125 31.6875 14.703125 \nQ 26.765625 9.28125 21.234375 5.328125 \nQ 15.71875 1.375 10.25 -0.59375 \nQ 9.671875 -0.59375 8.890625 0.578125 \nQ 8.109375 1.765625 8.109375 2.25 \nQ 15.625 5.171875 22.5625 11.859375 \nQ 29.5 18.5625 32.125 28.21875 \nQ 32.328125 29.203125 32.03125 29.203125 \nQ 31.84375 29.109375 31.734375 29 \nQ 30.671875 27.734375 27.25 26.65625 \nQ 23.828125 25.59375 21.1875 25.59375 \nQ 14.15625 25.59375 9.265625 30.859375 \nQ 4.390625 36.140625 4.390625 43.453125 \nQ 4.390625 51.5625 10.390625 57.375 \nQ 16.40625 63.1875 24.3125 63.1875 \nz\n\" id=\"CrimsonText-Regular-57\"></path>\n     </defs>\n     <g transform=\"translate(243.146974 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 9 -->\n     <g transform=\"translate(243.146974 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(47.113871 200.294995)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(55.257388 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(260.389509 193.213197)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 113.473437 253.879411 \nL 181.594941 34.917433 \nL 181.594941 34.917433 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 92.868784 35.367972 \nL 180.753935 255.080849 \nL 180.753935 255.080849 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"pd58b3314fd\">\n   <rect height=\"260.82\" width=\"268.898496\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a system of 2 lines\" class=\"sr-only\"><ul><li>For the first line in the system:<br>\n<ul>\n<li>The line slants sharply down from left to right.</li>\n<li>The line passes through the following points:<br>\n<ul>\n<li>(4 comma 1)</li>\n<li>(StartFraction 32 Over 7 EndFraction comma 0)</li>\n</ul>\n</li>\n</ul>\n</li>\n<li>For the second line in the system:<br>\n<ul>\n<li>The line slants sharply up from left to right.</li>\n<li>The line passes through the following points:<br>\n<ul>\n<li>(StartFraction 32 Over 9 EndFraction comma 0)</li>\n<li>(4 comma 1)</li>\n</ul>\n</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The graph of a system of linear equations is shown. The solution to the system is <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"x\"><mi>x</mi>\n</math>?</p>","answerOptions":[],"keys":["4"],"correct_answer":["4"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"4\"><mn>4</mn>\n</math>. A solution to a system of equations must satisfy each equation in the system. It follows that if <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> is a solution to the system, the point&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> lies on the graph in the <em>xy</em>-plane of each equation in the system. According to the graph, the point <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> that lies on the graph of each equation in the system is <math alttext=\"left parenthesis 4 comma 1 right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>1</mn></mrow></mfenced></math>. Therefore, the solution to the system is <math alttext=\"left parenthesis 4 comma 1 right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>1</mn></mrow></mfenced></math>. It follows that the value of <math alttext=\"x\"><mi>x</mi>\n</math> is <math alttext=\"4\"><mn>4</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357393,"pPcc":"SAT#H","questionId":"4b06557b","skill_cd":"H.D.","score_band_range_cd":2,"skill_desc":"Systems of two linear equations in two variables","createDate":1730147357393,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"a90c85c1-804c-489e-9c12-436ca82f1f2d","primary_class_cd":"H","uId":"bd9c7235-0cb0-474a-9ba6-ee4f0ff8372e","difficulty":"E"},"raw_detail":{"answerOptions":[],"externalid":"a90c85c1-804c-489e-9c12-436ca82f1f2d","keys":["4"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"4\"><mn>4</mn>\n</math>. A solution to a system of equations must satisfy each equation in the system. It follows that if <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> is a solution to the system, the point&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> lies on the graph in the <em>xy</em>-plane of each equation in the system. According to the graph, the point <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> that lies on the graph of each equation in the system is <math alttext=\"left parenthesis 4 comma 1 right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>1</mn></mrow></mfenced></math>. Therefore, the solution to the system is <math alttext=\"left parenthesis 4 comma 1 right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>1</mn></mrow></mfenced></math>. It follows that the value of <math alttext=\"x\"><mi>x</mi>\n</math> is <math alttext=\"4\"><mn>4</mn>\n</math>.</p>","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 287.764248 275.22\" width=\"287.764248pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a system of 2 lines in the x y plane with the origin labeled O. The x axis ranges from negative 1 to 9 in increments of 1. The y axis ranges from negative 2 to 5 in increments of 1. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 287.764248 275.22 \nL 287.764248 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 8.404248 260.46 \nL 280.564248 260.46 \nL 280.564248 10.98 \nL 8.404248 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 276.098496 268.02 \nL 276.098496 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n    <g id=\"xtick_10\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n    <g id=\"ytick_9\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 37.782876 255.11539 \nL 37.782876 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 79.749087 255.11539 \nL 79.749087 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 100.732192 255.11539 \nL 100.732192 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 121.715298 255.11539 \nL 121.715298 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 142.698403 255.11539 \nL 142.698403 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 163.681508 255.11539 \nL 163.681508 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 184.664614 255.11539 \nL 184.664614 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 205.647719 255.11539 \nL 205.647719 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 226.630825 255.11539 \nL 226.630825 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 247.61393 255.11539 \nL 247.61393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 249.869614 \nL 252.859706 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 219.893749 \nL 252.859706 219.893749 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 159.942019 \nL 252.859706 159.942019 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 129.966154 \nL 252.859706 129.966154 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 99.99029 \nL 252.859706 99.99029 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 70.014425 \nL 252.859706 70.014425 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 40.03856 \nL 252.859706 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 32.5371 189.917884 \nL 258.105483 189.917884 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 255.26462 -84.317665 \nL 258.105483 -85.302116 \nL 255.26462 -86.286566 \nL 255.26462 -84.317665 \nL 258.105483 -85.302116 \n\" id=\"m26f6e98d36\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m26f6e98d36\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 58.765981 255.11539 \nL 58.765981 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 59.771889 -242.098754 \nL 58.765981 -245.672993 \nL 57.760074 -242.098754 \nL 59.771889 -242.098754 \nL 58.765981 -245.672993 \n\" id=\"m2a4df4c3bb\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m2a4df4c3bb\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 37.782876 193.783193 \nL 37.782876 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 79.749087 193.783193 \nL 79.749087 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 100.732192 193.783193 \nL 100.732192 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 121.715298 193.783193 \nL 121.715298 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 142.698403 193.783193 \nL 142.698403 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 163.681508 193.783193 \nL 163.681508 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 184.664614 193.783193 \nL 184.664614 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 205.647719 193.783193 \nL 205.647719 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 226.630825 193.783193 \nL 226.630825 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 247.61393 193.783193 \nL 247.61393 186.052575 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 249.869614 \nL 62.63129 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 219.893749 \nL 62.63129 219.893749 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 159.942019 \nL 62.63129 159.942019 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 129.966154 \nL 62.63129 129.966154 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 99.99029 \nL 62.63129 99.99029 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 70.014425 \nL 62.63129 70.014425 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 54.900673 40.03856 \nL 62.63129 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 256.164545 \nL 43.815519 244.623837 \nL 51.684183 244.623837 \nL 51.684183 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 35.684566 249.082747 \nL 35.684566 253.541657 \nL 46.176118 253.541657 \nL 46.176118 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(36.505363 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(44.332051 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <g transform=\"translate(44.332051 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 226.188681 \nL 43.815519 214.647973 \nL 51.684183 214.647973 \nL 51.684183 226.188681 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 35.684566 219.106883 \nL 35.684566 223.565792 \nL 46.176118 223.565792 \nL 46.176118 219.106883 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- – -->\n     <g transform=\"translate(36.505363 224.632927)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n     </defs>\n     <g transform=\"translate(44.332051 224.632927)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(44.332051 224.632927)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 166.236951 \nL 43.815519 154.696243 \nL 51.684183 154.696243 \nL 51.684183 166.236951 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(44.332051 164.681198)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(44.332051 164.681198)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 136.261086 \nL 43.815519 124.720378 \nL 51.684183 124.720378 \nL 51.684183 136.261086 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <g transform=\"translate(44.332051 134.705333)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <g transform=\"translate(44.332051 134.705333)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 106.285221 \nL 43.815519 94.744513 \nL 51.684183 94.744513 \nL 51.684183 106.285221 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 3 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(44.317988 104.729468)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 3 -->\n     <g transform=\"translate(44.317988 104.729468)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 76.309356 \nL 43.815519 64.768648 \nL 51.684183 64.768648 \nL 51.684183 76.309356 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(44.360176 74.753603)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 4 -->\n     <g transform=\"translate(44.360176 74.753603)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 43.815519 46.333492 \nL 43.815519 34.792784 \nL 51.684183 34.792784 \nL 51.684183 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 5 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n     </defs>\n     <g transform=\"translate(44.317988 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 5 -->\n     <g transform=\"translate(44.317988 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 19.422659 198.311126 \nL 19.422659 202.507747 \nL 33.061677 202.507747 \nL 33.061677 198.311126 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 33.061677 205.130636 \nL 33.061677 193.589928 \nL 40.930342 193.589928 \nL 40.930342 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- – -->\n     <g transform=\"translate(26.01381 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(33.315921 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(33.315921 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 75.027888 205.130636 \nL 75.027888 193.589928 \nL 82.896553 193.589928 \nL 82.896553 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(75.282131 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 1 -->\n     <g transform=\"translate(75.282131 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 96.010994 205.130636 \nL 96.010994 193.589928 \nL 103.879658 193.589928 \nL 103.879658 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <g transform=\"translate(96.265237 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 2 -->\n     <g transform=\"translate(96.265237 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 116.994099 205.130636 \nL 116.994099 193.589928 \nL 124.862763 193.589928 \nL 124.862763 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 3 -->\n     <g transform=\"translate(117.23428 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 3 -->\n     <g transform=\"translate(117.23428 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 137.977204 205.130636 \nL 137.977204 193.589928 \nL 145.845869 193.589928 \nL 145.845869 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 4 -->\n     <g transform=\"translate(138.259572 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 4 -->\n     <g transform=\"translate(138.259572 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 158.96031 205.130636 \nL 158.96031 193.589928 \nL 166.828974 193.589928 \nL 166.828974 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 5 -->\n     <g transform=\"translate(159.20049 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 5 -->\n     <g transform=\"translate(159.20049 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 179.943415 205.130636 \nL 179.943415 193.589928 \nL 187.81208 193.589928 \nL 187.81208 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(180.197658 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 6 -->\n     <g transform=\"translate(180.197658 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 200.926521 205.130636 \nL 200.926521 193.589928 \nL 208.795185 193.589928 \nL 208.795185 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 7 -->\n     <defs>\n      <path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n     </defs>\n     <g transform=\"translate(201.194826 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 7 -->\n     <g transform=\"translate(201.194826 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 221.909626 205.130636 \nL 221.909626 193.589928 \nL 229.77829 193.589928 \nL 229.77829 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(222.163869 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 8 -->\n     <g transform=\"translate(222.163869 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 242.892731 205.130636 \nL 242.892731 193.589928 \nL 250.761396 193.589928 \nL 250.761396 205.130636 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 9 -->\n     <defs>\n      <path d=\"M 34.46875 42.09375 \nQ 34.46875 49.03125 31.203125 54.203125 \nQ 27.9375 59.375 22.75 59.375 \nQ 18.5625 59.375 15.53125 55.46875 \nQ 12.5 51.5625 12.5 45.21875 \nQ 12.5 38.875 15.71875 34.625 \nQ 18.953125 30.375 24.90625 30.375 \nQ 27.546875 30.375 29.984375 31.78125 \nQ 32.421875 33.203125 33.109375 34.765625 \nQ 34.375 37.703125 34.46875 42.09375 \nz\nM 24.3125 63.1875 \nQ 32.328125 63.1875 37.59375 56.890625 \nQ 42.875 50.59375 42.875 42.28125 \nQ 42.875 34.671875 39.75 27.390625 \nQ 36.625 20.125 31.6875 14.703125 \nQ 26.765625 9.28125 21.234375 5.328125 \nQ 15.71875 1.375 10.25 -0.59375 \nQ 9.671875 -0.59375 8.890625 0.578125 \nQ 8.109375 1.765625 8.109375 2.25 \nQ 15.625 5.171875 22.5625 11.859375 \nQ 29.5 18.5625 32.125 28.21875 \nQ 32.328125 29.203125 32.03125 29.203125 \nQ 31.84375 29.109375 31.734375 29 \nQ 30.671875 27.734375 27.25 26.65625 \nQ 23.828125 25.59375 21.1875 25.59375 \nQ 14.15625 25.59375 9.265625 30.859375 \nQ 4.390625 36.140625 4.390625 43.453125 \nQ 4.390625 51.5625 10.390625 57.375 \nQ 16.40625 63.1875 24.3125 63.1875 \nz\n\" id=\"CrimsonText-Regular-57\"></path>\n     </defs>\n     <g transform=\"translate(243.146974 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- 9 -->\n     <g transform=\"translate(243.146974 203.837171)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(47.113871 200.294995)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(55.257388 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#pd58b3314fd)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(260.389509 193.213197)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 113.473437 253.879411 \nL 181.594941 34.917433 \nL 181.594941 34.917433 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#pd58b3314fd)\" d=\"M 92.868784 35.367972 \nL 180.753935 255.080849 \nL 180.753935 255.080849 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"pd58b3314fd\">\n   <rect height=\"260.82\" width=\"268.898496\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a system of 2 lines\" class=\"sr-only\"><ul><li>For the first line in the system:<br>\n<ul>\n<li>The line slants sharply down from left to right.</li>\n<li>The line passes through the following points:<br>\n<ul>\n<li>(4 comma 1)</li>\n<li>(StartFraction 32 Over 7 EndFraction comma 0)</li>\n</ul>\n</li>\n</ul>\n</li>\n<li>For the second line in the system:<br>\n<ul>\n<li>The line slants sharply up from left to right.</li>\n<li>The line passes through the following points:<br>\n<ul>\n<li>(StartFraction 32 Over 9 EndFraction comma 0)</li>\n<li>(4 comma 1)</li>\n</ul>\n</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The graph of a system of linear equations is shown. The solution to the system is <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"x\"><mi>x</mi>\n</math>?</p>","type":"spr","correct_answer":["4"]},"createDate":1730147357393,"updateDate":1730147357393}$SATQ$::jsonb, 1730147357393, 1730147357393),
    ($SATQ$4b0c156b$SATQ$, $SATQ$5c630c81-9ef1-4180-821f-1dd4851610cf$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">In the linear function <math alttext="h"><mi>h</mi>
</math>,&nbsp;<math alttext="h left parenthesis 28 right parenthesis equals 15"><mi>h</mi><mo>(</mo><mn>28</mn><mo>)</mo><mo>=</mo><mn>15</mn></math> and&nbsp;<math alttext="h left parenthesis 26 right parenthesis equals 22"><mi>h</mi><mo>(</mo><mn>26</mn><mo>)</mo><mo>=</mo><mn>22</mn></math>. Which equation defines <math alttext="h"><mi>h</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"8c60840a-388f-48ac-8d7c-81af146b0c04","content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative two sevenths x plus 23\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>2</mn><mn>7</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>23</mn></math></p>"},{"id":"4e17e1be-ddbb-4cc4-895a-ab69b938a416","content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative two sevenths x plus 113\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>2</mn><mn>7</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>113</mn></math></p>"},{"id":"462f6367-5b60-4647-9530-777c03d8e500","content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative seven halves x plus 23\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>23</mn></math></p>"},{"id":"d2414269-2a91-4071-be4e-975247256ac7","content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative seven halves x plus 113\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>113</mn></math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["d2414269-2a91-4071-be4e-975247256ac7"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. An equation defining <math alttext="h"><mi>h</mi>
</math> can be written in the form <math alttext="y equals m x plus b"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where&nbsp;<math alttext="y equals h left parenthesis x right parenthesis"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math>, <math alttext="m"><mi>m</mi>
</math> represents the slope of the graph of&nbsp;<math alttext="y equals h left parenthesis x right parenthesis"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math> in the <em>xy</em>-plane, and <math alttext="b"><mi>b</mi>
</math> represents the <em>y</em>-coordinate of the <em>y</em>-intercept of the graph. It&rsquo;s given that <math alttext="h left parenthesis 28 right parenthesis equals 15"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>15</mn></math> and <math alttext="h left parenthesis 26 right parenthesis equals 22"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>. It follows that the points <math alttext="left parenthesis 28 comma 15 right parenthesis"><mfenced><mrow><mn>28</mn><mo>,</mo><mn>15</mn></mrow></mfenced></math> and&nbsp;<math alttext="left parenthesis 26 comma 22 right parenthesis"><mfenced><mrow><mn>26</mn><mo>,</mo><mn>22</mn></mrow></mfenced></math> are on the graph of <math alttext="y equals h left parenthesis x right parenthesis"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math> in the <em>xy</em>-plane. The slope can be found by using any two points, <math alttext="left parenthesis x 1 comma y 1 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and&nbsp;<math alttext="left parenthesis x 2 comma y 2 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, and the formula&nbsp;<math alttext="m equals StartFraction y 2 minus y 1 Over x 2 minus x 1 EndFraction"><mi>m</mi><mo>=</mo><mfrac><mrow><msub><mi>y</mi><mn>2</mn></msub><mo>-</mo><msub><mi>y</mi><mn>1</mn></msub></mrow><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>-</mo><msub><mi>x</mi><mn>1</mn></msub></mrow></mfrac></math>. Substituting&nbsp;<math alttext="left parenthesis 28 comma 15 right parenthesis"><mfenced><mrow><mn>28</mn><mo>,</mo><mn>15</mn></mrow></mfenced></math>&nbsp;and <math alttext="left parenthesis 26 comma 22 right parenthesis"><mfenced><mrow><mn>26</mn><mo>,</mo><mn>22</mn></mrow></mfenced></math> for <math alttext="left parenthesis x 1 comma y 1 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math alttext="left parenthesis x 2 comma y 2 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, respectively, in the slope formula yields <math alttext="m equals StartFraction 22 minus 15 Over 26 minus 28 EndFraction"><mi>m</mi><mo>=</mo><mfrac><mrow><mn>22</mn><mo>-</mo><mn>15</mn></mrow><mrow><mn>26</mn><mo>-</mo><mn>28</mn></mrow></mfrac></math>, or <math alttext="m equals negative seven halves"><mrow>
	<mi>m</mi>
	<mo>=</mo>
	<mrow>
		<mo>-</mo>
		<mfrac>
			<mn>7</mn>
			<mn>2</mn>
		</mfrac>
	</mrow>
</mrow>
</math>. Substituting <math alttext="negative seven halves"><mrow>
	<mo>-</mo>
	<mfrac>
		<mn>7</mn>
		<mn>2</mn>
	</mfrac>
</mrow>
</math> for <math alttext="m"><mi>m</mi>
</math> and <math alttext="left parenthesis 28 comma 15 right parenthesis"><mfenced><mrow><mn>28</mn><mo>,</mo><mn>15</mn></mrow></mfenced></math> for <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> in the equation <math alttext="y equals m x plus b"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>&nbsp;yields <math alttext="15 equals left parenthesis negative seven halves right parenthesis left parenthesis 28 right parenthesis plus b"><mn>15</mn><mo>=</mo><mfenced><mrow><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac></mrow></mfenced><mfenced><mn>28</mn></mfenced><mo>+</mo><mi>b</mi></math>, or <math alttext="15 equals negative 98 plus b"><mn>15</mn><mo>=</mo><mo>-</mo><mn>98</mn><mo>+</mo><mi>b</mi></math>. Adding <math alttext="98"><mn>98</mn>
</math> to both sides of this equation yields <math alttext="113 equals b"><mn>113</mn><mo>=</mo><mi>b</mi></math>. Substituting <math alttext="negative seven halves"><mrow>
	<mo>-</mo>
	<mfrac>
		<mn>7</mn>
		<mn>2</mn>
	</mfrac>
</mrow>
</math> for <math alttext="m"><mi>m</mi>
</math> and <math alttext="113"><mn>113</mn>
</math> for <math alttext="b"><mi>b</mi>
</math> in the equation <math alttext="y equals m x plus b"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields&nbsp;<math alttext="y equals minus seven halves x plus 113"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac><mi>x</mi><mo>+</mo><mn>113</mn></math>. Since <math alttext="y equals h left parenthesis x right parenthesis"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math>, it follows that the equation that defines <math alttext="h"><mi>h</mi>
</math> is&nbsp;<math alttext="h left parenthesis x right parenthesis equals minus seven halves x plus 113"><mi>h</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac><mi>x</mi><mo>+</mo><mn>113</mn></math>.</p>
<p style="text-align: left;">Choice A is incorrect. For this function,&nbsp;<math alttext="h left parenthesis 26 right parenthesis equals StartFraction 109 Over 7 EndFraction"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mfrac><mn>109</mn><mn>7</mn></mfrac></math>, not&nbsp;<math alttext="h left parenthesis 26 right parenthesis equals 22"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>.</p>
<p style="text-align: left;">Choice B is incorrect. For this function,&nbsp;<math alttext="h left parenthesis 28 right parenthesis equals 105"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>105</mn></math>, not&nbsp;<math alttext="h left parenthesis 28 right parenthesis equals 15"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>15</mn></math>, and&nbsp;<math alttext="h left parenthesis 26 right parenthesis equals StartFraction 739 Over 7 EndFraction"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mfrac><mn>739</mn><mn>7</mn></mfrac></math>, not&nbsp;<math alttext="h left parenthesis 26 right parenthesis equals 22"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>.</p>
<p style="text-align: left;">Choice C is incorrect. For this function,&nbsp;<math alttext="h left parenthesis 28 right parenthesis equals negative 75"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mo>-</mo><mn>75</mn></math>, not&nbsp;<math alttext="h left parenthesis 28 right parenthesis equals 15"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>15</mn></math>, and&nbsp;<math alttext="h left parenthesis 26 right parenthesis equals negative 68"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mo>-</mo><mn>68</mn></math>, not&nbsp;<math alttext="h left parenthesis 26 right parenthesis equals 22"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4b0c156b","external_id":"5c630c81-9ef1-4180-821f-1dd4851610cf","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"9a6e8faf-15b0-4fc1-8ba6-ccca78c17a51","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">In the linear function <math alttext=\"h\"><mi>h</mi>\n</math>,&nbsp;<math alttext=\"h left parenthesis 28 right parenthesis equals 15\"><mi>h</mi><mo>(</mo><mn>28</mn><mo>)</mo><mo>=</mo><mn>15</mn></math> and&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals 22\"><mi>h</mi><mo>(</mo><mn>26</mn><mo>)</mo><mo>=</mo><mn>22</mn></math>. Which equation defines <math alttext=\"h\"><mi>h</mi>\n</math>?</p>","answerOptions":[{"id":"8c60840a-388f-48ac-8d7c-81af146b0c04","content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative two sevenths x plus 23\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>2</mn><mn>7</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>23</mn></math></p>"},{"id":"4e17e1be-ddbb-4cc4-895a-ab69b938a416","content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative two sevenths x plus 113\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>2</mn><mn>7</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>113</mn></math></p>"},{"id":"462f6367-5b60-4647-9530-777c03d8e500","content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative seven halves x plus 23\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>23</mn></math></p>"},{"id":"d2414269-2a91-4071-be4e-975247256ac7","content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative seven halves x plus 113\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>113</mn></math></p>"}],"keys":["d2414269-2a91-4071-be4e-975247256ac7"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. An equation defining <math alttext=\"h\"><mi>h</mi>\n</math> can be written in the form <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where&nbsp;<math alttext=\"y equals h left parenthesis x right parenthesis\"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math>, <math alttext=\"m\"><mi>m</mi>\n</math> represents the slope of the graph of&nbsp;<math alttext=\"y equals h left parenthesis x right parenthesis\"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math> in the <em>xy</em>-plane, and <math alttext=\"b\"><mi>b</mi>\n</math> represents the <em>y</em>-coordinate of the <em>y</em>-intercept of the graph. It&rsquo;s given that <math alttext=\"h left parenthesis 28 right parenthesis equals 15\"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>15</mn></math> and <math alttext=\"h left parenthesis 26 right parenthesis equals 22\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>. It follows that the points <math alttext=\"left parenthesis 28 comma 15 right parenthesis\"><mfenced><mrow><mn>28</mn><mo>,</mo><mn>15</mn></mrow></mfenced></math> and&nbsp;<math alttext=\"left parenthesis 26 comma 22 right parenthesis\"><mfenced><mrow><mn>26</mn><mo>,</mo><mn>22</mn></mrow></mfenced></math> are on the graph of <math alttext=\"y equals h left parenthesis x right parenthesis\"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math> in the <em>xy</em>-plane. The slope can be found by using any two points, <math alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and&nbsp;<math alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, and the formula&nbsp;<math alttext=\"m equals StartFraction y 2 minus y 1 Over x 2 minus x 1 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><msub><mi>y</mi><mn>2</mn></msub><mo>-</mo><msub><mi>y</mi><mn>1</mn></msub></mrow><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>-</mo><msub><mi>x</mi><mn>1</mn></msub></mrow></mfrac></math>. Substituting&nbsp;<math alttext=\"left parenthesis 28 comma 15 right parenthesis\"><mfenced><mrow><mn>28</mn><mo>,</mo><mn>15</mn></mrow></mfenced></math>&nbsp;and <math alttext=\"left parenthesis 26 comma 22 right parenthesis\"><mfenced><mrow><mn>26</mn><mo>,</mo><mn>22</mn></mrow></mfenced></math> for <math alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, respectively, in the slope formula yields <math alttext=\"m equals StartFraction 22 minus 15 Over 26 minus 28 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><mn>22</mn><mo>-</mo><mn>15</mn></mrow><mrow><mn>26</mn><mo>-</mo><mn>28</mn></mrow></mfrac></math>, or <math alttext=\"m equals negative seven halves\"><mrow>\n\t<mi>m</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mfrac>\n\t\t\t<mn>7</mn>\n\t\t\t<mn>2</mn>\n\t\t</mfrac>\n\t</mrow>\n</mrow>\n</math>. Substituting <math alttext=\"negative seven halves\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>7</mn>\n\t\t<mn>2</mn>\n\t</mfrac>\n</mrow>\n</math> for <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"left parenthesis 28 comma 15 right parenthesis\"><mfenced><mrow><mn>28</mn><mo>,</mo><mn>15</mn></mrow></mfenced></math> for <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> in the equation <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>&nbsp;yields <math alttext=\"15 equals left parenthesis negative seven halves right parenthesis left parenthesis 28 right parenthesis plus b\"><mn>15</mn><mo>=</mo><mfenced><mrow><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac></mrow></mfenced><mfenced><mn>28</mn></mfenced><mo>+</mo><mi>b</mi></math>, or <math alttext=\"15 equals negative 98 plus b\"><mn>15</mn><mo>=</mo><mo>-</mo><mn>98</mn><mo>+</mo><mi>b</mi></math>. Adding <math alttext=\"98\"><mn>98</mn>\n</math> to both sides of this equation yields <math alttext=\"113 equals b\"><mn>113</mn><mo>=</mo><mi>b</mi></math>. Substituting <math alttext=\"negative seven halves\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>7</mn>\n\t\t<mn>2</mn>\n\t</mfrac>\n</mrow>\n</math> for <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"113\"><mn>113</mn>\n</math> for <math alttext=\"b\"><mi>b</mi>\n</math> in the equation <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields&nbsp;<math alttext=\"y equals minus seven halves x plus 113\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac><mi>x</mi><mo>+</mo><mn>113</mn></math>. Since <math alttext=\"y equals h left parenthesis x right parenthesis\"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math>, it follows that the equation that defines <math alttext=\"h\"><mi>h</mi>\n</math> is&nbsp;<math alttext=\"h left parenthesis x right parenthesis equals minus seven halves x plus 113\"><mi>h</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac><mi>x</mi><mo>+</mo><mn>113</mn></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. For this function,&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals StartFraction 109 Over 7 EndFraction\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mfrac><mn>109</mn><mn>7</mn></mfrac></math>, not&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals 22\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. For this function,&nbsp;<math alttext=\"h left parenthesis 28 right parenthesis equals 105\"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>105</mn></math>, not&nbsp;<math alttext=\"h left parenthesis 28 right parenthesis equals 15\"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>15</mn></math>, and&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals StartFraction 739 Over 7 EndFraction\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mfrac><mn>739</mn><mn>7</mn></mfrac></math>, not&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals 22\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. For this function,&nbsp;<math alttext=\"h left parenthesis 28 right parenthesis equals negative 75\"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mo>-</mo><mn>75</mn></math>, not&nbsp;<math alttext=\"h left parenthesis 28 right parenthesis equals 15\"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>15</mn></math>, and&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals negative 68\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mo>-</mo><mn>68</mn></math>, not&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals 22\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357389,"pPcc":"SAT#H","questionId":"4b0c156b","skill_cd":"H.B.","score_band_range_cd":5,"skill_desc":"Linear functions","createDate":1730147357389,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"5c630c81-9ef1-4180-821f-1dd4851610cf","primary_class_cd":"H","uId":"9a6e8faf-15b0-4fc1-8ba6-ccca78c17a51","difficulty":"M"},"raw_detail":{"answerOptions":[{"content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative two sevenths x plus 23\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>2</mn><mn>7</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>23</mn></math></p>","id":"8c60840a-388f-48ac-8d7c-81af146b0c04"},{"content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative two sevenths x plus 113\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>2</mn><mn>7</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>113</mn></math></p>","id":"4e17e1be-ddbb-4cc4-895a-ab69b938a416"},{"content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative seven halves x plus 23\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>23</mn></math></p>","id":"462f6367-5b60-4647-9530-777c03d8e500"},{"content":"<p><math alttext=\"h left parenthesis x right parenthesis equals negative seven halves x plus 113\"><mi>h</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac></mrow><mi>x</mi><mo>+</mo><mn>113</mn></math></p>","id":"d2414269-2a91-4071-be4e-975247256ac7"}],"externalid":"5c630c81-9ef1-4180-821f-1dd4851610cf","keys":["d2414269-2a91-4071-be4e-975247256ac7"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. An equation defining <math alttext=\"h\"><mi>h</mi>\n</math> can be written in the form <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where&nbsp;<math alttext=\"y equals h left parenthesis x right parenthesis\"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math>, <math alttext=\"m\"><mi>m</mi>\n</math> represents the slope of the graph of&nbsp;<math alttext=\"y equals h left parenthesis x right parenthesis\"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math> in the <em>xy</em>-plane, and <math alttext=\"b\"><mi>b</mi>\n</math> represents the <em>y</em>-coordinate of the <em>y</em>-intercept of the graph. It&rsquo;s given that <math alttext=\"h left parenthesis 28 right parenthesis equals 15\"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>15</mn></math> and <math alttext=\"h left parenthesis 26 right parenthesis equals 22\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>. It follows that the points <math alttext=\"left parenthesis 28 comma 15 right parenthesis\"><mfenced><mrow><mn>28</mn><mo>,</mo><mn>15</mn></mrow></mfenced></math> and&nbsp;<math alttext=\"left parenthesis 26 comma 22 right parenthesis\"><mfenced><mrow><mn>26</mn><mo>,</mo><mn>22</mn></mrow></mfenced></math> are on the graph of <math alttext=\"y equals h left parenthesis x right parenthesis\"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math> in the <em>xy</em>-plane. The slope can be found by using any two points, <math alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and&nbsp;<math alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, and the formula&nbsp;<math alttext=\"m equals StartFraction y 2 minus y 1 Over x 2 minus x 1 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><msub><mi>y</mi><mn>2</mn></msub><mo>-</mo><msub><mi>y</mi><mn>1</mn></msub></mrow><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>-</mo><msub><mi>x</mi><mn>1</mn></msub></mrow></mfrac></math>. Substituting&nbsp;<math alttext=\"left parenthesis 28 comma 15 right parenthesis\"><mfenced><mrow><mn>28</mn><mo>,</mo><mn>15</mn></mrow></mfenced></math>&nbsp;and <math alttext=\"left parenthesis 26 comma 22 right parenthesis\"><mfenced><mrow><mn>26</mn><mo>,</mo><mn>22</mn></mrow></mfenced></math> for <math alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, respectively, in the slope formula yields <math alttext=\"m equals StartFraction 22 minus 15 Over 26 minus 28 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><mn>22</mn><mo>-</mo><mn>15</mn></mrow><mrow><mn>26</mn><mo>-</mo><mn>28</mn></mrow></mfrac></math>, or <math alttext=\"m equals negative seven halves\"><mrow>\n\t<mi>m</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mfrac>\n\t\t\t<mn>7</mn>\n\t\t\t<mn>2</mn>\n\t\t</mfrac>\n\t</mrow>\n</mrow>\n</math>. Substituting <math alttext=\"negative seven halves\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>7</mn>\n\t\t<mn>2</mn>\n\t</mfrac>\n</mrow>\n</math> for <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"left parenthesis 28 comma 15 right parenthesis\"><mfenced><mrow><mn>28</mn><mo>,</mo><mn>15</mn></mrow></mfenced></math> for <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> in the equation <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>&nbsp;yields <math alttext=\"15 equals left parenthesis negative seven halves right parenthesis left parenthesis 28 right parenthesis plus b\"><mn>15</mn><mo>=</mo><mfenced><mrow><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac></mrow></mfenced><mfenced><mn>28</mn></mfenced><mo>+</mo><mi>b</mi></math>, or <math alttext=\"15 equals negative 98 plus b\"><mn>15</mn><mo>=</mo><mo>-</mo><mn>98</mn><mo>+</mo><mi>b</mi></math>. Adding <math alttext=\"98\"><mn>98</mn>\n</math> to both sides of this equation yields <math alttext=\"113 equals b\"><mn>113</mn><mo>=</mo><mi>b</mi></math>. Substituting <math alttext=\"negative seven halves\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>7</mn>\n\t\t<mn>2</mn>\n\t</mfrac>\n</mrow>\n</math> for <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"113\"><mn>113</mn>\n</math> for <math alttext=\"b\"><mi>b</mi>\n</math> in the equation <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields&nbsp;<math alttext=\"y equals minus seven halves x plus 113\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac><mi>x</mi><mo>+</mo><mn>113</mn></math>. Since <math alttext=\"y equals h left parenthesis x right parenthesis\"><mi>y</mi><mo>=</mo><mi>h</mi><mfenced><mi>x</mi></mfenced></math>, it follows that the equation that defines <math alttext=\"h\"><mi>h</mi>\n</math> is&nbsp;<math alttext=\"h left parenthesis x right parenthesis equals minus seven halves x plus 113\"><mi>h</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mo>-</mo><mfrac><mn>7</mn><mn>2</mn></mfrac><mi>x</mi><mo>+</mo><mn>113</mn></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. For this function,&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals StartFraction 109 Over 7 EndFraction\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mfrac><mn>109</mn><mn>7</mn></mfrac></math>, not&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals 22\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. For this function,&nbsp;<math alttext=\"h left parenthesis 28 right parenthesis equals 105\"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>105</mn></math>, not&nbsp;<math alttext=\"h left parenthesis 28 right parenthesis equals 15\"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>15</mn></math>, and&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals StartFraction 739 Over 7 EndFraction\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mfrac><mn>739</mn><mn>7</mn></mfrac></math>, not&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals 22\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. For this function,&nbsp;<math alttext=\"h left parenthesis 28 right parenthesis equals negative 75\"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mo>-</mo><mn>75</mn></math>, not&nbsp;<math alttext=\"h left parenthesis 28 right parenthesis equals 15\"><mi>h</mi><mfenced><mn>28</mn></mfenced><mo>=</mo><mn>15</mn></math>, and&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals negative 68\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mo>-</mo><mn>68</mn></math>, not&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals 22\"><mi>h</mi><mfenced><mn>26</mn></mfenced><mo>=</mo><mn>22</mn></math>.</p>","stem":"<p style=\"text-align: left;\">In the linear function <math alttext=\"h\"><mi>h</mi>\n</math>,&nbsp;<math alttext=\"h left parenthesis 28 right parenthesis equals 15\"><mi>h</mi><mo>(</mo><mn>28</mn><mo>)</mo><mo>=</mo><mn>15</mn></math> and&nbsp;<math alttext=\"h left parenthesis 26 right parenthesis equals 22\"><mi>h</mi><mo>(</mo><mn>26</mn><mo>)</mo><mo>=</mo><mn>22</mn></math>. Which equation defines <math alttext=\"h\"><mi>h</mi>\n</math>?</p>","type":"mcq","correct_answer":["D"]},"createDate":1730147357389,"updateDate":1730147357389}$SATQ$::jsonb, 1730147357389, 1730147357389),
    ($SATQ$4b76c7f1$SATQ$, NULL, NULL, $SATQ$027878-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, $SATQ$<div class="stimulus_reference " xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1"><p class="standalone_statement style:1 "><span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_000_5aab8e7e.png" alt="Equation 1: 2 x, plus 7 y, equals 9. Equation 2: 8 x, plus 28 y, equals a"></span></span></p></div>
$SATQ$, $SATQ$<p class="stem_paragraph ">In the given system of equations, <span class="italic">a</span> is a constant. If the system has infinitely many solutions, what is the value of <span class="italic">a</span> ?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p class=\"choice_paragraph \">4</p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \">9</p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \">36</p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \">54</p>\n"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice C is correct. A system of two linear equations has infinitely many solutions if one equation is equivalent to the other. This means that when the two equations are written in the same form, each coefficient or constant in one equation is equal to the corresponding coefficient or constant in the other equation multiplied by the same number. The equations in the given system of equations are written in the same form, with<span class="italic"> x</span> and<span class="italic"> y</span> on the left-hand side of the equation and a constant on the right-hand side of the equation. The coefficients of <span class="italic">x</span> and <span class="italic">y</span> in the second equation are equal to the coefficients of <span class="italic">x</span> and<span class="italic"> y</span>, respectively, in the first equation multiplied by 4: <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_001_18a49e7b.png" alt="8 equals, 2 times 4 "></span> and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_002_bacb0087.png" alt="28 equals, 7 times 4"></span>. Therefore, the constant in the second equation must be equal to 4 times the constant in the first equation: <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_003_f83772b1.png" alt="a, equals, 9 times 4"></span>, or <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_004_41230bf8.png" alt="a, equals 36"></span>.<p>Choices A, B, and D are incorrect. When <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_005_3fae7c60.png" alt="a, equals 4"></span>, <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_006_221a0602.png" alt="a, equals 9"></span>, or <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_007_46cee470.png" alt="a, equals 54"></span>, the given system of equations has no solution.</p><p>&nbsp;</p></p>
$SATQ$, false, 8, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"4b76c7f1","external_id":null,"disclosed_item_id":"027878-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_000_5aab8e7e.png\" alt=\"Equation 1: 2 x, plus 7 y, equals 9. Equation 2: 8 x, plus 28 y, equals a\"></span></span></p></div>\n","stem":"<p class=\"stem_paragraph \">In the given system of equations, <span class=\"italic\">a</span> is a constant. If the system has infinitely many solutions, what is the value of <span class=\"italic\">a</span> ?</p>\n","answerOptions":[{"id":"a","content":"<p class=\"choice_paragraph \">4</p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \">9</p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \">36</p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \">54</p>\n"}],"keys":null,"correct_answer":["C"],"rationale":"<p>Choice C is correct. A system of two linear equations has infinitely many solutions if one equation is equivalent to the other. This means that when the two equations are written in the same form, each coefficient or constant in one equation is equal to the corresponding coefficient or constant in the other equation multiplied by the same number. The equations in the given system of equations are written in the same form, with<span class=\"italic\"> x</span> and<span class=\"italic\"> y</span> on the left-hand side of the equation and a constant on the right-hand side of the equation. The coefficients of <span class=\"italic\">x</span> and <span class=\"italic\">y</span> in the second equation are equal to the coefficients of <span class=\"italic\">x</span> and<span class=\"italic\"> y</span>, respectively, in the first equation multiplied by 4: <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_001_18a49e7b.png\" alt=\"8 equals, 2 times 4 \"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_002_bacb0087.png\" alt=\"28 equals, 7 times 4\"></span>. Therefore, the constant in the second equation must be equal to 4 times the constant in the first equation: <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_003_f83772b1.png\" alt=\"a, equals, 9 times 4\"></span>, or <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_004_41230bf8.png\" alt=\"a, equals 36\"></span>.<p>Choices A, B, and D are incorrect. When <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_005_3fae7c60.png\" alt=\"a, equals 4\"></span>, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_006_221a0602.png\" alt=\"a, equals 9\"></span>, or <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4b76c7f1/img_007_46cee470.png\" alt=\"a, equals 54\"></span>, the given system of equations has no solution.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":8,"raw_list":{"updateDate":1691007959622,"pPcc":"SAT#H","questionId":"4b76c7f1","skill_cd":"H.D.","score_band_range_cd":3,"skill_desc":"Systems of two linear equations in two variables","createDate":1691007959622,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"027878-DC","external_id":null,"primary_class_cd":"H","uId":"fc24cdc5-c2e0-49f7-a1cb-7719f1519633","difficulty":"E"},"raw_detail":{"item_id":"027878-DC","section":"Math","body":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF8AAAAsCAYAAAAD+mSaAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADKElEQVR4Xu2ajZHjIAyFU54LcjnuJa2kE85CyGAh8WODPXujb4Y54s2apychZ7l87uDcz23Lx8GUxrL94N9HcN/1tPZ5LG6XAvNH+W3LfA3R+NV9HS5AZjyZAI7b1awQ+Pp9XMN3PRtOfuxSxmpxv80tQmYx8zEhVyETe4WjAffX7wX9yAvP+7Fse6k+oAezHYP3ZrDFeYVIXDGfDOC/Ixlw7NxBOwTjzmPSrk+Bm81NxJ1RF3PFfCnRAC8IQDUrrAvT0uC6XjcfF8qFHaYoW1Oi13xt2wO8RY6ueqC462abT8ZLAZEwmGoBX604ovSs4YlEreOfC9hO431j3BPNx8D3RRRjAS6sRk/l1yqZfg67Ip2HH5+4WwQYJ409XrbrhkKLlVrJkZwOEX3m43tLGkCnN39S1WtMW49MLQVN7Qje4xNV2B0pXeY3VJfXum7Fqr+DVgA9MTdD/axofBBEi2Mi2qq/y/yG6qIimFn12AXi/Xvi7SK2EmmAgGB8KmbCpwwAtVTMbyiWEVAbxjEv0X+KlgQZE+hpYcYgjmfOPma3G8MwDMMwDMMwjCLnM4rn/zo8zoESDdIfSm/rHI58OvdcYNH4XEOagLd1Dkc7B/GB7hfDy8u0nLNo5/Pp4dhsna9AR6+1oPzrh74SQmBlB/MbdfqETf7aCCdvmR1n+mhieTtzE7Eq64vcMZ8nvElnkrBwKVzLtZI2mJZGSTvXcCleNJMWlE09zOj4j4qr5kvGAjWdvIXNrHqpXeK1c/JVxIedYi5dh6kWzMhqStdo1cmTLe2EUfCWB/jiULzJoAC4GVhhuWi+9Wv0Vv5R2SyAVp2UJEhIOvdvZtwpFNTDqj7cr6UjeNR+KFyPWz5/v0aP+ZhYWXyPTriPN39i1Uv31jSqaBXFb46vMShpu2m0mk+JVau0USfg7zXxayOAXzf5MHC0RfZJqwpvJRQoCT+2ZzAcA27LcIv5fD2Nmk6CCoUnZSS8GI41g0dd0JankRmfBk1ZvrKQQGxn0jgbqOlMaU3mXWgdmIIXlIBSof338Iew8RCtzxhjILE9zm83hmEYhmEYRs7n8w96GafSzE3/NQAAAABJRU5ErkJggg==\" alt=\"Equation 1: 2 x, plus 7 y, equals 9. Equation 2: 8 x, plus 28 y, equals a\"></span></span></p></div>\n","prompt":"<p class=\"stem_paragraph \">In the given system of equations, <span class=\"italic\">a</span> is a constant. If the system has infinitely many solutions, what is the value of <span class=\"italic\">a</span> ?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p class=\"choice_paragraph \">4</p>\n"},"b":{"body":"<p class=\"choice_paragraph \">9</p>\n"},"c":{"body":"<p class=\"choice_paragraph \">36</p>\n"},"d":{"body":"<p class=\"choice_paragraph \">54</p>\n"}},"correct_choice":"c","rationale":"<p>Choice C is correct. A system of two linear equations has infinitely many solutions if one equation is equivalent to the other. This means that when the two equations are written in the same form, each coefficient or constant in one equation is equal to the corresponding coefficient or constant in the other equation multiplied by the same number. The equations in the given system of equations are written in the same form, with<span class=\"italic\"> x</span> and<span class=\"italic\"> y</span> on the left-hand side of the equation and a constant on the right-hand side of the equation. The coefficients of <span class=\"italic\">x</span> and <span class=\"italic\">y</span> in the second equation are equal to the coefficients of <span class=\"italic\">x</span> and<span class=\"italic\"> y</span>, respectively, in the first equation multiplied by 4: <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADYAAAAaCAYAAAD8K6+QAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABgklEQVRYR+2V4Q3EIAiFHc+BHMdduko34USkUgXbi15yP/wSk6vVk8cD6/4VOCN45yGeAGVKBeCE6B2EY7zuLwA4ILwQxQzXH8Hh5DV+kQHOLv7k4VM0+E6CsWjzCDnZxwdHAOdjOkHMk6iQdNNkXqRsnqGK6s+RIijwuqaFDeiEtSVJNvYL8x+kyfI4jdUzZ/TpuQrJz8a5nAgcbbxIfs97LWtXC7OgYKswPFcNmh2JerxI5/Y3pcgO48/R0PZq5LNLb1Dw+iWQncR1hhGIeolQSXBg72+kGdoEWrebbBerwpBbYtjim2Nls3UzreDqlxQhzWBgujDZFu+FGQvbpmZWlOJVHUIUogmj+OrcWJjYT5nrs2TNz0L9rFcDV48M+t4i7WiSkIUVM6wMkLDesRk4yFGJo/DR+6FjGLP8SHe3Ytm8ssfe/mcXXMNImJoULhEeK0Uh45ISSVXKUWJWWC7D9a2zlCfXNDBxq834CeTwswPX5+rLRGw2m81ms9mswrkPH66/e8ZqXIkAAAAASUVORK5CYII=\" alt=\"8 equals, 2 times 4 \"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD8AAAAaCAYAAAAAPoRaAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABrklEQVRYR+2Vi63DIAxFMx4DZZzsklWyiYsxToyxTV/bPCkSR0JqKZ97/aHLk4Fjg7Qk2A6AOmUCcMCWFlj3eN1jANhhfcM4467nyOBHHimvwt8k+9qu+XUkYV+b89vRCkctlkaEKqLXV85PW3Zb5y/ja44NTbIIeTgZ79fcXUqUsXx3vqhOVXOXFg0nqTOvy9/rm2NL+TtdwAL0YeUSIeoOdNCRos25V1aP1ouU30ea6ZBq3imju81H95rGOLObvQ8ZVU2hGBP9oTMQlf1ZqoNh7ZVoDQgZtB+6UhG43gkaMnwoPWPUCiw+OOAHcNb1o+aJl63pVQwSBe/qmbyTZngDGhaZd8T9Cvnm1KmCZ1624Efmz8wK44h3WCwQgxUPSxxyBlvpQCzzpO+ai80bwaOetjNJ1dBHy5v/Fg6eqaUGRhpr21EPFahytkgYb/ZK2Iskme8z/y06kxpMVNRuYeZRMz+ivHDUu91r/+a+TxgFtTFgEJlvAheXTCuAW4PHHcYR7y1hrNKXeObNfn8io+xbYFDvSti/QxUyzuT57/HHYE0mk8lkMplMnsWyvAA+xCRLx1+GRAAAAABJRU5ErkJggg==\" alt=\"28 equals, 7 times 4\"></span>. Therefore, the constant in the second equation must be equal to 4 times the constant in the first equation: <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADcAAAAaCAYAAAAT6cSuAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABgklEQVRYR+2V65GFIAyFKY+CKIdebMVOsoQYN4YDXnd1rj/4ZphRQMjJy/BmaM0UQ6S8Em1TEKKVcgyUlvG+10C0UPpAmHJ1/2OsObIB28AGLSlQLAvb6wGJaBspWhKFmEscvySQjbaCqkHOUDE+lVhgI+UMIO6b6ake9xGpkTQer+/FwrroUGfwQCLqeufbXT0/yrgvj8Ww9jw/z5GBhmtkMk5Lpht1nyJSpO0hOs+Po9F894E4EYAduke4U3MMbCyo7Z7l/lU0Lb1R0mBUHO561tG9cxjonFqkZff2Whnl/l+RZvDrMDX0TJy175I42Xw8UD2F2rGu8eNooMsZ7XYyilBzPxLn7RuLc99Lzh/Tr1cfT2Dv35uGMVzS1jrEDueIKs5oqYebVqwX3P1D7GWDLwl+7/3AmWHknJZms3jyeOFdNDUHMqQx0DESBx2jH/Aji1KB6ID/0tScE4FS09ITh+r1lZxFD8G1OUrnV2H/f9sU5KkeMZlMJpPJZHI3IfwA11TXBh4F65cAAAAASUVORK5CYII=\" alt=\"a, equals, 9 times 4\"></span>, or <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC0AAAAWCAYAAABUpxX0AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABFklEQVRYR+2V7Q3EIAiGHc+BHMddXKWbcFBEUfE+Uq/343wSoxIqr4Cp+wUpOMApDw/xAFo3wBHBFx8cIQ0+t8GCAyRgoZACzq1wtjlAneyD3gEnj060vxXJnoghAA6Ivgrq98IRPe7rZRvkI1rysMu3ihIvl58v9kHMWVl0Zgix0/LZ6L+z4AxWkayBMtrGMFvDuiHbJiW5CIsdLyeJay6S22oQfj6QXCLhPLizrUYElfbIol/2tJnlXB6rLCvbg9At0reowHalsfaREt07fREdSzL/nmgf8R2zobxoZVsBBx4F6dLPKjxpj3qYHL66n61kSCwtsr/c9CGWB0GDvCdZucr4H7BjlMTlYb2tzWaz2Wz+GeceivvUxb//qwsAAAAASUVORK5CYII=\" alt=\"a, equals 36\"></span>.<p>Choices A, B, and D are incorrect. When <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAYCAYAAAB9ejRwAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAR5JREFUeNpjYBhYwAjEh4D4PxC3MAwSkAPETweToxSA+DMQB5LiKDYgFgFiFhzyAkRgNjzm7wbidVA2QUfJAPFiIP4OVfwNiN2xqPtPBA7BYUcKEH8AYkliHGUGxG+AeAXUwGKohlAsah2IwKJY9ElDHZSG5kGsjhIC4hdAXIMk5grE/4BYDIt6ESIwOxZ9m4H4IDTnEXRUNxDfQEtD04B4H45QJSf6QPzfQGyOlvb+Q+0HsZlgipmg0VaMZAAHVPE8HI4iJ/oaiPCIDkyxFBaftUDFxKlcDGBz/H9o5gKxuWGKhaES+4FYDYgdkVxOD4AzTa1EcshLIJ4OxD+A2GUgHcUMxBZAbAXNNVxAnAXEvAyjYBSMglEwCkbB8AEApmpcxntdeGoAAAAASUVORK5CYII=\" alt=\"a, equals 4\"></span>, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAWCAYAAACosj4+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA2ElEQVRIS+2T4Q2EIAyFGa8DMQ67sAqb1NLSU9rjklMMf/gSgrygPNtHWEFJgDS1AZgK1uc15NibwBzZWMwLTGFJCDQBuWkSwxWDhOTRm0KSE2g555ZUquG/N9Jd+RAzxstaUb0+/hruvX8MSTl7UbRIx/cfuIu2zBqVkBtDHDba2ZYMbzTaUyTU50+qyc7Q1+q0ttgAVu62TBFTOsicPV962LdmGLQXcOezcLl2n5s2uoo3GVXdxcWGTRybTZNwGRp14gyXGFFToxw8wWVoYhc2m81m8y4hHGUyTfgiKIHjAAAAAElFTkSuQmCC\" alt=\"a, equals 9\"></span>, or <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC0AAAAWCAYAAABUpxX0AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABEklEQVRYR+2U2xGEIAxFKY+CKIdeaMVOsnkYDQjIOup+LGeGQXnlJlx1bwOQIGBHj1kLifoDsETw2OF0df4VRERA6WMiUpCkfis6BXA+wjIgmtdiR60rGvC46M21OQ8RI/DkDXDlGlawqI4QT+yhmekC9V+5oenLoh33iRAfAguhIWoeq8ILDEv0ciM9T4vX8qp+678ztmSNPfRDs8JtsbofYu3aONti7Ak4jimO1dIUXa3ymm3t6q7ao4XYUuKXWtqieVNuA3vQOvQYNpZUvV6ETA9vsj7TP8jgr2mUVtVKe1jalS4mJHMUjQP0fhdbMYxAjXUQtdIUTegkPZLYs8OusgvfWy9GV/RkMplMJn+Mcx9MILUyBgntPgAAAABJRU5ErkJggg==\" alt=\"a, equals 54\"></span>, the given system of equations has no solution.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959622,"updateDate":1691007959622}$SATQ$::jsonb, 1691007959622, 1691007959622),
    ($SATQ$4becad44$SATQ$, $SATQ$031d354d-96ee-46e5-b453-c0be0ad459d5$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="3 x equals 36 y minus 45"><mrow>
	<mrow>
		<mn>3</mn>
		<mi>x</mi>
	</mrow>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mn>36</mn>
			<mi>y</mi>
		</mrow>
		<mo>-</mo>
		<mn>45</mn>
	</mrow>
</mrow>
</math></p>
<p style="text-align: left;">One of the two equations in a system of linear equations is given. The system has no solution. Which equation could be the second equation in this system?</p>$SATQ$, $SATQ$[{"id":"9576ebba-c5a8-413a-bf05-078efc5b9cc3","content":"<p><math alttext=\"x equals 4 y\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"aca56326-7390-420b-904e-40827e7cbacc","content":"<p><math alttext=\"one third x equals 4 y\"><mfrac>\n\t<mn>1</mn>\n\t<mn>3</mn>\n</mfrac>\n<mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"2045203b-b5ad-4e1a-9388-b1109e5f8c65","content":"<p><math alttext=\"x equals 12 y minus 15\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>15</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"180b76f0-7c3d-493c-a821-1ea11e1764cb","content":"<p><math alttext=\"one third x equals 12 y minus 15\"><mfrac>\n\t<mn>1</mn>\n\t<mn>3</mn>\n</mfrac>\n<mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>15</mn>\n\t</mrow>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["aca56326-7390-420b-904e-40827e7cbacc"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. A system of two linear equations in two variables, <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math>, has no solution when the lines in the <em>xy</em>-plane representing the equations are parallel and distinct. Two lines are parallel and distinct if their slopes are the same and their <em>y</em>-intercepts are different. The slope of the graph of the given equation, <math alttext="3 x equals 36 y minus 45"><mn>3</mn><mi>x</mi><mo>=</mo><mn>36</mn><mi>y</mi><mo>-</mo><mn>45</mn></math>, in the <em>xy</em>-plane can be found by rewriting the equation in the form <math alttext="y equals m x plus b"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext="m"><mi>m</mi>
</math> is the slope of the graph and <math alttext="left parenthesis 0 comma b right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math>&nbsp;is the <em>y</em>-intercept. Adding <math alttext="45"><mn>45</mn>
</math> to each side of the given equation yields <math alttext="3 x plus 45 equals 36 y"><mn>3</mn><mi>x</mi><mo>+</mo><mn>45</mn><mo>=</mo><mn>36</mn><mi>y</mi></math>. Dividing each side of this equation by <math alttext="36"><mn>36</mn>
</math> yields <math alttext="one twelfth x plus five fourths equals y"><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac><mo>=</mo><mi>y</mi></math>, or <math alttext="y equals one twelfth x plus five fourths"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></math>. It follows that the slope of the graph of the given equation is <math alttext="one twelfth"><mfrac><mn>1</mn><mn>12</mn></mfrac></math> and the <em>y</em>-intercept is <math alttext="left parenthesis 0 comma five fourths right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></mrow></mfenced></math>. Therefore, the graph of the second equation in the system must also have a slope of <math alttext="one twelfth"><mfrac><mn>1</mn><mn>12</mn></mfrac></math>, but must not have a <em>y</em>-intercept of <math alttext="left parenthesis 0 comma five fourths right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></mrow></mfenced></math>. Multiplying each side of the equation given in choice B by <math alttext="one fourth"><mfrac><mn>1</mn><mn>4</mn></mfrac></math> yields&nbsp;<math alttext="one twelfth x equals y"><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>=</mo><mi>y</mi></math>, or <math alttext="y equals one twelfth x"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi></math>. It follows that the graph representing the equation in choice B has a slope of <math alttext="one twelfth"><mfrac><mn>1</mn><mn>12</mn></mfrac></math> and a&nbsp;<em>y</em>-intercept of <math alttext="left parenthesis 0 comma 0 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Since the slopes of the graphs of the two equations are equal and the <em>y</em>-intercepts of the graphs of the two equations are different, the equation in choice B could be the second equation in the system.</p>
<p style="text-align: left;">Choice A is incorrect. This equation can be rewritten as <math alttext="y equals one fourth x"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>4</mn></mfrac><mi>x</mi></math>. It follows that the graph of this equation has a slope of <math alttext="one fourth"><mfrac><mn>1</mn><mn>4</mn></mfrac></math>, so the system consisting of this equation and the given equation has exactly one solution, rather than no solution.</p>
<p style="text-align: left;">Choice C is incorrect. This equation can be rewritten as <math alttext="y equals one twelfth x plus five fourths"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></math>. It follows that the graph of this equation has a slope of <math alttext="one twelfth"><mfrac><mn>1</mn><mn>12</mn></mfrac></math>and a <em>y</em>-intercept of <math alttext="left parenthesis 0 comma five fourths right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></mrow></mfenced></math>, so the system consisting of this equation and the given equation has infinitely many solutions, rather than no solution.</p>
<p style="text-align: left;">Choice D is incorrect. This equation can be rewritten as <math alttext="y equals one thirty sixth x plus five fourths"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>36</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></math>. It follows that the graph of this equation has a slope of <math alttext="one thirty sixth"><mfrac><mn>1</mn><mn>36</mn></mfrac></math>, so the system consisting of this equation and the given equation has exactly one solution, rather than no solution.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4becad44","external_id":"031d354d-96ee-46e5-b453-c0be0ad459d5","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"031396b7-871c-42af-98bc-103fd62d2d92","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"3 x equals 36 y minus 45\"><mrow>\n\t<mrow>\n\t\t<mn>3</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>36</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>45</mn>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">One of the two equations in a system of linear equations is given. The system has no solution. Which equation could be the second equation in this system?</p>","answerOptions":[{"id":"9576ebba-c5a8-413a-bf05-078efc5b9cc3","content":"<p><math alttext=\"x equals 4 y\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"aca56326-7390-420b-904e-40827e7cbacc","content":"<p><math alttext=\"one third x equals 4 y\"><mfrac>\n\t<mn>1</mn>\n\t<mn>3</mn>\n</mfrac>\n<mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"2045203b-b5ad-4e1a-9388-b1109e5f8c65","content":"<p><math alttext=\"x equals 12 y minus 15\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>15</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"180b76f0-7c3d-493c-a821-1ea11e1764cb","content":"<p><math alttext=\"one third x equals 12 y minus 15\"><mfrac>\n\t<mn>1</mn>\n\t<mn>3</mn>\n</mfrac>\n<mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>15</mn>\n\t</mrow>\n</mrow>\n</math></p>"}],"keys":["aca56326-7390-420b-904e-40827e7cbacc"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. A system of two linear equations in two variables, <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>, has no solution when the lines in the <em>xy</em>-plane representing the equations are parallel and distinct. Two lines are parallel and distinct if their slopes are the same and their <em>y</em>-intercepts are different. The slope of the graph of the given equation, <math alttext=\"3 x equals 36 y minus 45\"><mn>3</mn><mi>x</mi><mo>=</mo><mn>36</mn><mi>y</mi><mo>-</mo><mn>45</mn></math>, in the <em>xy</em>-plane can be found by rewriting the equation in the form <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope of the graph and <math alttext=\"left parenthesis 0 comma b right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math>&nbsp;is the <em>y</em>-intercept. Adding <math alttext=\"45\"><mn>45</mn>\n</math> to each side of the given equation yields <math alttext=\"3 x plus 45 equals 36 y\"><mn>3</mn><mi>x</mi><mo>+</mo><mn>45</mn><mo>=</mo><mn>36</mn><mi>y</mi></math>. Dividing each side of this equation by <math alttext=\"36\"><mn>36</mn>\n</math> yields <math alttext=\"one twelfth x plus five fourths equals y\"><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac><mo>=</mo><mi>y</mi></math>, or <math alttext=\"y equals one twelfth x plus five fourths\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></math>. It follows that the slope of the graph of the given equation is <math alttext=\"one twelfth\"><mfrac><mn>1</mn><mn>12</mn></mfrac></math> and the <em>y</em>-intercept is <math alttext=\"left parenthesis 0 comma five fourths right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></mrow></mfenced></math>. Therefore, the graph of the second equation in the system must also have a slope of <math alttext=\"one twelfth\"><mfrac><mn>1</mn><mn>12</mn></mfrac></math>, but must not have a <em>y</em>-intercept of <math alttext=\"left parenthesis 0 comma five fourths right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></mrow></mfenced></math>. Multiplying each side of the equation given in choice B by <math alttext=\"one fourth\"><mfrac><mn>1</mn><mn>4</mn></mfrac></math> yields&nbsp;<math alttext=\"one twelfth x equals y\"><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>=</mo><mi>y</mi></math>, or <math alttext=\"y equals one twelfth x\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi></math>. It follows that the graph representing the equation in choice B has a slope of <math alttext=\"one twelfth\"><mfrac><mn>1</mn><mn>12</mn></mfrac></math> and a&nbsp;<em>y</em>-intercept of <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Since the slopes of the graphs of the two equations are equal and the <em>y</em>-intercepts of the graphs of the two equations are different, the equation in choice B could be the second equation in the system.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This equation can be rewritten as <math alttext=\"y equals one fourth x\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>4</mn></mfrac><mi>x</mi></math>. It follows that the graph of this equation has a slope of <math alttext=\"one fourth\"><mfrac><mn>1</mn><mn>4</mn></mfrac></math>, so the system consisting of this equation and the given equation has exactly one solution, rather than no solution.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This equation can be rewritten as <math alttext=\"y equals one twelfth x plus five fourths\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></math>. It follows that the graph of this equation has a slope of <math alttext=\"one twelfth\"><mfrac><mn>1</mn><mn>12</mn></mfrac></math>and a <em>y</em>-intercept of <math alttext=\"left parenthesis 0 comma five fourths right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></mrow></mfenced></math>, so the system consisting of this equation and the given equation has infinitely many solutions, rather than no solution.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This equation can be rewritten as <math alttext=\"y equals one thirty sixth x plus five fourths\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>36</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></math>. It follows that the graph of this equation has a slope of <math alttext=\"one thirty sixth\"><mfrac><mn>1</mn><mn>36</mn></mfrac></math>, so the system consisting of this equation and the given equation has exactly one solution, rather than no solution.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554979,"pPcc":"SAT#H","questionId":"4becad44","skill_cd":"H.D.","score_band_range_cd":7,"skill_desc":"Systems of two linear equations in two variables","createDate":1743430554979,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"031d354d-96ee-46e5-b453-c0be0ad459d5","primary_class_cd":"H","uId":"031396b7-871c-42af-98bc-103fd62d2d92","difficulty":"H"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: center;\"><math alttext=\"3 x equals 36 y minus 45\"><mrow>\n\t<mrow>\n\t\t<mn>3</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>36</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>45</mn>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">One of the two equations in a system of linear equations is given. The system has no solution. Which equation could be the second equation in this system?</p>","keys":["aca56326-7390-420b-904e-40827e7cbacc"],"answerOptions":[{"id":"9576ebba-c5a8-413a-bf05-078efc5b9cc3","content":"<p><math alttext=\"x equals 4 y\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"aca56326-7390-420b-904e-40827e7cbacc","content":"<p><math alttext=\"one third x equals 4 y\"><mfrac>\n\t<mn>1</mn>\n\t<mn>3</mn>\n</mfrac>\n<mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"2045203b-b5ad-4e1a-9388-b1109e5f8c65","content":"<p><math alttext=\"x equals 12 y minus 15\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>15</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"180b76f0-7c3d-493c-a821-1ea11e1764cb","content":"<p><math alttext=\"one third x equals 12 y minus 15\"><mfrac>\n\t<mn>1</mn>\n\t<mn>3</mn>\n</mfrac>\n<mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>15</mn>\n\t</mrow>\n</mrow>\n</math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice B is correct. A system of two linear equations in two variables, <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>, has no solution when the lines in the <em>xy</em>-plane representing the equations are parallel and distinct. Two lines are parallel and distinct if their slopes are the same and their <em>y</em>-intercepts are different. The slope of the graph of the given equation, <math alttext=\"3 x equals 36 y minus 45\"><mn>3</mn><mi>x</mi><mo>=</mo><mn>36</mn><mi>y</mi><mo>-</mo><mn>45</mn></math>, in the <em>xy</em>-plane can be found by rewriting the equation in the form <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope of the graph and <math alttext=\"left parenthesis 0 comma b right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math>&nbsp;is the <em>y</em>-intercept. Adding <math alttext=\"45\"><mn>45</mn>\n</math> to each side of the given equation yields <math alttext=\"3 x plus 45 equals 36 y\"><mn>3</mn><mi>x</mi><mo>+</mo><mn>45</mn><mo>=</mo><mn>36</mn><mi>y</mi></math>. Dividing each side of this equation by <math alttext=\"36\"><mn>36</mn>\n</math> yields <math alttext=\"one twelfth x plus five fourths equals y\"><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac><mo>=</mo><mi>y</mi></math>, or <math alttext=\"y equals one twelfth x plus five fourths\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></math>. It follows that the slope of the graph of the given equation is <math alttext=\"one twelfth\"><mfrac><mn>1</mn><mn>12</mn></mfrac></math> and the <em>y</em>-intercept is <math alttext=\"left parenthesis 0 comma five fourths right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></mrow></mfenced></math>. Therefore, the graph of the second equation in the system must also have a slope of <math alttext=\"one twelfth\"><mfrac><mn>1</mn><mn>12</mn></mfrac></math>, but must not have a <em>y</em>-intercept of <math alttext=\"left parenthesis 0 comma five fourths right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></mrow></mfenced></math>. Multiplying each side of the equation given in choice B by <math alttext=\"one fourth\"><mfrac><mn>1</mn><mn>4</mn></mfrac></math> yields&nbsp;<math alttext=\"one twelfth x equals y\"><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>=</mo><mi>y</mi></math>, or <math alttext=\"y equals one twelfth x\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi></math>. It follows that the graph representing the equation in choice B has a slope of <math alttext=\"one twelfth\"><mfrac><mn>1</mn><mn>12</mn></mfrac></math> and a&nbsp;<em>y</em>-intercept of <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Since the slopes of the graphs of the two equations are equal and the <em>y</em>-intercepts of the graphs of the two equations are different, the equation in choice B could be the second equation in the system.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This equation can be rewritten as <math alttext=\"y equals one fourth x\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>4</mn></mfrac><mi>x</mi></math>. It follows that the graph of this equation has a slope of <math alttext=\"one fourth\"><mfrac><mn>1</mn><mn>4</mn></mfrac></math>, so the system consisting of this equation and the given equation has exactly one solution, rather than no solution.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This equation can be rewritten as <math alttext=\"y equals one twelfth x plus five fourths\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>12</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></math>. It follows that the graph of this equation has a slope of <math alttext=\"one twelfth\"><mfrac><mn>1</mn><mn>12</mn></mfrac></math>and a <em>y</em>-intercept of <math alttext=\"left parenthesis 0 comma five fourths right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></mrow></mfenced></math>, so the system consisting of this equation and the given equation has infinitely many solutions, rather than no solution.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This equation can be rewritten as <math alttext=\"y equals one thirty sixth x plus five fourths\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mn>36</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mn>5</mn><mn>4</mn></mfrac></math>. It follows that the graph of this equation has a slope of <math alttext=\"one thirty sixth\"><mfrac><mn>1</mn><mn>36</mn></mfrac></math>, so the system consisting of this equation and the given equation has exactly one solution, rather than no solution.</p>","externalid":"031d354d-96ee-46e5-b453-c0be0ad459d5","correct_answer":["B"]},"createDate":1743430554979,"updateDate":1743430554979}$SATQ$::jsonb, 1743430554979, 1743430554979),
    ($SATQ$4d8ccb96$SATQ$, $SATQ$fb1fc3f7-9487-4a08-841a-d7c028989341$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">A chemist studying the impact of salt on a process mixes <math alttext="x"><mi>x</mi>
</math> kilograms of a low-salt mixture, which is <math alttext="2 percent sign"><mn>2</mn>
<mo>%</mo></math> salt by weight, with <math alttext="y"><mi>y</mi>
</math> kilograms of a high-salt mixture, which is <math alttext="96 percent sign"><mn>96</mn>
<mo>%</mo></math> salt by weight, to create <math alttext="24"><mn>24</mn>
</math> kilograms of a mixture that is <math alttext="4 percent sign"><mn>4</mn>
<mo>%</mo></math> salt by weight. Which equation represents this situation?</p>$SATQ$, $SATQ$[{"id":"ce849cdf-97bc-4a84-95fc-f8cb7f6f252b","content":"<p><math alttext=\"0.96 x plus 0.02 y equals left parenthesis 0.04 right parenthesis left parenthesis 24 right parenthesis\"><mn>0.96</mn><mi>x</mi><mo>+</mo><mn>0.02</mn><mi>y</mi><mo>=</mo><mfenced><mn>0.04</mn></mfenced><mfenced><mn>24</mn></mfenced></math></p>"},{"id":"3f9cb900-0d23-4475-994c-79b21c7d7dff","content":"<p><math alttext=\"0.02 x plus 0.96 y equals left parenthesis 0.04 right parenthesis left parenthesis 24 right parenthesis\"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi><mo>=</mo><mfenced><mn>0.04</mn></mfenced><mfenced><mn>24</mn></mfenced></math></p>"},{"id":"46bfc65c-80af-4977-b8c0-b80ee487cd43","content":"<p><math alttext=\"0.96 x plus 0.02 y equals 24\"><mn>0.96</mn><mi>x</mi><mo>+</mo><mn>0.02</mn><mi>y</mi><mo>=</mo><mn>24</mn></math></p>"},{"id":"4786c180-cf6b-4485-b646-e3d88da31fe3","content":"<p><math alttext=\"0.02 x plus 0.96 y equals 24\"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi><mo>=</mo><mn>24</mn></math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["3f9cb900-0d23-4475-994c-79b21c7d7dff"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. It’s given that a chemist mixes <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x"><mi>x</mi></math> kilograms of a low-salt mixture, which is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2 percent sign"><mn>2</mn><mo>%</mo></math> salt by weight. Multiplying <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="0.02"><mn>0.02</mn></math> by the amount of the low-salt mixture, <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x"><mi>x</mi></math> kilograms, yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="0.02 x"><mn>0.02</mn><mi>x</mi></math> kilograms of salt in the low-salt mixture. It's also given that the chemist mixes&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y"><mi>y</mi></math> kilograms of a high-salt mixture, which is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="96 percent sign"><mn>96</mn><mo>%</mo></math> salt by weight. Multiplying&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="0.96"><mn>0.96</mn></math> by the amount of the high-salt mixture, <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y"><mi>y</mi></math> kilograms, yields&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="0.96 y"><mn>0.96</mn><mi>y</mi></math> kilograms of salt in the high-salt mixture. Therefore, the total amount of salt in the combined mixture is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="0.02 x plus 0.96 y"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi></math> kilograms. It's given that the low-salt mixture and the high-salt mixture together create <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="24"><mn>24</mn></math> kilograms of a combined mixture that is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4 percent sign"><mn>4</mn><mo>%</mo></math> salt by weight. Thus, the amount of salt in the combined mixture is&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="0.04 left parenthesis 24 right parenthesis"><mn>0.04</mn><mo>(</mo><mn>24</mn><mo>)</mo></math> kilograms. Since the total amount of salt in the combined mixture equals the amount of salt in the low-salt mixture and the amount of salt in the high-salt mixture, the equation <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="0.02 x plus 0.96 y equals left parenthesis 0.04 right parenthesis left parenthesis 24 right parenthesis"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi><mo>=</mo><mo>(</mo><mn>0.04</mn><mo>)</mo><mo>(</mo><mn>24</mn><mo>)</mo></math> represents this situation.</p>
<p style="text-align: left;">Choice A is incorrect. This equation represents a situation where the low-salt mixture is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="96 percent sign"><mn>96</mn><mo>%</mo></math>, not <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2 percent sign"><mn>2</mn><mo>%</mo></math>, salt by weight and the high-salt mixture is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2 percent sign"><mn>2</mn><mo>%</mo></math>, not <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="96 percent sign"><mn>96</mn><mo>%</mo></math>, salt by weight.</p>
<p style="text-align: left;">Choice C is incorrect. This equation represents a situation where the low-salt mixture is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="96 percent sign"><mn>96</mn><mo>%</mo></math>, not <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2 percent sign"><mn>2</mn><mo>%</mo></math>, salt by weight and the high-salt mixture is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2 percent sign"><mn>2</mn><mo>%</mo></math>, not <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="96 percent sign"><mn>96</mn><mo>%</mo></math>, salt by weight, and where the combined mixture contains <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="24"><mn>24</mn></math> kilograms of salt, not <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="24"><mn>24</mn></math> kilograms of a mixture that is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4 percent sign"><mn>4</mn><mo>%</mo></math> salt by weight.</p>
<p style="text-align: left;">Choice D is incorrect. This equation represents a situation where the combined mixture contains <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="24"><mn>24</mn></math> kilograms of salt, not <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="24"><mn>24</mn></math> kilograms of a mixture that is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4 percent sign"><mn>4</mn><mo>%</mo></math> salt by weight.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4d8ccb96","external_id":"fb1fc3f7-9487-4a08-841a-d7c028989341","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"2b04b99a-e909-45f3-9287-ac1287b749d3","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">A chemist studying the impact of salt on a process mixes <math alttext=\"x\"><mi>x</mi>\n</math> kilograms of a low-salt mixture, which is <math alttext=\"2 percent sign\"><mn>2</mn>\n<mo>%</mo></math> salt by weight, with <math alttext=\"y\"><mi>y</mi>\n</math> kilograms of a high-salt mixture, which is <math alttext=\"96 percent sign\"><mn>96</mn>\n<mo>%</mo></math> salt by weight, to create <math alttext=\"24\"><mn>24</mn>\n</math> kilograms of a mixture that is <math alttext=\"4 percent sign\"><mn>4</mn>\n<mo>%</mo></math> salt by weight. Which equation represents this situation?</p>","answerOptions":[{"id":"ce849cdf-97bc-4a84-95fc-f8cb7f6f252b","content":"<p><math alttext=\"0.96 x plus 0.02 y equals left parenthesis 0.04 right parenthesis left parenthesis 24 right parenthesis\"><mn>0.96</mn><mi>x</mi><mo>+</mo><mn>0.02</mn><mi>y</mi><mo>=</mo><mfenced><mn>0.04</mn></mfenced><mfenced><mn>24</mn></mfenced></math></p>"},{"id":"3f9cb900-0d23-4475-994c-79b21c7d7dff","content":"<p><math alttext=\"0.02 x plus 0.96 y equals left parenthesis 0.04 right parenthesis left parenthesis 24 right parenthesis\"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi><mo>=</mo><mfenced><mn>0.04</mn></mfenced><mfenced><mn>24</mn></mfenced></math></p>"},{"id":"46bfc65c-80af-4977-b8c0-b80ee487cd43","content":"<p><math alttext=\"0.96 x plus 0.02 y equals 24\"><mn>0.96</mn><mi>x</mi><mo>+</mo><mn>0.02</mn><mi>y</mi><mo>=</mo><mn>24</mn></math></p>"},{"id":"4786c180-cf6b-4485-b646-e3d88da31fe3","content":"<p><math alttext=\"0.02 x plus 0.96 y equals 24\"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi><mo>=</mo><mn>24</mn></math></p>"}],"keys":["3f9cb900-0d23-4475-994c-79b21c7d7dff"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. It’s given that a chemist mixes <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> kilograms of a low-salt mixture, which is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 percent sign\"><mn>2</mn><mo>%</mo></math> salt by weight. Multiplying <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.02\"><mn>0.02</mn></math> by the amount of the low-salt mixture, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> kilograms, yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.02 x\"><mn>0.02</mn><mi>x</mi></math> kilograms of salt in the low-salt mixture. It's also given that the chemist mixes&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> kilograms of a high-salt mixture, which is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"96 percent sign\"><mn>96</mn><mo>%</mo></math> salt by weight. Multiplying&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.96\"><mn>0.96</mn></math> by the amount of the high-salt mixture, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> kilograms, yields&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.96 y\"><mn>0.96</mn><mi>y</mi></math> kilograms of salt in the high-salt mixture. Therefore, the total amount of salt in the combined mixture is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.02 x plus 0.96 y\"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi></math> kilograms. It's given that the low-salt mixture and the high-salt mixture together create <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24\"><mn>24</mn></math> kilograms of a combined mixture that is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> salt by weight. Thus, the amount of salt in the combined mixture is&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.04 left parenthesis 24 right parenthesis\"><mn>0.04</mn><mo>(</mo><mn>24</mn><mo>)</mo></math> kilograms. Since the total amount of salt in the combined mixture equals the amount of salt in the low-salt mixture and the amount of salt in the high-salt mixture, the equation <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.02 x plus 0.96 y equals left parenthesis 0.04 right parenthesis left parenthesis 24 right parenthesis\"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi><mo>=</mo><mo>(</mo><mn>0.04</mn><mo>)</mo><mo>(</mo><mn>24</mn><mo>)</mo></math> represents this situation.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This equation represents a situation where the low-salt mixture is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"96 percent sign\"><mn>96</mn><mo>%</mo></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 percent sign\"><mn>2</mn><mo>%</mo></math>, salt by weight and the high-salt mixture is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 percent sign\"><mn>2</mn><mo>%</mo></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"96 percent sign\"><mn>96</mn><mo>%</mo></math>, salt by weight.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This equation represents a situation where the low-salt mixture is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"96 percent sign\"><mn>96</mn><mo>%</mo></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 percent sign\"><mn>2</mn><mo>%</mo></math>, salt by weight and the high-salt mixture is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 percent sign\"><mn>2</mn><mo>%</mo></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"96 percent sign\"><mn>96</mn><mo>%</mo></math>, salt by weight, and where the combined mixture contains <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24\"><mn>24</mn></math> kilograms of salt, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24\"><mn>24</mn></math> kilograms of a mixture that is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> salt by weight.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This equation represents a situation where the combined mixture contains <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24\"><mn>24</mn></math> kilograms of salt, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24\"><mn>24</mn></math> kilograms of a mixture that is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> salt by weight.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1755117017726,"pPcc":"SAT#H","questionId":"4d8ccb96","skill_cd":"H.C.","score_band_range_cd":2,"skill_desc":"Linear equations in two variables","createDate":1755117017726,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"fb1fc3f7-9487-4a08-841a-d7c028989341","primary_class_cd":"H","uId":"2b04b99a-e909-45f3-9287-ac1287b749d3","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">A chemist studying the impact of salt on a process mixes <math alttext=\"x\"><mi>x</mi>\n</math> kilograms of a low-salt mixture, which is <math alttext=\"2 percent sign\"><mn>2</mn>\n<mo>%</mo></math> salt by weight, with <math alttext=\"y\"><mi>y</mi>\n</math> kilograms of a high-salt mixture, which is <math alttext=\"96 percent sign\"><mn>96</mn>\n<mo>%</mo></math> salt by weight, to create <math alttext=\"24\"><mn>24</mn>\n</math> kilograms of a mixture that is <math alttext=\"4 percent sign\"><mn>4</mn>\n<mo>%</mo></math> salt by weight. Which equation represents this situation?</p>","keys":["3f9cb900-0d23-4475-994c-79b21c7d7dff"],"answerOptions":[{"id":"ce849cdf-97bc-4a84-95fc-f8cb7f6f252b","content":"<p><math alttext=\"0.96 x plus 0.02 y equals left parenthesis 0.04 right parenthesis left parenthesis 24 right parenthesis\"><mn>0.96</mn><mi>x</mi><mo>+</mo><mn>0.02</mn><mi>y</mi><mo>=</mo><mfenced><mn>0.04</mn></mfenced><mfenced><mn>24</mn></mfenced></math></p>"},{"id":"3f9cb900-0d23-4475-994c-79b21c7d7dff","content":"<p><math alttext=\"0.02 x plus 0.96 y equals left parenthesis 0.04 right parenthesis left parenthesis 24 right parenthesis\"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi><mo>=</mo><mfenced><mn>0.04</mn></mfenced><mfenced><mn>24</mn></mfenced></math></p>"},{"id":"46bfc65c-80af-4977-b8c0-b80ee487cd43","content":"<p><math alttext=\"0.96 x plus 0.02 y equals 24\"><mn>0.96</mn><mi>x</mi><mo>+</mo><mn>0.02</mn><mi>y</mi><mo>=</mo><mn>24</mn></math></p>"},{"id":"4786c180-cf6b-4485-b646-e3d88da31fe3","content":"<p><math alttext=\"0.02 x plus 0.96 y equals 24\"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi><mo>=</mo><mn>24</mn></math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice B is correct. It’s given that a chemist mixes <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> kilograms of a low-salt mixture, which is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 percent sign\"><mn>2</mn><mo>%</mo></math> salt by weight. Multiplying <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.02\"><mn>0.02</mn></math> by the amount of the low-salt mixture, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> kilograms, yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.02 x\"><mn>0.02</mn><mi>x</mi></math> kilograms of salt in the low-salt mixture. It's also given that the chemist mixes&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> kilograms of a high-salt mixture, which is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"96 percent sign\"><mn>96</mn><mo>%</mo></math> salt by weight. Multiplying&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.96\"><mn>0.96</mn></math> by the amount of the high-salt mixture, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> kilograms, yields&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.96 y\"><mn>0.96</mn><mi>y</mi></math> kilograms of salt in the high-salt mixture. Therefore, the total amount of salt in the combined mixture is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.02 x plus 0.96 y\"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi></math> kilograms. It's given that the low-salt mixture and the high-salt mixture together create <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24\"><mn>24</mn></math> kilograms of a combined mixture that is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> salt by weight. Thus, the amount of salt in the combined mixture is&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.04 left parenthesis 24 right parenthesis\"><mn>0.04</mn><mo>(</mo><mn>24</mn><mo>)</mo></math> kilograms. Since the total amount of salt in the combined mixture equals the amount of salt in the low-salt mixture and the amount of salt in the high-salt mixture, the equation <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0.02 x plus 0.96 y equals left parenthesis 0.04 right parenthesis left parenthesis 24 right parenthesis\"><mn>0.02</mn><mi>x</mi><mo>+</mo><mn>0.96</mn><mi>y</mi><mo>=</mo><mo>(</mo><mn>0.04</mn><mo>)</mo><mo>(</mo><mn>24</mn><mo>)</mo></math> represents this situation.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This equation represents a situation where the low-salt mixture is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"96 percent sign\"><mn>96</mn><mo>%</mo></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 percent sign\"><mn>2</mn><mo>%</mo></math>, salt by weight and the high-salt mixture is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 percent sign\"><mn>2</mn><mo>%</mo></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"96 percent sign\"><mn>96</mn><mo>%</mo></math>, salt by weight.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This equation represents a situation where the low-salt mixture is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"96 percent sign\"><mn>96</mn><mo>%</mo></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 percent sign\"><mn>2</mn><mo>%</mo></math>, salt by weight and the high-salt mixture is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 percent sign\"><mn>2</mn><mo>%</mo></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"96 percent sign\"><mn>96</mn><mo>%</mo></math>, salt by weight, and where the combined mixture contains <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24\"><mn>24</mn></math> kilograms of salt, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24\"><mn>24</mn></math> kilograms of a mixture that is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> salt by weight.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This equation represents a situation where the combined mixture contains <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24\"><mn>24</mn></math> kilograms of salt, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24\"><mn>24</mn></math> kilograms of a mixture that is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 percent sign\"><mn>4</mn><mo>%</mo></math> salt by weight.</p>","externalid":"fb1fc3f7-9487-4a08-841a-d7c028989341","correct_answer":["B"]},"createDate":1755117017726,"updateDate":1755117017726}$SATQ$::jsonb, 1755117017726, 1755117017726),
    ($SATQ$4de87c9a$SATQ$, $SATQ$d4e10666-e119-46af-8dba-a8d527aeca75$SATQ$::uuid, $SATQ$da90cee5-bf74-4451-a15e-a45292596cb8$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p><math alttext="3"><mn>3</mn>
</math> more than <math alttext="8"><mn>8</mn>
</math> times a number <math alttext="x"><mi>x</mi>
</math> is equal to <math alttext="83"><mrow><mn>83</mn></mrow></math>. Which equation represents this situation?</p>$SATQ$, $SATQ$[{"id":"92669f4e-a20e-4969-a618-0a2cc984a9bd","content":"<p><math alttext=\"left parenthesis 3 right parenthesis left parenthesis 8 right parenthesis x equals 83\"><mo>(</mo><mrow><mn>3</mn></mrow><mo>)</mo><mo>(</mo><mrow><mn>8</mn></mrow><mo>)</mo><mi>x</mi><mo>=</mo><mrow><mn>83</mn></mrow></math></p>"},{"id":"430705c8-a08d-4d62-832b-42006afccf05","content":"<p><math alttext=\"8 x equals 83 plus 3\"><mrow><mn>8</mn></mrow><mi>x</mi><mo>=</mo><mrow><mn>83</mn></mrow><mo>+</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"068f2bbc-f422-42c3-a277-21bd78977f4b","content":"<p><math alttext=\"3 x plus 8 equals 83\"><mrow><mn>3</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>8</mn></mrow><mo>=</mo><mrow><mn>83</mn></mrow></math></p>"},{"id":"654586c4-c74f-48da-aadd-81c0b9ef9b22","content":"<p><math alttext=\"8 x plus 3 equals 83\"><mrow><mn>8</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>3</mn></mrow><mo>=</mo><mrow><mn>83</mn></mrow></math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["654586c4-c74f-48da-aadd-81c0b9ef9b22"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. The given phrase &ldquo;<math alttext="8"><mn>8</mn>
</math> times a number <math alttext="x"><mi>x</mi>
</math>&rdquo; can be represented by the expression <math alttext="8 x"><mrow>
	<mn>8</mn>
	<mi>x</mi>
</mrow>
</math>. The given phrase &ldquo;<math alttext="3"><mn>3</mn>
</math> more than&rdquo; indicates an increase of <math alttext="3"><mn>3</mn>
</math> to a quantity. Therefore &ldquo;<math alttext="3"><mn>3</mn>
</math> more than <math alttext="8"><mn>8</mn>
</math> times a number <math alttext="x"><mi>x</mi>
</math>&rdquo; can be represented by the expression <math alttext="8 x plus 3"><mrow>
	<mrow>
		<mn>8</mn>
		<mi>x</mi>
	</mrow>
	<mo>+</mo>
	<mn>3</mn>
</mrow>
</math>. Since it&rsquo;s given that <math alttext="3"><mn>3</mn>
</math> more than <math alttext="8"><mn>8</mn>
</math> times a number <math alttext="x"><mi>x</mi>
</math> is equal to <math alttext="83"><mn>83</mn>
</math>, it follows that <math alttext="8 x plus 3"><mrow>
	<mrow>
		<mn>8</mn>
		<mi>x</mi>
	</mrow>
	<mo>+</mo>
	<mn>3</mn>
</mrow>
</math> is equal to <math alttext="83"><mn>83</mn>
</math>, or <math alttext="8 x plus 3 equals 83"><mrow>
	<mrow>
		<mrow>
			<mn>8</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>3</mn>
	</mrow>
	<mo>=</mo>
	<mn>83</mn>
</mrow>
</math>. Therefore, the equation that represents this situation is <math alttext="8 x plus 3 equals 83"><mrow>
	<mrow>
		<mrow>
			<mn>8</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>3</mn>
	</mrow>
	<mo>=</mo>
	<mn>83</mn>
</mrow>
</math>.</p>
<p style="text-align: left;">Choice A is incorrect. This equation represents <math alttext="3"><mn>3</mn>
</math> times the quantity <math alttext="8"><mn>8</mn>
</math> times a number <math alttext="x"><mi>x</mi>
</math> is equal to <math alttext="83"><mn>83</mn>
</math>.&nbsp;</p>
<p style="text-align: left;">Choice B is incorrect. This equation represents <math alttext="8"><mn>8</mn>
</math> times a number <math alttext="x"><mi>x</mi>
</math> is equal to <math alttext="3"><mn>3</mn>
</math> more than <math alttext="83"><mn>83</mn>
</math>.</p>
<p style="text-align: left;">Choice C is incorrect. This equation represents <math alttext="8"><mn>8</mn>
</math> more than <math alttext="3"><mn>3</mn>
</math> times a number <math alttext="x"><mi>x</mi>
</math> is equal to <math alttext="83"><mn>83</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"4de87c9a","external_id":"d4e10666-e119-46af-8dba-a8d527aeca75","disclosed_item_id":null,"source":"qbank","vaultid":"da90cee5-bf74-4451-a15e-a45292596cb8","uId":"68b325ef-b233-4aef-b581-97f5145ad7da","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p><math alttext=\"3\"><mn>3</mn>\n</math> more than <math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math> is equal to <math alttext=\"83\"><mrow><mn>83</mn></mrow></math>. Which equation represents this situation?</p>","answerOptions":[{"id":"92669f4e-a20e-4969-a618-0a2cc984a9bd","content":"<p><math alttext=\"left parenthesis 3 right parenthesis left parenthesis 8 right parenthesis x equals 83\"><mo>(</mo><mrow><mn>3</mn></mrow><mo>)</mo><mo>(</mo><mrow><mn>8</mn></mrow><mo>)</mo><mi>x</mi><mo>=</mo><mrow><mn>83</mn></mrow></math></p>"},{"id":"430705c8-a08d-4d62-832b-42006afccf05","content":"<p><math alttext=\"8 x equals 83 plus 3\"><mrow><mn>8</mn></mrow><mi>x</mi><mo>=</mo><mrow><mn>83</mn></mrow><mo>+</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"068f2bbc-f422-42c3-a277-21bd78977f4b","content":"<p><math alttext=\"3 x plus 8 equals 83\"><mrow><mn>3</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>8</mn></mrow><mo>=</mo><mrow><mn>83</mn></mrow></math></p>"},{"id":"654586c4-c74f-48da-aadd-81c0b9ef9b22","content":"<p><math alttext=\"8 x plus 3 equals 83\"><mrow><mn>8</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>3</mn></mrow><mo>=</mo><mrow><mn>83</mn></mrow></math></p>"}],"keys":["654586c4-c74f-48da-aadd-81c0b9ef9b22"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. The given phrase &ldquo;<math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math>&rdquo; can be represented by the expression <math alttext=\"8 x\"><mrow>\n\t<mn>8</mn>\n\t<mi>x</mi>\n</mrow>\n</math>. The given phrase &ldquo;<math alttext=\"3\"><mn>3</mn>\n</math> more than&rdquo; indicates an increase of <math alttext=\"3\"><mn>3</mn>\n</math> to a quantity. Therefore &ldquo;<math alttext=\"3\"><mn>3</mn>\n</math> more than <math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math>&rdquo; can be represented by the expression <math alttext=\"8 x plus 3\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>3</mn>\n</mrow>\n</math>. Since it&rsquo;s given that <math alttext=\"3\"><mn>3</mn>\n</math> more than <math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math> is equal to <math alttext=\"83\"><mn>83</mn>\n</math>, it follows that <math alttext=\"8 x plus 3\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>3</mn>\n</mrow>\n</math> is equal to <math alttext=\"83\"><mn>83</mn>\n</math>, or <math alttext=\"8 x plus 3 equals 83\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>83</mn>\n</mrow>\n</math>. Therefore, the equation that represents this situation is <math alttext=\"8 x plus 3 equals 83\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>83</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This equation represents <math alttext=\"3\"><mn>3</mn>\n</math> times the quantity <math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math> is equal to <math alttext=\"83\"><mn>83</mn>\n</math>.&nbsp;</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This equation represents <math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math> is equal to <math alttext=\"3\"><mn>3</mn>\n</math> more than <math alttext=\"83\"><mn>83</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This equation represents <math alttext=\"8\"><mn>8</mn>\n</math> more than <math alttext=\"3\"><mn>3</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math> is equal to <math alttext=\"83\"><mn>83</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959808,"pPcc":"SAT#H","questionId":"4de87c9a","skill_cd":"H.A.","score_band_range_cd":2,"skill_desc":"Linear equations in one variable","createDate":1691007959808,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"d4e10666-e119-46af-8dba-a8d527aeca75","primary_class_cd":"H","uId":"68b325ef-b233-4aef-b581-97f5145ad7da","difficulty":"E"},"raw_detail":{"keys":["654586c4-c74f-48da-aadd-81c0b9ef9b22"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. The given phrase &ldquo;<math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math>&rdquo; can be represented by the expression <math alttext=\"8 x\"><mrow>\n\t<mn>8</mn>\n\t<mi>x</mi>\n</mrow>\n</math>. The given phrase &ldquo;<math alttext=\"3\"><mn>3</mn>\n</math> more than&rdquo; indicates an increase of <math alttext=\"3\"><mn>3</mn>\n</math> to a quantity. Therefore &ldquo;<math alttext=\"3\"><mn>3</mn>\n</math> more than <math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math>&rdquo; can be represented by the expression <math alttext=\"8 x plus 3\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>3</mn>\n</mrow>\n</math>. Since it&rsquo;s given that <math alttext=\"3\"><mn>3</mn>\n</math> more than <math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math> is equal to <math alttext=\"83\"><mn>83</mn>\n</math>, it follows that <math alttext=\"8 x plus 3\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>3</mn>\n</mrow>\n</math> is equal to <math alttext=\"83\"><mn>83</mn>\n</math>, or <math alttext=\"8 x plus 3 equals 83\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>83</mn>\n</mrow>\n</math>. Therefore, the equation that represents this situation is <math alttext=\"8 x plus 3 equals 83\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>83</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This equation represents <math alttext=\"3\"><mn>3</mn>\n</math> times the quantity <math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math> is equal to <math alttext=\"83\"><mn>83</mn>\n</math>.&nbsp;</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This equation represents <math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math> is equal to <math alttext=\"3\"><mn>3</mn>\n</math> more than <math alttext=\"83\"><mn>83</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This equation represents <math alttext=\"8\"><mn>8</mn>\n</math> more than <math alttext=\"3\"><mn>3</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math> is equal to <math alttext=\"83\"><mn>83</mn>\n</math>.</p>","origin":"manifold","stem":"<p><math alttext=\"3\"><mn>3</mn>\n</math> more than <math alttext=\"8\"><mn>8</mn>\n</math> times a number <math alttext=\"x\"><mi>x</mi>\n</math> is equal to <math alttext=\"83\"><mrow><mn>83</mn></mrow></math>. Which equation represents this situation?</p>","externalid":"d4e10666-e119-46af-8dba-a8d527aeca75","templateid":"b5f09136-8aae-4e6d-9b84-85cd37ef49a1","vaultid":"da90cee5-bf74-4451-a15e-a45292596cb8","type":"mcq","answerOptions":[{"id":"92669f4e-a20e-4969-a618-0a2cc984a9bd","content":"<p><math alttext=\"left parenthesis 3 right parenthesis left parenthesis 8 right parenthesis x equals 83\"><mo>(</mo><mrow><mn>3</mn></mrow><mo>)</mo><mo>(</mo><mrow><mn>8</mn></mrow><mo>)</mo><mi>x</mi><mo>=</mo><mrow><mn>83</mn></mrow></math></p>"},{"id":"430705c8-a08d-4d62-832b-42006afccf05","content":"<p><math alttext=\"8 x equals 83 plus 3\"><mrow><mn>8</mn></mrow><mi>x</mi><mo>=</mo><mrow><mn>83</mn></mrow><mo>+</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"068f2bbc-f422-42c3-a277-21bd78977f4b","content":"<p><math alttext=\"3 x plus 8 equals 83\"><mrow><mn>3</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>8</mn></mrow><mo>=</mo><mrow><mn>83</mn></mrow></math></p>"},{"id":"654586c4-c74f-48da-aadd-81c0b9ef9b22","content":"<p><math alttext=\"8 x plus 3 equals 83\"><mrow><mn>8</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>3</mn></mrow><mo>=</mo><mrow><mn>83</mn></mrow></math></p>"}],"correct_answer":["D"]},"createDate":1691007959808,"updateDate":1691007959808}$SATQ$::jsonb, 1691007959808, 1691007959808),
    ($SATQ$4e400635$SATQ$, $SATQ$ac648dfb-04b8-480f-bc41-fe111d3c500c$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="3 x plus 6 equals 4 y"><mrow>
	<mrow>
		<mrow>
			<mn>3</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>6</mn>
	</mrow>
	<mo>=</mo>
	<mrow>
		<mn>4</mn>
		<mi>y</mi>
	</mrow>
</mrow>
</math></p>
<p style="text-align: center;"><math alttext="3 x plus 4 equals 2 y"><mrow>
	<mrow>
		<mrow>
			<mn>3</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>4</mn>
	</mrow>
	<mo>=</mo>
	<mrow>
		<mn>2</mn>
		<mi>y</mi>
	</mrow>
</mrow>
</math></p>
<p style="text-align: left;">The solution to the given system of equations is <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext="y"><mi>y</mi>
</math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["1"]$SATQ$::jsonb, $SATQ$["1"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="1"><mn>1</mn>
</math>. Subtracting the second equation from the first equation in the given system of equations yields <math alttext="left parenthesis 3 x minus 3 x right parenthesis plus left parenthesis 6 minus 4 right parenthesis equals 4 y minus 2 y"><mfenced><mrow><mn>3</mn><mi>x</mi><mo>-</mo><mn>3</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mfenced><mrow><mn>6</mn><mo>-</mo><mn>4</mn></mrow></mfenced><mo>=</mo><mn>4</mn><mi>y</mi><mo>-</mo><mn>2</mn><mi>y</mi></math>, which is equivalent to<math alttext="0 plus 2 equals 2 y"><mo>&nbsp;</mo><mn>0</mn><mo>+</mo><mn>2</mn><mo>=</mo><mn>2</mn><mi>y</mi></math>, or <math alttext="2 equals 2 y"><mn>2</mn><mo>=</mo><mn>2</mn><mi>y</mi></math>. Dividing each side of this equation by <math alttext="2"><mn>2</mn>
</math> yields <math alttext="1 equals y"><mrow>
<mn>1</mn>
<mo>=</mo>
<mi>y</mi>
</mrow>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4e400635","external_id":"ac648dfb-04b8-480f-bc41-fe111d3c500c","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"a5b89f6d-4715-4815-96c9-8efbd7fc0d33","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"M","score_band_range_cd":4,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"3 x plus 6 equals 4 y\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>6</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: center;\"><math alttext=\"3 x plus 4 equals 2 y\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>4</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>2</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"y\"><mi>y</mi>\n</math>?</p>","answerOptions":[],"keys":["1"],"correct_answer":["1"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"1\"><mn>1</mn>\n</math>. Subtracting the second equation from the first equation in the given system of equations yields <math alttext=\"left parenthesis 3 x minus 3 x right parenthesis plus left parenthesis 6 minus 4 right parenthesis equals 4 y minus 2 y\"><mfenced><mrow><mn>3</mn><mi>x</mi><mo>-</mo><mn>3</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mfenced><mrow><mn>6</mn><mo>-</mo><mn>4</mn></mrow></mfenced><mo>=</mo><mn>4</mn><mi>y</mi><mo>-</mo><mn>2</mn><mi>y</mi></math>, which is equivalent to<math alttext=\"0 plus 2 equals 2 y\"><mo>&nbsp;</mo><mn>0</mn><mo>+</mo><mn>2</mn><mo>=</mo><mn>2</mn><mi>y</mi></math>, or <math alttext=\"2 equals 2 y\"><mn>2</mn><mo>=</mo><mn>2</mn><mi>y</mi></math>. Dividing each side of this equation by <math alttext=\"2\"><mn>2</mn>\n</math> yields <math alttext=\"1 equals y\"><mrow>\n<mn>1</mn>\n<mo>=</mo>\n<mi>y</mi>\n</mrow>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554985,"pPcc":"SAT#H","questionId":"4e400635","skill_cd":"H.D.","score_band_range_cd":4,"skill_desc":"Systems of two linear equations in two variables","createDate":1743430554985,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"ac648dfb-04b8-480f-bc41-fe111d3c500c","primary_class_cd":"H","uId":"a5b89f6d-4715-4815-96c9-8efbd7fc0d33","difficulty":"M"},"raw_detail":{"type":"spr","stem":"<p style=\"text-align: center;\"><math alttext=\"3 x plus 6 equals 4 y\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>6</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: center;\"><math alttext=\"3 x plus 4 equals 2 y\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>4</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>2</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"y\"><mi>y</mi>\n</math>?</p>","keys":["1"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"1\"><mn>1</mn>\n</math>. Subtracting the second equation from the first equation in the given system of equations yields <math alttext=\"left parenthesis 3 x minus 3 x right parenthesis plus left parenthesis 6 minus 4 right parenthesis equals 4 y minus 2 y\"><mfenced><mrow><mn>3</mn><mi>x</mi><mo>-</mo><mn>3</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mfenced><mrow><mn>6</mn><mo>-</mo><mn>4</mn></mrow></mfenced><mo>=</mo><mn>4</mn><mi>y</mi><mo>-</mo><mn>2</mn><mi>y</mi></math>, which is equivalent to<math alttext=\"0 plus 2 equals 2 y\"><mo>&nbsp;</mo><mn>0</mn><mo>+</mo><mn>2</mn><mo>=</mo><mn>2</mn><mi>y</mi></math>, or <math alttext=\"2 equals 2 y\"><mn>2</mn><mo>=</mo><mn>2</mn><mi>y</mi></math>. Dividing each side of this equation by <math alttext=\"2\"><mn>2</mn>\n</math> yields <math alttext=\"1 equals y\"><mrow>\n<mn>1</mn>\n<mo>=</mo>\n<mi>y</mi>\n</mrow>\n</math>.</p>","externalid":"ac648dfb-04b8-480f-bc41-fe111d3c500c","answerOptions":[],"correct_answer":["1"]},"createDate":1743430554985,"updateDate":1743430554985}$SATQ$::jsonb, 1743430554985, 1743430554985),
    ($SATQ$4e77195b$SATQ$, $SATQ$26011899-7805-4655-b434-d6a03ef7d8de$SATQ$::uuid, $SATQ$b8ba825a-382a-4e5b-bb6d-36af77b3c050$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: left;">If <math alttext="2 plus x equals 60"><mrow><mn>2</mn></mrow><mo>+</mo><mi>x</mi><mo>=</mo><mrow><mn>60</mn></mrow></math>, what is the value of <math alttext="16 plus 8 x"><mrow><mn>16</mn></mrow><mo>+</mo><mrow><mn>8</mn></mrow><mi>x</mi></math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["480"]$SATQ$::jsonb, $SATQ$["480"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="480"><mn>480</mn>
</math>.&nbsp;Multiplying both sides of the given equation by <math alttext="8"><mn>8</mn>
</math> yields <math alttext="8 left parenthesis 2 plus x right parenthesis equals 8 left parenthesis 60 right parenthesis"><mn>8</mn><mfenced><mrow><mn>2</mn><mo>+</mo><mi>x</mi></mrow></mfenced><mo>=</mo><mn>8</mn><mfenced><mn>60</mn></mfenced></math>, or <math alttext="16 plus 8 x equals 480"><mn>16</mn><mo>+</mo><mn>8</mn><mi>x</mi><mo>=</mo><mn>480</mn></math>. Therefore, if <math alttext="2 plus x equals 60"><mn>2</mn><mo>+</mo><mi>x</mi><mo>=</mo><mn>60</mn></math>, the value of <math alttext="16 plus 8 x"><mn>16</mn><mo>+</mo><mn>8</mn><mi>x</mi></math> is <math alttext="480"><mn>480</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"4e77195b","external_id":"26011899-7805-4655-b434-d6a03ef7d8de","disclosed_item_id":null,"source":"qbank","vaultid":"b8ba825a-382a-4e5b-bb6d-36af77b3c050","uId":"c162022f-9e0f-44af-8ed5-d6cc7ec2f758","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":2,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: left;\">If <math alttext=\"2 plus x equals 60\"><mrow><mn>2</mn></mrow><mo>+</mo><mi>x</mi><mo>=</mo><mrow><mn>60</mn></mrow></math>, what is the value of <math alttext=\"16 plus 8 x\"><mrow><mn>16</mn></mrow><mo>+</mo><mrow><mn>8</mn></mrow><mi>x</mi></math>?</p>","answerOptions":[],"keys":["480"],"correct_answer":["480"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"480\"><mn>480</mn>\n</math>.&nbsp;Multiplying both sides of the given equation by <math alttext=\"8\"><mn>8</mn>\n</math> yields <math alttext=\"8 left parenthesis 2 plus x right parenthesis equals 8 left parenthesis 60 right parenthesis\"><mn>8</mn><mfenced><mrow><mn>2</mn><mo>+</mo><mi>x</mi></mrow></mfenced><mo>=</mo><mn>8</mn><mfenced><mn>60</mn></mfenced></math>, or <math alttext=\"16 plus 8 x equals 480\"><mn>16</mn><mo>+</mo><mn>8</mn><mi>x</mi><mo>=</mo><mn>480</mn></math>. Therefore, if <math alttext=\"2 plus x equals 60\"><mn>2</mn><mo>+</mo><mi>x</mi><mo>=</mo><mn>60</mn></math>, the value of <math alttext=\"16 plus 8 x\"><mn>16</mn><mo>+</mo><mn>8</mn><mi>x</mi></math> is <math alttext=\"480\"><mn>480</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959809,"pPcc":"SAT#H","questionId":"4e77195b","skill_cd":"H.A.","score_band_range_cd":2,"skill_desc":"Linear equations in one variable","createDate":1691007959809,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"26011899-7805-4655-b434-d6a03ef7d8de","primary_class_cd":"H","uId":"c162022f-9e0f-44af-8ed5-d6cc7ec2f758","difficulty":"E"},"raw_detail":{"keys":["480"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"480\"><mn>480</mn>\n</math>.&nbsp;Multiplying both sides of the given equation by <math alttext=\"8\"><mn>8</mn>\n</math> yields <math alttext=\"8 left parenthesis 2 plus x right parenthesis equals 8 left parenthesis 60 right parenthesis\"><mn>8</mn><mfenced><mrow><mn>2</mn><mo>+</mo><mi>x</mi></mrow></mfenced><mo>=</mo><mn>8</mn><mfenced><mn>60</mn></mfenced></math>, or <math alttext=\"16 plus 8 x equals 480\"><mn>16</mn><mo>+</mo><mn>8</mn><mi>x</mi><mo>=</mo><mn>480</mn></math>. Therefore, if <math alttext=\"2 plus x equals 60\"><mn>2</mn><mo>+</mo><mi>x</mi><mo>=</mo><mn>60</mn></math>, the value of <math alttext=\"16 plus 8 x\"><mn>16</mn><mo>+</mo><mn>8</mn><mi>x</mi></math> is <math alttext=\"480\"><mn>480</mn>\n</math>.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">If <math alttext=\"2 plus x equals 60\"><mrow><mn>2</mn></mrow><mo>+</mo><mi>x</mi><mo>=</mo><mrow><mn>60</mn></mrow></math>, what is the value of <math alttext=\"16 plus 8 x\"><mrow><mn>16</mn></mrow><mo>+</mo><mrow><mn>8</mn></mrow><mi>x</mi></math>?</p>","externalid":"26011899-7805-4655-b434-d6a03ef7d8de","templateid":"c65aea51-d698-4087-a29e-50f68d769e24","vaultid":"b8ba825a-382a-4e5b-bb6d-36af77b3c050","type":"spr","answerOptions":[],"correct_answer":["480"]},"createDate":1691007959809,"updateDate":1691007959809}$SATQ$::jsonb, 1691007959809, 1691007959809),
    ($SATQ$4e97f862$SATQ$, $SATQ$b5527b99-0bdb-46d2-9513-73a5fae75276$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">The function <math alttext="f"><mi>f</mi>
</math> is defined by&nbsp;<math alttext="f left parenthesis x right parenthesis equals 3 x minus 8"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mn>3</mn><mi>x</mi><mo>-</mo><mn>8</mn></math>. What is the value of&nbsp;<math alttext="f left parenthesis 7 right parenthesis"><mi>f</mi><mfenced><mn>7</mn></mfenced></math>?</p>$SATQ$, $SATQ$[{"id":"f5636745-89da-4c82-89b2-f14f448ed000","content":"<p><math alttext=\"29\"><mn>29</mn>\n</math></p>"},{"id":"9008c049-89cb-4f08-a6d3-8b3a6e9f6158","content":"<p><math alttext=\"13\"><mn>13</mn>\n</math></p>"},{"id":"6e6b5550-f385-4bae-8b5a-195337e01cd9","content":"<p><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></p>"},{"id":"92f11ea5-80d1-4c02-88b0-85839a5b2c67","content":"<p><math alttext=\"negative 29\"><mo>-</mo><mn>29</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["9008c049-89cb-4f08-a6d3-8b3a6e9f6158"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. It&rsquo;s given that the function <math alttext="f"><mi>f</mi>
</math> is defined by <math alttext="f left parenthesis x right parenthesis equals 3 x minus 8"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>3</mn><mi>x</mi><mo>-</mo><mn>8</mn></math>. The value of <math alttext="f left parenthesis 7 right parenthesis"><mi>f</mi><mfenced><mn>7</mn></mfenced></math> is the value of <math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> when <math alttext="x equals 7"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>7</mn>
</mrow>
</math>. Substituting <math alttext="7"><mn>7</mn>
</math> for <math alttext="x"><mi>x</mi>
</math> in the given equation yields <math alttext="f left parenthesis 7 right parenthesis equals 3 left parenthesis 7 right parenthesis minus 8"><mi>f</mi><mfenced><mn>7</mn></mfenced><mo>=</mo><mn>3</mn><mfenced><mn>7</mn></mfenced><mo>-</mo><mn>8</mn></math>, which is equivalent to <math alttext="f left parenthesis 7 right parenthesis equals 21 minus 8"><mi>f</mi><mfenced><mn>7</mn></mfenced><mo>=</mo><mn>21</mn><mo>-</mo><mn>8</mn></math>, or <math alttext="f left parenthesis 7 right parenthesis equals 13"><mi>f</mi><mfenced><mn>7</mn></mfenced><mo>=</mo><mn>13</mn></math>.</p>
<p>Choice A is incorrect. This is the value of <math alttext="f left parenthesis 7 right parenthesis"><mi>f</mi><mfenced><mn>7</mn></mfenced></math> when <math alttext="f left parenthesis x right parenthesis equals 3 x plus 8"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>8</mn></math>, rather than <math alttext="f left parenthesis x right parenthesis equals 3 x minus 8"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>3</mn><mi>x</mi><mo>-</mo><mn>8</mn></math>.</p>
<p>Choice C is incorrect. This is the value of <math alttext="f left parenthesis 1 right parenthesis"><mi>f</mi><mfenced><mn>1</mn></mfenced></math>, rather than <math alttext="f left parenthesis 7 right parenthesis"><mi>f</mi><mfenced><mn>7</mn></mfenced></math>.</p>
<p>Choice D is incorrect. This is the value of <math alttext="f left parenthesis negative 7 right parenthesis"><mi>f</mi><mfenced><mrow><mo>-</mo><mn>7</mn></mrow></mfenced></math>, rather than <math alttext="f left parenthesis 7 right parenthesis"><mi>f</mi><mfenced><mn>7</mn></mfenced></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4e97f862","external_id":"b5527b99-0bdb-46d2-9513-73a5fae75276","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"6a112bc0-84e1-4045-a139-a329b3c3b251","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">The function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals 3 x minus 8\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mn>3</mn><mi>x</mi><mo>-</mo><mn>8</mn></math>. What is the value of&nbsp;<math alttext=\"f left parenthesis 7 right parenthesis\"><mi>f</mi><mfenced><mn>7</mn></mfenced></math>?</p>","answerOptions":[{"id":"f5636745-89da-4c82-89b2-f14f448ed000","content":"<p><math alttext=\"29\"><mn>29</mn>\n</math></p>"},{"id":"9008c049-89cb-4f08-a6d3-8b3a6e9f6158","content":"<p><math alttext=\"13\"><mn>13</mn>\n</math></p>"},{"id":"6e6b5550-f385-4bae-8b5a-195337e01cd9","content":"<p><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></p>"},{"id":"92f11ea5-80d1-4c02-88b0-85839a5b2c67","content":"<p><math alttext=\"negative 29\"><mo>-</mo><mn>29</mn>\n</math></p>"}],"keys":["9008c049-89cb-4f08-a6d3-8b3a6e9f6158"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. It&rsquo;s given that the function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by <math alttext=\"f left parenthesis x right parenthesis equals 3 x minus 8\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>3</mn><mi>x</mi><mo>-</mo><mn>8</mn></math>. The value of <math alttext=\"f left parenthesis 7 right parenthesis\"><mi>f</mi><mfenced><mn>7</mn></mfenced></math> is the value of <math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> when <math alttext=\"x equals 7\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>7</mn>\n</mrow>\n</math>. Substituting <math alttext=\"7\"><mn>7</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> in the given equation yields <math alttext=\"f left parenthesis 7 right parenthesis equals 3 left parenthesis 7 right parenthesis minus 8\"><mi>f</mi><mfenced><mn>7</mn></mfenced><mo>=</mo><mn>3</mn><mfenced><mn>7</mn></mfenced><mo>-</mo><mn>8</mn></math>, which is equivalent to <math alttext=\"f left parenthesis 7 right parenthesis equals 21 minus 8\"><mi>f</mi><mfenced><mn>7</mn></mfenced><mo>=</mo><mn>21</mn><mo>-</mo><mn>8</mn></math>, or <math alttext=\"f left parenthesis 7 right parenthesis equals 13\"><mi>f</mi><mfenced><mn>7</mn></mfenced><mo>=</mo><mn>13</mn></math>.</p>\n<p>Choice A is incorrect. This is the value of <math alttext=\"f left parenthesis 7 right parenthesis\"><mi>f</mi><mfenced><mn>7</mn></mfenced></math> when <math alttext=\"f left parenthesis x right parenthesis equals 3 x plus 8\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>8</mn></math>, rather than <math alttext=\"f left parenthesis x right parenthesis equals 3 x minus 8\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>3</mn><mi>x</mi><mo>-</mo><mn>8</mn></math>.</p>\n<p>Choice C is incorrect. This is the value of <math alttext=\"f left parenthesis 1 right parenthesis\"><mi>f</mi><mfenced><mn>1</mn></mfenced></math>, rather than <math alttext=\"f left parenthesis 7 right parenthesis\"><mi>f</mi><mfenced><mn>7</mn></mfenced></math>.</p>\n<p>Choice D is incorrect. This is the value of <math alttext=\"f left parenthesis negative 7 right parenthesis\"><mi>f</mi><mfenced><mrow><mo>-</mo><mn>7</mn></mrow></mfenced></math>, rather than <math alttext=\"f left parenthesis 7 right parenthesis\"><mi>f</mi><mfenced><mn>7</mn></mfenced></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357390,"pPcc":"SAT#H","questionId":"4e97f862","skill_cd":"H.B.","score_band_range_cd":2,"skill_desc":"Linear functions","createDate":1730147357390,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"b5527b99-0bdb-46d2-9513-73a5fae75276","primary_class_cd":"H","uId":"6a112bc0-84e1-4045-a139-a329b3c3b251","difficulty":"E"},"raw_detail":{"answerOptions":[{"content":"<p><math alttext=\"29\"><mn>29</mn>\n</math></p>","id":"f5636745-89da-4c82-89b2-f14f448ed000"},{"content":"<p><math alttext=\"13\"><mn>13</mn>\n</math></p>","id":"9008c049-89cb-4f08-a6d3-8b3a6e9f6158"},{"content":"<p><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></p>","id":"6e6b5550-f385-4bae-8b5a-195337e01cd9"},{"content":"<p><math alttext=\"negative 29\"><mo>-</mo><mn>29</mn>\n</math></p>","id":"92f11ea5-80d1-4c02-88b0-85839a5b2c67"}],"externalid":"b5527b99-0bdb-46d2-9513-73a5fae75276","keys":["9008c049-89cb-4f08-a6d3-8b3a6e9f6158"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. It&rsquo;s given that the function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by <math alttext=\"f left parenthesis x right parenthesis equals 3 x minus 8\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>3</mn><mi>x</mi><mo>-</mo><mn>8</mn></math>. The value of <math alttext=\"f left parenthesis 7 right parenthesis\"><mi>f</mi><mfenced><mn>7</mn></mfenced></math> is the value of <math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> when <math alttext=\"x equals 7\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>7</mn>\n</mrow>\n</math>. Substituting <math alttext=\"7\"><mn>7</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> in the given equation yields <math alttext=\"f left parenthesis 7 right parenthesis equals 3 left parenthesis 7 right parenthesis minus 8\"><mi>f</mi><mfenced><mn>7</mn></mfenced><mo>=</mo><mn>3</mn><mfenced><mn>7</mn></mfenced><mo>-</mo><mn>8</mn></math>, which is equivalent to <math alttext=\"f left parenthesis 7 right parenthesis equals 21 minus 8\"><mi>f</mi><mfenced><mn>7</mn></mfenced><mo>=</mo><mn>21</mn><mo>-</mo><mn>8</mn></math>, or <math alttext=\"f left parenthesis 7 right parenthesis equals 13\"><mi>f</mi><mfenced><mn>7</mn></mfenced><mo>=</mo><mn>13</mn></math>.</p>\n<p>Choice A is incorrect. This is the value of <math alttext=\"f left parenthesis 7 right parenthesis\"><mi>f</mi><mfenced><mn>7</mn></mfenced></math> when <math alttext=\"f left parenthesis x right parenthesis equals 3 x plus 8\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>8</mn></math>, rather than <math alttext=\"f left parenthesis x right parenthesis equals 3 x minus 8\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>3</mn><mi>x</mi><mo>-</mo><mn>8</mn></math>.</p>\n<p>Choice C is incorrect. This is the value of <math alttext=\"f left parenthesis 1 right parenthesis\"><mi>f</mi><mfenced><mn>1</mn></mfenced></math>, rather than <math alttext=\"f left parenthesis 7 right parenthesis\"><mi>f</mi><mfenced><mn>7</mn></mfenced></math>.</p>\n<p>Choice D is incorrect. This is the value of <math alttext=\"f left parenthesis negative 7 right parenthesis\"><mi>f</mi><mfenced><mrow><mo>-</mo><mn>7</mn></mrow></mfenced></math>, rather than <math alttext=\"f left parenthesis 7 right parenthesis\"><mi>f</mi><mfenced><mn>7</mn></mfenced></math>.</p>","stem":"<p style=\"text-align: left;\">The function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by&nbsp;<math alttext=\"f left parenthesis x right parenthesis equals 3 x minus 8\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mn>3</mn><mi>x</mi><mo>-</mo><mn>8</mn></math>. What is the value of&nbsp;<math alttext=\"f left parenthesis 7 right parenthesis\"><mi>f</mi><mfenced><mn>7</mn></mfenced></math>?</p>","type":"mcq","correct_answer":["B"]},"createDate":1730147357390,"updateDate":1730147357390}$SATQ$::jsonb, 1730147357390, 1730147357390),
    ($SATQ$4ec95eab$SATQ$, $SATQ$7eab7aa7-dffb-49ed-89bb-e363db1aaad3$SATQ$::uuid, $SATQ$49526ccb-6422-4986-80b3-a850434b9e48$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="y equals negative 3 x"><mi>y</mi><mo>=</mo><mrow><mo>-</mo><mn>3</mn></mrow><mi>x</mi></math></p>
<p style="text-align: center;"><math alttext="4 x plus y equals 15"><mrow><mn>4</mn></mrow><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mrow><mn>15</mn></mrow></math></p>
<p style="text-align: left;">The solution to the given system of equations is&nbsp;<math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext="x"><mi>x</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"081a3799-1e2c-43bc-b837-1e24995d7333","content":"<p><math alttext=\"1\"><mn>1</mn>\n</math></p>"},{"id":"811a36cd-b05d-4ad4-b116-2dd8a544f943","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"e5dc9d27-9ec9-4f7c-a56e-353cacc325f0","content":"<p><math alttext=\"15\"><mn>15</mn>\n</math></p>"},{"id":"d8fc946a-b7f4-408e-acc5-814cddc3e923","content":"<p><math alttext=\"45\"><mn>45</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["e5dc9d27-9ec9-4f7c-a56e-353cacc325f0"]$SATQ$::jsonb, $SATQ$<p>Choice C is correct. The given system of linear equations can be solved by the substitution method. Substituting <math alttext="minus 3 x"><mo>-</mo><mn>3</mn><mi>x</mi></math>&nbsp;for <math alttext="y"><mi>y</mi>
</math> from the first equation in the given system into the second equation yields <math alttext="4 x plus left parenthesis minus 3 x right parenthesis equals 15"><mn>4</mn><mi>x</mi><mo>+</mo><mfenced><mrow><mo>-</mo><mn>3</mn><mi>x</mi></mrow></mfenced><mo>=</mo><mn>15</mn></math>, or <math alttext="x equals 15"><mi>x</mi><mo>=</mo><mn>15</mn></math>.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice D is incorrect. This is the absolute value of <math alttext="y"><mi>y</mi>
</math>, not the value of <math alttext="x"><mi>x</mi>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"4ec95eab","external_id":"7eab7aa7-dffb-49ed-89bb-e363db1aaad3","disclosed_item_id":null,"source":"qbank","vaultid":"49526ccb-6422-4986-80b3-a850434b9e48","uId":"b3a9592e-cc4c-423c-a702-7f1ad0c4cd47","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"y equals negative 3 x\"><mi>y</mi><mo>=</mo><mrow><mo>-</mo><mn>3</mn></mrow><mi>x</mi></math></p>\n<p style=\"text-align: center;\"><math alttext=\"4 x plus y equals 15\"><mrow><mn>4</mn></mrow><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mrow><mn>15</mn></mrow></math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"x\"><mi>x</mi>\n</math>?</p>","answerOptions":[{"id":"081a3799-1e2c-43bc-b837-1e24995d7333","content":"<p><math alttext=\"1\"><mn>1</mn>\n</math></p>"},{"id":"811a36cd-b05d-4ad4-b116-2dd8a544f943","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"e5dc9d27-9ec9-4f7c-a56e-353cacc325f0","content":"<p><math alttext=\"15\"><mn>15</mn>\n</math></p>"},{"id":"d8fc946a-b7f4-408e-acc5-814cddc3e923","content":"<p><math alttext=\"45\"><mn>45</mn>\n</math></p>"}],"keys":["e5dc9d27-9ec9-4f7c-a56e-353cacc325f0"],"correct_answer":["C"],"rationale":"<p>Choice C is correct. The given system of linear equations can be solved by the substitution method. Substituting <math alttext=\"minus 3 x\"><mo>-</mo><mn>3</mn><mi>x</mi></math>&nbsp;for <math alttext=\"y\"><mi>y</mi>\n</math> from the first equation in the given system into the second equation yields <math alttext=\"4 x plus left parenthesis minus 3 x right parenthesis equals 15\"><mn>4</mn><mi>x</mi><mo>+</mo><mfenced><mrow><mo>-</mo><mn>3</mn><mi>x</mi></mrow></mfenced><mo>=</mo><mn>15</mn></math>, or <math alttext=\"x equals 15\"><mi>x</mi><mo>=</mo><mn>15</mn></math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect. This is the absolute value of <math alttext=\"y\"><mi>y</mi>\n</math>, not the value of <math alttext=\"x\"><mi>x</mi>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959819,"pPcc":"SAT#H","questionId":"4ec95eab","skill_cd":"H.D.","score_band_range_cd":3,"skill_desc":"Systems of two linear equations in two variables","createDate":1691007959819,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"7eab7aa7-dffb-49ed-89bb-e363db1aaad3","primary_class_cd":"H","uId":"b3a9592e-cc4c-423c-a702-7f1ad0c4cd47","difficulty":"E"},"raw_detail":{"keys":["e5dc9d27-9ec9-4f7c-a56e-353cacc325f0"],"rationale":"<p>Choice C is correct. The given system of linear equations can be solved by the substitution method. Substituting <math alttext=\"minus 3 x\"><mo>-</mo><mn>3</mn><mi>x</mi></math>&nbsp;for <math alttext=\"y\"><mi>y</mi>\n</math> from the first equation in the given system into the second equation yields <math alttext=\"4 x plus left parenthesis minus 3 x right parenthesis equals 15\"><mn>4</mn><mi>x</mi><mo>+</mo><mfenced><mrow><mo>-</mo><mn>3</mn><mi>x</mi></mrow></mfenced><mo>=</mo><mn>15</mn></math>, or <math alttext=\"x equals 15\"><mi>x</mi><mo>=</mo><mn>15</mn></math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect. This is the absolute value of <math alttext=\"y\"><mi>y</mi>\n</math>, not the value of <math alttext=\"x\"><mi>x</mi>\n</math>.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"y equals negative 3 x\"><mi>y</mi><mo>=</mo><mrow><mo>-</mo><mn>3</mn></mrow><mi>x</mi></math></p>\n<p style=\"text-align: center;\"><math alttext=\"4 x plus y equals 15\"><mrow><mn>4</mn></mrow><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mrow><mn>15</mn></mrow></math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"x\"><mi>x</mi>\n</math>?</p>","externalid":"7eab7aa7-dffb-49ed-89bb-e363db1aaad3","templateid":"786e4d3c-5d88-4d19-90bb-7c614abb376b","vaultid":"49526ccb-6422-4986-80b3-a850434b9e48","type":"mcq","answerOptions":[{"id":"081a3799-1e2c-43bc-b837-1e24995d7333","content":"<p><math alttext=\"1\"><mn>1</mn>\n</math></p>"},{"id":"811a36cd-b05d-4ad4-b116-2dd8a544f943","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"e5dc9d27-9ec9-4f7c-a56e-353cacc325f0","content":"<p><math alttext=\"15\"><mn>15</mn>\n</math></p>"},{"id":"d8fc946a-b7f4-408e-acc5-814cddc3e923","content":"<p><math alttext=\"45\"><mn>45</mn>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959819,"updateDate":1691007959819}$SATQ$::jsonb, 1691007959819, 1691007959819),
    ($SATQ$4edecdba$SATQ$, $SATQ$e3d6b3f4-d0ec-46bc-b1d7-45b9bfe60aae$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="8 x plus 11 y equals 170"><mrow>
	<mrow>
		<mrow>
			<mn>8</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>11</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>170</mn>
</mrow>
</math></p>
<p>The equation gives the possible combinations of the number of <math alttext="2009"><mn>2009</mn>
</math> premium grade Log Cabin Pennies, <math alttext="x"><mi>x</mi>
</math>, and the number of <math alttext="1996"><mn>1996</mn>
</math> select grade Lincoln Pennies, <math alttext="y"><mi>y</mi>
</math>, in a collection that is worth a total of <math alttext="dollar sign 170"><mo>$</mo><mn>170</mn></math>. If there are <math alttext="6"><mn>6</mn>
</math> <math alttext="1996"><mn>1996</mn>
</math> select grade Lincoln Pennies in the collection, how many <math alttext="2009"><mn>2009</mn>
</math> premium grade Log Cabin Pennies are in the collection?</p>$SATQ$, NULL, $SATQ$["13"]$SATQ$::jsonb, $SATQ$["13"]$SATQ$::jsonb, $SATQ$<p>The correct answer is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="13"><mn>13</mn></math>. It&rsquo;s given that the equation <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="8 x plus 11 y equals 170"><mn>8</mn><mi>x</mi><mo>+</mo><mn>11</mn><mi>y</mi><mo>=</mo><mn>170</mn></math> gives the possible combinations of the number of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2009"><mn>2009</mn></math> premium grade Log Cabin Pennies, <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x"><mi>x</mi></math>, and the number of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="1996"><mn>1996</mn></math> select grade Lincoln Pennies, <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y"><mi>y</mi></math>, in a collection that is worth a total of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="dollar sign 170"><mo>$</mo><mn>170</mn></math>. It&rsquo;s also given that there are <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="6"><mn>6</mn></math> <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="1996"><mn>1996</mn></math> select grade Lincoln Pennies in the collection, and thus <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y equals 6"><mi>y</mi><mo>=</mo><mn>6</mn></math>. Substituting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="6"><mn>6</mn></math> for <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y"><mi>y</mi></math> in the given equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="8 x plus 11 left parenthesis 6 right parenthesis equals 170"><mn>8</mn><mi>x</mi><mo>+</mo><mn>11</mn><mo>(</mo><mn>6</mn><mo>)</mo><mo>=</mo><mn>170</mn></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="8 x plus 66 equals 170"><mn>8</mn><mi>x</mi><mo>+</mo><mn>66</mn><mo>=</mo><mn>170</mn></math>. Subtracting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="66"><mn>66</mn></math> from both sides of this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="8 x equals 104"><mn>8</mn><mi>x</mi><mo>=</mo><mn>104</mn></math>. Dividing both sides of this equation by <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="8"><mn>8</mn></math> yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x equals 13"><mi>x</mi><mo>=</mo><mn>13</mn></math>. Therefore, there are <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="13"><mn>13</mn></math> <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2009"><mn>2009</mn></math> premium grade Log Cabin Pennies in the collection.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4edecdba","external_id":"e3d6b3f4-d0ec-46bc-b1d7-45b9bfe60aae","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"285b1cfd-661f-4eed-b28b-176e6e57ff5a","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"E","score_band_range_cd":3,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"8 x plus 11 y equals 170\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>170</mn>\n</mrow>\n</math></p>\n<p>The equation gives the possible combinations of the number of <math alttext=\"2009\"><mn>2009</mn>\n</math> premium grade Log Cabin Pennies, <math alttext=\"x\"><mi>x</mi>\n</math>, and the number of <math alttext=\"1996\"><mn>1996</mn>\n</math> select grade Lincoln Pennies, <math alttext=\"y\"><mi>y</mi>\n</math>, in a collection that is worth a total of <math alttext=\"dollar sign 170\"><mo>$</mo><mn>170</mn></math>. If there are <math alttext=\"6\"><mn>6</mn>\n</math> <math alttext=\"1996\"><mn>1996</mn>\n</math> select grade Lincoln Pennies in the collection, how many <math alttext=\"2009\"><mn>2009</mn>\n</math> premium grade Log Cabin Pennies are in the collection?</p>","answerOptions":null,"keys":["13"],"correct_answer":["13"],"rationale":"<p>The correct answer is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"13\"><mn>13</mn></math>. It&rsquo;s given that the equation <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8 x plus 11 y equals 170\"><mn>8</mn><mi>x</mi><mo>+</mo><mn>11</mn><mi>y</mi><mo>=</mo><mn>170</mn></math> gives the possible combinations of the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2009\"><mn>2009</mn></math> premium grade Log Cabin Pennies, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math>, and the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"1996\"><mn>1996</mn></math> select grade Lincoln Pennies, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math>, in a collection that is worth a total of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"dollar sign 170\"><mo>$</mo><mn>170</mn></math>. It&rsquo;s also given that there are <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6\"><mn>6</mn></math> <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"1996\"><mn>1996</mn></math> select grade Lincoln Pennies in the collection, and thus <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals 6\"><mi>y</mi><mo>=</mo><mn>6</mn></math>. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6\"><mn>6</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> in the given equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8 x plus 11 left parenthesis 6 right parenthesis equals 170\"><mn>8</mn><mi>x</mi><mo>+</mo><mn>11</mn><mo>(</mo><mn>6</mn><mo>)</mo><mo>=</mo><mn>170</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8 x plus 66 equals 170\"><mn>8</mn><mi>x</mi><mo>+</mo><mn>66</mn><mo>=</mo><mn>170</mn></math>. Subtracting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"66\"><mn>66</mn></math> from both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8 x equals 104\"><mn>8</mn><mi>x</mi><mo>=</mo><mn>104</mn></math>. Dividing both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8\"><mn>8</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 13\"><mi>x</mi><mo>=</mo><mn>13</mn></math>. Therefore, there are <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"13\"><mn>13</mn></math> <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2009\"><mn>2009</mn></math> premium grade Log Cabin Pennies in the collection.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1776362727993,"pPcc":"SAT#H","questionId":"4edecdba","skill_cd":"H.C.","score_band_range_cd":3,"skill_desc":"Linear equations in two variables","createDate":1776362727993,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"e3d6b3f4-d0ec-46bc-b1d7-45b9bfe60aae","primary_class_cd":"H","uId":"285b1cfd-661f-4eed-b28b-176e6e57ff5a","difficulty":"E"},"raw_detail":{"type":"spr","stem":"<p style=\"text-align: center;\"><math alttext=\"8 x plus 11 y equals 170\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>170</mn>\n</mrow>\n</math></p>\n<p>The equation gives the possible combinations of the number of <math alttext=\"2009\"><mn>2009</mn>\n</math> premium grade Log Cabin Pennies, <math alttext=\"x\"><mi>x</mi>\n</math>, and the number of <math alttext=\"1996\"><mn>1996</mn>\n</math> select grade Lincoln Pennies, <math alttext=\"y\"><mi>y</mi>\n</math>, in a collection that is worth a total of <math alttext=\"dollar sign 170\"><mo>$</mo><mn>170</mn></math>. If there are <math alttext=\"6\"><mn>6</mn>\n</math> <math alttext=\"1996\"><mn>1996</mn>\n</math> select grade Lincoln Pennies in the collection, how many <math alttext=\"2009\"><mn>2009</mn>\n</math> premium grade Log Cabin Pennies are in the collection?</p>","keys":["13"],"rationale":"<p>The correct answer is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"13\"><mn>13</mn></math>. It&rsquo;s given that the equation <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8 x plus 11 y equals 170\"><mn>8</mn><mi>x</mi><mo>+</mo><mn>11</mn><mi>y</mi><mo>=</mo><mn>170</mn></math> gives the possible combinations of the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2009\"><mn>2009</mn></math> premium grade Log Cabin Pennies, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math>, and the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"1996\"><mn>1996</mn></math> select grade Lincoln Pennies, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math>, in a collection that is worth a total of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"dollar sign 170\"><mo>$</mo><mn>170</mn></math>. It&rsquo;s also given that there are <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6\"><mn>6</mn></math> <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"1996\"><mn>1996</mn></math> select grade Lincoln Pennies in the collection, and thus <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals 6\"><mi>y</mi><mo>=</mo><mn>6</mn></math>. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6\"><mn>6</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> in the given equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8 x plus 11 left parenthesis 6 right parenthesis equals 170\"><mn>8</mn><mi>x</mi><mo>+</mo><mn>11</mn><mo>(</mo><mn>6</mn><mo>)</mo><mo>=</mo><mn>170</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8 x plus 66 equals 170\"><mn>8</mn><mi>x</mi><mo>+</mo><mn>66</mn><mo>=</mo><mn>170</mn></math>. Subtracting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"66\"><mn>66</mn></math> from both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8 x equals 104\"><mn>8</mn><mi>x</mi><mo>=</mo><mn>104</mn></math>. Dividing both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8\"><mn>8</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 13\"><mi>x</mi><mo>=</mo><mn>13</mn></math>. Therefore, there are <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"13\"><mn>13</mn></math> <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2009\"><mn>2009</mn></math> premium grade Log Cabin Pennies in the collection.</p>","externalid":"e3d6b3f4-d0ec-46bc-b1d7-45b9bfe60aae","correct_answer":["13"]},"createDate":1776362727993,"updateDate":1776362727993}$SATQ$::jsonb, 1776362727993, 1776362727993),
    ($SATQ$4f1342d6$SATQ$, $SATQ$e07c6477-a704-4fb6-8142-4f45390607dc$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: left;">In August, a car dealer completed <math alttext="15"><mn>15</mn>
</math> more than <math alttext="3"><mn>3</mn>
</math> times the number of sales the car dealer completed in September. In August and September, the car dealer completed <math alttext="363"><mn>363</mn>
</math> sales. How many sales did the car dealer complete in September?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["87"]$SATQ$::jsonb, $SATQ$["87"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="87"><mn>87</mn>
</math>. It&rsquo;s given that in August, the car dealer completed <math alttext="15"><mn>15</mn>
</math> more than <math alttext="3"><mn>3</mn>
</math> times the number of sales the car dealer completed in September. Let <math alttext="x"><mi>x</mi>
</math> represent the number of sales the car dealer completed in September. It follows that <math alttext="3 x plus 15"><mrow>
<mrow>
<mn>3</mn>
<mi>x</mi>
</mrow>
<mo>+</mo>
<mn>15</mn>
</mrow>
</math> represents the number of sales the car dealer completed in August. It&rsquo;s also given that in August and September, the car dealer completed <math alttext="363"><mn>363</mn>
</math> sales. It follows that <math alttext="x plus left parenthesis 3 x plus 15 right parenthesis equals 363"><mi>x</mi><mo>+</mo><mfenced><mrow><mn>3</mn><mi>x</mi><mo>+</mo><mn>15</mn></mrow></mfenced><mo>=</mo><mn>363</mn></math>, or <math alttext="4 x plus 15 equals 363"><mrow>
<mrow>
<mrow>
<mn>4</mn>
<mi>x</mi>
</mrow>
<mo>+</mo>
<mn>15</mn>
</mrow>
<mo>=</mo>
<mn>363</mn>
</mrow>
</math>. Subtracting <math alttext="15"><mn>15</mn>
</math> from each side of this equation yields <math alttext="4 x equals 348"><mrow>
<mrow>
<mn>4</mn>
<mi>x</mi>
</mrow>
<mo>=</mo>
<mn>348</mn>
</mrow>
</math>. Dividing each side of this equation by <math alttext="4"><mn>4</mn>
</math> yields <math alttext="x equals 87"><mrow>
<mi>x</mi>
<mo>=</mo>
<mn>87</mn>
</mrow>
</math>. Therefore, the car dealer completed <math alttext="87"><mn>87</mn>
</math> sales in September.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4f1342d6","external_id":"e07c6477-a704-4fb6-8142-4f45390607dc","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"21dde64f-322c-43f9-b912-96fcae19c87f","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"H","score_band_range_cd":6,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: left;\">In August, a car dealer completed <math alttext=\"15\"><mn>15</mn>\n</math> more than <math alttext=\"3\"><mn>3</mn>\n</math> times the number of sales the car dealer completed in September. In August and September, the car dealer completed <math alttext=\"363\"><mn>363</mn>\n</math> sales. How many sales did the car dealer complete in September?</p>","answerOptions":[],"keys":["87"],"correct_answer":["87"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"87\"><mn>87</mn>\n</math>. It&rsquo;s given that in August, the car dealer completed <math alttext=\"15\"><mn>15</mn>\n</math> more than <math alttext=\"3\"><mn>3</mn>\n</math> times the number of sales the car dealer completed in September. Let <math alttext=\"x\"><mi>x</mi>\n</math> represent the number of sales the car dealer completed in September. It follows that <math alttext=\"3 x plus 15\"><mrow>\n<mrow>\n<mn>3</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mn>15</mn>\n</mrow>\n</math> represents the number of sales the car dealer completed in August. It&rsquo;s also given that in August and September, the car dealer completed <math alttext=\"363\"><mn>363</mn>\n</math> sales. It follows that <math alttext=\"x plus left parenthesis 3 x plus 15 right parenthesis equals 363\"><mi>x</mi><mo>+</mo><mfenced><mrow><mn>3</mn><mi>x</mi><mo>+</mo><mn>15</mn></mrow></mfenced><mo>=</mo><mn>363</mn></math>, or <math alttext=\"4 x plus 15 equals 363\"><mrow>\n<mrow>\n<mrow>\n<mn>4</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mn>15</mn>\n</mrow>\n<mo>=</mo>\n<mn>363</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"15\"><mn>15</mn>\n</math> from each side of this equation yields <math alttext=\"4 x equals 348\"><mrow>\n<mrow>\n<mn>4</mn>\n<mi>x</mi>\n</mrow>\n<mo>=</mo>\n<mn>348</mn>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"4\"><mn>4</mn>\n</math> yields <math alttext=\"x equals 87\"><mrow>\n<mi>x</mi>\n<mo>=</mo>\n<mn>87</mn>\n</mrow>\n</math>. Therefore, the car dealer completed <math alttext=\"87\"><mn>87</mn>\n</math> sales in September.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554987,"pPcc":"SAT#H","questionId":"4f1342d6","skill_cd":"H.D.","score_band_range_cd":6,"skill_desc":"Systems of two linear equations in two variables","createDate":1743430554987,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"e07c6477-a704-4fb6-8142-4f45390607dc","primary_class_cd":"H","uId":"21dde64f-322c-43f9-b912-96fcae19c87f","difficulty":"H"},"raw_detail":{"type":"spr","stem":"<p style=\"text-align: left;\">In August, a car dealer completed <math alttext=\"15\"><mn>15</mn>\n</math> more than <math alttext=\"3\"><mn>3</mn>\n</math> times the number of sales the car dealer completed in September. In August and September, the car dealer completed <math alttext=\"363\"><mn>363</mn>\n</math> sales. How many sales did the car dealer complete in September?</p>","keys":["87"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"87\"><mn>87</mn>\n</math>. It&rsquo;s given that in August, the car dealer completed <math alttext=\"15\"><mn>15</mn>\n</math> more than <math alttext=\"3\"><mn>3</mn>\n</math> times the number of sales the car dealer completed in September. Let <math alttext=\"x\"><mi>x</mi>\n</math> represent the number of sales the car dealer completed in September. It follows that <math alttext=\"3 x plus 15\"><mrow>\n<mrow>\n<mn>3</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mn>15</mn>\n</mrow>\n</math> represents the number of sales the car dealer completed in August. It&rsquo;s also given that in August and September, the car dealer completed <math alttext=\"363\"><mn>363</mn>\n</math> sales. It follows that <math alttext=\"x plus left parenthesis 3 x plus 15 right parenthesis equals 363\"><mi>x</mi><mo>+</mo><mfenced><mrow><mn>3</mn><mi>x</mi><mo>+</mo><mn>15</mn></mrow></mfenced><mo>=</mo><mn>363</mn></math>, or <math alttext=\"4 x plus 15 equals 363\"><mrow>\n<mrow>\n<mrow>\n<mn>4</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mn>15</mn>\n</mrow>\n<mo>=</mo>\n<mn>363</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"15\"><mn>15</mn>\n</math> from each side of this equation yields <math alttext=\"4 x equals 348\"><mrow>\n<mrow>\n<mn>4</mn>\n<mi>x</mi>\n</mrow>\n<mo>=</mo>\n<mn>348</mn>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"4\"><mn>4</mn>\n</math> yields <math alttext=\"x equals 87\"><mrow>\n<mi>x</mi>\n<mo>=</mo>\n<mn>87</mn>\n</mrow>\n</math>. Therefore, the car dealer completed <math alttext=\"87\"><mn>87</mn>\n</math> sales in September.</p>","externalid":"e07c6477-a704-4fb6-8142-4f45390607dc","answerOptions":[],"correct_answer":["87"]},"createDate":1743430554987,"updateDate":1743430554987}$SATQ$::jsonb, 1743430554987, 1743430554987),
    ($SATQ$4f669597$SATQ$, NULL, NULL, $SATQ$070610-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$spr$SATQ$, $SATQ$<div class="stimulus_reference " xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1"><p class="standalone_statement style:1 "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_000_b322db75.png" alt="2 times, open parenthesis, p plus 1, close parenthesis, plus, 8 times, open parenthesis, p minus 1, close parenthesis, equals, 5 p"></span></p></div>
$SATQ$, $SATQ$<p class="stem_paragraph ">What value of <span class="italic">p</span> is the solution of the equation above?</p>
$SATQ$, NULL, $SATQ$["1.2"]$SATQ$::jsonb, NULL, $SATQ$<p>The correct answer is 1.2. One way to solve the equation <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_001_b322db75.png" alt="2 times, open parenthesis, p plus 1, close parenthesis, plus, 8 times, open parenthesis, p minus 1, close parenthesis, equals 5 p"></span> is to first distribute the terms outside the parentheses to the terms inside the parentheses: <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_002_efa7b453.png" alt="2 p plus 2, plus 8 p, minus 8, equals 5 p"></span>. Next, combine like terms on the left side of the equal sign: <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_003_475ac6a4.png" alt="10 p minus 6, equals 5 p"></span> . Subtracting 10<span class="italic">p</span> from both sides yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_004_5d94c0a5.png" alt="negative 6 equals negative 5 p"></span> . Finally, dividing both sides by <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_005_22df6a62.png" alt="negative 5"></span> gives <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_006_1a07ec7e.png" alt="p equals six fifths"></span>, which is equivalent to <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_007_0b6e2b99.png" alt="p equals 1 point 2"></span>. Note that 1.2 and 6/5 are examples of ways to enter a correct answer.</p>
$SATQ$, true, 8, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$SPR$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"4f669597","external_id":null,"disclosed_item_id":"070610-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"M","score_band_range_cd":5,"type":"spr","stimulus":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_000_b322db75.png\" alt=\"2 times, open parenthesis, p plus 1, close parenthesis, plus, 8 times, open parenthesis, p minus 1, close parenthesis, equals, 5 p\"></span></p></div>\n","stem":"<p class=\"stem_paragraph \">What value of <span class=\"italic\">p</span> is the solution of the equation above?</p>\n","answerOptions":null,"keys":null,"correct_answer":["1.2"],"rationale":"<p>The correct answer is 1.2. One way to solve the equation <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_001_b322db75.png\" alt=\"2 times, open parenthesis, p plus 1, close parenthesis, plus, 8 times, open parenthesis, p minus 1, close parenthesis, equals 5 p\"></span> is to first distribute the terms outside the parentheses to the terms inside the parentheses: <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_002_efa7b453.png\" alt=\"2 p plus 2, plus 8 p, minus 8, equals 5 p\"></span>. Next, combine like terms on the left side of the equal sign: <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_003_475ac6a4.png\" alt=\"10 p minus 6, equals 5 p\"></span> . Subtracting 10<span class=\"italic\">p</span> from both sides yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_004_5d94c0a5.png\" alt=\"negative 6 equals negative 5 p\"></span> . Finally, dividing both sides by <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_005_22df6a62.png\" alt=\"negative 5\"></span> gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_006_1a07ec7e.png\" alt=\"p equals six fifths\"></span>, which is equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f669597/img_007_0b6e2b99.png\" alt=\"p equals 1 point 2\"></span>. Note that 1.2 and 6/5 are examples of ways to enter a correct answer.</p>\n","answer_style":"SPR","section":"Math","image_count":8,"raw_list":{"updateDate":1691007959631,"pPcc":"SAT#H","questionId":"4f669597","skill_cd":"H.A.","score_band_range_cd":5,"skill_desc":"Linear equations in one variable","createDate":1691007959631,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"070610-DC","external_id":null,"primary_class_cd":"H","uId":"953a2965-c80f-4df3-b9d2-60c75971a42d","difficulty":"M"},"raw_detail":{"item_id":"070610-DC","section":"Math","body":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJ0AAAAcCAYAAAB7yr2rAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAC0ElEQVR4Xu2XgZWDIAxAHc9JbgLHcZeu0k04QozECJpYqL1r/nu89qoS+CTgDVbCcw7jMIb5GcLy022E8AzzOITpcd9Y3EdnQniE6UMEE3eOyX28gcc0hDHOZvnzYwiPKQzjHOv8vaLdxwvQtgxfqUmZeIxMsY7um0htkXscKxArfqxN9v1tPgDcRbdeUouB4qeenHBZYKqU+MEn9JxHe+cNKY2Jk643Gh8m3N4HX8Rv8kE0K7Tai3CSygLAQnDpr0JVo+kTx4JVVZWsEKKJWbsnJSJbxNY+LLTyYSUlcs9jGysJB4274T4xaZeEiePugE2zGNqkw3FAbLy/Kjn1d/wCrUq6tFjHSdfDh5aWPqzIwivxkoP0wJLVtQnQIsJX6hSr8HyymgTg0P11yeVE4Ghjoqy8S+BC5+d6+LBy1Qcf41GTjtZkmqZUlPATNBn/sgO15GVX4IF5pi8/FaHBycnVuCqZY4nJjzAprIcPKy18WKB4/HgtzveKA0o4vo1WJad7t+8NtQDroE9aLSHOJe/HeCUmjX+z0wmRf9VHD7A45amgc5BYq5slHEAPSQGlM/4wAIOk1aRKdJK3k5VoYlKCyXu43B4+rFz1Qc/B16OmXpeUZDm5TQ7wPaY+CbjOr1FHuwCVRZNoEoBzKhkmf/KflSamlEiU5Lb0YaWFjxZwLyYHtMPVJgDISawVIwKkvhSTbZ10MglKqJKukiQoVxwjDX1YaeHDgu4EUDqgzs4XDLOYguJzY5jifzPxUfyNZT38fYQmAThHkvHaeVxtTNz1WYIVHLX2YaWFDwvrLiYLL36YHdAuV27bdwJe3dgZXKfBQOsjGDiSDHM4KxormHi5FRf3i3wAOfFy4wXczQEmaczmn9hhh2PDwirhxnG4j0wq1F6xaXI9qukv4j7e4IC2du372H/HfbgDx3Ecx3Ecx3Ecx3Ecx3Ecx3E+i2H4BdtaNq0i7wH/AAAAAElFTkSuQmCC\" alt=\"2 times, open parenthesis, p plus 1, close parenthesis, plus, 8 times, open parenthesis, p minus 1, close parenthesis, equals, 5 p\"></span></p></div>\n","prompt":"<p class=\"stem_paragraph \">What value of <span class=\"italic\">p</span> is the solution of the equation above?</p>\n","answer":{"style":"SPR","rationale":"<p>The correct answer is 1.2. One way to solve the equation <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJ0AAAAcCAYAAAB7yr2rAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAC0ElEQVR4Xu2XgZWDIAxAHc9JbgLHcZeu0k04QozECJpYqL1r/nu89qoS+CTgDVbCcw7jMIb5GcLy022E8AzzOITpcd9Y3EdnQniE6UMEE3eOyX28gcc0hDHOZvnzYwiPKQzjHOv8vaLdxwvQtgxfqUmZeIxMsY7um0htkXscKxArfqxN9v1tPgDcRbdeUouB4qeenHBZYKqU+MEn9JxHe+cNKY2Jk643Gh8m3N4HX8Rv8kE0K7Tai3CSygLAQnDpr0JVo+kTx4JVVZWsEKKJWbsnJSJbxNY+LLTyYSUlcs9jGysJB4274T4xaZeEiePugE2zGNqkw3FAbLy/Kjn1d/wCrUq6tFjHSdfDh5aWPqzIwivxkoP0wJLVtQnQIsJX6hSr8HyymgTg0P11yeVE4Ghjoqy8S+BC5+d6+LBy1Qcf41GTjtZkmqZUlPATNBn/sgO15GVX4IF5pi8/FaHBycnVuCqZY4nJjzAprIcPKy18WKB4/HgtzveKA0o4vo1WJad7t+8NtQDroE9aLSHOJe/HeCUmjX+z0wmRf9VHD7A45amgc5BYq5slHEAPSQGlM/4wAIOk1aRKdJK3k5VoYlKCyXu43B4+rFz1Qc/B16OmXpeUZDm5TQ7wPaY+CbjOr1FHuwCVRZNoEoBzKhkmf/KflSamlEiU5Lb0YaWFjxZwLyYHtMPVJgDISawVIwKkvhSTbZ10MglKqJKukiQoVxwjDX1YaeHDgu4EUDqgzs4XDLOYguJzY5jifzPxUfyNZT38fYQmAThHkvHaeVxtTNz1WYIVHLX2YaWFDwvrLiYLL36YHdAuV27bdwJe3dgZXKfBQOsjGDiSDHM4KxormHi5FRf3i3wAOfFy4wXczQEmaczmn9hhh2PDwirhxnG4j0wq1F6xaXI9qukv4j7e4IC2du372H/HfbgDx3Ecx3Ecx3Ecx3Ecx3Ecx3E+i2H4BdtaNq0i7wH/AAAAAElFTkSuQmCC\" alt=\"2 times, open parenthesis, p plus 1, close parenthesis, plus, 8 times, open parenthesis, p minus 1, close parenthesis, equals 5 p\"></span> is to first distribute the terms outside the parentheses to the terms inside the parentheses: <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIkAAAAWCAYAAAD0FL9fAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACP0lEQVRoQ+2XDY6EIAyFPZ4H4jjexat4E5Yfi7UCPgTJbORLyMyQmdLXvuLuZNF608s8afuW1rxs9rUrPfJY1Tm+WnXT+Cg98tB61YqdEZY5zLziHI1RJqRPVK/KBetplB55+MZc4/c2Sq889LbomZ3zGB9o1qYPp0DbMpvPDQ4wkKNzRajJA4qf+I5rmNncP75Ozzyc+ebFjF+6LlV4dzO375Nup5pflbnGEEgTU8g8YuAmvG9OjU4ENI8WIDGr9LofMBdSI+xbCuCn/Dr9khqTyDxioPF9EZjxI9d8jU4UJA+C55Nb8reh+Uo5U9otu+Sj+7HeaPH2CeCHcBfuW1GemiRXPE5JfF8AKtq1EDU6S7jLo5bQfD7oMW1P9FJj5DXl98/XfirYU/dzUnlYnsSnXE8THCvQyzrRPN7Cm1PeYpheR3B3pDHuihT72WCMkkm35PKIgcSnRsjvyKLV6ERA8yBaDBzHm+K4uYr0+udkvBDB/TJYQrCkxCS5PFJAJhHFIfh+rU4EJI996xUe66XJTTUmuFkEc78D/sVCTXKXRwrIJIlG+6L5Ca7ViYDksW9VkTqH31iwXgqWa4z/zqyV+UuZnF7i/JImlhrEgprQ31JHI+SZtTpR7vJoQbgl+DlOy1EnWC9Nb3ztjgsup4Ptals4JA/zvhp6nNHijemhk8jl0YrDKMfig9RUrxPU6Lr9Zb6ik2iml9z4htN/ia/oJJrqRZ/3/52v6CS+pncwGAwGg8FgMBgMBoNbpukPT3aJHlby28kAAAAASUVORK5CYII=\" alt=\"2 p plus 2, plus 8 p, minus 8, equals 5 p\"></span>. Next, combine like terms on the left side of the equal sign: <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFgAAAAWCAYAAABEx1soAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABu0lEQVRYR+1XAY6EIAz0eTyI5/AXv+JPekAtYKFGsJqcyyRNVlbpzLTU3YVjtQsYt8F+eQCsNqzvYcDf1rzvacDmwCQePuyqzgNgBVvmoLiTiwxsGYzfZVP59Vsgjl4n8tiNkJpiFFhE63dX0rc5E4mH4GQBNnCmXg/d/kT3SJB4IHdFMzxiIY3zGRX2zN3Y7gY6ktQ1BC6sNCCa75dC8OdGgTzeOTVXmqdbr3TcJGFYmNLgPLcoCRZBx5Sc7zgfOV+COEdZcEOScdYeZn3lS69e0eDU4YwIW6dOL5+XjvUIMF8QdJ7zLpJxxYhoauvVe9vgeH2chVLCke4ig/leT8zgFqqR2KE3QjT44ohoza0nOrg60nG9wW/XEz6eBd9PAs/Trffc4JpIWVHauEooPDsCaS/JYG2UeYb0igYLVSkrmLqFJYxFUPq5I/HTHhHXGmpAryQggHdJdR1JGbD+zSvdowHcM4snM1qcR5G6syhaO2+n3jODA7CCIXGI40a4eSBE5Op7tEBiKTTNJWSTc5Qd/abeiDgutP75/AO8qlea0V/F63pptPCXwlfxa3onJiYmJiYmJj6HZfkDXu7AKg7H4O0AAAAASUVORK5CYII=\" alt=\"10 p minus 6, equals 5 p\"></span> . Subtracting 10<span class=\"italic\">p</span> from both sides yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEkAAAAWCAYAAACMq7H+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABQElEQVRYR+2Wiw3DIAxEMx4DMQ67sAqbuGDq4BhQ86FAK56E0qK0HId9yfYEcAaUv4SPOLQN12kAsKC5Phq9dILVuKBfDxckQcq4PgJOEA9Re2VRY1cAHBiVG+KM8t8HiSqAB6mMVzvCJDwhBd6jKcyoYfXn1uIHjvf7qTCoQ24TWy1UzLHna61WzQYxHgtj7JvX+pCbUiPXRuvHjnhYBJRH/I8oxGfJpH3zrN1KGotzpTi5etJkkjTkW5nUshKlxtQV6be1zL0EmSRFxfm8TEe0Ww2psZRbbUx6l+hZk2aCayQzMpMq+7sEVUavdrtDbaNc417hwiS8p8Wrg2y5UgCOZK+SLH+kZgXaPwGp+pt3Ay1KYxaDiGRUGryyov5gIr9v7rjoDob2qDfyX6DJE+zfodCWwb5YLBaLxWKBbNsL8Q4ZSL+lLgQAAAAASUVORK5CYII=\" alt=\"negative 6 equals negative 5 p\"></span> . Finally, dividing both sides by <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABcAAAAYCAYAAAARfGZ1AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAJ1JREFUeNpjYKAM/MeBdRioAEAGzQdiCzTMSS3DWxhoBGCGMxJSKEIEZsNi+Dsg/gXEX4F4LxBbkxI5yDgETc8cIA6ChnMYEJ+GWmSLbrgLEViMgO+5gfg+EO+nVTxMggbR0DKcB4gfAPE+Sg0qBOIJQOwPxDZAHAnE54D4JxBbUWq4HxAfB+L3QPwXiN8A8UYgNmEYBaNgFIwCGgIAZmMvn74i47UAAAAASUVORK5CYII=\" alt=\"negative 5\"></span> gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC0AAAAsCAYAAADxRjE/AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABTUlEQVRoQ+2Y6w2DMAyEGS8DZZzsklXYxPUDkxASJH60HGo+yYKiqjrsszFdUKA1UeCDnGrELEdcKEcVyjpVKFGmyIeQVkzhRCulcBa4psCfI8u3G4HCbBGINWNmtYdZQzJqlpBLErDWENzPS5Vtb0pcT2+i3+XpZnI4dh3U626Fd4kezGRoewitReAb0XHhHvCC/4t6B8ixlKntaii8i+XUhVoH98dO/f2r+OpN9zp2tIHBYN17nItfFi2/eTeOqI+5lttH5Ur04/ZwcSfRg0csBHvWGtHaiCHxLSGK1owGijGWnRZ5YRFKE242kaz/UPCwP5rKH9AmfNAGVukbGx3CLNZK30mal+bJCdEbt9DsleYhIONVLknAPoWFvQkre7zmJaAF/nWrB/xzoge06NF+g/1nzTY9aoGWZdBFzSnCS0ALnkwmk8kEgGX5APaOBYvgJj5JAAAAdnRFWHRNYXRoTUwAPG1hdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTgvTWF0aC9NYXRoTUwiPjxtaT5wPC9taT48bW8+PTwvbW8+PG1mcmFjPjxtbj42PC9tbj48bW4+NTwvbW4+PC9tZnJhYz48L21hdGg+3RwPYAAAAABJRU5ErkJggg==\" alt=\"p equals six fifths\"></span>, which is equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADMAAAAWCAYAAABtwKSvAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABEklEQVRYR+2UAQ7DIAhFPZ4H4jjexat4EyYoaq0z7axrl/kTktUh8YF+dbcsKNTGYfzsCtGh0YpyUxzdO11o4fCBMgigReT8M/unyhnNB6E4BOMMaqXRp25yQ50MyBJyKkyjpyUK8FmccKFCR+lgFsF/jnQ21NrBhML0UwAC9b4bpDK/F71mSI0RGG68Nn4UJQyPcVu4nFZculSjMPJmdg1rjevJMAKiPElYKcTjqv7owdx5zZJ5tECS7dUw8er1DjSiT2DEnN7uSV2uYLgD9eO6UGdhZCLdfPFwAEjOle1zDgipB1MfvGVQTeXHH6+bX5oNQjoDk95JMwrjanr1L2q2/X5VMupZjrW0tLS09MdS6gX+Zqpgn5goXwAAAABJRU5ErkJggg==\" alt=\"p equals 1 point 2\"></span>. Note that 1.2 and 6/5 are examples of ways to enter a correct answer.</p>\n"}},"createDate":1691007959631,"updateDate":1691007959631,"correct_answer_extracted_from_rationale":true}$SATQ$::jsonb, 1691007959631, 1691007959631),
    ($SATQ$4f7981a0$SATQ$, NULL, NULL, $SATQ$022296-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$spr$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">If <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f7981a0/img_000_508b91ff.png" alt="3 x plus 2 equals 8 "></span></span>, what is the value of <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f7981a0/img_001_2ea13e36.png" alt="9 x plus 6 "></span></span> ?</p>
$SATQ$, NULL, $SATQ$["24"]$SATQ$::jsonb, NULL, $SATQ$<p>The correct answer is 24. Multiplying both sides of the given equation by 3 yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f7981a0/img_002_2b87cd4a.png" alt="3 times, open parenthesis, 3 x plus 2, close parenthesis, equals 24"></span>. Using the distributive property to rewrite the left-hand side of this equation yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f7981a0/img_003_acf27578.png" alt="9 x plus 6, equals 24"></span>.</p>
$SATQ$, true, 4, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$SPR$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"4f7981a0","external_id":null,"disclosed_item_id":"022296-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":2,"type":"spr","stimulus":null,"stem":"<p class=\"stem_paragraph \">If <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f7981a0/img_000_508b91ff.png\" alt=\"3 x plus 2 equals 8 \"></span></span>, what is the value of <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f7981a0/img_001_2ea13e36.png\" alt=\"9 x plus 6 \"></span></span> ?</p>\n","answerOptions":null,"keys":null,"correct_answer":["24"],"rationale":"<p>The correct answer is 24. Multiplying both sides of the given equation by 3 yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f7981a0/img_002_2b87cd4a.png\" alt=\"3 times, open parenthesis, 3 x plus 2, close parenthesis, equals 24\"></span>. Using the distributive property to rewrite the left-hand side of this equation yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4f7981a0/img_003_acf27578.png\" alt=\"9 x plus 6, equals 24\"></span>.</p>\n","answer_style":"SPR","section":"Math","image_count":4,"raw_list":{"updateDate":1691007959618,"pPcc":"SAT#H","questionId":"4f7981a0","skill_cd":"H.A.","score_band_range_cd":2,"skill_desc":"Linear equations in one variable","createDate":1691007959618,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"022296-DC","external_id":null,"primary_class_cd":"H","uId":"ca87f693-e839-4f14-9c53-1e68adbc6e85","difficulty":"E"},"raw_detail":{"item_id":"022296-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">If <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEQAAAAWCAYAAAB5VTpOAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABaElEQVRYR+2W2xGEIAxFKY+CLIdebMVOskCIRAwPhfUrZ4ZRHgvJTYJriH0z4B+pWXAHhPfPADjAWW6DAeuNCHOrufpqYNsLX3HBBn48TsC++ed3omQxShvWiyL7ykSBw4HlAx4ycIUx4I/eiv1L0IZ7AA5nfT8bP0vNliiSH0zdO2fE2KL4I+v8TN4M1W5n0oggNTB6CwURgh/oCoKRuTpaOiatkZgRRApCgPYMr60mnYlBbJQMB53sbBYMTEqPlNRbQZqGTsL9HLorKbXKNDrHhTliJnoEidFM4xeIl/docGslUaZcj6cZckavIcZb0Wt3CJ7Z8QmjdBUkp9pAmiWeCIJi/+//h+RT4DJeq9VSNVoXjI2GNyLIGRWExP6XGIFahqBvydezrthtzp2P/eQUiYDzY1kyIshwHS/g9pWRzs6XTW7kQK5XtgmtTwLNkktRap3afgGVJrUvAqEoiqIoiqIoMxjzA9nHfSVPebh9AAAAAElFTkSuQmCC\" alt=\"3 x plus 2 equals 8 \"></span></span>, what is the value of <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAWCAYAAAC2ew6NAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABJ0lEQVRIS+2U7Q3EIAiGHc+BHMddXKWbcKCiBa1yudzlfvgmpK1FefhoHeuKHvBSzUO8gO5/Krgi+MaAFpJkSEHCQQrZEf2k4xelYwIkCHjxCEXPLYu2UJUr7CMg+0ewHHCVNGCU6B8YXMATcG/JZGy1Xs9VV+C6EzOZQHOxNuNmBdUBS7abw1Em0ByLKld8aYlMVJhbrw+agbSqPozLTHZQ2Z3pSJYW1llA9a9PgvZ1NIxcVqUYjG5Xdgdn0OWMsgosG77MUGNrdVI7vVNR7aPHb6o+N92pZEigm803mUBrp5agfJAue64c7qyPoj363Uom0AeGofXDjKqS80EMp9+vZAElcSHYb/oxkYYZZWiGFGvlB22tqlUMyzZAHh0dHR0d/YmcewGcEAux/XekOwAAAABJRU5ErkJggg==\" alt=\"9 x plus 6 \"></span></span> ?</p>\n","answer":{"style":"SPR","rationale":"<p>The correct answer is 24. Multiplying both sides of the given equation by 3 yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAAAaCAYAAABIIVmfAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACHUlEQVRoQ+2Vjc2EMAiGO54DOY67uIqb8EkpFXu00tN+d5fwJCb+FKG8QEMvsC0whQmWDSC9+loANlimAPP6/bGaAFhh/pHkMz8T8zoHDDBdesC4Zto/pMeIxW4kXOV4y1cZI6wzhGnZVz4bm8W3hKaH0pGUxHmvFfoQAy6SScbHGsRiN5IjAWUM50SMGEVW3xIu1lMcmir8c/mjbZkg7IvSo9nuXWh0tJNWO49irEWxxOSI+O/S4xthcfBq7SmS1RUBo3pXhjW7sv2pEtqdYhGgBm22EEDp4BGovlNe5uW1aFVIxSNB9IPr0VLaIWUitTUadwTQRK8dxuwHb1uXNQ7Nd9wzvlOmxglKzqvDWvBMzY7JQaUALCPqXQG41Us7axHdQfMt96GNbRVeyKPkSgCmtGPye+Ub80Ql5jmr+BgtQM13LL70ziwAIkeFVQCkNmJo7ttncG8H5C5Uko/U9vCE8DXflPDDZ5cApCgLkA4Rg6G0S6/EiHpNQI0eAUjc9mij/z1/CLd8H/vWrpQLbW4hZHwEjI6kE6sdr0Nb2Y5XWAXgTV6dKzGO4nC8i9U3o3YAV7cMTiYNn5FyAxa73N4p6fTd1gUWAXhDlgSUBXSXHt9MdQTlZO63fJWLtDHUssvJl93A6/dF+HyXdotLvxiLffxZsPqWdJ0BGiPa+D/AZD1Z/R+FlH+2mkahjUnHcRzHcRzHcRzHcT5HCH+Vv1xl9NYApgAAAABJRU5ErkJggg==\" alt=\"3 times, open parenthesis, 3 x plus 2, close parenthesis, equals 24\"></span>. Using the distributive property to rewrite the left-hand side of this equation yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAE0AAAAWCAYAAACFQBGEAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABrElEQVRYR+2WbbLDIAhFszwX5HLcS7aSnfhAxCiCNU3SP88zw7RjKB9XyHRjjuAifGRzMRwRv/+UeIToSg1gfn+8hhiPGFyVA8xBs/hMg2uCUlqf3eOPT6Hi7lOwzvFFZM4Y9+jhY9TQVU7BPERve7XykDZCC1ZS/ihNnguQ5p5w3PzoArgZtYaqwbtQr/0WWXlYULRWtPSgDyTPk+JCRDmhGlOiGc38Cuq1FY0v0gdlPWdFk83T7XxudEq0UjT54hGatTIcE7+ObJSzRhuIsmnaO8160WmilODGSmvMi4aNVpd0IccdOHddX12zpU9es+rlmB2laOc5GESh05ZvpoALf/udJimXJXpJeuQzUzSEhGODQpNzv35S4E9cmTTpQ+d9DU+sJ10I+GVxGBKpn/hRrAIV3IpTEimNWEyJZhRmiXYXHhBt9c8eNcu1cFMyQD2iCE8D+slnI6ZEM2p4Yz1ZFE0wDXPS5MrJGy7rkIW6MgEzoiF8KezHxc42N8M3MYfrySNLVgnIgjVn+Z91FvEpWDi2JwVDxqunT/RQtMVisVgsFovFYvHv2LY/vNMiuib6jfAAAAAASUVORK5CYII=\" alt=\"9 x plus 6, equals 24\"></span>.</p>\n"}},"createDate":1691007959618,"updateDate":1691007959618,"correct_answer_extracted_from_rationale":true}$SATQ$::jsonb, 1691007959618, 1691007959618),
    ($SATQ$4f89e4d4$SATQ$, $SATQ$b86303fd-698f-45e4-ba2a-97ad8f15a2d6$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: left;">A student council group is selling school posters for a fundraiser. They use the function <math alttext="p left parenthesis x right parenthesis equals 5 x minus 220"><mi>p</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>5</mn><mi>x</mi><mo>-</mo><mn>220</mn></math> to determine their profit <math alttext="p left parenthesis x right parenthesis"><mi>p</mi><mfenced><mi>x</mi></mfenced></math>, in dollars, for selling <math alttext="x"><mi>x</mi>
</math> school posters. In order to earn a profit of <math alttext="dollar sign 900"><mo>$</mo><mn>900</mn></math>, how many school posters must they sell?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["224"]$SATQ$::jsonb, $SATQ$["224"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="224"><mn>224</mn>
</math>. It&rsquo;s given that a student council group uses the function <math alttext="p left parenthesis x right parenthesis equals 5 x minus 220"><mi>p</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>5</mn><mi>x</mi><mo>-</mo><mn>220</mn></math> to determine their profit <math alttext="p left parenthesis x right parenthesis"><mi>p</mi><mfenced><mi>x</mi></mfenced></math>, in dollars, for selling <math alttext="x"><mi>x</mi>
</math> school posters. Substituting <math alttext="900"><mn>900</mn>
</math> for <math alttext="p left parenthesis x right parenthesis"><mi>p</mi><mfenced><mi>x</mi></mfenced></math> in the given function yields <math alttext="900 equals 5 x minus 220"><mrow>
<mn>900</mn>
<mo>=</mo>
<mrow>
<mrow>
<mn>5</mn>
<mi>x</mi>
</mrow>
<mo>-</mo>
<mn>220</mn>
</mrow>
</mrow>
</math>. Adding <math alttext="220"><mn>220</mn>
</math> to each side of this equation yields <math alttext="1,120 equals 5 x"><mrow>
<mn>1,120</mn>
<mo>=</mo>
<mrow>
<mn>5</mn>
<mi>x</mi>
</mrow>
</mrow>
</math>. Dividing each side of this equation by <math alttext="5"><mn>5</mn>
</math> yields <math alttext="224 equals x"><mrow>
<mn>224</mn>
<mo>=</mo>
<mi>x</mi>
</mrow>
</math>. Therefore, in order to earn a profit of <math alttext="dollar sign 900"><mo>$</mo><mn>900</mn></math>, they must sell <math alttext="224"><mn>224</mn>
</math> school posters.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4f89e4d4","external_id":"b86303fd-698f-45e4-ba2a-97ad8f15a2d6","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"b46a23ca-b4ea-4558-a821-d26e0a7dd2b7","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"E","score_band_range_cd":3,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: left;\">A student council group is selling school posters for a fundraiser. They use the function <math alttext=\"p left parenthesis x right parenthesis equals 5 x minus 220\"><mi>p</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>5</mn><mi>x</mi><mo>-</mo><mn>220</mn></math> to determine their profit <math alttext=\"p left parenthesis x right parenthesis\"><mi>p</mi><mfenced><mi>x</mi></mfenced></math>, in dollars, for selling <math alttext=\"x\"><mi>x</mi>\n</math> school posters. In order to earn a profit of <math alttext=\"dollar sign 900\"><mo>$</mo><mn>900</mn></math>, how many school posters must they sell?</p>","answerOptions":[],"keys":["224"],"correct_answer":["224"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"224\"><mn>224</mn>\n</math>. It&rsquo;s given that a student council group uses the function <math alttext=\"p left parenthesis x right parenthesis equals 5 x minus 220\"><mi>p</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>5</mn><mi>x</mi><mo>-</mo><mn>220</mn></math> to determine their profit <math alttext=\"p left parenthesis x right parenthesis\"><mi>p</mi><mfenced><mi>x</mi></mfenced></math>, in dollars, for selling <math alttext=\"x\"><mi>x</mi>\n</math> school posters. Substituting <math alttext=\"900\"><mn>900</mn>\n</math> for <math alttext=\"p left parenthesis x right parenthesis\"><mi>p</mi><mfenced><mi>x</mi></mfenced></math> in the given function yields <math alttext=\"900 equals 5 x minus 220\"><mrow>\n<mn>900</mn>\n<mo>=</mo>\n<mrow>\n<mrow>\n<mn>5</mn>\n<mi>x</mi>\n</mrow>\n<mo>-</mo>\n<mn>220</mn>\n</mrow>\n</mrow>\n</math>. Adding <math alttext=\"220\"><mn>220</mn>\n</math> to each side of this equation yields <math alttext=\"1,120 equals 5 x\"><mrow>\n<mn>1,120</mn>\n<mo>=</mo>\n<mrow>\n<mn>5</mn>\n<mi>x</mi>\n</mrow>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"5\"><mn>5</mn>\n</math> yields <math alttext=\"224 equals x\"><mrow>\n<mn>224</mn>\n<mo>=</mo>\n<mi>x</mi>\n</mrow>\n</math>. Therefore, in order to earn a profit of <math alttext=\"dollar sign 900\"><mo>$</mo><mn>900</mn></math>, they must sell <math alttext=\"224\"><mn>224</mn>\n</math> school posters.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554986,"pPcc":"SAT#H","questionId":"4f89e4d4","skill_cd":"H.B.","score_band_range_cd":3,"skill_desc":"Linear functions","createDate":1743430554986,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"b86303fd-698f-45e4-ba2a-97ad8f15a2d6","primary_class_cd":"H","uId":"b46a23ca-b4ea-4558-a821-d26e0a7dd2b7","difficulty":"E"},"raw_detail":{"type":"spr","stem":"<p style=\"text-align: left;\">A student council group is selling school posters for a fundraiser. They use the function <math alttext=\"p left parenthesis x right parenthesis equals 5 x minus 220\"><mi>p</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>5</mn><mi>x</mi><mo>-</mo><mn>220</mn></math> to determine their profit <math alttext=\"p left parenthesis x right parenthesis\"><mi>p</mi><mfenced><mi>x</mi></mfenced></math>, in dollars, for selling <math alttext=\"x\"><mi>x</mi>\n</math> school posters. In order to earn a profit of <math alttext=\"dollar sign 900\"><mo>$</mo><mn>900</mn></math>, how many school posters must they sell?</p>","keys":["224"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"224\"><mn>224</mn>\n</math>. It&rsquo;s given that a student council group uses the function <math alttext=\"p left parenthesis x right parenthesis equals 5 x minus 220\"><mi>p</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>5</mn><mi>x</mi><mo>-</mo><mn>220</mn></math> to determine their profit <math alttext=\"p left parenthesis x right parenthesis\"><mi>p</mi><mfenced><mi>x</mi></mfenced></math>, in dollars, for selling <math alttext=\"x\"><mi>x</mi>\n</math> school posters. Substituting <math alttext=\"900\"><mn>900</mn>\n</math> for <math alttext=\"p left parenthesis x right parenthesis\"><mi>p</mi><mfenced><mi>x</mi></mfenced></math> in the given function yields <math alttext=\"900 equals 5 x minus 220\"><mrow>\n<mn>900</mn>\n<mo>=</mo>\n<mrow>\n<mrow>\n<mn>5</mn>\n<mi>x</mi>\n</mrow>\n<mo>-</mo>\n<mn>220</mn>\n</mrow>\n</mrow>\n</math>. Adding <math alttext=\"220\"><mn>220</mn>\n</math> to each side of this equation yields <math alttext=\"1,120 equals 5 x\"><mrow>\n<mn>1,120</mn>\n<mo>=</mo>\n<mrow>\n<mn>5</mn>\n<mi>x</mi>\n</mrow>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"5\"><mn>5</mn>\n</math> yields <math alttext=\"224 equals x\"><mrow>\n<mn>224</mn>\n<mo>=</mo>\n<mi>x</mi>\n</mrow>\n</math>. Therefore, in order to earn a profit of <math alttext=\"dollar sign 900\"><mo>$</mo><mn>900</mn></math>, they must sell <math alttext=\"224\"><mn>224</mn>\n</math> school posters.</p>","externalid":"b86303fd-698f-45e4-ba2a-97ad8f15a2d6","answerOptions":[],"correct_answer":["224"]},"createDate":1743430554986,"updateDate":1743430554986}$SATQ$::jsonb, 1743430554986, 1743430554986),
    ($SATQ$4f8bd093$SATQ$, $SATQ$fe2efe64-2759-4c9c-b6ac-4e4f9f1c9372$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">What value of <math alttext="x"><mi>x</mi>
</math> is the solution to the equation <math alttext="16 x plus 24 equals 24 x"><mrow>
	<mrow>
		<mrow>
			<mn>16</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>24</mn>
	</mrow>
	<mo>=</mo>
	<mrow>
		<mn>24</mn>
		<mi>x</mi>
	</mrow>
</mrow>
</math>?</p>$SATQ$, $SATQ$[{"id":"f87a40da-feae-4bbc-8cfa-e6652bc3a60b","content":"<p><math alttext=\"negative 4\"><mo>-</mo><mn>4</mn>\n</math></p>"},{"id":"e1fa7577-5ff8-42c6-b657-67bcd1d94341","content":"<p><math alttext=\"three tenths\"><mfrac>\n\t<mn>3</mn>\n\t<mn>10</mn>\n</mfrac>\n</math></p>"},{"id":"5d728622-7142-462b-9255-83fe04c1a9e6","content":"<p><math alttext=\"one third\"><mfrac>\n\t<mn>1</mn>\n\t<mn>3</mn>\n</mfrac>\n</math></p>"},{"id":"acc47903-7810-4b34-98ac-d93680013d41","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["acc47903-7810-4b34-98ac-d93680013d41"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. Subtracting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="16 x"><mn>16</mn><mi>x</mi></math> from both sides of the given equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="24 equals 8 x"><mn>24</mn><mo>=</mo><mn>8</mn><mi>x</mi></math>. Dividing both sides of this equation by <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="8"><mn>8</mn></math> yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3 equals x"><mn>3</mn><mo>=</mo><mi>x</mi></math>. Therefore, the solution to the given equation&nbsp;is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3"><mn>3</mn></math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4f8bd093","external_id":"fe2efe64-2759-4c9c-b6ac-4e4f9f1c9372","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"b34b334e-abf8-4ad4-b821-352140027e1e","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">What value of <math alttext=\"x\"><mi>x</mi>\n</math> is the solution to the equation <math alttext=\"16 x plus 24 equals 24 x\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>16</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>24</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>24</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n</mrow>\n</math>?</p>","answerOptions":[{"id":"f87a40da-feae-4bbc-8cfa-e6652bc3a60b","content":"<p><math alttext=\"negative 4\"><mo>-</mo><mn>4</mn>\n</math></p>"},{"id":"e1fa7577-5ff8-42c6-b657-67bcd1d94341","content":"<p><math alttext=\"three tenths\"><mfrac>\n\t<mn>3</mn>\n\t<mn>10</mn>\n</mfrac>\n</math></p>"},{"id":"5d728622-7142-462b-9255-83fe04c1a9e6","content":"<p><math alttext=\"one third\"><mfrac>\n\t<mn>1</mn>\n\t<mn>3</mn>\n</mfrac>\n</math></p>"},{"id":"acc47903-7810-4b34-98ac-d93680013d41","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"}],"keys":["acc47903-7810-4b34-98ac-d93680013d41"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. Subtracting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"16 x\"><mn>16</mn><mi>x</mi></math> from both sides of the given equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24 equals 8 x\"><mn>24</mn><mo>=</mo><mn>8</mn><mi>x</mi></math>. Dividing both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8\"><mn>8</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3 equals x\"><mn>3</mn><mo>=</mo><mi>x</mi></math>. Therefore, the solution to the given equation&nbsp;is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3\"><mn>3</mn></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1755117017726,"pPcc":"SAT#H","questionId":"4f8bd093","skill_cd":"H.A.","score_band_range_cd":2,"skill_desc":"Linear equations in one variable","createDate":1755117017726,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"fe2efe64-2759-4c9c-b6ac-4e4f9f1c9372","primary_class_cd":"H","uId":"b34b334e-abf8-4ad4-b821-352140027e1e","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">What value of <math alttext=\"x\"><mi>x</mi>\n</math> is the solution to the equation <math alttext=\"16 x plus 24 equals 24 x\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>16</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>24</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>24</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n</mrow>\n</math>?</p>","keys":["acc47903-7810-4b34-98ac-d93680013d41"],"answerOptions":[{"id":"f87a40da-feae-4bbc-8cfa-e6652bc3a60b","content":"<p><math alttext=\"negative 4\"><mo>-</mo><mn>4</mn>\n</math></p>"},{"id":"e1fa7577-5ff8-42c6-b657-67bcd1d94341","content":"<p><math alttext=\"three tenths\"><mfrac>\n\t<mn>3</mn>\n\t<mn>10</mn>\n</mfrac>\n</math></p>"},{"id":"5d728622-7142-462b-9255-83fe04c1a9e6","content":"<p><math alttext=\"one third\"><mfrac>\n\t<mn>1</mn>\n\t<mn>3</mn>\n</mfrac>\n</math></p>"},{"id":"acc47903-7810-4b34-98ac-d93680013d41","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice D is correct. Subtracting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"16 x\"><mn>16</mn><mi>x</mi></math> from both sides of the given equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"24 equals 8 x\"><mn>24</mn><mo>=</mo><mn>8</mn><mi>x</mi></math>. Dividing both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8\"><mn>8</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3 equals x\"><mn>3</mn><mo>=</mo><mi>x</mi></math>. Therefore, the solution to the given equation&nbsp;is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3\"><mn>3</mn></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>","externalid":"fe2efe64-2759-4c9c-b6ac-4e4f9f1c9372","correct_answer":["D"]},"createDate":1755117017726,"updateDate":1755117017726}$SATQ$::jsonb, 1755117017726, 1755117017726),
    ($SATQ$4fb8adf7$SATQ$, $SATQ$ac10f741-d7d2-4630-ac36-63d9fd1f7a94$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="4 x minus 3 y equals 5"><mrow>
	<mrow>
		<mrow>
			<mn>4</mn>
			<mi>x</mi>
		</mrow>
		<mo>-</mo>
		<mrow>
			<mn>3</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>5</mn>
</mrow>
</math></p>
<p style="text-align: center;"><math alttext="x equals 8"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>8</mn>
</mrow>
</math></p>
<p style="text-align: left;">What is the solution&nbsp;<math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> to the given system of equations?</p>$SATQ$, $SATQ$[{"id":"afda1bc3-042b-4e54-a3c0-5670deffb1e8","content":"<p><math alttext=\"left parenthesis 8 comma 9 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mn>9</mn></mrow></mrow></mfenced></math></p>"},{"id":"b3c09278-7619-4de8-bb12-6e9825a68af2","content":"<p><math alttext=\"left parenthesis 8 comma negative 24 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mo>-</mo><mn>24</mn></mrow></mrow></mfenced></math></p>"},{"id":"bd6942ea-af44-4658-a763-252d43b88a31","content":"<p><math alttext=\"left parenthesis 8 comma negative 9 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mo>-</mo><mn>9</mn></mrow></mrow></mfenced></math></p>"},{"id":"f25609ee-56f2-401a-8f7f-a44ebb3d11ec","content":"<p><math alttext=\"left parenthesis 8 comma 24 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mn>24</mn></mrow></mrow></mfenced></math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["afda1bc3-042b-4e54-a3c0-5670deffb1e8"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. The second equation in the given system is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x equals 8"><mi>x</mi><mo>=</mo><mn>8</mn></math>. Substituting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="8"><mn>8</mn></math> for <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x"><mi>x</mi></math> in the first equation in the given system yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4 left parenthesis 8 right parenthesis minus 3 y equals 5"><mn>4</mn><mo>(</mo><mn>8</mn><mo>)</mo><mo>-</mo><mn>3</mn><mi>y</mi><mo>=</mo><mn>5</mn></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="32 minus 3 y equals 5"><mn>32</mn><mo>-</mo><mn>3</mn><mi>y</mi><mo>=</mo><mn>5</mn></math>. Subtracting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="32"><mn>32</mn></math> from both sides of this equation yields&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="minus 3 y equals negative 27"><mo>-</mo><mn>3</mn><mi>y</mi><mo>=</mo><mo>-</mo><mn>27</mn></math>. Dividing both sides of this equation by <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="negative 3"><mo>-</mo><mn>3</mn></math> yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y equals 9"><mi>y</mi><mo>=</mo><mn>9</mn></math>. Therefore, the solution <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis x comma y right parenthesis"><mo>(</mo><mi>x</mi><mo>,</mo><mi>y</mi><mo>)</mo></math> to the given system of equations is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis 8 comma 9 right parenthesis"><mo>(</mo><mn>8</mn><mo>,</mo><mn>9</mn><mo>)</mo></math>.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"4fb8adf7","external_id":"ac10f741-d7d2-4630-ac36-63d9fd1f7a94","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"b4aaaaa9-3f3c-4652-9508-719f83cc6805","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"4 x minus 3 y equals 5\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>4</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>5</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: center;\"><math alttext=\"x equals 8\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>8</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">What is the solution&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> to the given system of equations?</p>","answerOptions":[{"id":"afda1bc3-042b-4e54-a3c0-5670deffb1e8","content":"<p><math alttext=\"left parenthesis 8 comma 9 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mn>9</mn></mrow></mrow></mfenced></math></p>"},{"id":"b3c09278-7619-4de8-bb12-6e9825a68af2","content":"<p><math alttext=\"left parenthesis 8 comma negative 24 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mo>-</mo><mn>24</mn></mrow></mrow></mfenced></math></p>"},{"id":"bd6942ea-af44-4658-a763-252d43b88a31","content":"<p><math alttext=\"left parenthesis 8 comma negative 9 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mo>-</mo><mn>9</mn></mrow></mrow></mfenced></math></p>"},{"id":"f25609ee-56f2-401a-8f7f-a44ebb3d11ec","content":"<p><math alttext=\"left parenthesis 8 comma 24 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mn>24</mn></mrow></mrow></mfenced></math></p>"}],"keys":["afda1bc3-042b-4e54-a3c0-5670deffb1e8"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. The second equation in the given system is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 8\"><mi>x</mi><mo>=</mo><mn>8</mn></math>. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8\"><mn>8</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> in the first equation in the given system yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 left parenthesis 8 right parenthesis minus 3 y equals 5\"><mn>4</mn><mo>(</mo><mn>8</mn><mo>)</mo><mo>-</mo><mn>3</mn><mi>y</mi><mo>=</mo><mn>5</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"32 minus 3 y equals 5\"><mn>32</mn><mo>-</mo><mn>3</mn><mi>y</mi><mo>=</mo><mn>5</mn></math>. Subtracting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"32\"><mn>32</mn></math> from both sides of this equation yields&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 3 y equals negative 27\"><mo>-</mo><mn>3</mn><mi>y</mi><mo>=</mo><mo>-</mo><mn>27</mn></math>. Dividing both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"negative 3\"><mo>-</mo><mn>3</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals 9\"><mi>y</mi><mo>=</mo><mn>9</mn></math>. Therefore, the solution <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x comma y right parenthesis\"><mo>(</mo><mi>x</mi><mo>,</mo><mi>y</mi><mo>)</mo></math> to the given system of equations is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 8 comma 9 right parenthesis\"><mo>(</mo><mn>8</mn><mo>,</mo><mn>9</mn><mo>)</mo></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1755117017722,"pPcc":"SAT#H","questionId":"4fb8adf7","skill_cd":"H.D.","score_band_range_cd":3,"skill_desc":"Systems of two linear equations in two variables","createDate":1755117017722,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"ac10f741-d7d2-4630-ac36-63d9fd1f7a94","primary_class_cd":"H","uId":"b4aaaaa9-3f3c-4652-9508-719f83cc6805","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: center;\"><math alttext=\"4 x minus 3 y equals 5\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>4</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>5</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: center;\"><math alttext=\"x equals 8\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>8</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">What is the solution&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> to the given system of equations?</p>","keys":["afda1bc3-042b-4e54-a3c0-5670deffb1e8"],"answerOptions":[{"id":"afda1bc3-042b-4e54-a3c0-5670deffb1e8","content":"<p><math alttext=\"left parenthesis 8 comma 9 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mn>9</mn></mrow></mrow></mfenced></math></p>"},{"id":"b3c09278-7619-4de8-bb12-6e9825a68af2","content":"<p><math alttext=\"left parenthesis 8 comma negative 24 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mo>-</mo><mn>24</mn></mrow></mrow></mfenced></math></p>"},{"id":"bd6942ea-af44-4658-a763-252d43b88a31","content":"<p><math alttext=\"left parenthesis 8 comma negative 9 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mo>-</mo><mn>9</mn></mrow></mrow></mfenced></math></p>"},{"id":"f25609ee-56f2-401a-8f7f-a44ebb3d11ec","content":"<p><math alttext=\"left parenthesis 8 comma 24 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><mo>,</mo><mrow><mn>24</mn></mrow></mrow></mfenced></math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice A is correct. The second equation in the given system is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 8\"><mi>x</mi><mo>=</mo><mn>8</mn></math>. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"8\"><mn>8</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> in the first equation in the given system yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 left parenthesis 8 right parenthesis minus 3 y equals 5\"><mn>4</mn><mo>(</mo><mn>8</mn><mo>)</mo><mo>-</mo><mn>3</mn><mi>y</mi><mo>=</mo><mn>5</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"32 minus 3 y equals 5\"><mn>32</mn><mo>-</mo><mn>3</mn><mi>y</mi><mo>=</mo><mn>5</mn></math>. Subtracting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"32\"><mn>32</mn></math> from both sides of this equation yields&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 3 y equals negative 27\"><mo>-</mo><mn>3</mn><mi>y</mi><mo>=</mo><mo>-</mo><mn>27</mn></math>. Dividing both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"negative 3\"><mo>-</mo><mn>3</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals 9\"><mi>y</mi><mo>=</mo><mn>9</mn></math>. Therefore, the solution <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x comma y right parenthesis\"><mo>(</mo><mi>x</mi><mo>,</mo><mi>y</mi><mo>)</mo></math> to the given system of equations is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 8 comma 9 right parenthesis\"><mo>(</mo><mn>8</mn><mo>,</mo><mn>9</mn><mo>)</mo></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"ac10f741-d7d2-4630-ac36-63d9fd1f7a94","correct_answer":["A"]},"createDate":1755117017722,"updateDate":1755117017722}$SATQ$::jsonb, 1755117017722, 1755117017722),
    ($SATQ$4fe4fd7c$SATQ$, NULL, NULL, $SATQ$028813-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$spr$SATQ$, $SATQ$<div class="stimulus_reference " xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1"><p class="standalone_statement style:1 "><span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_000_4901e6d7.png" alt="c of x equals, m x plus 500"></span></span></p></div>
$SATQ$, $SATQ$<p class="stem_paragraph ">A company&rsquo;s total cost <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_001_350658bb.png" alt="c of x"></span></span>, in dollars, to produce <span class="italic ">x</span> shirts is given by the function above, where <span class="italic">m</span> is a constant and <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_002_8d906565.png" alt="x is greater than 0"></span></span>. The total cost to produce 100 shirts is $800. What is the total cost, in dollars, to produce 1000 shirts? (Disregard the $ sign when gridding your answer.)</p>
$SATQ$, NULL, $SATQ$["3500"]$SATQ$::jsonb, NULL, $SATQ$<p>The correct answer is 3500. The given information includes a cost, $800, to produce 100 shirts. Substituting <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_003_a7332f73.png" alt="c of x equals 800 "></span> and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_004_f0beae7c.png" alt="x equals 100"></span> into the given equation yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_005_78cd96f4.png" alt="800 equals, m times 100, plus 500 "></span>. Subtracting 500 from both sides of the equation yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_006_b88ccfc9.png" alt="300 equals, m times 100"></span>. Dividing both sides of this equation by 100 yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_007_2ff6d78c.png" alt="3 equals m"></span>. Substituting the value of <span class="italic">m</span> into the given equation yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_008_05a7a5e6.png" alt="c of x equals, 3 x plus 500"></span>. Substituting 1000 for <span class="italic">x</span> in this equation and solving for <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_009_350658bb.png" alt="c of x"></span> gives the cost of 1000 shirts: <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_010_ea9d2ed6.png" alt="3 times 1000, plus 500 "></span>, or 3500.</p>
$SATQ$, true, 11, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$SPR$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"4fe4fd7c","external_id":null,"disclosed_item_id":"028813-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"M","score_band_range_cd":5,"type":"spr","stimulus":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_000_4901e6d7.png\" alt=\"c of x equals, m x plus 500\"></span></span></p></div>\n","stem":"<p class=\"stem_paragraph \">A company&rsquo;s total cost <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_001_350658bb.png\" alt=\"c of x\"></span></span>, in dollars, to produce <span class=\"italic \">x</span> shirts is given by the function above, where <span class=\"italic\">m</span> is a constant and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_002_8d906565.png\" alt=\"x is greater than 0\"></span></span>. The total cost to produce 100 shirts is $800. What is the total cost, in dollars, to produce 1000 shirts? (Disregard the $ sign when gridding your answer.)</p>\n","answerOptions":null,"keys":null,"correct_answer":["3500"],"rationale":"<p>The correct answer is 3500. The given information includes a cost, $800, to produce 100 shirts. Substituting <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_003_a7332f73.png\" alt=\"c of x equals 800 \"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_004_f0beae7c.png\" alt=\"x equals 100\"></span> into the given equation yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_005_78cd96f4.png\" alt=\"800 equals, m times 100, plus 500 \"></span>. Subtracting 500 from both sides of the equation yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_006_b88ccfc9.png\" alt=\"300 equals, m times 100\"></span>. Dividing both sides of this equation by 100 yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_007_2ff6d78c.png\" alt=\"3 equals m\"></span>. Substituting the value of <span class=\"italic\">m</span> into the given equation yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_008_05a7a5e6.png\" alt=\"c of x equals, 3 x plus 500\"></span>. Substituting 1000 for <span class=\"italic\">x</span> in this equation and solving for <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_009_350658bb.png\" alt=\"c of x\"></span> gives the cost of 1000 shirts: <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/4fe4fd7c/img_010_ea9d2ed6.png\" alt=\"3 times 1000, plus 500 \"></span>, or 3500.</p>\n","answer_style":"SPR","section":"Math","image_count":11,"raw_list":{"updateDate":1691007959622,"pPcc":"SAT#H","questionId":"4fe4fd7c","skill_cd":"H.B.","score_band_range_cd":5,"skill_desc":"Linear functions","createDate":1691007959622,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"028813-DC","external_id":null,"primary_class_cd":"H","uId":"7f549211-39b5-4567-8933-74ff3b21eb88","difficulty":"M"},"raw_detail":{"item_id":"028813-DC","section":"Math","body":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAAAaCAYAAAC939IvAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACdElEQVRoQ+2VgW2EMAxFGY+BGIddWOU2SWM7Do5J4HPcSVXrJ6Ee4CTf/sad7pJea5qnOa2vlMqjLim90jpPadnO44Ivk9KWFsAw5W588AW2ZUpzdqDcQqRtSdO85u/u7xsnTTpRnu2Vx03+W+Ga1Pf9pkZiLpGxuGRZ9xb/pzGJ1EjM2E3w9wQSA/Fa50PHoPChb679DegXdNV4nOfJVNEG9tOKJpjWB4mpaDD9lKvtGFrkRfNGTiQ/853z5ld6BTcS72vGUklM3skzLQCq14Oaxnv5whqkDsd99jwyQAw/qIaZA22C8v6YmE9GNh7FjdfTz7PLJ6BIkZa8R5twflWNktFS3oN6PYhpWsM561ENdNkvRvR16mA1AjH8gMW7DrSLR0UnqrmlYP6zJkamP2E3fE9ETWsKxcnuZyN6PZhpRY+po9fjtSj2ORKzd0jZuMeZaSqMfo5Gw1dMK+faQvYS9mMF06sNcX6dmajY8z9nWid5z5lpBHev/XQdo/VPiiNJtGfakU732pB+ilzp9ahOxCRPYwjXemRIMRaIKaaNDSE0+Z5o6SQqwngPSRovEsLQoCySAzJabDtFEL2ez5p23Kf5GoGY/pjpiKQi+REqguQ5FzEvkDctHOe6/QlqkNXTM8g3JKrXg5gGGdLRTVgtSEwN8ot8kX3hNZG6znQU3Vt6hj+h22id89uC4Xo9kGlaNzNR5IxznT0dSIw5sFwlMYvGkIBaACtQ93BrJRYrDkoviWZ8FLQ77+h9wqGO+aLj6Z1FtGpMvzZIDAQX6+aYo8M/+ZUFbyAdcO187boP/i8LgiAIgiAIgiAIgiAI/ifT9AOsyosd22hCPwAAAABJRU5ErkJggg==\" alt=\"c of x equals, m x plus 500\"></span></span></p></div>\n","prompt":"<p class=\"stem_paragraph \">A company&rsquo;s total cost <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAYCAYAAADpnJ2CAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABFUlEQVRIS+1U2xEDIQi0PAuyHHuxFTshAuohiqdf+bmdyVz0eCzLJu4WkCN45yFmgHq1BECG6B2EtI/bAiBBOGjWcBs/IQUHvmTX4xEgBXA+lnkvm7KUoXC+SzSlbS/wK3/G4jl6cCWrHgk4sWZPd0pGmlLm9mbiUhfDs2bJO3ruidRiZ5M6FKiYSjcyofXyOzGKX+94ME+bbmeGnduYGMo4KiQxEG4JWi6JN3vz3mxDLRraxRC7hrw3bGjXGCVdTMgBz12TXatA7isPXAdNaUqK9aoCrVgL7ueF3eWeG6meR83XU04//t4EC4giEjKpNxN708QlNNkjWLK+YdjfLSZpDoCmup5Owvo30bC88OHDh3/DuR9J9+okJ57SpQAAAABJRU5ErkJggg==\" alt=\"c of x\"></span></span>, in dollars, to produce <span class=\"italic \">x</span> shirts is given by the function above, where <span class=\"italic\">m</span> is a constant and <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAYCAYAAAB9ejRwAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAThJREFUeNrt1c0rRFEYx/GJMsVY2VCSzKwtZG3DnpU1ZWci/gALpaasNfE3eFlZkjL8A5SSt4XSlA1S3vme+k3dbo90dG4WzlOfuve559zzdJ/Tubnc30QPNnCPO6yjO9TLy8h7zingHMcYE3d9itYQRV2LT3FzeEcpkSspN5Me7B68YjGVr+IBg8YCeRXkU9wuDoy8y+1YE6rqc4fuF/CMkR8W8imujlUjv4Yba0IXHrGMKX3ScY92Noq7xec3Y15QMfIVfQAzlvCEN0x77rHMiprQC/d/UUwm7RtWtYf4QH/AYpIbvWbka9ZGH9AmX0ELrrCdwZEwr63Rl8gVlZtNHwd1naxNyk2qjUOBD892XOIIo+Kuz9DWGNSJC+ylFmjGiVoZOnqxpc44m/r1xIgRI0aMGP8yvgB+iFiJ592c6QAAAABJRU5ErkJggg==\" alt=\"x is greater than 0\"></span></span>. The total cost to produce 100 shirts is $800. What is the total cost, in dollars, to produce 1000 shirts? (Disregard the $ sign when gridding your answer.)</p>\n","answer":{"style":"SPR","rationale":"<p>The correct answer is 3500. The given information includes a cost, $800, to produce 100 shirts. Substituting <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAAAYCAYAAABZY7uwAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB00lEQVRYR+1VAY6EIAz0eTzI5/gXv+JPekAp1FKg3Gqyd2ESEsWhtNMBt1nAdYDbHBwXQJpSAXDB4TbYzz7vXwHghN0gDmGWP4tz30LcPLRmwLkzjp6LhWNCSMj51enVhLi5O7yfnhUJxdl9CzAuFclFwrlSsHwPsHBMwKNVErLijaOGzqxjRtH8ZHimfWVDZzkZRA6POO5iXIerFsVAwh3YWaVLcsMPgM0aCNTgxDpSbRZOnMjisCJk8eFdBpKdxMC1PVvuo/XhsTfkvgHYiBITj0bh4p5KLpHHBepz4kQsTDiBL0YB60ABWcjUDe2OeuuyxoaQkPf4rbuEz1s42T29y7dXINk0PLaOUU/g3yA7njtINOg5gVJgzcaEkQOk3SVaAmHcJG5nyNxaOdf3S6v4iSPWInH0BCo2b8cYCTwLS+ftIvY5ajeoszSHDqgDYUJo6+giT8Avd2C8tOEDaBXGO085937hFk4myUXa75sHyseD1jW6GhC/iXifQh5rEu2Wo8hJy9HCKaL4xzhIPQZeZBaHJ0gxlLVS3KeAIpWh7dH70xEsnCFIAF//1OKn75+vBndRmhoidOcN93wt0I5jR7TusoWFhYWFhYWFhb+AbfsBdj0JodUXzFQAAAAASUVORK5CYII=\" alt=\"c of x equals 800 \"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADYAAAAWCAYAAACL6W/rAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABDElEQVRYR+2UURbEEAxFLc+CLMdebMVOMoKUEuoj05mP3HOc0cxr4yUwvyQ4A9ZHqI83IDiM12EhySbdieZ1aFGcsfJfW+j4jJxoXid6i8nzGI0BRPB2jmN3jQs5dqK5yEHr0yvNcY4JV6FVNoDjjEUPNv2k9d3ipRgOUjj5etbUUFKlR0xE4iLiTZEWp7sxJu6hb/DG5rylIL2xvaaGClfXakXGpJIsjS3OSh8/0dRQgVqM02mvCvOqMaScK6adHbQonO7G32zFdlstXAuyNyZ5eWS3JRF7bQqzNCZ53V9bi17c7VUhVsaQMT+3nkfNZaprIVXkm13bGUPascDBF/lEoyiKoiiK8m2M+QBgPUuCiYzvRAAAAABJRU5ErkJggg==\" alt=\"x equals 100\"></span> into the given equation yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIcAAAAWCAYAAADq3Y/sAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACJ0lEQVRoQ+2Wga2EIAyGHc+BHMddXMVNOKBUCrbY96y5M+mXEHNYafn7ozch2zKFeDnGsoV0bQjbQmLmsO7/i3kDSY85Fl9+NnxbhxC2sBxrkxGbFq8HJnWCMZaYEm7gA9QgMFcf7n8nNDFvAPfPmeMXdAj7GmbSLw6TOtGF/ZsiG6Y4MYQ9rPNZrL/GvIF9nVOtefR7eVoHqRc9uYnzGjPxcWZ1ggsvzCHEgJDgYE1MmTKhrktesaXeUYNH1JMDa/bPPq2D1hxXRjOtMycjEyBSfRAWal9JCYijycYxZSojfje7IQkFAi1xjXaz8dbRVCn3FVgbbw5bHSgac8QEcOLj3nG/adBazeukp+3q24TQeU1MmbpNNVbdBJqjEYnJfTwbO1CmTojmeFgHzDs2R6mffFb6vZvViU4cCW2WzAisj4rI5eFe5Ye4P2COo5aLMTIL0nwyrOrkhE6cv0/SQvqYMpW5Iwy3Zv7M0NOEph/8cZPA2k7meEAHCubVmKEH1oe8ZnXSRcv9zDmZxkDjmDJ1G9EIMXkOiEgN1jA2x3M62JrDoE4pqHFZEb8Xi/5r1sRYwOXhmgn7Opteg2iOh3XQmEPVeMs68wRxNRZAH+zfMNwbRxNzF04cLo/mpEpI5kg8qYPKHKWpTb/y+mNNbtUJBqmDEwYExxh+s5qYO3Ab4IygOakSI3Mkvq1DNUgdnKF+oV+O4ziO4ziO4ziO4ziO4zhvZJo+uun7B7UiRacAAAAASUVORK5CYII=\" alt=\"800 equals, m times 100, plus 500 \"></span>. Subtracting 500 from both sides of the equation yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF0AAAAWCAYAAACi7pBsAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABl0lEQVRoQ+2Wga3EIAiGO54DdZzu0lW6CQ9FLPrQeqcm14QvMddSRPyF9jbm3DfAnzgcHBf46ww49yk+b8Dr4TD5eJsxRQcSfIcT6AFNyB1L27c+b4Dy1kWfogNcBzj82VHxYEAALjjcvWh5z4TDwon+usfnDVyH87mGUe5lqQ48MQVSDsZDCVKH9PhE0xTuuCfsuC6aUr4t4VrcFUkx/4m+UgdyEO0RAuUt5KEk5WJtn2gKgBSrMcrkGaqcHWPkm8VHSaza2k9wbrroc3XIKkRulibUApG9xyeahrkP7N4Eiy6F0tZOc2NXaFRFX6lDqpqY2NLFvoDzeyoMraV/VnSPfMWsaKu0+YchhWW0mOF14w78GpENE6LvkrD1UhV9gQ4Z5CRFb38cenyiaZiqwKJ6a8L10BZ9gg4k7kOguKkyiSl/lT5EW0cTqVZxPVRFn6UDO2WVEw8i24SofO3e0+MzilZJ2jojHdbqkmk6JOHxkofcFEMbYZ8iSKTHZ4RegUc67OnV9As6GIZhGIZhGIZhGManbNsfXfSlKqnossMAAAAASUVORK5CYII=\" alt=\"300 equals, m times 100\"></span>. Dividing both sides of this equation by 100 yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAWCAYAAACyjt6wAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA70lEQVRIS+2UgQ2EIAxFOx4DdRx2YRU2+VYLtYnV84KXmBwvIZqq8On/Qp3CBLm0kZAr1vt3oOIYBSoKhd8jEjUjyYVFXSsRUJETIYnCVnoXXSCJ6lZ6jJqTzLm6VcCylJRsHX2mtcvm6IuxxfATXwzviGeLE7PMoZHqDsojE6UR2yNn+B2cLTDCvjmX9ybQd+zjP2C7etjiMO+BmD0GF006s3nE4si6zfKUJfVas/y7WsgvjppTMc6p3gCzXIUcd3yrzV8QHV0HMYLGwDUmamkX7T8cZSh/JlJu+4gyNMJdMXoMPX/+TiaTyeQ/IVoAqht931Vy5a4AAAAASUVORK5CYII=\" alt=\"3 equals m\"></span>. Substituting the value of <span class=\"italic\">m</span> into the given equation yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGkAAAAYCAYAAAD5/NNeAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACSElEQVRoQ+2W23HEIAxFKc8FuRz34la2EwJ6YFkWIG9IvnRmmOx6hXTRAye9JX+OvKUtH5+c6ZFJzp98bCnv59guWEzOZ94dBWLe2r/l3FP1S+vv4vTA80kNtEpnlr+NfO7id1unx8ZFTcpWdtNXFxB8O8pcrU0gFmgvaUK/eMj/LRTeKpcGC63L0umxceERZPEX1x5qufvkOG+byIInZKYZkjlowJ4maDCaNo9Ng43rR1z3gnyO7bEJHCmR2OFGp+iAi2n6RRyvPo23SGYiBVYzVSCXlF+PDTzwHLB+1470YdDxMwG9Keze6WrpuBZWbK8+jadIbQL2HZJcH9UlJwLPbeQDrjNZpLENPADxquPkZhRkH64VkzrCum7w0PPkfAMmvl9Mjz6Nr0jUYCJvPBUco/dukc89NldHkGOLUZJZWP3YG/1RkVfRdCgNPn2U8MkaFY3BpqEpWVYkOsS8a/pJhm41rjOmV6SVyan0rrOZPg3r8saV3AoAuTXODTYvrruekWRUpOu66fuYFXkVVld69GnWFunp5zZtDhtzkrRInISnIxSEVyV0azHAX+6gP38nz+C4w4MVvPo0niK5CtB5lUgtHptmpDfpfyTqJumID9L2GV3MwG/K32+wNMqCoI1fn8ZVJNZgNIXcp+NaOjw2IiAtOpgENlJSWgKkQPZh7NUFXsFDc1mcnLf6vmWkQXJduXXZjeKxmcKCLBEjMGFfBg3eI6eJHk2pHbJ6ioIJOJbzyWhXwcJ3URAEQRAEQRAEQRCklNIPWTk2etVfDwUAAAAASUVORK5CYII=\" alt=\"c of x equals, 3 x plus 500\"></span>. Substituting 1000 for <span class=\"italic\">x</span> in this equation and solving for <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAYCAYAAADpnJ2CAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABFUlEQVRIS+1U2xEDIQi0PAuyHHuxFTshAuohiqdf+bmdyVz0eCzLJu4WkCN45yFmgHq1BECG6B2EtI/bAiBBOGjWcBs/IQUHvmTX4xEgBXA+lnkvm7KUoXC+SzSlbS/wK3/G4jl6cCWrHgk4sWZPd0pGmlLm9mbiUhfDs2bJO3ruidRiZ5M6FKiYSjcyofXyOzGKX+94ME+bbmeGnduYGMo4KiQxEG4JWi6JN3vz3mxDLRraxRC7hrw3bGjXGCVdTMgBz12TXatA7isPXAdNaUqK9aoCrVgL7ueF3eWeG6meR83XU04//t4EC4giEjKpNxN708QlNNkjWLK+YdjfLSZpDoCmup5Owvo30bC88OHDh3/DuR9J9+okJ57SpQAAAABJRU5ErkJggg==\" alt=\"c of x\"></span> gives the cost of 1000 shirts: <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGEAAAAYCAYAAADqK5OqAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACCUlEQVRoQ+2XjW2EMAyFGY+BMg67sAqbuDi2i/PjJHCWjpPySaglOMmznwPtchc4NliXFbYDgIe+DsAB27pA2N+j6RF7WDABvupFBtghGM9w/no+4NsE2AOv21j7w5iWtqfQmrKfuk63z5//uORHBoRzS3pAE8pAq9Cygf3sWqu2tmvMup3n4hr7BDr1V11quGinjdKjLMdbF9USdGwr3scrN6G2DhJN527yikFGX0vS4d24jqme2gtkog6Kxc4mXY5SUvlGNYMRMo4M9YrhIdKU6cwZNaFXKG/tCRSQHikUZImWpOompOsgZJ4W+XkMD5knVjNiwrkpdXAIsYg4hJfO0Vt7hIpPm2mBJKhcSDBNiBtZAmjcK4aHWEsZqxkzgWL064gKeuXprT1BNpOj2EtMBL/DhLJhRB/+2rpapgjJq8ZZe4F+JVES9gRJ8hWvo86pRUTvSNFzdPG8tRckm0XRdmJtE8pkk25yiuEh1mJrRXxNcNBOi3YW4o+UJdo0gefl43f/hBuJEUhLakzOiAlDBfbSLkHJB4iN0RNxUr6QYJmA6M6p3SNeMUgc7/zDNmSC1EUZSnum80Z0jcSoDa8rFxgnGsm1TECoe2TtsnCIV0yrWe4yUhfES3sXEdTqnm9DzfAwwV+hdRreAHab1yl4NXSs3tVtte/aZDKZTCaTyWQymfwuy/IHCYUtLoSY+dQAAAAASUVORK5CYII=\" alt=\"3 times 1000, plus 500 \"></span>, or 3500.</p>\n"}},"createDate":1691007959622,"updateDate":1691007959622,"correct_answer_extracted_from_rationale":true}$SATQ$::jsonb, 1691007959622, 1691007959622),
    ($SATQ$50f4cb9c$SATQ$, $SATQ$f3a8f6e5-3640-4af9-a194-e13afbea670e$SATQ$::uuid, $SATQ$975aecdf-a7db-4cfe-82ab-172d3814a4bf$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<figure class="table"><figure class="table"><figure class="table"><table border="1">
<thead>
<tr>
<th style="width: 47.3489%; text-align: center;" scope="col"><math alttext="x"><mi>x</mi>
</math></th>
<th style="width: 47.3489%; text-align: center;" scope="col"><math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math></th>
</tr>
</thead>
<tbody>
<tr>
<td style="width: 47.3489%; text-align: center;"><math alttext="1"><mn>1</mn>
</math></td>
<td style="width: 47.3489%; text-align: center;"><math alttext="negative 64"><mo>-</mo><mn>64</mn>
</math></td>
</tr>
<tr>
<td style="width: 47.3489%; text-align: center;"><math alttext="2"><mn>2</mn>
</math></td>
<td style="width: 47.3489%; text-align: center;"><math alttext="0"><mn>0</mn>
</math></td>
</tr>
<tr>
<td style="width: 47.3489%; text-align: center;"><math alttext="3"><mn>3</mn>
</math></td>
<td style="width: 47.3489%; text-align: center;"><math alttext="64"><mn>64</mn>
</math></td>
</tr>
</tbody>
</table></figure></figure></figure>
<p style="text-align: left;">For the linear function <math alttext="f"><mi>f</mi>
</math>, the table shows three values of <math alttext="x"><mi>x</mi>
</math> and their corresponding values of <math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>. Function <math alttext="f"><mi>f</mi>
</math> is defined by <math alttext="f left parenthesis x right parenthesis equals a x plus b"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext="a"><mi>a</mi>
</math> and <math alttext="b"><mi>b</mi>
</math> are constants. What is the value of <math alttext="a minus b"><mrow>
	<mi>a</mi>
	<mo>-</mo>
	<mi>b</mi>
</mrow>
</math>?</p>$SATQ$, $SATQ$[{"id":"f5277b7f-d5f2-4ca5-85e3-cda3b61ac4e7","content":"<p><math alttext=\"negative 64\"><mo>-</mo><mn>64</mn>\n</math></p>"},{"id":"89f70b06-d2e9-40a0-9e51-15f5a8572c97","content":"<p><math alttext=\"62\"><mn>62</mn>\n</math></p>"},{"id":"7baa67cc-6039-4228-8339-ec49ea3a01ff","content":"<p><math alttext=\"128\"><mn>128</mn>\n</math></p>"},{"id":"0a5167c9-3199-4d57-9213-7c14a9bafe7e","content":"<p><math alttext=\"192\"><mn>192</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["0a5167c9-3199-4d57-9213-7c14a9bafe7e"]$SATQ$::jsonb, $SATQ$<p>Choice D is correct. The table gives that <math alttext="f left parenthesis x right parenthesis equals 0"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mn>0</mn></math> when <math alttext="x equals 2"><mi>x</mi><mo>=</mo><mn>2</mn></math>. Substituting 0 for <math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> and <math alttext="2"><mn>2</mn>
</math> for <math alttext="x"><mi>x</mi>
</math> into the equation <math alttext="f left parenthesis x right parenthesis equals a x plus b"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>b</mi><mo>&nbsp;</mo></math>yields <math alttext="0 equals 2 a plus b"><mn>0</mn><mo>=</mo><mn>2</mn><mi>a</mi><mo>+</mo><mi>b</mi></math>. Subtracting <math alttext="2 a"><mrow>
	<mn>2</mn>
	<mi>a</mi>
</mrow>
</math> from both sides of this equation yields <math alttext="b equals minus 2 a"><mi>b</mi><mo>=</mo><mo>-</mo><mn>2</mn><mi>a</mi></math>. The table gives that <math alttext="f left parenthesis x right parenthesis equals negative 64"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mo>-</mo><mn>64</mn></math> when <math alttext="x equals 1"><mi>x</mi><mo>=</mo><mn>1</mn></math>. Substituting <math alttext="minus 2 a"><mo>-</mo><mn>2</mn><mi>a</mi></math>&nbsp;for <math alttext="b"><mi>b</mi>
</math>, <math alttext="negative 64"><mo>-</mo><mn>64</mn></math> for <math alttext="f left parenthesis x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>, and <math alttext="1"><mn>1</mn>
</math> for <math alttext="x"><mi>x</mi>
</math>&nbsp;into the equation <math alttext="f left parenthesis x right parenthesis equals a x plus b"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields&nbsp;<math alttext="negative 64 equals a left parenthesis 1 right parenthesis plus left parenthesis minus 2 a right parenthesis"><mo>-</mo><mn>64</mn><mo>=</mo><mi>a</mi><mfenced><mn>1</mn></mfenced><mo>+</mo><mfenced><mrow><mo>-</mo><mn>2</mn><mi>a</mi></mrow></mfenced></math>. Combining like terms yields&nbsp;<math alttext="negative 64 equals negative a"><mo>-</mo><mn>64</mn><mo>=</mo><mo>-</mo><mi>a</mi></math>, or <math alttext="a equals 64"><mi>a</mi><mo>=</mo><mn>64</mn></math>. Since <math alttext="b equals minus 2 a"><mi>b</mi><mo>=</mo><mo>-</mo><mn>2</mn><mi>a</mi></math>, substituting <math alttext="64"><mn>64</mn>
</math> for <math alttext="a"><mi>a</mi>
</math> into this equation gives <math alttext="b equals left parenthesis negative 2 right parenthesis left parenthesis 64 right parenthesis"><mi>b</mi><mo>=</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced><mfenced><mn>64</mn></mfenced></math>, which yields&nbsp;<math alttext="b equals negative 128"><mi>b</mi><mo>=</mo><mo>-</mo><mn>128</mn></math>. Thus, the value of&nbsp;<math alttext="a minus b"><mi>a</mi><mo>-</mo><mi>b</mi></math> can be written as&nbsp;<math alttext="64 minus left parenthesis negative 128 right parenthesis"><mn>64</mn><mo>-</mo><mo>(</mo><mo>-</mo><mn>128</mn><mo>)</mo></math>, which is <math alttext="192"><mn>192</mn>
</math>.</p>
<p>Choice A is incorrect. This is the value of&nbsp;<math alttext="a plus b"><mi>a</mi><mo>+</mo><mi>b</mi></math>, not&nbsp;<math alttext="a minus b"><mi>a</mi><mo>-</mo><mi>b</mi></math>.</p>
<p>Choice B is incorrect. This is the value of&nbsp;<math alttext="a minus 2"><mi>a</mi><mo>-</mo><mn>2</mn></math>, not&nbsp;<math alttext="a minus b"><mi>a</mi><mo>-</mo><mi>b</mi></math>.</p>
<p>Choice C is incorrect. This is the value of&nbsp;<math alttext="2 a"><mn>2</mn><mi>a</mi></math>, not <math alttext="a minus b"><mi>a</mi><mo>-</mo><mi>b</mi></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"50f4cb9c","external_id":"f3a8f6e5-3640-4af9-a194-e13afbea670e","disclosed_item_id":null,"source":"qbank","vaultid":"975aecdf-a7db-4cfe-82ab-172d3814a4bf","uId":"7756c259-e1f6-4608-ae5a-1c2828d6a560","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<figure class=\"table\"><figure class=\"table\"><figure class=\"table\"><table border=\"1\">\n<thead>\n<tr>\n<th style=\"width: 47.3489%; text-align: center;\" scope=\"col\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"width: 47.3489%; text-align: center;\" scope=\"col\"><math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math></th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"negative 64\"><mo>-</mo><mn>64</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"64\"><mn>64</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure></figure></figure>\n<p style=\"text-align: left;\">For the linear function <math alttext=\"f\"><mi>f</mi>\n</math>, the table shows three values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>. Function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by <math alttext=\"f left parenthesis x right parenthesis equals a x plus b\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext=\"a\"><mi>a</mi>\n</math> and <math alttext=\"b\"><mi>b</mi>\n</math> are constants. What is the value of <math alttext=\"a minus b\"><mrow>\n\t<mi>a</mi>\n\t<mo>-</mo>\n\t<mi>b</mi>\n</mrow>\n</math>?</p>","answerOptions":[{"id":"f5277b7f-d5f2-4ca5-85e3-cda3b61ac4e7","content":"<p><math alttext=\"negative 64\"><mo>-</mo><mn>64</mn>\n</math></p>"},{"id":"89f70b06-d2e9-40a0-9e51-15f5a8572c97","content":"<p><math alttext=\"62\"><mn>62</mn>\n</math></p>"},{"id":"7baa67cc-6039-4228-8339-ec49ea3a01ff","content":"<p><math alttext=\"128\"><mn>128</mn>\n</math></p>"},{"id":"0a5167c9-3199-4d57-9213-7c14a9bafe7e","content":"<p><math alttext=\"192\"><mn>192</mn>\n</math></p>"}],"keys":["0a5167c9-3199-4d57-9213-7c14a9bafe7e"],"correct_answer":["D"],"rationale":"<p>Choice D is correct. The table gives that <math alttext=\"f left parenthesis x right parenthesis equals 0\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mn>0</mn></math> when <math alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mn>2</mn></math>. Substituting 0 for <math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> and <math alttext=\"2\"><mn>2</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> into the equation <math alttext=\"f left parenthesis x right parenthesis equals a x plus b\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>b</mi><mo>&nbsp;</mo></math>yields <math alttext=\"0 equals 2 a plus b\"><mn>0</mn><mo>=</mo><mn>2</mn><mi>a</mi><mo>+</mo><mi>b</mi></math>. Subtracting <math alttext=\"2 a\"><mrow>\n\t<mn>2</mn>\n\t<mi>a</mi>\n</mrow>\n</math> from both sides of this equation yields <math alttext=\"b equals minus 2 a\"><mi>b</mi><mo>=</mo><mo>-</mo><mn>2</mn><mi>a</mi></math>. The table gives that <math alttext=\"f left parenthesis x right parenthesis equals negative 64\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mo>-</mo><mn>64</mn></math> when <math alttext=\"x equals 1\"><mi>x</mi><mo>=</mo><mn>1</mn></math>. Substituting <math alttext=\"minus 2 a\"><mo>-</mo><mn>2</mn><mi>a</mi></math>&nbsp;for <math alttext=\"b\"><mi>b</mi>\n</math>, <math alttext=\"negative 64\"><mo>-</mo><mn>64</mn></math> for <math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>, and <math alttext=\"1\"><mn>1</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math>&nbsp;into the equation <math alttext=\"f left parenthesis x right parenthesis equals a x plus b\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields&nbsp;<math alttext=\"negative 64 equals a left parenthesis 1 right parenthesis plus left parenthesis minus 2 a right parenthesis\"><mo>-</mo><mn>64</mn><mo>=</mo><mi>a</mi><mfenced><mn>1</mn></mfenced><mo>+</mo><mfenced><mrow><mo>-</mo><mn>2</mn><mi>a</mi></mrow></mfenced></math>. Combining like terms yields&nbsp;<math alttext=\"negative 64 equals negative a\"><mo>-</mo><mn>64</mn><mo>=</mo><mo>-</mo><mi>a</mi></math>, or <math alttext=\"a equals 64\"><mi>a</mi><mo>=</mo><mn>64</mn></math>. Since <math alttext=\"b equals minus 2 a\"><mi>b</mi><mo>=</mo><mo>-</mo><mn>2</mn><mi>a</mi></math>, substituting <math alttext=\"64\"><mn>64</mn>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math> into this equation gives <math alttext=\"b equals left parenthesis negative 2 right parenthesis left parenthesis 64 right parenthesis\"><mi>b</mi><mo>=</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced><mfenced><mn>64</mn></mfenced></math>, which yields&nbsp;<math alttext=\"b equals negative 128\"><mi>b</mi><mo>=</mo><mo>-</mo><mn>128</mn></math>. Thus, the value of&nbsp;<math alttext=\"a minus b\"><mi>a</mi><mo>-</mo><mi>b</mi></math> can be written as&nbsp;<math alttext=\"64 minus left parenthesis negative 128 right parenthesis\"><mn>64</mn><mo>-</mo><mo>(</mo><mo>-</mo><mn>128</mn><mo>)</mo></math>, which is <math alttext=\"192\"><mn>192</mn>\n</math>.</p>\n<p>Choice A is incorrect. This is the value of&nbsp;<math alttext=\"a plus b\"><mi>a</mi><mo>+</mo><mi>b</mi></math>, not&nbsp;<math alttext=\"a minus b\"><mi>a</mi><mo>-</mo><mi>b</mi></math>.</p>\n<p>Choice B is incorrect. This is the value of&nbsp;<math alttext=\"a minus 2\"><mi>a</mi><mo>-</mo><mn>2</mn></math>, not&nbsp;<math alttext=\"a minus b\"><mi>a</mi><mo>-</mo><mi>b</mi></math>.</p>\n<p>Choice C is incorrect. This is the value of&nbsp;<math alttext=\"2 a\"><mn>2</mn><mi>a</mi></math>, not <math alttext=\"a minus b\"><mi>a</mi><mo>-</mo><mi>b</mi></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959811,"pPcc":"SAT#H","questionId":"50f4cb9c","skill_cd":"H.B.","score_band_range_cd":7,"skill_desc":"Linear functions","createDate":1691007959811,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"f3a8f6e5-3640-4af9-a194-e13afbea670e","primary_class_cd":"H","uId":"7756c259-e1f6-4608-ae5a-1c2828d6a560","difficulty":"H"},"raw_detail":{"keys":["0a5167c9-3199-4d57-9213-7c14a9bafe7e"],"rationale":"<p>Choice D is correct. The table gives that <math alttext=\"f left parenthesis x right parenthesis equals 0\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mn>0</mn></math> when <math alttext=\"x equals 2\"><mi>x</mi><mo>=</mo><mn>2</mn></math>. Substituting 0 for <math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math> and <math alttext=\"2\"><mn>2</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> into the equation <math alttext=\"f left parenthesis x right parenthesis equals a x plus b\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>b</mi><mo>&nbsp;</mo></math>yields <math alttext=\"0 equals 2 a plus b\"><mn>0</mn><mo>=</mo><mn>2</mn><mi>a</mi><mo>+</mo><mi>b</mi></math>. Subtracting <math alttext=\"2 a\"><mrow>\n\t<mn>2</mn>\n\t<mi>a</mi>\n</mrow>\n</math> from both sides of this equation yields <math alttext=\"b equals minus 2 a\"><mi>b</mi><mo>=</mo><mo>-</mo><mn>2</mn><mi>a</mi></math>. The table gives that <math alttext=\"f left parenthesis x right parenthesis equals negative 64\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mo>-</mo><mn>64</mn></math> when <math alttext=\"x equals 1\"><mi>x</mi><mo>=</mo><mn>1</mn></math>. Substituting <math alttext=\"minus 2 a\"><mo>-</mo><mn>2</mn><mi>a</mi></math>&nbsp;for <math alttext=\"b\"><mi>b</mi>\n</math>, <math alttext=\"negative 64\"><mo>-</mo><mn>64</mn></math> for <math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>, and <math alttext=\"1\"><mn>1</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math>&nbsp;into the equation <math alttext=\"f left parenthesis x right parenthesis equals a x plus b\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields&nbsp;<math alttext=\"negative 64 equals a left parenthesis 1 right parenthesis plus left parenthesis minus 2 a right parenthesis\"><mo>-</mo><mn>64</mn><mo>=</mo><mi>a</mi><mfenced><mn>1</mn></mfenced><mo>+</mo><mfenced><mrow><mo>-</mo><mn>2</mn><mi>a</mi></mrow></mfenced></math>. Combining like terms yields&nbsp;<math alttext=\"negative 64 equals negative a\"><mo>-</mo><mn>64</mn><mo>=</mo><mo>-</mo><mi>a</mi></math>, or <math alttext=\"a equals 64\"><mi>a</mi><mo>=</mo><mn>64</mn></math>. Since <math alttext=\"b equals minus 2 a\"><mi>b</mi><mo>=</mo><mo>-</mo><mn>2</mn><mi>a</mi></math>, substituting <math alttext=\"64\"><mn>64</mn>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math> into this equation gives <math alttext=\"b equals left parenthesis negative 2 right parenthesis left parenthesis 64 right parenthesis\"><mi>b</mi><mo>=</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced><mfenced><mn>64</mn></mfenced></math>, which yields&nbsp;<math alttext=\"b equals negative 128\"><mi>b</mi><mo>=</mo><mo>-</mo><mn>128</mn></math>. Thus, the value of&nbsp;<math alttext=\"a minus b\"><mi>a</mi><mo>-</mo><mi>b</mi></math> can be written as&nbsp;<math alttext=\"64 minus left parenthesis negative 128 right parenthesis\"><mn>64</mn><mo>-</mo><mo>(</mo><mo>-</mo><mn>128</mn><mo>)</mo></math>, which is <math alttext=\"192\"><mn>192</mn>\n</math>.</p>\n<p>Choice A is incorrect. This is the value of&nbsp;<math alttext=\"a plus b\"><mi>a</mi><mo>+</mo><mi>b</mi></math>, not&nbsp;<math alttext=\"a minus b\"><mi>a</mi><mo>-</mo><mi>b</mi></math>.</p>\n<p>Choice B is incorrect. This is the value of&nbsp;<math alttext=\"a minus 2\"><mi>a</mi><mo>-</mo><mn>2</mn></math>, not&nbsp;<math alttext=\"a minus b\"><mi>a</mi><mo>-</mo><mi>b</mi></math>.</p>\n<p>Choice C is incorrect. This is the value of&nbsp;<math alttext=\"2 a\"><mn>2</mn><mi>a</mi></math>, not <math alttext=\"a minus b\"><mi>a</mi><mo>-</mo><mi>b</mi></math>.</p>","origin":"manifold","stem":"<figure class=\"table\"><figure class=\"table\"><figure class=\"table\"><table border=\"1\">\n<thead>\n<tr>\n<th style=\"width: 47.3489%; text-align: center;\" scope=\"col\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"width: 47.3489%; text-align: center;\" scope=\"col\"><math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math></th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"1\"><mn>1</mn>\n</math></td>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"negative 64\"><mo>-</mo><mn>64</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"2\"><mn>2</mn>\n</math></td>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\"width: 47.3489%; text-align: center;\"><math alttext=\"64\"><mn>64</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure></figure></figure>\n<p style=\"text-align: left;\">For the linear function <math alttext=\"f\"><mi>f</mi>\n</math>, the table shows three values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced></math>. Function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by <math alttext=\"f left parenthesis x right parenthesis equals a x plus b\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext=\"a\"><mi>a</mi>\n</math> and <math alttext=\"b\"><mi>b</mi>\n</math> are constants. What is the value of <math alttext=\"a minus b\"><mrow>\n\t<mi>a</mi>\n\t<mo>-</mo>\n\t<mi>b</mi>\n</mrow>\n</math>?</p>","externalid":"f3a8f6e5-3640-4af9-a194-e13afbea670e","templateid":"de9f1e54-0d8c-49fa-923b-e280998735e6","vaultid":"975aecdf-a7db-4cfe-82ab-172d3814a4bf","type":"mcq","answerOptions":[{"id":"f5277b7f-d5f2-4ca5-85e3-cda3b61ac4e7","content":"<p><math alttext=\"negative 64\"><mo>-</mo><mn>64</mn>\n</math></p>"},{"id":"89f70b06-d2e9-40a0-9e51-15f5a8572c97","content":"<p><math alttext=\"62\"><mn>62</mn>\n</math></p>"},{"id":"7baa67cc-6039-4228-8339-ec49ea3a01ff","content":"<p><math alttext=\"128\"><mn>128</mn>\n</math></p>"},{"id":"0a5167c9-3199-4d57-9213-7c14a9bafe7e","content":"<p><math alttext=\"192\"><mn>192</mn>\n</math></p>"}],"correct_answer":["D"]},"createDate":1691007959811,"updateDate":1691007959811}$SATQ$::jsonb, 1691007959811, 1691007959811),
    ($SATQ$51568fb9$SATQ$, $SATQ$e7a189d8-ea3e-4bf1-b0c2-bb03d3f29337$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">What is the slope of the graph of <math alttext="10 x minus 5 y equals negative 12"><mrow>
	<mrow>
		<mrow>
			<mn>10</mn>
			<mi>x</mi>
		</mrow>
		<mo>-</mo>
		<mrow>
			<mn>5</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mo>-</mo><mn>12</mn>
</mrow>
</math> in the <em>xy</em>-plane?</p>$SATQ$, $SATQ$[{"id":"8f256bf5-143d-4bb4-acb0-2ca713bb4616","content":"<p><math alttext=\"negative 2\"><mo>-</mo><mn>2</mn>\n</math></p>"},{"id":"385ed61e-96f0-41fe-9ee5-31101d10f77d","content":"<p><math alttext=\"negative five sixths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>5</mn>\n\t\t<mn>6</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"bfa5966b-7669-46d1-ae51-0e7df945d2e6","content":"<p><math alttext=\"five sixths\"><mfrac>\n\t<mn>5</mn>\n\t<mn>6</mn>\n</mfrac>\n</math></p>"},{"id":"f14da99d-0e1f-49fe-a14c-0e9334963287","content":"<p><math alttext=\"2\"><mn>2</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["f14da99d-0e1f-49fe-a14c-0e9334963287"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. A linear equation can be written in the form <math alttext="y equals m x plus b"><mrow>
<mi>y</mi>
<mo>=</mo>
<mrow>
<mrow>
<mi>m</mi>
<mi>x</mi>
</mrow>
<mo>+</mo>
<mi>b</mi>
</mrow>
</mrow>
</math>, where <math alttext="m"><mi>m</mi>
</math> is the slope of the graph of the equation in the <em>xy</em>-plane and <math alttext="left parenthesis 0 comma b right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math> is the <em>y</em>-intercept. Subtracting <math alttext="10 x"><mrow>
<mn>10</mn>
<mi>x</mi>
</mrow>
</math> from each side of the given equation, <math alttext="10 x minus 5 y equals negative 12"><mrow>
<mrow>
<mrow>
<mn>10</mn>
<mi>x</mi>
</mrow>
<mo>-</mo>
<mrow>
<mn>5</mn>
<mi>y</mi>
</mrow>
</mrow>
<mo>=</mo>
<mrow>
<mo>-</mo>
<mn>12</mn>
</mrow>
</mrow>
</math>, yields <math alttext="minus 5 y equals minus 10 x minus 12"><mrow>
<mrow>
<mo>-</mo>
<mn>5</mn>
<mi>y</mi>
</mrow>
<mo>=</mo>
<mrow>
<mrow>
<mo>-</mo>
<mn>10</mn>
<mi>x</mi>
</mrow>
<mo>-</mo>
<mn>12</mn>
</mrow>
</mrow>
</math>. Dividing each side of this equation by <math alttext="negative 5"><mrow>
<mo>-</mo>
<mn>5</mn>
</mrow>
</math> yields <math alttext="y equals 2 x plus StartFraction 12 Over 5 EndFraction"><mrow>
<mi>y</mi>
<mo>=</mo>
<mrow>
<mrow>
<mn>2</mn>
<mi>x</mi>
</mrow>
<mo>+</mo>
<mfrac>
<mn>12</mn>
<mn>5</mn>
</mfrac>
</mrow>
</mrow>
</math>. This equation is in the form <math alttext="y equals m x plus b"><mrow>
<mi>y</mi>
<mo>=</mo>
<mrow>
<mrow>
<mi>m</mi>
<mi>x</mi>
</mrow>
<mo>+</mo>
<mi>b</mi>
</mrow>
</mrow>
</math>, where <math alttext="m equals 2"><mrow>
<mi>m</mi>
<mo>=</mo>
<mn>2</mn>
</mrow>
</math>. Therefore, the slope of the graph of the given equation in the <em>xy</em>-plane is <math alttext="2"><mn>2</mn>
</math>.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"51568fb9","external_id":"e7a189d8-ea3e-4bf1-b0c2-bb03d3f29337","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"49a69edb-8b5a-4049-923a-56d70d03f28e","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">What is the slope of the graph of <math alttext=\"10 x minus 5 y equals negative 12\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>10</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mrow>\n\t\t\t<mn>5</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>12</mn>\n</mrow>\n</math> in the <em>xy</em>-plane?</p>","answerOptions":[{"id":"8f256bf5-143d-4bb4-acb0-2ca713bb4616","content":"<p><math alttext=\"negative 2\"><mo>-</mo><mn>2</mn>\n</math></p>"},{"id":"385ed61e-96f0-41fe-9ee5-31101d10f77d","content":"<p><math alttext=\"negative five sixths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>5</mn>\n\t\t<mn>6</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"bfa5966b-7669-46d1-ae51-0e7df945d2e6","content":"<p><math alttext=\"five sixths\"><mfrac>\n\t<mn>5</mn>\n\t<mn>6</mn>\n</mfrac>\n</math></p>"},{"id":"f14da99d-0e1f-49fe-a14c-0e9334963287","content":"<p><math alttext=\"2\"><mn>2</mn>\n</math></p>"}],"keys":["f14da99d-0e1f-49fe-a14c-0e9334963287"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. A linear equation can be written in the form <math alttext=\"y equals m x plus b\"><mrow>\n<mi>y</mi>\n<mo>=</mo>\n<mrow>\n<mrow>\n<mi>m</mi>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mi>b</mi>\n</mrow>\n</mrow>\n</math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope of the graph of the equation in the <em>xy</em>-plane and <math alttext=\"left parenthesis 0 comma b right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math> is the <em>y</em>-intercept. Subtracting <math alttext=\"10 x\"><mrow>\n<mn>10</mn>\n<mi>x</mi>\n</mrow>\n</math> from each side of the given equation, <math alttext=\"10 x minus 5 y equals negative 12\"><mrow>\n<mrow>\n<mrow>\n<mn>10</mn>\n<mi>x</mi>\n</mrow>\n<mo>-</mo>\n<mrow>\n<mn>5</mn>\n<mi>y</mi>\n</mrow>\n</mrow>\n<mo>=</mo>\n<mrow>\n<mo>-</mo>\n<mn>12</mn>\n</mrow>\n</mrow>\n</math>, yields <math alttext=\"minus 5 y equals minus 10 x minus 12\"><mrow>\n<mrow>\n<mo>-</mo>\n<mn>5</mn>\n<mi>y</mi>\n</mrow>\n<mo>=</mo>\n<mrow>\n<mrow>\n<mo>-</mo>\n<mn>10</mn>\n<mi>x</mi>\n</mrow>\n<mo>-</mo>\n<mn>12</mn>\n</mrow>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"negative 5\"><mrow>\n<mo>-</mo>\n<mn>5</mn>\n</mrow>\n</math> yields <math alttext=\"y equals 2 x plus StartFraction 12 Over 5 EndFraction\"><mrow>\n<mi>y</mi>\n<mo>=</mo>\n<mrow>\n<mrow>\n<mn>2</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mfrac>\n<mn>12</mn>\n<mn>5</mn>\n</mfrac>\n</mrow>\n</mrow>\n</math>. This equation is in the form <math alttext=\"y equals m x plus b\"><mrow>\n<mi>y</mi>\n<mo>=</mo>\n<mrow>\n<mrow>\n<mi>m</mi>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mi>b</mi>\n</mrow>\n</mrow>\n</math>, where <math alttext=\"m equals 2\"><mrow>\n<mi>m</mi>\n<mo>=</mo>\n<mn>2</mn>\n</mrow>\n</math>. Therefore, the slope of the graph of the given equation in the <em>xy</em>-plane is <math alttext=\"2\"><mn>2</mn>\n</math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554988,"pPcc":"SAT#H","questionId":"51568fb9","skill_cd":"H.C.","score_band_range_cd":4,"skill_desc":"Linear equations in two variables","createDate":1743430554988,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"e7a189d8-ea3e-4bf1-b0c2-bb03d3f29337","primary_class_cd":"H","uId":"49a69edb-8b5a-4049-923a-56d70d03f28e","difficulty":"M"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">What is the slope of the graph of <math alttext=\"10 x minus 5 y equals negative 12\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>10</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mrow>\n\t\t\t<mn>5</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>12</mn>\n</mrow>\n</math> in the <em>xy</em>-plane?</p>","keys":["f14da99d-0e1f-49fe-a14c-0e9334963287"],"answerOptions":[{"id":"8f256bf5-143d-4bb4-acb0-2ca713bb4616","content":"<p><math alttext=\"negative 2\"><mo>-</mo><mn>2</mn>\n</math></p>"},{"id":"385ed61e-96f0-41fe-9ee5-31101d10f77d","content":"<p><math alttext=\"negative five sixths\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>5</mn>\n\t\t<mn>6</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"bfa5966b-7669-46d1-ae51-0e7df945d2e6","content":"<p><math alttext=\"five sixths\"><mfrac>\n\t<mn>5</mn>\n\t<mn>6</mn>\n</mfrac>\n</math></p>"},{"id":"f14da99d-0e1f-49fe-a14c-0e9334963287","content":"<p><math alttext=\"2\"><mn>2</mn>\n</math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice D is correct. A linear equation can be written in the form <math alttext=\"y equals m x plus b\"><mrow>\n<mi>y</mi>\n<mo>=</mo>\n<mrow>\n<mrow>\n<mi>m</mi>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mi>b</mi>\n</mrow>\n</mrow>\n</math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope of the graph of the equation in the <em>xy</em>-plane and <math alttext=\"left parenthesis 0 comma b right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math> is the <em>y</em>-intercept. Subtracting <math alttext=\"10 x\"><mrow>\n<mn>10</mn>\n<mi>x</mi>\n</mrow>\n</math> from each side of the given equation, <math alttext=\"10 x minus 5 y equals negative 12\"><mrow>\n<mrow>\n<mrow>\n<mn>10</mn>\n<mi>x</mi>\n</mrow>\n<mo>-</mo>\n<mrow>\n<mn>5</mn>\n<mi>y</mi>\n</mrow>\n</mrow>\n<mo>=</mo>\n<mrow>\n<mo>-</mo>\n<mn>12</mn>\n</mrow>\n</mrow>\n</math>, yields <math alttext=\"minus 5 y equals minus 10 x minus 12\"><mrow>\n<mrow>\n<mo>-</mo>\n<mn>5</mn>\n<mi>y</mi>\n</mrow>\n<mo>=</mo>\n<mrow>\n<mrow>\n<mo>-</mo>\n<mn>10</mn>\n<mi>x</mi>\n</mrow>\n<mo>-</mo>\n<mn>12</mn>\n</mrow>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"negative 5\"><mrow>\n<mo>-</mo>\n<mn>5</mn>\n</mrow>\n</math> yields <math alttext=\"y equals 2 x plus StartFraction 12 Over 5 EndFraction\"><mrow>\n<mi>y</mi>\n<mo>=</mo>\n<mrow>\n<mrow>\n<mn>2</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mfrac>\n<mn>12</mn>\n<mn>5</mn>\n</mfrac>\n</mrow>\n</mrow>\n</math>. This equation is in the form <math alttext=\"y equals m x plus b\"><mrow>\n<mi>y</mi>\n<mo>=</mo>\n<mrow>\n<mrow>\n<mi>m</mi>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mi>b</mi>\n</mrow>\n</mrow>\n</math>, where <math alttext=\"m equals 2\"><mrow>\n<mi>m</mi>\n<mo>=</mo>\n<mn>2</mn>\n</mrow>\n</math>. Therefore, the slope of the graph of the given equation in the <em>xy</em>-plane is <math alttext=\"2\"><mn>2</mn>\n</math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>","externalid":"e7a189d8-ea3e-4bf1-b0c2-bb03d3f29337","correct_answer":["D"]},"createDate":1743430554988,"updateDate":1743430554988}$SATQ$::jsonb, 1743430554988, 1743430554988),
    ($SATQ$51aabd93$SATQ$, $SATQ$bcd38cac-e6c1-411f-ae0b-50e4ae48adc1$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="left parenthesis p plus 3 right parenthesis plus 8 equals 10"><mo>(</mo><mi>p</mi><mo>+</mo><mrow><mn>3</mn></mrow><mo>)</mo><mo>+</mo><mrow><mn>8</mn></mrow><mo>=</mo><mrow><mn>10</mn></mrow></math></p>
<p style="text-align: left;">What value of <math alttext="p"><mi>p</mi>
</math> is the solution to the given equation?</p>$SATQ$, $SATQ$[{"id":"c581a3f8-2c9f-4b22-8ee6-7990e73a0e39","content":"<p><math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math></p>"},{"id":"c5295a54-80ea-42a4-be9a-f110eb68de42","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"01d0ec94-becf-4eac-a42e-513d6d789263","content":"<p><math alttext=\"15\"><mn>15</mn>\n</math></p>"},{"id":"521f4b37-fb64-435a-b22b-4da7a6b3807a","content":"<p><math alttext=\"21\"><mn>21</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["c581a3f8-2c9f-4b22-8ee6-7990e73a0e39"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. Subtracting <math alttext="8"><mn>8</mn>
</math> from both sides of the given equation yields <math alttext="p plus 3 equals 2"><mrow>
	<mrow>
		<mi>p</mi>
		<mo>+</mo>
		<mn>3</mn>
	</mrow>
	<mo>=</mo>
	<mn>2</mn>
</mrow>
</math>. Subtracting <math alttext="3"><mn>3</mn>
</math> from both sides of this equation yields <math alttext="p equals negative 1"><mrow>
	<mi>p</mi>
	<mo>=</mo>
	<mo>-</mo><mn>1</mn>
</mrow>
</math>.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"51aabd93","external_id":"bcd38cac-e6c1-411f-ae0b-50e4ae48adc1","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"1c566d2e-7dea-4ff3-9ac5-6f1c9badd7bf","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"left parenthesis p plus 3 right parenthesis plus 8 equals 10\"><mo>(</mo><mi>p</mi><mo>+</mo><mrow><mn>3</mn></mrow><mo>)</mo><mo>+</mo><mrow><mn>8</mn></mrow><mo>=</mo><mrow><mn>10</mn></mrow></math></p>\n<p style=\"text-align: left;\">What value of <math alttext=\"p\"><mi>p</mi>\n</math> is the solution to the given equation?</p>","answerOptions":[{"id":"c581a3f8-2c9f-4b22-8ee6-7990e73a0e39","content":"<p><math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math></p>"},{"id":"c5295a54-80ea-42a4-be9a-f110eb68de42","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"01d0ec94-becf-4eac-a42e-513d6d789263","content":"<p><math alttext=\"15\"><mn>15</mn>\n</math></p>"},{"id":"521f4b37-fb64-435a-b22b-4da7a6b3807a","content":"<p><math alttext=\"21\"><mn>21</mn>\n</math></p>"}],"keys":["c581a3f8-2c9f-4b22-8ee6-7990e73a0e39"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. Subtracting <math alttext=\"8\"><mn>8</mn>\n</math> from both sides of the given equation yields <math alttext=\"p plus 3 equals 2\"><mrow>\n\t<mrow>\n\t\t<mi>p</mi>\n\t\t<mo>+</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>2</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"3\"><mn>3</mn>\n</math> from both sides of this equation yields <math alttext=\"p equals negative 1\"><mrow>\n\t<mi>p</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>1</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357387,"pPcc":"SAT#H","questionId":"51aabd93","skill_cd":"H.A.","score_band_range_cd":1,"skill_desc":"Linear equations in one variable","createDate":1730147357387,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"bcd38cac-e6c1-411f-ae0b-50e4ae48adc1","primary_class_cd":"H","uId":"1c566d2e-7dea-4ff3-9ac5-6f1c9badd7bf","difficulty":"E"},"raw_detail":{"answerOptions":[{"content":"<p><math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math></p>","id":"c581a3f8-2c9f-4b22-8ee6-7990e73a0e39"},{"content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>","id":"c5295a54-80ea-42a4-be9a-f110eb68de42"},{"content":"<p><math alttext=\"15\"><mn>15</mn>\n</math></p>","id":"01d0ec94-becf-4eac-a42e-513d6d789263"},{"content":"<p><math alttext=\"21\"><mn>21</mn>\n</math></p>","id":"521f4b37-fb64-435a-b22b-4da7a6b3807a"}],"externalid":"bcd38cac-e6c1-411f-ae0b-50e4ae48adc1","keys":["c581a3f8-2c9f-4b22-8ee6-7990e73a0e39"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. Subtracting <math alttext=\"8\"><mn>8</mn>\n</math> from both sides of the given equation yields <math alttext=\"p plus 3 equals 2\"><mrow>\n\t<mrow>\n\t\t<mi>p</mi>\n\t\t<mo>+</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>2</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"3\"><mn>3</mn>\n</math> from both sides of this equation yields <math alttext=\"p equals negative 1\"><mrow>\n\t<mi>p</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>1</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","stem":"<p style=\"text-align: center;\"><math alttext=\"left parenthesis p plus 3 right parenthesis plus 8 equals 10\"><mo>(</mo><mi>p</mi><mo>+</mo><mrow><mn>3</mn></mrow><mo>)</mo><mo>+</mo><mrow><mn>8</mn></mrow><mo>=</mo><mrow><mn>10</mn></mrow></math></p>\n<p style=\"text-align: left;\">What value of <math alttext=\"p\"><mi>p</mi>\n</math> is the solution to the given equation?</p>","type":"mcq","correct_answer":["A"]},"createDate":1730147357387,"updateDate":1730147357387}$SATQ$::jsonb, 1730147357387, 1730147357387),
    ($SATQ$520c8177$SATQ$, $SATQ$31182667-4cd9-4dea-af99-85f88f84bfa1$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">A veterinarian recommends that each day a certain rabbit should eat <math alttext="25"><mn>25</mn>
</math> calories per pound of the rabbit&rsquo;s weight, plus an additional <math alttext="11"><mn>11</mn>
</math> calories. Which equation represents this situation, where <math alttext="c"><mi>c</mi>
</math> is the total number of calories the veterinarian recommends the rabbit should eat each day if the rabbit&rsquo;s weight is <math alttext="x"><mi>x</mi>
</math> pounds?</p>$SATQ$, $SATQ$[{"id":"f8e22585-a04c-4cb3-b210-a2d5191dae8c","content":"<p><math alttext=\"c equals 25 x\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>25</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"e10c1a2a-3d99-406b-9ade-a688859502d6","content":"<p><math alttext=\"c equals 36 x\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>36</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"521691a3-24c1-4cce-8722-38e15f29ffe4","content":"<p><math alttext=\"c equals 11 x plus 25\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>25</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"6800b5a1-f22c-4f0c-91d0-8a90ea54646c","content":"<p><math alttext=\"c equals 25 x plus 11\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>25</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>11</mn>\n\t</mrow>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["6800b5a1-f22c-4f0c-91d0-8a90ea54646c"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. It&rsquo;s given that a veterinarian recommends that each day the rabbit should eat <math alttext="25"><mn>25</mn>
</math> calories per pound of the rabbit&rsquo;s weight, plus an additional <math alttext="11"><mn>11</mn>
</math> calories. If the rabbit&rsquo;s weight is <math alttext="x"><mi>x</mi>
</math> pounds, then multiplying <math alttext="25"><mn>25</mn>
</math> calories per pound by the rabbit&rsquo;s weight, <math alttext="x"><mi>x</mi>
</math> pounds, yields <math alttext="25 x"><mrow>
	<mn>25</mn>
	<mi>x</mi>
</mrow>
</math> calories. Adding the additional <math alttext="11"><mn>11</mn>
</math> calories that the rabbit should eat each day yields <math alttext="25 x plus 11"><mrow>
	<mrow>
		<mn>25</mn>
		<mi>x</mi>
	</mrow>
	<mo>+</mo>
	<mn>11</mn>
</mrow>
</math> calories. It&rsquo;s given that <math alttext="c"><mi>c</mi>
</math> is the total number of calories the veterinarian recommends the rabbit should eat each day if the rabbit&rsquo;s weight is <math alttext="x"><mi>x</mi>
</math> pounds. Therefore, this situation can be represented by the equation <math alttext="c equals 25 x plus 11"><mrow>
	<mi>c</mi>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mn>25</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>11</mn>
	</mrow>
</mrow>
</math>.</p>
<p style="text-align: left;">Choice A is incorrect. This equation represents a situation where a veterinarian recommends that each day the rabbit should eat <math alttext="25"><mn>25</mn>
</math> calories per pound of the rabbit&rsquo;s weight.</p>
<p style="text-align: left;">Choice B is incorrect. This equation represents a situation where a veterinarian recommends that each day the rabbit should eat <math alttext="25 plus 11"><mn>25</mn><mo>+</mo><mn>11</mn></math>, or <math alttext="36"><mn>36</mn>
</math>, calories per pound of the rabbit&rsquo;s weight.</p>
<p style="text-align: left;">Choice C is incorrect. This equation represents a situation where a veterinarian recommends that each day the rabbit should eat <math alttext="11"><mn>11</mn>
</math> calories per pound of the rabbit&rsquo;s weight, plus an additional <math alttext="25"><mn>25</mn>
</math> calories.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"520c8177","external_id":"31182667-4cd9-4dea-af99-85f88f84bfa1","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"05cfb948-90af-4646-b5fa-e62999f0b92e","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">A veterinarian recommends that each day a certain rabbit should eat <math alttext=\"25\"><mn>25</mn>\n</math> calories per pound of the rabbit&rsquo;s weight, plus an additional <math alttext=\"11\"><mn>11</mn>\n</math> calories. Which equation represents this situation, where <math alttext=\"c\"><mi>c</mi>\n</math> is the total number of calories the veterinarian recommends the rabbit should eat each day if the rabbit&rsquo;s weight is <math alttext=\"x\"><mi>x</mi>\n</math> pounds?</p>","answerOptions":[{"id":"f8e22585-a04c-4cb3-b210-a2d5191dae8c","content":"<p><math alttext=\"c equals 25 x\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>25</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"e10c1a2a-3d99-406b-9ade-a688859502d6","content":"<p><math alttext=\"c equals 36 x\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>36</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"521691a3-24c1-4cce-8722-38e15f29ffe4","content":"<p><math alttext=\"c equals 11 x plus 25\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>25</mn>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"6800b5a1-f22c-4f0c-91d0-8a90ea54646c","content":"<p><math alttext=\"c equals 25 x plus 11\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>25</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>11</mn>\n\t</mrow>\n</mrow>\n</math></p>"}],"keys":["6800b5a1-f22c-4f0c-91d0-8a90ea54646c"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. It&rsquo;s given that a veterinarian recommends that each day the rabbit should eat <math alttext=\"25\"><mn>25</mn>\n</math> calories per pound of the rabbit&rsquo;s weight, plus an additional <math alttext=\"11\"><mn>11</mn>\n</math> calories. If the rabbit&rsquo;s weight is <math alttext=\"x\"><mi>x</mi>\n</math> pounds, then multiplying <math alttext=\"25\"><mn>25</mn>\n</math> calories per pound by the rabbit&rsquo;s weight, <math alttext=\"x\"><mi>x</mi>\n</math> pounds, yields <math alttext=\"25 x\"><mrow>\n\t<mn>25</mn>\n\t<mi>x</mi>\n</mrow>\n</math> calories. Adding the additional <math alttext=\"11\"><mn>11</mn>\n</math> calories that the rabbit should eat each day yields <math alttext=\"25 x plus 11\"><mrow>\n\t<mrow>\n\t\t<mn>25</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>11</mn>\n</mrow>\n</math> calories. It&rsquo;s given that <math alttext=\"c\"><mi>c</mi>\n</math> is the total number of calories the veterinarian recommends the rabbit should eat each day if the rabbit&rsquo;s weight is <math alttext=\"x\"><mi>x</mi>\n</math> pounds. Therefore, this situation can be represented by the equation <math alttext=\"c equals 25 x plus 11\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>25</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>11</mn>\n\t</mrow>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This equation represents a situation where a veterinarian recommends that each day the rabbit should eat <math alttext=\"25\"><mn>25</mn>\n</math> calories per pound of the rabbit&rsquo;s weight.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This equation represents a situation where a veterinarian recommends that each day the rabbit should eat <math alttext=\"25 plus 11\"><mn>25</mn><mo>+</mo><mn>11</mn></math>, or <math alttext=\"36\"><mn>36</mn>\n</math>, calories per pound of the rabbit&rsquo;s weight.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This equation represents a situation where a veterinarian recommends that each day the rabbit should eat <math alttext=\"11\"><mn>11</mn>\n</math> calories per pound of the rabbit&rsquo;s weight, plus an additional <math alttext=\"25\"><mn>25</mn>\n</math> calories.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357388,"pPcc":"SAT#H","questionId":"520c8177","skill_cd":"H.B.","score_band_range_cd":2,"skill_desc":"Linear functions","createDate":1730147357388,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"31182667-4cd9-4dea-af99-85f88f84bfa1","primary_class_cd":"H","uId":"05cfb948-90af-4646-b5fa-e62999f0b92e","difficulty":"E"},"raw_detail":{"answerOptions":[{"content":"<p><math alttext=\"c equals 25 x\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>25</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n</mrow>\n</math></p>","id":"f8e22585-a04c-4cb3-b210-a2d5191dae8c"},{"content":"<p><math alttext=\"c equals 36 x\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>36</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n</mrow>\n</math></p>","id":"e10c1a2a-3d99-406b-9ade-a688859502d6"},{"content":"<p><math alttext=\"c equals 11 x plus 25\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>25</mn>\n\t</mrow>\n</mrow>\n</math></p>","id":"521691a3-24c1-4cce-8722-38e15f29ffe4"},{"content":"<p><math alttext=\"c equals 25 x plus 11\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>25</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>11</mn>\n\t</mrow>\n</mrow>\n</math></p>","id":"6800b5a1-f22c-4f0c-91d0-8a90ea54646c"}],"externalid":"31182667-4cd9-4dea-af99-85f88f84bfa1","keys":["6800b5a1-f22c-4f0c-91d0-8a90ea54646c"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. It&rsquo;s given that a veterinarian recommends that each day the rabbit should eat <math alttext=\"25\"><mn>25</mn>\n</math> calories per pound of the rabbit&rsquo;s weight, plus an additional <math alttext=\"11\"><mn>11</mn>\n</math> calories. If the rabbit&rsquo;s weight is <math alttext=\"x\"><mi>x</mi>\n</math> pounds, then multiplying <math alttext=\"25\"><mn>25</mn>\n</math> calories per pound by the rabbit&rsquo;s weight, <math alttext=\"x\"><mi>x</mi>\n</math> pounds, yields <math alttext=\"25 x\"><mrow>\n\t<mn>25</mn>\n\t<mi>x</mi>\n</mrow>\n</math> calories. Adding the additional <math alttext=\"11\"><mn>11</mn>\n</math> calories that the rabbit should eat each day yields <math alttext=\"25 x plus 11\"><mrow>\n\t<mrow>\n\t\t<mn>25</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>11</mn>\n</mrow>\n</math> calories. It&rsquo;s given that <math alttext=\"c\"><mi>c</mi>\n</math> is the total number of calories the veterinarian recommends the rabbit should eat each day if the rabbit&rsquo;s weight is <math alttext=\"x\"><mi>x</mi>\n</math> pounds. Therefore, this situation can be represented by the equation <math alttext=\"c equals 25 x plus 11\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>25</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>11</mn>\n\t</mrow>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This equation represents a situation where a veterinarian recommends that each day the rabbit should eat <math alttext=\"25\"><mn>25</mn>\n</math> calories per pound of the rabbit&rsquo;s weight.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This equation represents a situation where a veterinarian recommends that each day the rabbit should eat <math alttext=\"25 plus 11\"><mn>25</mn><mo>+</mo><mn>11</mn></math>, or <math alttext=\"36\"><mn>36</mn>\n</math>, calories per pound of the rabbit&rsquo;s weight.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This equation represents a situation where a veterinarian recommends that each day the rabbit should eat <math alttext=\"11\"><mn>11</mn>\n</math> calories per pound of the rabbit&rsquo;s weight, plus an additional <math alttext=\"25\"><mn>25</mn>\n</math> calories.</p>","stem":"<p style=\"text-align: left;\">A veterinarian recommends that each day a certain rabbit should eat <math alttext=\"25\"><mn>25</mn>\n</math> calories per pound of the rabbit&rsquo;s weight, plus an additional <math alttext=\"11\"><mn>11</mn>\n</math> calories. Which equation represents this situation, where <math alttext=\"c\"><mi>c</mi>\n</math> is the total number of calories the veterinarian recommends the rabbit should eat each day if the rabbit&rsquo;s weight is <math alttext=\"x\"><mi>x</mi>\n</math> pounds?</p>","type":"mcq","correct_answer":["D"]},"createDate":1730147357388,"updateDate":1730147357388}$SATQ$::jsonb, 1730147357388, 1730147357388),
    ($SATQ$52a8ef85$SATQ$, $SATQ$7a8622f4-3e4b-4373-a170-e62a46579a04$SATQ$::uuid, $SATQ$054e2b7f-9d7f-4cb6-a0fb-2d3dff07963a$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">The equation <math alttext="40 x plus 20 y equals 160"><mrow>
	<mrow>
		<mrow>
			<mn>40</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>20</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>160</mn>
</mrow>
</math> represents the number of sweaters, <math alttext="x"><mi>x</mi>
</math>, and number of shirts, <math alttext="y"><mi>y</mi>
</math>, that Yesenia purchased for <math alttext="dollar sign 160"><mo>$</mo><mn>160</mn></math>. If Yesenia purchased <math alttext="2"><mn>2</mn>
</math> sweaters, how many shirts did she purchase? &nbsp;</p>$SATQ$, $SATQ$[{"id":"936920bd-03a2-4973-9f71-5918112aeddf","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"e56ec836-2c67-4324-9903-36054bb3b0f1","content":"<p><math alttext=\"4\"><mn>4</mn>\n</math></p>"},{"id":"60e20598-2950-4d9a-9e94-89f152dd0c06","content":"<p><math alttext=\"8\"><mn>8</mn>\n</math></p>"},{"id":"8eb1777d-3adb-4f9f-8e0f-c20c6b345024","content":"<p><math alttext=\"40\"><mn>40</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["e56ec836-2c67-4324-9903-36054bb3b0f1"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. It's given that the equation <math alttext="40 x plus 20 y equals 160"><mrow>
	<mrow>
		<mrow>
			<mn>40</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>20</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>160</mn>
</mrow>
</math> represents the number of sweaters, <math alttext="x"><mi>x</mi>
</math>, and the number of shirts, <math alttext="y"><mi>y</mi>
</math>, that Yesenia purchased for <math alttext="dollar sign 160"><mo>$</mo><mn>160</mn></math>. If Yesenia purchased <math alttext="2"><mn>2</mn>
</math> sweaters, the number of shirts she purchased can be calculated by substituting <math alttext="2"><mn>2</mn>
</math> for <math alttext="x"><mi>x</mi>
</math> in the given equation, which yields <math alttext="40 left parenthesis 2 right parenthesis plus 20 y equals 160"><mn>40</mn><mfenced><mn>2</mn></mfenced><mo>+</mo><mn>20</mn><mi>y</mi><mo>=</mo><mn>160</mn></math>, or <math alttext="80 plus 20 y equals 160"><mn>80</mn><mo>+</mo><mn>20</mn><mi>y</mi><mo>=</mo><mn>160</mn></math>. Subtracting <math alttext="80"><mn>80</mn>
</math> from both sides of this equation yields <math alttext="20 y equals 80"><mrow>
	<mrow>
		<mn>20</mn>
		<mi>y</mi>
	</mrow>
	<mo>=</mo>
	<mn>80</mn>
</mrow>
</math>. Dividing both sides of this equation by <math alttext="20"><mn>20</mn>
</math> yields <math alttext="y equals 4"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mn>4</mn>
</mrow>
</math>. Therefore, if Yesenia purchased <math alttext="2"><mn>2</mn>
</math> sweaters, she purchased <math alttext="4"><mn>4</mn>
</math> shirts.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice C is incorrect. This is the number of shirts Yesenia purchased if she purchased <math alttext="0"><mn>0</mn>
</math> sweaters.</p>
<p>Choice D is incorrect. This is the price, in dollars, for each sweater, not the number of shirts Yesenia purchased.&nbsp;</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"52a8ef85","external_id":"7a8622f4-3e4b-4373-a170-e62a46579a04","disclosed_item_id":null,"source":"qbank","vaultid":"054e2b7f-9d7f-4cb6-a0fb-2d3dff07963a","uId":"8744c1d2-c312-4fce-9f95-78519cd5bb71","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">The equation <math alttext=\"40 x plus 20 y equals 160\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>40</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>20</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>160</mn>\n</mrow>\n</math> represents the number of sweaters, <math alttext=\"x\"><mi>x</mi>\n</math>, and number of shirts, <math alttext=\"y\"><mi>y</mi>\n</math>, that Yesenia purchased for <math alttext=\"dollar sign 160\"><mo>$</mo><mn>160</mn></math>. If Yesenia purchased <math alttext=\"2\"><mn>2</mn>\n</math> sweaters, how many shirts did she purchase? &nbsp;</p>","answerOptions":[{"id":"936920bd-03a2-4973-9f71-5918112aeddf","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"e56ec836-2c67-4324-9903-36054bb3b0f1","content":"<p><math alttext=\"4\"><mn>4</mn>\n</math></p>"},{"id":"60e20598-2950-4d9a-9e94-89f152dd0c06","content":"<p><math alttext=\"8\"><mn>8</mn>\n</math></p>"},{"id":"8eb1777d-3adb-4f9f-8e0f-c20c6b345024","content":"<p><math alttext=\"40\"><mn>40</mn>\n</math></p>"}],"keys":["e56ec836-2c67-4324-9903-36054bb3b0f1"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. It's given that the equation <math alttext=\"40 x plus 20 y equals 160\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>40</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>20</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>160</mn>\n</mrow>\n</math> represents the number of sweaters, <math alttext=\"x\"><mi>x</mi>\n</math>, and the number of shirts, <math alttext=\"y\"><mi>y</mi>\n</math>, that Yesenia purchased for <math alttext=\"dollar sign 160\"><mo>$</mo><mn>160</mn></math>. If Yesenia purchased <math alttext=\"2\"><mn>2</mn>\n</math> sweaters, the number of shirts she purchased can be calculated by substituting <math alttext=\"2\"><mn>2</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> in the given equation, which yields <math alttext=\"40 left parenthesis 2 right parenthesis plus 20 y equals 160\"><mn>40</mn><mfenced><mn>2</mn></mfenced><mo>+</mo><mn>20</mn><mi>y</mi><mo>=</mo><mn>160</mn></math>, or <math alttext=\"80 plus 20 y equals 160\"><mn>80</mn><mo>+</mo><mn>20</mn><mi>y</mi><mo>=</mo><mn>160</mn></math>. Subtracting <math alttext=\"80\"><mn>80</mn>\n</math> from both sides of this equation yields <math alttext=\"20 y equals 80\"><mrow>\n\t<mrow>\n\t\t<mn>20</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>80</mn>\n</mrow>\n</math>. Dividing both sides of this equation by <math alttext=\"20\"><mn>20</mn>\n</math> yields <math alttext=\"y equals 4\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math>. Therefore, if Yesenia purchased <math alttext=\"2\"><mn>2</mn>\n</math> sweaters, she purchased <math alttext=\"4\"><mn>4</mn>\n</math> shirts.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect. This is the number of shirts Yesenia purchased if she purchased <math alttext=\"0\"><mn>0</mn>\n</math> sweaters.</p>\n<p>Choice D is incorrect. This is the price, in dollars, for each sweater, not the number of shirts Yesenia purchased.&nbsp;</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959815,"pPcc":"SAT#H","questionId":"52a8ef85","skill_cd":"H.C.","score_band_range_cd":3,"skill_desc":"Linear equations in two variables","createDate":1691007959815,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"7a8622f4-3e4b-4373-a170-e62a46579a04","primary_class_cd":"H","uId":"8744c1d2-c312-4fce-9f95-78519cd5bb71","difficulty":"E"},"raw_detail":{"keys":["e56ec836-2c67-4324-9903-36054bb3b0f1"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. It's given that the equation <math alttext=\"40 x plus 20 y equals 160\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>40</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>20</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>160</mn>\n</mrow>\n</math> represents the number of sweaters, <math alttext=\"x\"><mi>x</mi>\n</math>, and the number of shirts, <math alttext=\"y\"><mi>y</mi>\n</math>, that Yesenia purchased for <math alttext=\"dollar sign 160\"><mo>$</mo><mn>160</mn></math>. If Yesenia purchased <math alttext=\"2\"><mn>2</mn>\n</math> sweaters, the number of shirts she purchased can be calculated by substituting <math alttext=\"2\"><mn>2</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> in the given equation, which yields <math alttext=\"40 left parenthesis 2 right parenthesis plus 20 y equals 160\"><mn>40</mn><mfenced><mn>2</mn></mfenced><mo>+</mo><mn>20</mn><mi>y</mi><mo>=</mo><mn>160</mn></math>, or <math alttext=\"80 plus 20 y equals 160\"><mn>80</mn><mo>+</mo><mn>20</mn><mi>y</mi><mo>=</mo><mn>160</mn></math>. Subtracting <math alttext=\"80\"><mn>80</mn>\n</math> from both sides of this equation yields <math alttext=\"20 y equals 80\"><mrow>\n\t<mrow>\n\t\t<mn>20</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>80</mn>\n</mrow>\n</math>. Dividing both sides of this equation by <math alttext=\"20\"><mn>20</mn>\n</math> yields <math alttext=\"y equals 4\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math>. Therefore, if Yesenia purchased <math alttext=\"2\"><mn>2</mn>\n</math> sweaters, she purchased <math alttext=\"4\"><mn>4</mn>\n</math> shirts.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect. This is the number of shirts Yesenia purchased if she purchased <math alttext=\"0\"><mn>0</mn>\n</math> sweaters.</p>\n<p>Choice D is incorrect. This is the price, in dollars, for each sweater, not the number of shirts Yesenia purchased.&nbsp;</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">The equation <math alttext=\"40 x plus 20 y equals 160\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>40</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>20</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>160</mn>\n</mrow>\n</math> represents the number of sweaters, <math alttext=\"x\"><mi>x</mi>\n</math>, and number of shirts, <math alttext=\"y\"><mi>y</mi>\n</math>, that Yesenia purchased for <math alttext=\"dollar sign 160\"><mo>$</mo><mn>160</mn></math>. If Yesenia purchased <math alttext=\"2\"><mn>2</mn>\n</math> sweaters, how many shirts did she purchase? &nbsp;</p>","externalid":"7a8622f4-3e4b-4373-a170-e62a46579a04","templateid":"0e665228-f658-4240-8f4d-e762d542eace","vaultid":"054e2b7f-9d7f-4cb6-a0fb-2d3dff07963a","type":"mcq","answerOptions":[{"id":"936920bd-03a2-4973-9f71-5918112aeddf","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"e56ec836-2c67-4324-9903-36054bb3b0f1","content":"<p><math alttext=\"4\"><mn>4</mn>\n</math></p>"},{"id":"60e20598-2950-4d9a-9e94-89f152dd0c06","content":"<p><math alttext=\"8\"><mn>8</mn>\n</math></p>"},{"id":"8eb1777d-3adb-4f9f-8e0f-c20c6b345024","content":"<p><math alttext=\"40\"><mn>40</mn>\n</math></p>"}],"correct_answer":["B"]},"createDate":1691007959815,"updateDate":1691007959815}$SATQ$::jsonb, 1691007959815, 1691007959815)
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
