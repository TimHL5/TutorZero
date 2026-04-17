-- batch 90/138 (25 rows)
INSERT INTO sat_questions (question_id, external_id, vault_id, disclosed_item_id, source, program, test_type, test_type_desc, domain, primary_class_cd, skill_cd, skill_desc, difficulty, score_band_range_cd, question_type, stimulus_html, stem_html, answer_options, correct_answer, answer_keys, rationale_html, correct_answer_extracted_from_rationale, image_count, parent_template_name, parent_template_id, template_cluster_id, template_cluster_name, origin, position, answer_style, section, raw_payload, created_date, updated_date) VALUES
    ($SATQ$ece00725$SATQ$, $SATQ$f0db62a7-74c8-4e51-91dd-8c8b80649a49$SATQ$::uuid, $SATQ$91e80815-e437-4123-b32a-c25631b7e0e8$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">Connor has <math alttext="c"><mi>c</mi>
</math> dollars and Maria has <math alttext="m"><mi>m</mi>
</math> dollars. Connor has <math alttext="4"><mn>4</mn>
</math>&nbsp;times as many dollars as Maria, and together they have a total of <math alttext="dollar sign 25.00"><mo>$</mo><mn>25.00</mn>
</math>. Which system of equations represents this situation?</p>$SATQ$, $SATQ$[{"id":"8ca10533-20a6-4230-af4c-f332c764b0c0","content":"<p><math alttext=\"c equals 4 m\"><mi>c</mi><mo>=</mo><mn>4</mn><mi>m</mi></math></p>\n<p><math alttext=\"c plus m equals 25\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math></p>"},{"id":"5d62c273-ac17-45f3-a36a-961dca62b052","content":"<p><math alttext=\"m equals 4 c\"><mi>m</mi><mo>=</mo><mn>4</mn><mi>c</mi></math></p>\n<p><math alttext=\"c plus m equals 25\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math></p>"},{"id":"c51c2bf1-7798-4cce-8a00-e890c4836c1b","content":"<p><math alttext=\"c equals 25 m\"><mi>c</mi><mo>=</mo><mn>25</mn><mi>m</mi></math></p>\n<p><math alttext=\"c plus m equals 4\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math></p>"},{"id":"770c34ef-d478-483e-aa3b-a5fc03c88b71","content":"<p><math alttext=\"m equals 25 c\"><mi>m</mi><mo>=</mo><mn>25</mn><mi>c</mi></math></p>\n<p><math alttext=\"c plus m equals 4\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["8ca10533-20a6-4230-af4c-f332c764b0c0"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It&rsquo;s given that Connor has <math alttext="c"><mi>c</mi>
</math> dollars, Maria has <math alttext="m"><mi>m</mi>
</math> dollars, and Connor has <math alttext="4"><mn>4</mn>
</math> times as many dollars as Maria. This can be represented by the equation <math alttext="c equals 4 m"><mrow>
	<mi>c</mi>
	<mo>=</mo>
	<mrow>
		<mn>4</mn>
		<mi>m</mi>
	</mrow>
</mrow>
</math>. It&rsquo;s also given that together, Connor and Maria have a total of <math alttext="dollar sign 25.00"><mo>$</mo><mn>25.00</mn></math>, which can be represented by the equation <math alttext="c plus m equals 25"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math>. Therefore, the system consisting of the equations <math alttext="c equals 4 m"><mrow>
	<mi>c</mi>
	<mo>=</mo>
	<mrow>
		<mn>4</mn>
		<mi>m</mi>
	</mrow>
</mrow>
</math> and <math alttext="c plus m equals 25"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math> represents this situation.</p>
<p style="text-align: left;">Choice B is incorrect. The equation <math alttext="m equals 4 c"><mrow>
	<mi>m</mi>
	<mo>=</mo>
	<mrow>
		<mn>4</mn>
		<mi>c</mi>
	</mrow>
</mrow>
</math> represents a situation where Maria has <math alttext="4"><mn>4</mn>
</math> times as many dollars as Connor, rather than the situation where Connor has <math alttext="4"><mn>4</mn>
</math> times as many dollars as Maria.</p>
<p style="text-align: left;">Choice C is incorrect. The equation <math alttext="c equals 25 m"><mrow>
	<mi>c</mi>
	<mo>=</mo>
	<mrow>
		<mn>25</mn>
		<mi>m</mi>
	</mrow>
</mrow>
</math> represents a situation where Connor has <math alttext="25"><mn>25</mn>
</math> times, rather than <math alttext="4"><mn>4</mn>
</math> times, as many dollars as Maria. The equation <math alttext="c plus m equals 4"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math> represents a situation where Connor and Maria together have a total of <math alttext="dollar sign 4.00"><mo>$</mo><mn>4.00</mn></math>, rather than <math alttext="dollar sign 25.00"><mo>$</mo><mn>25.00</mn></math>.</p>
<p style="text-align: left;">Choice D is incorrect. The equation <math alttext="m equals 25 c"><mrow>
	<mi>m</mi>
	<mo>=</mo>
	<mrow>
		<mn>25</mn>
		<mi>c</mi>
	</mrow>
</mrow>
</math> represents a situation where Maria has <math alttext="25"><mn>25</mn>
</math> times as many dollars as Connor, rather than the situation where Connor has <math alttext="4"><mn>4</mn>
</math> times as many dollars as Maria. The equation <math alttext="c plus m equals 4"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math> represents a situation where Connor and Maria together have a total of <math alttext="dollar sign 4.00"><mo>$</mo><mn>4.00</mn></math>, rather than <math alttext="dollar sign 25.00"><mo>$</mo><mn>25.00</mn></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"ece00725","external_id":"f0db62a7-74c8-4e51-91dd-8c8b80649a49","disclosed_item_id":null,"source":"qbank","vaultid":"91e80815-e437-4123-b32a-c25631b7e0e8","uId":"97fe0864-941b-42ec-854a-281701c0b8c5","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">Connor has <math alttext=\"c\"><mi>c</mi>\n</math> dollars and Maria has <math alttext=\"m\"><mi>m</mi>\n</math> dollars. Connor has <math alttext=\"4\"><mn>4</mn>\n</math>&nbsp;times as many dollars as Maria, and together they have a total of <math alttext=\"dollar sign 25.00\"><mo>$</mo><mn>25.00</mn>\n</math>. Which system of equations represents this situation?</p>","answerOptions":[{"id":"8ca10533-20a6-4230-af4c-f332c764b0c0","content":"<p><math alttext=\"c equals 4 m\"><mi>c</mi><mo>=</mo><mn>4</mn><mi>m</mi></math></p>\n<p><math alttext=\"c plus m equals 25\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math></p>"},{"id":"5d62c273-ac17-45f3-a36a-961dca62b052","content":"<p><math alttext=\"m equals 4 c\"><mi>m</mi><mo>=</mo><mn>4</mn><mi>c</mi></math></p>\n<p><math alttext=\"c plus m equals 25\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math></p>"},{"id":"c51c2bf1-7798-4cce-8a00-e890c4836c1b","content":"<p><math alttext=\"c equals 25 m\"><mi>c</mi><mo>=</mo><mn>25</mn><mi>m</mi></math></p>\n<p><math alttext=\"c plus m equals 4\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math></p>"},{"id":"770c34ef-d478-483e-aa3b-a5fc03c88b71","content":"<p><math alttext=\"m equals 25 c\"><mi>m</mi><mo>=</mo><mn>25</mn><mi>c</mi></math></p>\n<p><math alttext=\"c plus m equals 4\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math></p>"}],"keys":["8ca10533-20a6-4230-af4c-f332c764b0c0"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It&rsquo;s given that Connor has <math alttext=\"c\"><mi>c</mi>\n</math> dollars, Maria has <math alttext=\"m\"><mi>m</mi>\n</math> dollars, and Connor has <math alttext=\"4\"><mn>4</mn>\n</math> times as many dollars as Maria. This can be represented by the equation <math alttext=\"c equals 4 m\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>m</mi>\n\t</mrow>\n</mrow>\n</math>. It&rsquo;s also given that together, Connor and Maria have a total of <math alttext=\"dollar sign 25.00\"><mo>$</mo><mn>25.00</mn></math>, which can be represented by the equation <math alttext=\"c plus m equals 25\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math>. Therefore, the system consisting of the equations <math alttext=\"c equals 4 m\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>m</mi>\n\t</mrow>\n</mrow>\n</math> and <math alttext=\"c plus m equals 25\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math> represents this situation.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. The equation <math alttext=\"m equals 4 c\"><mrow>\n\t<mi>m</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>c</mi>\n\t</mrow>\n</mrow>\n</math> represents a situation where Maria has <math alttext=\"4\"><mn>4</mn>\n</math> times as many dollars as Connor, rather than the situation where Connor has <math alttext=\"4\"><mn>4</mn>\n</math> times as many dollars as Maria.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. The equation <math alttext=\"c equals 25 m\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>25</mn>\n\t\t<mi>m</mi>\n\t</mrow>\n</mrow>\n</math> represents a situation where Connor has <math alttext=\"25\"><mn>25</mn>\n</math> times, rather than <math alttext=\"4\"><mn>4</mn>\n</math> times, as many dollars as Maria. The equation <math alttext=\"c plus m equals 4\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math> represents a situation where Connor and Maria together have a total of <math alttext=\"dollar sign 4.00\"><mo>$</mo><mn>4.00</mn></math>, rather than <math alttext=\"dollar sign 25.00\"><mo>$</mo><mn>25.00</mn></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. The equation <math alttext=\"m equals 25 c\"><mrow>\n\t<mi>m</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>25</mn>\n\t\t<mi>c</mi>\n\t</mrow>\n</mrow>\n</math> represents a situation where Maria has <math alttext=\"25\"><mn>25</mn>\n</math> times as many dollars as Connor, rather than the situation where Connor has <math alttext=\"4\"><mn>4</mn>\n</math> times as many dollars as Maria. The equation <math alttext=\"c plus m equals 4\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math> represents a situation where Connor and Maria together have a total of <math alttext=\"dollar sign 4.00\"><mo>$</mo><mn>4.00</mn></math>, rather than <math alttext=\"dollar sign 25.00\"><mo>$</mo><mn>25.00</mn></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959817,"pPcc":"SAT#H","questionId":"ece00725","skill_cd":"H.D.","score_band_range_cd":2,"skill_desc":"Systems of two linear equations in two variables","createDate":1691007959817,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"f0db62a7-74c8-4e51-91dd-8c8b80649a49","primary_class_cd":"H","uId":"97fe0864-941b-42ec-854a-281701c0b8c5","difficulty":"E"},"raw_detail":{"keys":["8ca10533-20a6-4230-af4c-f332c764b0c0"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It&rsquo;s given that Connor has <math alttext=\"c\"><mi>c</mi>\n</math> dollars, Maria has <math alttext=\"m\"><mi>m</mi>\n</math> dollars, and Connor has <math alttext=\"4\"><mn>4</mn>\n</math> times as many dollars as Maria. This can be represented by the equation <math alttext=\"c equals 4 m\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>m</mi>\n\t</mrow>\n</mrow>\n</math>. It&rsquo;s also given that together, Connor and Maria have a total of <math alttext=\"dollar sign 25.00\"><mo>$</mo><mn>25.00</mn></math>, which can be represented by the equation <math alttext=\"c plus m equals 25\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math>. Therefore, the system consisting of the equations <math alttext=\"c equals 4 m\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>m</mi>\n\t</mrow>\n</mrow>\n</math> and <math alttext=\"c plus m equals 25\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math> represents this situation.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. The equation <math alttext=\"m equals 4 c\"><mrow>\n\t<mi>m</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>c</mi>\n\t</mrow>\n</mrow>\n</math> represents a situation where Maria has <math alttext=\"4\"><mn>4</mn>\n</math> times as many dollars as Connor, rather than the situation where Connor has <math alttext=\"4\"><mn>4</mn>\n</math> times as many dollars as Maria.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. The equation <math alttext=\"c equals 25 m\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>25</mn>\n\t\t<mi>m</mi>\n\t</mrow>\n</mrow>\n</math> represents a situation where Connor has <math alttext=\"25\"><mn>25</mn>\n</math> times, rather than <math alttext=\"4\"><mn>4</mn>\n</math> times, as many dollars as Maria. The equation <math alttext=\"c plus m equals 4\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math> represents a situation where Connor and Maria together have a total of <math alttext=\"dollar sign 4.00\"><mo>$</mo><mn>4.00</mn></math>, rather than <math alttext=\"dollar sign 25.00\"><mo>$</mo><mn>25.00</mn></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. The equation <math alttext=\"m equals 25 c\"><mrow>\n\t<mi>m</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>25</mn>\n\t\t<mi>c</mi>\n\t</mrow>\n</mrow>\n</math> represents a situation where Maria has <math alttext=\"25\"><mn>25</mn>\n</math> times as many dollars as Connor, rather than the situation where Connor has <math alttext=\"4\"><mn>4</mn>\n</math> times as many dollars as Maria. The equation <math alttext=\"c plus m equals 4\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math> represents a situation where Connor and Maria together have a total of <math alttext=\"dollar sign 4.00\"><mo>$</mo><mn>4.00</mn></math>, rather than <math alttext=\"dollar sign 25.00\"><mo>$</mo><mn>25.00</mn></math>.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">Connor has <math alttext=\"c\"><mi>c</mi>\n</math> dollars and Maria has <math alttext=\"m\"><mi>m</mi>\n</math> dollars. Connor has <math alttext=\"4\"><mn>4</mn>\n</math>&nbsp;times as many dollars as Maria, and together they have a total of <math alttext=\"dollar sign 25.00\"><mo>$</mo><mn>25.00</mn>\n</math>. Which system of equations represents this situation?</p>","externalid":"f0db62a7-74c8-4e51-91dd-8c8b80649a49","templateid":"62d15c05-46b4-4831-a7a6-df8cd9244c96","vaultid":"91e80815-e437-4123-b32a-c25631b7e0e8","type":"mcq","answerOptions":[{"id":"8ca10533-20a6-4230-af4c-f332c764b0c0","content":"<p><math alttext=\"c equals 4 m\"><mi>c</mi><mo>=</mo><mn>4</mn><mi>m</mi></math></p>\n<p><math alttext=\"c plus m equals 25\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math></p>"},{"id":"5d62c273-ac17-45f3-a36a-961dca62b052","content":"<p><math alttext=\"m equals 4 c\"><mi>m</mi><mo>=</mo><mn>4</mn><mi>c</mi></math></p>\n<p><math alttext=\"c plus m equals 25\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>25</mn></math></p>"},{"id":"c51c2bf1-7798-4cce-8a00-e890c4836c1b","content":"<p><math alttext=\"c equals 25 m\"><mi>c</mi><mo>=</mo><mn>25</mn><mi>m</mi></math></p>\n<p><math alttext=\"c plus m equals 4\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math></p>"},{"id":"770c34ef-d478-483e-aa3b-a5fc03c88b71","content":"<p><math alttext=\"m equals 25 c\"><mi>m</mi><mo>=</mo><mn>25</mn><mi>c</mi></math></p>\n<p><math alttext=\"c plus m equals 4\"><mi>c</mi><mo>+</mo><mi>m</mi><mo>=</mo><mn>4</mn></math></p>"}],"correct_answer":["A"]},"createDate":1691007959817,"updateDate":1691007959817}$SATQ$::jsonb, 1691007959817, 1691007959817),
    ($SATQ$ed18c4f7$SATQ$, NULL, NULL, $SATQ$06911-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">Cathy has <span class="italic">n</span> CDs. Gerry has 3 more than twice the number of CDs that Cathy has. In terms of <span class="italic">n</span>, how many CDs does Gerry have?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed18c4f7/img_000_d66ac160.png\" alt=\"3 n minus 2\"></span></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed18c4f7/img_001_e436208a.png\" alt=\"3 n plus 2\"></span></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed18c4f7/img_002_c2e064b3.png\" alt=\"2 n minus 3\"></span></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed18c4f7/img_003_282cfa5f.png\" alt=\"2 n plus 3\"></span></span></p>\n"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice D is correct. The term 2<span class="italic">n</span> represents twice the number of CDs that Cathy has, and adding 3 represents 3 more than that amount.<p>Choices A and B are incorrect. The expression 3<span class="italic">n</span> represents three times the number of CDs that Cathy has. Choice C is incorrect. Subtracting 3 represents 3 fewer than twice the number of CDs that Cathy has.</p><p>&nbsp;</p></p>
$SATQ$, false, 4, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"ed18c4f7","external_id":null,"disclosed_item_id":"06911-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">Cathy has <span class=\"italic\">n</span> CDs. Gerry has 3 more than twice the number of CDs that Cathy has. In terms of <span class=\"italic\">n</span>, how many CDs does Gerry have?</p>\n","answerOptions":[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed18c4f7/img_000_d66ac160.png\" alt=\"3 n minus 2\"></span></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed18c4f7/img_001_e436208a.png\" alt=\"3 n plus 2\"></span></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed18c4f7/img_002_c2e064b3.png\" alt=\"2 n minus 3\"></span></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed18c4f7/img_003_282cfa5f.png\" alt=\"2 n plus 3\"></span></span></p>\n"}],"keys":null,"correct_answer":["D"],"rationale":"<p>Choice D is correct. The term 2<span class=\"italic\">n</span> represents twice the number of CDs that Cathy has, and adding 3 represents 3 more than that amount.<p>Choices A and B are incorrect. The expression 3<span class=\"italic\">n</span> represents three times the number of CDs that Cathy has. Choice C is incorrect. Subtracting 3 represents 3 fewer than twice the number of CDs that Cathy has.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":4,"raw_list":{"updateDate":1691007959630,"pPcc":"SAT#H","questionId":"ed18c4f7","skill_cd":"H.A.","score_band_range_cd":1,"skill_desc":"Linear equations in one variable","createDate":1691007959630,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"06911-DC","external_id":null,"primary_class_cd":"H","uId":"8730624b-5ee7-4861-87bb-bd3ec37de8d6","difficulty":"E"},"raw_detail":{"item_id":"06911-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">Cathy has <span class=\"italic\">n</span> CDs. Gerry has 3 more than twice the number of CDs that Cathy has. In terms of <span class=\"italic\">n</span>, how many CDs does Gerry have?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAWCAYAAABZuWWzAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABB0lEQVRIS+2UaxLEEBCEHc+BHMddXMVNeofJeEu2dskvX5WS2B26pVGCMwrUXU3DeoTnVwE8rC51KGgSEn5LsFADBxYIZ6h/V3AW2uooBMNbaOoM/SMOEFLYudoI6+g3yFtN79lAR3JJDq6hCDsNhQ6GXsPQ7UQLyGtO1mA3M5dZ4MzUSmJEtaWVGrFZTB2LQBLWFMbJNomVzLZaKiTHpQhcn74slLEuLjL+0O5EiNCvNqKNAhfX0RgdzhWkL/yN0EArLk7QRGBk4F/kvh/eRLNcsLv7gzQN/4/Ijk6vzNHBEQNSNM4r1626iyVSj/MlwfQorRL2Ql5TTodt711+OBwOh8NOlPoA18eZvO9vocAAAAAASUVORK5CYII=\" alt=\"3 n minus 2\"></span></span></p>\n"},"b":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAWCAYAAABZuWWzAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABFUlEQVRIS+2U7RHDIAhAHc+BHMddsoqbUJSgBvEjzTXXH747L6kt8rCoYQ5nAB/nsOADxPdXAQjgbe1hwKJI/C5Dog4OIEE4HD7fFS6i0qMShuDB4sPhL9IEwoFNVV8CmN6JHBLyaDcoeIufSwENuUpc/ZxKUKUxkJLHqeFCJyuyPUrOTixV06uyCPaKkjyRTS1qPWYSsUWmXTiLicC02I9kuWeHcdzHtYSWkOeaduH5yRhJsOhsIxKyFSj42hra4dS4u7P5H14RjUi5tIBoAa0AjTuyfN+rN1GvL6i68UHqNr9gVZZ3tHtlageHC+AgLRnHrdzFK7LcUtP1sjC+8riIPejXVXKfqmN+l282m81m868Y8wGVdty8xcglPgAAAABJRU5ErkJggg==\" alt=\"3 n plus 2\"></span></span></p>\n"},"c":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAWCAYAAABZuWWzAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABAUlEQVRIS+2U7Q2FIAxFGY+BGIddWIVN+gqlRaDwjFF+cRKiItrbT5MAiOCtgXTLy/qYrtsJ7qrDAsqoOqpQBwHoBQSXD+8WTEJ7HRfBED3Y3gMkett8+DWkw4BDg2VLAvk3aORVK7buBXD4mLa+dEiyjh6ULZ2cEuvxeBVC0a4Cb//sIWRvzHoD16yWkt6B7NTLYmtQWg0DLLQXACX1rQOlHCZn0+1qLYUgXMdqMMQj5eXQmYjWFG+jlgLPt1nn5Y+6EtAceJvBBkd0JnTWSFoTPkXrkwRpKxOHU7maZXq93pyBN9EamB0QG1Kn6iojalO9imCx/20/HA6Hw+GwA2N+GSeZvFT0l+0AAAAASUVORK5CYII=\" alt=\"2 n minus 3\"></span></span></p>\n"},"d":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAWCAYAAABZuWWzAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABEUlEQVRIS+2UYRLEEAyFezwHchx36VXcJBsiFE9r287uH2/G1KTIl0hsQUSenNkoTHUY58P359rtkcMQYxSOAmppJ/lBu42Lfw0soC3HAZi8I9NGwPLOVBufiPgUyx/LhyVTJ+Go12giL5MmUdWwxSbOg2kmoBlYpHzrvDGZsOKVGMfLiwPJdgGcPewurPjrb72S1iy6kjaAGNTLsCUpF3sUtAVADtU2WhumZ+MKXusYJiNHBH52nclCTYF0twyCYCno+zbqvLipKQEUANIT2M6HZnQEOmok1IRIM7CoT4KELb04epVnbxlyNv0GsqZgNSGH4DWA7CPXKRzpiXpQr98oA2f/756/tLS0tLT0D23bB9bH3LzGymZnAAAAAElFTkSuQmCC\" alt=\"2 n plus 3\"></span></span></p>\n"}},"correct_choice":"d","rationale":"<p>Choice D is correct. The term 2<span class=\"italic\">n</span> represents twice the number of CDs that Cathy has, and adding 3 represents 3 more than that amount.<p>Choices A and B are incorrect. The expression 3<span class=\"italic\">n</span> represents three times the number of CDs that Cathy has. Choice C is incorrect. Subtracting 3 represents 3 fewer than twice the number of CDs that Cathy has.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959630,"updateDate":1691007959630}$SATQ$::jsonb, 1691007959630, 1691007959630),
    ($SATQ$ed856e9c$SATQ$, $SATQ$012f9eba-ac05-4ad4-b0df-834b624098e7$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">What is the <em>y</em>-intercept of the graph of <math alttext="y equals 34 x plus 81"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mn>34</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>81</mn>
	</mrow>
</mrow>
</math> in the <em>xy</em>-plane?</p>$SATQ$, $SATQ$[{"id":"78f6ba05-cdeb-4b78-833e-6addcc68dd0a","content":"<p><math alttext=\"left parenthesis 0 comma 81 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>81</mn></mrow></mrow></mfenced></math></p>"},{"id":"f39abf07-4ded-426b-8d05-c6537e18ba90","content":"<p><math alttext=\"left parenthesis 0 comma 34 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>34</mn></mrow></mrow></mfenced></math></p>"},{"id":"7dbfbf0c-d533-40de-8da5-86ba6f9c0fed","content":"<p><math alttext=\"left parenthesis 0 comma negative 34 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mrow><mn>34</mn></mrow></mrow></mfenced></math></p>"},{"id":"bc38a98e-ee21-4105-9c8e-b52d44966347","content":"<p><math alttext=\"left parenthesis 0 comma negative 81 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mrow><mn>81</mn></mrow></mrow></mfenced></math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["78f6ba05-cdeb-4b78-833e-6addcc68dd0a"]$SATQ$::jsonb, $SATQ$<p>Choice A is correct. In the <em>xy</em>-plane, the graph of an equation in the form <math alttext="y equals m x plus b"><mrow>
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
</math> and <math alttext="b"><mi>b</mi>
</math> are constants, has a slope of <math alttext="m"><mi>m</mi>
</math> and a <em>y</em>-intercept of <math alttext="left parenthesis 0 comma b right parenthesis"><mo>(</mo><mn>0</mn><mo>,</mo><mi>b</mi><mo>)</mo></math>. Therefore, the <em>y</em>-intercept of the graph of <math alttext="y equals 34 x plus 81"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mn>34</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>81</mn>
	</mrow>
</mrow>
</math> is <math alttext="left parenthesis 0 comma 81 right parenthesis"><mo>(</mo><mn>0</mn><mo>,</mo><mn>81</mn><mo>)</mo></math>.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"ed856e9c","external_id":"012f9eba-ac05-4ad4-b0df-834b624098e7","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"cdb06223-dd90-48f1-95ca-913e5a43b90a","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">What is the <em>y</em>-intercept of the graph of <math alttext=\"y equals 34 x plus 81\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>34</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>81</mn>\n\t</mrow>\n</mrow>\n</math> in the <em>xy</em>-plane?</p>","answerOptions":[{"id":"78f6ba05-cdeb-4b78-833e-6addcc68dd0a","content":"<p><math alttext=\"left parenthesis 0 comma 81 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>81</mn></mrow></mrow></mfenced></math></p>"},{"id":"f39abf07-4ded-426b-8d05-c6537e18ba90","content":"<p><math alttext=\"left parenthesis 0 comma 34 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>34</mn></mrow></mrow></mfenced></math></p>"},{"id":"7dbfbf0c-d533-40de-8da5-86ba6f9c0fed","content":"<p><math alttext=\"left parenthesis 0 comma negative 34 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mrow><mn>34</mn></mrow></mrow></mfenced></math></p>"},{"id":"bc38a98e-ee21-4105-9c8e-b52d44966347","content":"<p><math alttext=\"left parenthesis 0 comma negative 81 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mrow><mn>81</mn></mrow></mrow></mfenced></math></p>"}],"keys":["78f6ba05-cdeb-4b78-833e-6addcc68dd0a"],"correct_answer":["A"],"rationale":"<p>Choice A is correct. In the <em>xy</em>-plane, the graph of an equation in the form <math alttext=\"y equals m x plus b\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>m</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>b</mi>\n\t</mrow>\n</mrow>\n</math>, where <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"b\"><mi>b</mi>\n</math> are constants, has a slope of <math alttext=\"m\"><mi>m</mi>\n</math> and a <em>y</em>-intercept of <math alttext=\"left parenthesis 0 comma b right parenthesis\"><mo>(</mo><mn>0</mn><mo>,</mo><mi>b</mi><mo>)</mo></math>. Therefore, the <em>y</em>-intercept of the graph of <math alttext=\"y equals 34 x plus 81\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>34</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>81</mn>\n\t</mrow>\n</mrow>\n</math> is <math alttext=\"left parenthesis 0 comma 81 right parenthesis\"><mo>(</mo><mn>0</mn><mo>,</mo><mn>81</mn><mo>)</mo></math>.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357391,"pPcc":"SAT#H","questionId":"ed856e9c","skill_cd":"H.C.","score_band_range_cd":2,"skill_desc":"Linear equations in two variables","createDate":1730147357391,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"012f9eba-ac05-4ad4-b0df-834b624098e7","primary_class_cd":"H","uId":"cdb06223-dd90-48f1-95ca-913e5a43b90a","difficulty":"E"},"raw_detail":{"answerOptions":[{"content":"<p><math alttext=\"left parenthesis 0 comma 81 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>81</mn></mrow></mrow></mfenced></math></p>","id":"78f6ba05-cdeb-4b78-833e-6addcc68dd0a"},{"content":"<p><math alttext=\"left parenthesis 0 comma 34 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>34</mn></mrow></mrow></mfenced></math></p>","id":"f39abf07-4ded-426b-8d05-c6537e18ba90"},{"content":"<p><math alttext=\"left parenthesis 0 comma negative 34 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mrow><mn>34</mn></mrow></mrow></mfenced></math></p>","id":"7dbfbf0c-d533-40de-8da5-86ba6f9c0fed"},{"content":"<p><math alttext=\"left parenthesis 0 comma negative 81 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mrow><mn>81</mn></mrow></mrow></mfenced></math></p>","id":"bc38a98e-ee21-4105-9c8e-b52d44966347"}],"externalid":"012f9eba-ac05-4ad4-b0df-834b624098e7","keys":["78f6ba05-cdeb-4b78-833e-6addcc68dd0a"],"rationale":"<p>Choice A is correct. In the <em>xy</em>-plane, the graph of an equation in the form <math alttext=\"y equals m x plus b\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>m</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>b</mi>\n\t</mrow>\n</mrow>\n</math>, where <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"b\"><mi>b</mi>\n</math> are constants, has a slope of <math alttext=\"m\"><mi>m</mi>\n</math> and a <em>y</em>-intercept of <math alttext=\"left parenthesis 0 comma b right parenthesis\"><mo>(</mo><mn>0</mn><mo>,</mo><mi>b</mi><mo>)</mo></math>. Therefore, the <em>y</em>-intercept of the graph of <math alttext=\"y equals 34 x plus 81\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>34</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>81</mn>\n\t</mrow>\n</mrow>\n</math> is <math alttext=\"left parenthesis 0 comma 81 right parenthesis\"><mo>(</mo><mn>0</mn><mo>,</mo><mn>81</mn><mo>)</mo></math>.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","stem":"<p style=\"text-align: left;\">What is the <em>y</em>-intercept of the graph of <math alttext=\"y equals 34 x plus 81\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>34</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>81</mn>\n\t</mrow>\n</mrow>\n</math> in the <em>xy</em>-plane?</p>","type":"mcq","correct_answer":["A"]},"createDate":1730147357391,"updateDate":1730147357391}$SATQ$::jsonb, 1730147357391, 1730147357391),
    ($SATQ$ed92fb68$SATQ$, NULL, NULL, $SATQ$11158-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, $SATQ$<div class="stimulus_reference " xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1"><p class="standalone_statement style:1 "><span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed92fb68/img_000_50c21a49.png" alt="4 x plus 5 y, equals 100, 
and, 
5 x plus 4 y, equals 62
"></span></span></p></div>
$SATQ$, $SATQ$<p class="stem_paragraph ">If the system of equations above has solution <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed92fb68/img_001_9121b432.png" alt="the ordered pair x comma y "></span></span>, what is the value of <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed92fb68/img_002_ec63fada.png" alt="x plus y"></span></span> ?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p class=\"choice_paragraph \">0</p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \">9</p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \">18</p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \">38</p>\n"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice C is correct. Adding the given equations yields 9<span class="italic">x</span> + 9<span class="italic">y</span> = 162. Dividing each side of the equation 9<span class="italic">x</span> + 9<span class="italic">y</span> = 162 by 9 gives <span class="italic">x</span> + <span class="italic">y</span> = 18.<p>Choice A is incorrect and may result from incorrectly adding the equations. Choice&nbsp;B is incorrect and may result from conceptual or computational errors. Choice D is incorrect. This value is equivalent to <span class="italic">y</span> &ndash; <span class="italic">x.</span></p><p>&nbsp;</p></p>
$SATQ$, false, 3, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"ed92fb68","external_id":null,"disclosed_item_id":"11158-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed92fb68/img_000_50c21a49.png\" alt=\"4 x plus 5 y, equals 100, \nand, \n5 x plus 4 y, equals 62\n\"></span></span></p></div>\n","stem":"<p class=\"stem_paragraph \">If the system of equations above has solution <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed92fb68/img_001_9121b432.png\" alt=\"the ordered pair x comma y \"></span></span>, what is the value of <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ed92fb68/img_002_ec63fada.png\" alt=\"x plus y\"></span></span> ?</p>\n","answerOptions":[{"id":"a","content":"<p class=\"choice_paragraph \">0</p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \">9</p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \">18</p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \">38</p>\n"}],"keys":null,"correct_answer":["C"],"rationale":"<p>Choice C is correct. Adding the given equations yields 9<span class=\"italic\">x</span> + 9<span class=\"italic\">y</span> = 162. Dividing each side of the equation 9<span class=\"italic\">x</span> + 9<span class=\"italic\">y</span> = 162 by 9 gives <span class=\"italic\">x</span> + <span class=\"italic\">y</span> = 18.<p>Choice A is incorrect and may result from incorrectly adding the equations. Choice&nbsp;B is incorrect and may result from conceptual or computational errors. Choice D is incorrect. This value is equivalent to <span class=\"italic\">y</span> &ndash; <span class=\"italic\">x.</span></p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":3,"raw_list":{"updateDate":1691007959638,"pPcc":"SAT#H","questionId":"ed92fb68","skill_cd":"H.D.","score_band_range_cd":4,"skill_desc":"Systems of two linear equations in two variables","createDate":1691007959638,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"11158-DC","external_id":null,"primary_class_cd":"H","uId":"56a86147-95c9-4989-8d6b-6713f62d6319","difficulty":"M"},"raw_detail":{"item_id":"11158-DC","section":"Math","body":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGcAAAAsCAYAAAB43qZWAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADmElEQVR4Xu2aAZLDIAhFe7wcKMfJXXqV3sQNImoQDGk17ezwZpxmrVXkA+66fZwRXltY9pf1GULquoUQnmHdX+Dx0HZD9tev8VwfYdleog3huVa2LmEf1oyzjDEDxuwv94sTg2LdJbp33R7kWEkcfK84m/8MWMaYIWOgjRKHMuJsvrj2soXd7iHrfsprW7IvuDhht3Jb2v4Y2CnTLWPM0GTrJpe1OClzHmZZPxKs4liMjg5jNpDdI8tfiXC0vRFHKf0oKGa/ZUzqOidvXJmUOxkXOU9Rizg5ytY1rg1d0BqnRKcdN6aVCvUMY61vV08cYc3KPsuY1NWndqCmOJCzJ43hRkvYxEmOrLKC7KjX4BuekTU1qjhaQFT9ljGpq09dUnri0HvwqDkkO/qk9cQieAngQl+Owot8XZwmGjviAHjO2B3CHXoFvpFc/uLuy3MczBgRJKo4zGcE2juwrGF0yoZzhcvYdlGNkeIAEBxRnCubfJO+OO2e6ky3jElddrRJ0RloqOU3K8IizpWNxL5162bNKFRxlKw9HA+GMZeRHEVG5oWFiNYwiUMHeyUEBQP/HPXPzhpAEwfgPpB8YhlzCS5OFqZ2HDkziTWCIlBpkqBk3+ysAXriAKXMQ5Odbhnzb/ioZjvzsJRI52ZKab2nnDmO4ziO4ziO4zgTqf/IO7SBd2dX0G6p74RsgMfYmC+ku8ApfyCjIb9zX4X/0PueOHTzTevzC9DeLfpwgeLE7Fsto7h6H0abhPYNccjx3Mn1hSsGc3vDPOVS1vIPoDiGCYgR3r8GvyIOOUb7elbcPLMhR/GJ/VY0x1vAwBooTo6Us68lMSdjlJxv4oo42fnKmSNtHvtaO2hdeOw1fY3j5y3lSgrgj8ibqCalw5AblBdX3pewilOPo/Ubx7GoHp01QCmr1TqG/dLnzvY5BKl+kpHwqDnk3YitS6sqDhNayqRPISdzIXrnSRZU8clwcMG2XOA5Y3eIJXOajFDFKYd1/ZzePvBukGgZoPkDRdvnuksYQDImGyIYqWERp8wrteNaEBxRnGjf2KwB1MAQ/IGB2i93H6EZw9OYIgoMqUvQGRZxOJpNQLRr4lejyF4+N/cHBdQ0YYB8qApCkHNyiUiCSFGkMVocsm1G1hDN/pM9JAT/eSpFoNIaYWrxJvyWVNMV5ybHlCDAVq/XL8Pzgubn4eXF+RHeKZHOZEppvanOO47jOI7jOA7j8fgD7ObY2oRBV3sAAAAASUVORK5CYII=\" alt=\"4 x plus 5 y, equals 100, \nand, \n5 x plus 4 y, equals 62\n\"></span></span></p></div>\n","prompt":"<p class=\"stem_paragraph \">If the system of equations above has solution <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAaCAYAAADfcP5FAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABQ0lEQVRIS+2UyxXEIAhFLc+CLMdebCWdMALiIH7G5JzJyrtKMIHHg8Rp4IrgnYd4AZTQ3wC4IHoHIU1qASQIL4kRljVTcODzSbl9DUgBnI/ZLyWKRxWy3vfcEYaju6IHlyPl9nXIJV0fx2WXC2PWSord2DNq1OQQR7SAZkL8QF+EF+4rlJLfXHrq3KwCx9o8zXKvNr26RB3cX3r7Gxm5gzSmrARxQhxTn2QH6/LIMWRbEMJ78+wLFEfQWX1djitmZPygdKHhvUFBc8G/wIZI0MQdhAWpM3mJbgqcgOPk0oORIfxLiVN3EKqlv0YbkNmLCBb3zCVpbDX2zhA9tipGJZBz69LoP2ORD2PqDtUbNNvZtgEJzeNYvcN7OHcHz2diy8v7o6HuF7slbqPzJVSprt80YQk2MC4mY5+P6nA4HA5bOPcBbOoodY1Dj0QAAAAASUVORK5CYII=\" alt=\"the ordered pair x comma y \"></span></span>, what is the value of <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB0AAAAOCAYAAADT0Rc6AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAHXkAHPQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAuklEQVQ4T+2TUQ6EIAxEe7weiOP0LlyFm8y2VQiSoqxZ/vYlxggy0zqV3oAiYErIAM6l7wEKhAksxUWgcklvlHIoumKaE0GPt/3wTL9oB2aGxoppEW5NGGMRDdtgZhCL9n59QSux5+k1CpppLdyLDDSdQ/g5q5VOXcuNLDqGNh0YulBc9ciSaX3HzKOo+kG6/RQnS6a6m0hzjbqMJtWz7YbgDbWRu4H8OYfpJMtdjL/MVlpcD3PxZxNEHyT9BvNxAG95AAAAAElFTkSuQmCC\" alt=\"x plus y\"></span></span> ?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p class=\"choice_paragraph \">0</p>\n"},"b":{"body":"<p class=\"choice_paragraph \">9</p>\n"},"c":{"body":"<p class=\"choice_paragraph \">18</p>\n"},"d":{"body":"<p class=\"choice_paragraph \">38</p>\n"}},"correct_choice":"c","rationale":"<p>Choice C is correct. Adding the given equations yields 9<span class=\"italic\">x</span> + 9<span class=\"italic\">y</span> = 162. Dividing each side of the equation 9<span class=\"italic\">x</span> + 9<span class=\"italic\">y</span> = 162 by 9 gives <span class=\"italic\">x</span> + <span class=\"italic\">y</span> = 18.<p>Choice A is incorrect and may result from incorrectly adding the equations. Choice&nbsp;B is incorrect and may result from conceptual or computational errors. Choice D is incorrect. This value is equivalent to <span class=\"italic\">y</span> &ndash; <span class=\"italic\">x.</span></p><p>&nbsp;</p></p>\n"}},"createDate":1691007959638,"updateDate":1691007959638}$SATQ$::jsonb, 1691007959638, 1691007959638),
    ($SATQ$edc1b7b7$SATQ$, $SATQ$d384e4e9-870d-4026-ba15-b7eb23e0c5fc$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 7 y right parenthesis equals 12"><mrow><mn>2</mn></mrow><mfenced><mrow><mrow><mn>8</mn></mrow><mi>x</mi></mrow></mfenced><mo>+</mo><mrow><mn>4</mn></mrow><mfenced><mrow><mrow><mn>7</mn></mrow><mi>y</mi></mrow></mfenced><mo>=</mo><mrow><mn>12</mn></mrow></math></p>
<p style="text-align: center;"><math alttext="minus 2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 7 y right parenthesis equals 12"><mo>-</mo><mrow><mn>2</mn></mrow><mfenced><mrow><mrow><mn>8</mn></mrow><mi>x</mi></mrow></mfenced><mo>+</mo><mrow><mn>4</mn></mrow><mfenced><mrow><mrow><mn>7</mn></mrow><mi>y</mi></mrow></mfenced><mo>=</mo><mrow><mn>12</mn></mrow></math></p>
<p style="text-align: left;">The solution to the given system of equations is <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext="8 x plus 7 y"><mrow>
	<mrow>
		<mn>8</mn>
		<mi>x</mi>
	</mrow>
	<mo>+</mo>
	<mrow>
		<mn>7</mn>
		<mi>y</mi>
	</mrow>
</mrow>
</math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["3"]$SATQ$::jsonb, $SATQ$["3"]$SATQ$::jsonb, $SATQ$<p>The correct answer is <math alttext="3"><mn>3</mn>
</math>. Adding the second equation to the first equation in the given system of equations yields <math alttext="left parenthesis 2 left parenthesis 8 x right parenthesis minus 2 left parenthesis 8 x right parenthesis right parenthesis plus left parenthesis 4 left parenthesis 7 y right parenthesis plus 4 left parenthesis 7 y right parenthesis right parenthesis equals 12 plus 12"><mfenced><mrow><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>-</mo><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced></mrow></mfenced><mo>+</mo><mfenced><mrow><mn>4</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced><mo>+</mo><mn>4</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced></mrow></mfenced><mo>=</mo><mn>12</mn><mo>+</mo><mn>12</mn></math>, or <math alttext="8 left parenthesis 7 y right parenthesis equals 24"><mn>8</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced><mo>=</mo><mn>24</mn></math>. Dividing both sides of this equation by <math alttext="8"><mn>8</mn>
</math> yields <math alttext="7 y equals 3"><mrow>
<mrow>
<mn>7</mn>
<mi>y</mi>
</mrow>
<mo>=</mo>
<mn>3</mn>
</mrow>
</math>. Substituting <math alttext="3"><mn>3</mn>
</math> for <math alttext="7 y"><mrow>
<mn>7</mn>
<mi>y</mi>
</mrow>
</math> in the first equation, <math alttext="2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 7 y right parenthesis equals 12"><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mn>4</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced><mo>=</mo><mn>12</mn></math>, yields<math alttext="2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 3 right parenthesis equals 12"><mo>&nbsp;</mo><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mn>4</mn><mfenced><mn>3</mn></mfenced><mo>=</mo><mn>12</mn></math>, or <math alttext="2 left parenthesis 8 x right parenthesis plus 12 equals 12"><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mn>12</mn><mo>=</mo><mn>12</mn></math>. Subtracting <math alttext="12"><mn>12</mn>
</math> from both sides of this equation yields <math alttext="2 left parenthesis 8 x right parenthesis equals 0"><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>=</mo><mn>0</mn></math>. Dividing both sides of this equation by <math alttext="2"><mn>2</mn>
</math> yields <math alttext="8 x equals 0"><mrow>
<mrow>
<mn>8</mn>
<mi>x</mi>
</mrow>
<mo>=</mo>
<mn>0</mn>
</mrow>
</math>. Substituting <math alttext="0"><mn>0</mn>
</math> for <math alttext="8 x"><mrow>
<mn>8</mn>
<mi>x</mi>
</mrow>
</math> and <math alttext="3"><mn>3</mn>
</math> for <math alttext="7 y"><mrow>
<mn>7</mn>
<mi>y</mi>
</mrow>
</math> in the expression <math alttext="8 x plus 7 y"><mn>8</mn><mi>x</mi><mo>+</mo><mn>7</mn><mi>y</mi></math> yields <math alttext="0 plus 3"><mn>0</mn><mo>+</mo><mn>3</mn></math>, or <math alttext="3"><mn>3</mn>
</math>. Therefore, the value of <math alttext="8 x plus 7 y"><mrow>
<mrow>
<mn>8</mn>
<mi>x</mi>
</mrow>
<mo>+</mo>
<mrow>
<mn>7</mn>
<mi>y</mi>
</mrow>
</mrow>
</math> is <math alttext="3"><mn>3</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"edc1b7b7","external_id":"d384e4e9-870d-4026-ba15-b7eb23e0c5fc","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"015305f9-b9f2-4e73-8654-dad0656ff31c","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"H","score_band_range_cd":6,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 7 y right parenthesis equals 12\"><mrow><mn>2</mn></mrow><mfenced><mrow><mrow><mn>8</mn></mrow><mi>x</mi></mrow></mfenced><mo>+</mo><mrow><mn>4</mn></mrow><mfenced><mrow><mrow><mn>7</mn></mrow><mi>y</mi></mrow></mfenced><mo>=</mo><mrow><mn>12</mn></mrow></math></p>\n<p style=\"text-align: center;\"><math alttext=\"minus 2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 7 y right parenthesis equals 12\"><mo>-</mo><mrow><mn>2</mn></mrow><mfenced><mrow><mrow><mn>8</mn></mrow><mi>x</mi></mrow></mfenced><mo>+</mo><mrow><mn>4</mn></mrow><mfenced><mrow><mrow><mn>7</mn></mrow><mi>y</mi></mrow></mfenced><mo>=</mo><mrow><mn>12</mn></mrow></math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"8 x plus 7 y\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mrow>\n\t\t<mn>7</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math>?</p>","answerOptions":[],"keys":["3"],"correct_answer":["3"],"rationale":"<p>The correct answer is <math alttext=\"3\"><mn>3</mn>\n</math>. Adding the second equation to the first equation in the given system of equations yields <math alttext=\"left parenthesis 2 left parenthesis 8 x right parenthesis minus 2 left parenthesis 8 x right parenthesis right parenthesis plus left parenthesis 4 left parenthesis 7 y right parenthesis plus 4 left parenthesis 7 y right parenthesis right parenthesis equals 12 plus 12\"><mfenced><mrow><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>-</mo><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced></mrow></mfenced><mo>+</mo><mfenced><mrow><mn>4</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced><mo>+</mo><mn>4</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced></mrow></mfenced><mo>=</mo><mn>12</mn><mo>+</mo><mn>12</mn></math>, or <math alttext=\"8 left parenthesis 7 y right parenthesis equals 24\"><mn>8</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced><mo>=</mo><mn>24</mn></math>. Dividing both sides of this equation by <math alttext=\"8\"><mn>8</mn>\n</math> yields <math alttext=\"7 y equals 3\"><mrow>\n<mrow>\n<mn>7</mn>\n<mi>y</mi>\n</mrow>\n<mo>=</mo>\n<mn>3</mn>\n</mrow>\n</math>. Substituting <math alttext=\"3\"><mn>3</mn>\n</math> for <math alttext=\"7 y\"><mrow>\n<mn>7</mn>\n<mi>y</mi>\n</mrow>\n</math> in the first equation, <math alttext=\"2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 7 y right parenthesis equals 12\"><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mn>4</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced><mo>=</mo><mn>12</mn></math>, yields<math alttext=\"2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 3 right parenthesis equals 12\"><mo>&nbsp;</mo><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mn>4</mn><mfenced><mn>3</mn></mfenced><mo>=</mo><mn>12</mn></math>, or <math alttext=\"2 left parenthesis 8 x right parenthesis plus 12 equals 12\"><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mn>12</mn><mo>=</mo><mn>12</mn></math>. Subtracting <math alttext=\"12\"><mn>12</mn>\n</math> from both sides of this equation yields <math alttext=\"2 left parenthesis 8 x right parenthesis equals 0\"><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>=</mo><mn>0</mn></math>. Dividing both sides of this equation by <math alttext=\"2\"><mn>2</mn>\n</math> yields <math alttext=\"8 x equals 0\"><mrow>\n<mrow>\n<mn>8</mn>\n<mi>x</mi>\n</mrow>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math>. Substituting <math alttext=\"0\"><mn>0</mn>\n</math> for <math alttext=\"8 x\"><mrow>\n<mn>8</mn>\n<mi>x</mi>\n</mrow>\n</math> and <math alttext=\"3\"><mn>3</mn>\n</math> for <math alttext=\"7 y\"><mrow>\n<mn>7</mn>\n<mi>y</mi>\n</mrow>\n</math> in the expression <math alttext=\"8 x plus 7 y\"><mn>8</mn><mi>x</mi><mo>+</mo><mn>7</mn><mi>y</mi></math> yields <math alttext=\"0 plus 3\"><mn>0</mn><mo>+</mo><mn>3</mn></math>, or <math alttext=\"3\"><mn>3</mn>\n</math>. Therefore, the value of <math alttext=\"8 x plus 7 y\"><mrow>\n<mrow>\n<mn>8</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mrow>\n<mn>7</mn>\n<mi>y</mi>\n</mrow>\n</mrow>\n</math> is <math alttext=\"3\"><mn>3</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554987,"pPcc":"SAT#H","questionId":"edc1b7b7","skill_cd":"H.D.","score_band_range_cd":6,"skill_desc":"Systems of two linear equations in two variables","createDate":1743430554987,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"d384e4e9-870d-4026-ba15-b7eb23e0c5fc","primary_class_cd":"H","uId":"015305f9-b9f2-4e73-8654-dad0656ff31c","difficulty":"H"},"raw_detail":{"type":"spr","stem":"<p style=\"text-align: center;\"><math alttext=\"2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 7 y right parenthesis equals 12\"><mrow><mn>2</mn></mrow><mfenced><mrow><mrow><mn>8</mn></mrow><mi>x</mi></mrow></mfenced><mo>+</mo><mrow><mn>4</mn></mrow><mfenced><mrow><mrow><mn>7</mn></mrow><mi>y</mi></mrow></mfenced><mo>=</mo><mrow><mn>12</mn></mrow></math></p>\n<p style=\"text-align: center;\"><math alttext=\"minus 2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 7 y right parenthesis equals 12\"><mo>-</mo><mrow><mn>2</mn></mrow><mfenced><mrow><mrow><mn>8</mn></mrow><mi>x</mi></mrow></mfenced><mo>+</mo><mrow><mn>4</mn></mrow><mfenced><mrow><mrow><mn>7</mn></mrow><mi>y</mi></mrow></mfenced><mo>=</mo><mrow><mn>12</mn></mrow></math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"8 x plus 7 y\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mrow>\n\t\t<mn>7</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math>?</p>","keys":["3"],"rationale":"<p>The correct answer is <math alttext=\"3\"><mn>3</mn>\n</math>. Adding the second equation to the first equation in the given system of equations yields <math alttext=\"left parenthesis 2 left parenthesis 8 x right parenthesis minus 2 left parenthesis 8 x right parenthesis right parenthesis plus left parenthesis 4 left parenthesis 7 y right parenthesis plus 4 left parenthesis 7 y right parenthesis right parenthesis equals 12 plus 12\"><mfenced><mrow><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>-</mo><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced></mrow></mfenced><mo>+</mo><mfenced><mrow><mn>4</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced><mo>+</mo><mn>4</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced></mrow></mfenced><mo>=</mo><mn>12</mn><mo>+</mo><mn>12</mn></math>, or <math alttext=\"8 left parenthesis 7 y right parenthesis equals 24\"><mn>8</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced><mo>=</mo><mn>24</mn></math>. Dividing both sides of this equation by <math alttext=\"8\"><mn>8</mn>\n</math> yields <math alttext=\"7 y equals 3\"><mrow>\n<mrow>\n<mn>7</mn>\n<mi>y</mi>\n</mrow>\n<mo>=</mo>\n<mn>3</mn>\n</mrow>\n</math>. Substituting <math alttext=\"3\"><mn>3</mn>\n</math> for <math alttext=\"7 y\"><mrow>\n<mn>7</mn>\n<mi>y</mi>\n</mrow>\n</math> in the first equation, <math alttext=\"2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 7 y right parenthesis equals 12\"><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mn>4</mn><mfenced><mrow><mn>7</mn><mi>y</mi></mrow></mfenced><mo>=</mo><mn>12</mn></math>, yields<math alttext=\"2 left parenthesis 8 x right parenthesis plus 4 left parenthesis 3 right parenthesis equals 12\"><mo>&nbsp;</mo><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mn>4</mn><mfenced><mn>3</mn></mfenced><mo>=</mo><mn>12</mn></math>, or <math alttext=\"2 left parenthesis 8 x right parenthesis plus 12 equals 12\"><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mn>12</mn><mo>=</mo><mn>12</mn></math>. Subtracting <math alttext=\"12\"><mn>12</mn>\n</math> from both sides of this equation yields <math alttext=\"2 left parenthesis 8 x right parenthesis equals 0\"><mn>2</mn><mfenced><mrow><mn>8</mn><mi>x</mi></mrow></mfenced><mo>=</mo><mn>0</mn></math>. Dividing both sides of this equation by <math alttext=\"2\"><mn>2</mn>\n</math> yields <math alttext=\"8 x equals 0\"><mrow>\n<mrow>\n<mn>8</mn>\n<mi>x</mi>\n</mrow>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math>. Substituting <math alttext=\"0\"><mn>0</mn>\n</math> for <math alttext=\"8 x\"><mrow>\n<mn>8</mn>\n<mi>x</mi>\n</mrow>\n</math> and <math alttext=\"3\"><mn>3</mn>\n</math> for <math alttext=\"7 y\"><mrow>\n<mn>7</mn>\n<mi>y</mi>\n</mrow>\n</math> in the expression <math alttext=\"8 x plus 7 y\"><mn>8</mn><mi>x</mi><mo>+</mo><mn>7</mn><mi>y</mi></math> yields <math alttext=\"0 plus 3\"><mn>0</mn><mo>+</mo><mn>3</mn></math>, or <math alttext=\"3\"><mn>3</mn>\n</math>. Therefore, the value of <math alttext=\"8 x plus 7 y\"><mrow>\n<mrow>\n<mn>8</mn>\n<mi>x</mi>\n</mrow>\n<mo>+</mo>\n<mrow>\n<mn>7</mn>\n<mi>y</mi>\n</mrow>\n</mrow>\n</math> is <math alttext=\"3\"><mn>3</mn>\n</math>.</p>","externalid":"d384e4e9-870d-4026-ba15-b7eb23e0c5fc","answerOptions":[],"correct_answer":["3"]},"createDate":1743430554987,"updateDate":1743430554987}$SATQ$::jsonb, 1743430554987, 1743430554987),
    ($SATQ$ee031767$SATQ$, NULL, NULL, $SATQ$08084-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">A dance teacher ordered outfits for students for a dance recital. Outfits for boys cost $26, and outfits for girls cost $35. The dance teacher ordered a total of 28 outfits and spent $881. If <span class="italic">b</span> represents the number of outfits the dance teacher ordered for boys and <span class="italic">g</span> represents the number of outfits the dance teacher ordered for girls, which of the following systems of equations can be solved to find <span class="italic">b</span> and <span class="italic">g</span> ?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ee031767/img_000_8aa80920.png\" alt=\"Each option consists of two equations. 26 b plus 35 g, equals 28, \nand, b plus g, equals 881\n\"></span></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ee031767/img_001_599491dd.png\" alt=\"26 b plus 35 g, equals 881, \nand,\nb plus g, equals 28\n\"></span></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ee031767/img_002_82b4fc3c.png\" alt=\"26 g plus 35 b, equals 28, and, b plus g, equals 881\n\"></span></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ee031767/img_003_917f89c2.png\" alt=\"26 g plus 35 b, equals 881, and, b plus g, equals 28\n\"></span></span></p>\n"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice B is correct. Outfits for boys cost $26 each and the teacher ordered <span class="italic">b</span> outfits for boys, so the teacher spent 26<span class="italic">b</span> dollars on outfits for boys. Similarly, outfits for girls cost $35 each and the teacher ordered <span class="italic">g</span> outfits for girls, so the teacher spent 35<span class="italic">g</span> dollars on outfits for girls. Since the teacher spent a total of $881 on outfits for boys and girls, the equation 26<span class="italic">b</span> + 35<span class="italic">g</span> = 881 must be true. And since the teacher ordered a total of 28 outfits, the equation <span class="italic">b</span> + <span class="italic">g</span> = 28 must also be true.<p><br>Choice A is incorrect and may result from switching the constraint on the total number of outfits with the constraint on the cost of the outfits. Choice C is incorrect and may result from switching the constraint on the total number of outfits with the constraint on the cost of the outfits, as well as switching the cost of the outfits for boys with the cost of the outfits for girls. Choice D is incorrect and may result from switching the cost of the outfits for boys with the cost of the outfits for girls.</p><p>&nbsp;</p></p>
$SATQ$, false, 4, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"ee031767","external_id":null,"disclosed_item_id":"08084-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">A dance teacher ordered outfits for students for a dance recital. Outfits for boys cost $26, and outfits for girls cost $35. The dance teacher ordered a total of 28 outfits and spent $881. If <span class=\"italic\">b</span> represents the number of outfits the dance teacher ordered for boys and <span class=\"italic\">g</span> represents the number of outfits the dance teacher ordered for girls, which of the following systems of equations can be solved to find <span class=\"italic\">b</span> and <span class=\"italic\">g</span> ?</p>\n","answerOptions":[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ee031767/img_000_8aa80920.png\" alt=\"Each option consists of two equations. 26 b plus 35 g, equals 28, \nand, b plus g, equals 881\n\"></span></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ee031767/img_001_599491dd.png\" alt=\"26 b plus 35 g, equals 881, \nand,\nb plus g, equals 28\n\"></span></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ee031767/img_002_82b4fc3c.png\" alt=\"26 g plus 35 b, equals 28, and, b plus g, equals 881\n\"></span></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/ee031767/img_003_917f89c2.png\" alt=\"26 g plus 35 b, equals 881, and, b plus g, equals 28\n\"></span></span></p>\n"}],"keys":null,"correct_answer":["B"],"rationale":"<p>Choice B is correct. Outfits for boys cost $26 each and the teacher ordered <span class=\"italic\">b</span> outfits for boys, so the teacher spent 26<span class=\"italic\">b</span> dollars on outfits for boys. Similarly, outfits for girls cost $35 each and the teacher ordered <span class=\"italic\">g</span> outfits for girls, so the teacher spent 35<span class=\"italic\">g</span> dollars on outfits for girls. Since the teacher spent a total of $881 on outfits for boys and girls, the equation 26<span class=\"italic\">b</span> + 35<span class=\"italic\">g</span> = 881 must be true. And since the teacher ordered a total of 28 outfits, the equation <span class=\"italic\">b</span> + <span class=\"italic\">g</span> = 28 must also be true.<p><br>Choice A is incorrect and may result from switching the constraint on the total number of outfits with the constraint on the cost of the outfits. Choice C is incorrect and may result from switching the constraint on the total number of outfits with the constraint on the cost of the outfits, as well as switching the cost of the outfits for boys with the cost of the outfits for girls. Choice D is incorrect and may result from switching the cost of the outfits for boys with the cost of the outfits for girls.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":4,"raw_list":{"updateDate":1691007959634,"pPcc":"SAT#H","questionId":"ee031767","skill_cd":"H.D.","score_band_range_cd":2,"skill_desc":"Systems of two linear equations in two variables","createDate":1691007959634,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"08084-DC","external_id":null,"primary_class_cd":"H","uId":"a5a13c7f-f52d-4210-aefd-8474d083ee88","difficulty":"E"},"raw_detail":{"item_id":"08084-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">A dance teacher ordered outfits for students for a dance recital. Outfits for boys cost $26, and outfits for girls cost $35. The dance teacher ordered a total of 28 outfits and spent $881. If <span class=\"italic\">b</span> represents the number of outfits the dance teacher ordered for boys and <span class=\"italic\">g</span> represents the number of outfits the dance teacher ordered for girls, which of the following systems of equations can be solved to find <span class=\"italic\">b</span> and <span class=\"italic\">g</span> ?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHIAAAA2CAYAAAAbFM0HAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAbSkFbcgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAD4UlEQVR4Xu2aAZKrIAyGezwP5HF6l16lN+EBIRhCosFit87LN8NsixFC/hCt7sNxHMdxHMdxHMdxHMdxHMdxHMdxHOebhPAOz+UR0kdsy/Od/jaE9zMsxOaxvlSbeKg7NovXSnx4LCG62swVwius9Thpgr/fwBrfdl2DMdwmWePy4cTwWvNAdDLsw8ExWNwhsNvGmg0slvvaignJdJ0PI1jjK69rQExYdJ/V7+dSB0ZnuGjUpnRB3/KMZxgdKGBi7Dku7XbJtxyEEz5cgS2+8tqzuLGzfD0H3VmaM5yafXFyWib2xEEsQkrQOUuXOQD13PgxtTQ3XXc2uog+vhcJmQcpWb1N2l57urJKjqNT0q6VOCskjL8lGYqzrGsOTupKrfe1TQCYfwlL6hN2M13bXrP6T+Nbv5M4QczH49HAB8HvTcBKFjUlTeozCjQqJAjYB68GnARJ8ku6BOA6ueiz0USia5Ju4oaoosVZoGfr4wvkuw3sWgcwsPzcWRmOIh2VIOqr6pNS4mYixherA42lkHxmakawoGgZxIUTs7wE7Sg4VjsJ8Hs/g6mvmmDQL48zI/HU+Cr+0OQrXcdAjZYzQF04E1K6OHMbjU+EtMzRC9nbnwqckd34Kv5bY1fBTNG2sVaK6MJrxjIh+UVdwyIkLGw/cy3ZLc1Vy5vB11EO47u7UYyJhYNokyA8iPw8/E4zaCSjTEIKwUa/qh9oQwIgJQBPMNwxPBE/xRpfmJ/4bDyvgtkitzYbMCDY6CRwLNmXnZnbQFkwsgm1tS6TT9isr+NEOsNIfGsylWYW0dkYqR7Oj5B3CS3PuDsnl1XnYqTS6yI6juM4juM4juM4/yX4kHb2s8a/gj+3lNZlsUGS7S2efW4Pve8vZPcmQXv7cWCD4LFbCMmfP1qxvH76Jpo/WbjYmT5bbBD69uLnhaQPjSFTofGFSowI2b86ilkzuRJol4hGSINNAnxLb0RgjTcQEhxNH3FxkInHAbYKyd8wwHnX/PshJOPE0lp8+X0hhbfRdoFsdlLpxuBdESBaErX3jBabxH2ErCWEBFlxHvvTx71GhVXHuuBOeSvfZLexRLXYUG4jpLhbivMzdqQmGPTLO+FMwiS0ueilwmJTujK3EZJf5BPSLpWwC9mPpQXuEzS/ab/FpnRlbiFkzXwmZBbX8HPEJKRgU8vbiZ88e6i7P4u0vyOpTenK3EPIsiiaiVpmSliETPDEgLvG2OKJ6ftMujvSskYqhMUGuYeQNQvB2dRlFXGE7QYD2lX/fojURClNEsFik7iFkH/FyK53fgR+V1x35wVl1bkQXlZzcxE/4PH4B9cNjEMLc1PZAAAAAElFTkSuQmCC\" alt=\"Each option consists of two equations. 26 b plus 35 g, equals 28, \nand, b plus g, equals 881\n\"></span></span></p>\n"},"b":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHsAAAA2CAYAAADnAebNAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAbSkFbcgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAEDUlEQVR4Xu2aAZKDMAhFPZ4H8ji9S6/Sm7gSQiQIilG7U+XNZLamaAgfElfbBUEQBEEQBEEQBEEQBEEQBEEQBEEQBMGvMI6f8dV3I3yk1r8+8Ldi/LzGntl0w9u0mb5afHcW74H50PXj5Go11ji+x6F8z5ri77eofdbj47EhwFbTaJVZ6GEKEV58fA9pMH4x6iMHKKByQLSbr3U2GBDpay04Jtx1PuxF97kW02ND0Hf7xU6BWVbH59VPxzg4JYS8OLfJXdjXv6Yzlk6uQcmzls3aqqH5loLR4MMVWPNK4k6d8NljQ2DMITEaxLbA7MliGwkhKavE5CBmKjY5CQ2P2Bp8zNylBkmjnDt9hAZj83kno4NY21oltsMGQN9AB31VbSYNlKtjDgAOMn2dmhyMBIOP5LhW/RqtYuP150QslT4MKYDQBW3pa50kOH4/9tCnrAp8bmtN8x8Tf44BxrO29dgQ5MspYsuB6LgKas5GPqDalx3TnObsFZsvZ/ycIgoTTPNL225onqcEUcD91W4qAY8NcJrYRdgpgtgz98mLo3MyG2snLceKKBttM0mykFvLNvfV9MlYTo8wbxUsTiL5PDacU8QumSUCR2LLIEhx0/myWrJjm6I57TTQb7sSAO6rJSr269dpTU5rrCr5HDa5K3FYbNwzjEyygiPEljcUgFbtGkfE9oyxFHtpbwX3CJZvlT8Om9yVOCQ2TtI+2bp4lZ3ZRorNb/Ryl4pHbJz88SrRxipLqcPXPawXyrrP3CZ3JZrFpoG2TpSBlufRMc9EKzM1XGIrgpBfxQ+yYUGSvgMyCWll29r7W8BrM3+UmHtsiGaxqar1VmcVBY0aHwy/A3t0BLq8Qu9hFnNui4posBne28l2hJJMuWlCeWyAZrEDZM8qFPwQaTXjWwFV+QVLePDPaMt8CB0EQRAEQRAEQRAEQRP04P2qZ8PfRHto4nkWfYe5u5hfZPz2hGeh2Ruk/AKHC754y5RtHiG4fF7sxfNq8pvgCrV8obH1PhtICTB15sN7wl8E8KXNI+AeseXyCud8a0Xh41hb1kPERsHgIwWAVwIcW3jF5gmFx3DeNT/d1UhCLn6s8MBlXPtVhF9En522TVCAr34JbwmJCU2J85B32RiMerIkohSipeLMa33hPwASmi/P6k2ckvC3RK06Z8V67CxRsV+vqJakkpTKZUIDlj/ereun0W5MtGrX8Iu9foecu06DbjS1SrXm5p3zz1IqSIgtb2gsXGIrNmUpdYyxF6poa0k2V5ok9o0rmybOM3pPhnvEBvS74amJJDsKzWdr78XxH7Znz9mcKzy185ey5f/YviTZS9mn1VZXbUm43G5/c/Zf3H5/fCqp2tgSLh+wBDdCLuGphdAX03V/WKOMQwXgUtoAAAAASUVORK5CYII=\" alt=\"26 b plus 35 g, equals 881, \nand,\nb plus g, equals 28\n\"></span></span></p>\n"},"c":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHIAAAA2CAYAAAAbFM0HAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAbSkFbcgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAD5klEQVR4Xu2aDZKDIAyFPZ4H8ji9S6/Sm7hCCMaYYPzr1pn3zTDb0gAhL6FWtwMAAAAAAAAAAAAAAAAAAAAAgG8yjp/x1Xdjesmtf33S3wXj5zX2wqYb3iubb/AehA9dP06uLvwYx/c41M9FU/7yfqbuRf/VROO73NdOv+ZFhmn7NHB8D3kiuRj38eQcLMuhO6HNal+XYpJAs40Hjd22O0M0vva+dohJm15n9efV14nZGS2atCldh+HEaDluVZDlWw5C/5o+afuV/Q/YnSEWX3vvWdyps7w9hsxWzxmLOQOpJecimR8R0qKuJzYcCYAcJ4+0vesfZR3fm4TMk5RsnRddfvfoCtVBJXH6sU99G5l/VEjK7DnJ2Id+GHJwUldqa1/nvfCarRNG2rda1H8Z3/perE0xP5lYehJ+vwhYySIZIOuo4rE6kJq9QlLQ18GrARd+WL6afTt9OIonktyTdRG3iyratAr1zH1aDJnBHARt4x0bV2U4z791BOlqoz0tg+Xt4UrM+JZTZOGfkWhhakaooHgZJIPhCpb7t7PrTDWQ3+01tHB5jD49Gj5ckXhufJ3Y6eQLwV/4Vga4Iq2EXAcz6swZIbVIFtrGupCIzHOUZnyddXf7w5nilbF35EiRLCHqkbFxoZOICEkba2duJLtrdSkh9QXIVWzGt1kowYrkSbxFGB1Ea5wOBGehDphFSEgjMdgv9qPaiAB4vstsJ5vrqzEaX4qV8Dk4rsLZYrdlNnBAuOlF5iBSG97b4uxFr5Gann/LhvaR9lYqM7d7jtQ98a2JX1pYxLu5K8vBjeTMk0ceV8VUCtkAPAPrOIOIAAAAAAAAAADAj8M3aa+8L/qf6PuW1r4iNkyy/Zl7ny3mG8nPF3L1JKHc7JdCRWwY/uwRQup7pVEij5++iedPFm7qTK8jNox8evHzQsob3JSp1PRGLfYIqe/HpjFXnwTeV8RCyIBNgnxLT29ojw8QkhxNL3lzlInbAY4KqZ+G0Dj/XyWlT61mrUvJeOHRWnz5fSGNp9FxgWJ21tHNwbsjQPJI9J6JRmwSzxGyHiEiyI7z3J9etpoU1p3rhivl+fgW1aYSNWIjeYyQZrUU56+oSE8w6rcr4UjCJLy15FdFxKZ0ZR4jpP6ST1hVahEXcj2XF7gzeH7L/ohN6co8Qsia+UrILG7g50hISMOmHm8HfvK0cKs/i9SuSGlTujLPELJsSmail5kWESETOjHoqnFq08D0/kpWV6Rlj1KIiA3zDCFrFpKzqSsq4h7mCwxqd/yrpKQmSmmWCBGbxCOE/C/2VD34EfRVca3OG45VcCP6WM0NIp6g6/4AWAqMQ7w5ivkAAAAASUVORK5CYII=\" alt=\"26 g plus 35 b, equals 28, and, b plus g, equals 881\n\"></span></span></p>\n"},"d":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHsAAAA2CAYAAADnAebNAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAbSkFbcgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAEFElEQVR4Xu2aC5LDIAiGc7wcKMfpXXqV3iQbRBQJRPJod5ryzTi7sUSRHzTb7BAEQRAEQRAEQRAEQRAEQRAEQRAEQRAE38I8v+bHOMzwK7Xx8YKfDfPrMY/MZpieK5tP8JyYD8M4L642fszzc57K56wJf2k9S3fT/w5an/U5PTYE2GoabVKFnpYQ4eDzc0qT8cGojxyggO6e8CQYEOlrKziKWG0s8N6+3Vl0n1sxPTYEfbZf7BSYdXW8HuNyjZNTQsjBuU3uOgwlz1Y2a5Wo+ZaCMT6WT7b9Sv477M5grSuJu3TC7x4bAmMOiXFhofGstxJCQx4JsAA+VjJS8IitUeZjQdGCJOH3YVVVf5PBRVhHRSO2wwbAOIIOF++qaaKc9VUsnGT5ODU5mQw8CjjOI/R1Kuio2JjpNRHJh3GaUgChC9ra17oWmnNrp+L2W03zH5OpjovxbG09NgT5conYciK6boKas5FPqG2LdG/Psb1i8+2M31NEYX5ovqp9O33YA/dXe6gEPDbAZWIXYZcVY0/tk4PzSrAcsLaoIkqn9QJP43N/NbivcI1ragN6WRAZ9Vhjc4tE89hwLvGzZJYIHIm9EowFzBQ19dtZStACeuJqoN/bc0hx0z1yF9rw4WhyWnFpCsVhk7sSp8XGM8PIJEvIldjrgFsOS86IrVWpRNrIhx/AM85erDGb2DlsclfilNgoiH2zNXiTnYpYZXvqPJwBHrFx8dsV4KqkPJcUmz+U5q7TbBfKts/cJnclDotNE/VulIHW7pPBot2id54CLrGV5CG/yI9iw4Jk+c6rBm3WVXQFGAfmjxW7jg1xWGyqar21WUVBoyYnq4HGNj37Au5FzgFNjt+zwXXA2nKFp/YeoYmS+LlpQnlsgMNiv5N3Vkvwj6Qdgm+vVF1LSSWD4D5oW2cIHQRBEARBEARBEATB7aEv3q/8Hvu/0L7g8XwXfYe1u6gvB757wVVo9gYpv8Dhgq/eMmWbnxBcfrftxfNq8pPgDrV++aK9z5Y+pwRYOvPlPeEvLfjW5hFwj9hye4V7PrWj8HmsI+tHxK7vdSkAvBLg2sIrNk8ovIb77H8z5j5ttd68RBJy9Y8VP7iNa/8V4RfRZ6cdExTgd7+Et4TEhKbE+ZH37hiMdrEkohTiSMWZY33gLwASmm/P6kOckvC3RK06Z8V67CxRsV+vqCNJJSmVy4QGLH+8R9dXoz2YaNWu4Rd7+wk5d10GPWhqlWqtzbvmr6VUkBBbPtBYuMRWbMpW6phjL1TR1pZs7jRJ7BtXNi2cZ/SeDPeIDehPw0sTSXYWWk/v7MX5f+zMrtmcKzy167ey9d/YviTZSzmn1dZWbUm43G7/cPZf3P58/FVStbEtXH7BEtwIuYWnFkK/mWH4A9mRjEOdggnWAAAAAElFTkSuQmCC\" alt=\"26 g plus 35 b, equals 881, and, b plus g, equals 28\n\"></span></span></p>\n"}},"correct_choice":"b","rationale":"<p>Choice B is correct. Outfits for boys cost $26 each and the teacher ordered <span class=\"italic\">b</span> outfits for boys, so the teacher spent 26<span class=\"italic\">b</span> dollars on outfits for boys. Similarly, outfits for girls cost $35 each and the teacher ordered <span class=\"italic\">g</span> outfits for girls, so the teacher spent 35<span class=\"italic\">g</span> dollars on outfits for girls. Since the teacher spent a total of $881 on outfits for boys and girls, the equation 26<span class=\"italic\">b</span> + 35<span class=\"italic\">g</span> = 881 must be true. And since the teacher ordered a total of 28 outfits, the equation <span class=\"italic\">b</span> + <span class=\"italic\">g</span> = 28 must also be true.<p><br>Choice A is incorrect and may result from switching the constraint on the total number of outfits with the constraint on the cost of the outfits. Choice C is incorrect and may result from switching the constraint on the total number of outfits with the constraint on the cost of the outfits, as well as switching the cost of the outfits for boys with the cost of the outfits for girls. Choice D is incorrect and may result from switching the cost of the outfits for boys with the cost of the outfits for girls.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959634,"updateDate":1691007959634}$SATQ$::jsonb, 1691007959634, 1691007959634),
    ($SATQ$ee2f611f$SATQ$, NULL, NULL, $SATQ$05431-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.E.$SATQ$, $SATQ$Linear inequalities in one or two variables$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$spr$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">A local transit company sells a monthly pass for $95 that allows an unlimited number of trips of any length. Tickets for individual trips cost $1.50, $2.50, or $3.50, depending on the length of the trip. What is the minimum number of trips per&nbsp;month for which a monthly pass could cost less than purchasing individual tickets for&nbsp;trips? </p>
$SATQ$, NULL, $SATQ$["28"]$SATQ$::jsonb, NULL, $SATQ$<p>The correct answer is 28. The minimum number of individual trips for which the cost of the monthly pass is less than the cost of&nbsp;individual tickets can be found by assuming the maximum cost of the individual tickets, $3.50. If <span class="italic">n</span>&nbsp;tickets costing $3.50 each are purchased in one month, the inequality 95 &lt; 3.50<span class="italic">n</span> represents this situation. Dividing both sides of the inequality by 3.50 yields 27.14 &lt; <span class="italic">n</span>, which is equivalent to <span class="italic">n</span> &gt; 27.14. Since only a whole number of tickets can be purchased, it follows that 28 is the minimum number of trips.&nbsp;</p>
$SATQ$, true, 0, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$SPR$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"ee2f611f","external_id":null,"disclosed_item_id":"05431-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.E.","skill_desc":"Linear inequalities in one or two variables","difficulty":"H","score_band_range_cd":6,"type":"spr","stimulus":null,"stem":"<p class=\"stem_paragraph \">A local transit company sells a monthly pass for $95 that allows an unlimited number of trips of any length. Tickets for individual trips cost $1.50, $2.50, or $3.50, depending on the length of the trip. What is the minimum number of trips per&nbsp;month for which a monthly pass could cost less than purchasing individual tickets for&nbsp;trips? </p>\n","answerOptions":null,"keys":null,"correct_answer":["28"],"rationale":"<p>The correct answer is 28. The minimum number of individual trips for which the cost of the monthly pass is less than the cost of&nbsp;individual tickets can be found by assuming the maximum cost of the individual tickets, $3.50. If <span class=\"italic\">n</span>&nbsp;tickets costing $3.50 each are purchased in one month, the inequality 95 &lt; 3.50<span class=\"italic\">n</span> represents this situation. Dividing both sides of the inequality by 3.50 yields 27.14 &lt; <span class=\"italic\">n</span>, which is equivalent to <span class=\"italic\">n</span> &gt; 27.14. Since only a whole number of tickets can be purchased, it follows that 28 is the minimum number of trips.&nbsp;</p>\n","answer_style":"SPR","section":"Math","image_count":0,"raw_list":{"updateDate":1691007959629,"pPcc":"SAT#H","questionId":"ee2f611f","skill_cd":"H.E.","score_band_range_cd":6,"skill_desc":"Linear inequalities in one or two variables","createDate":1691007959629,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"05431-DC","external_id":null,"primary_class_cd":"H","uId":"3a44696a-85f9-431a-922c-6dcb85759512","difficulty":"H"},"raw_detail":{"item_id":"05431-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">A local transit company sells a monthly pass for $95 that allows an unlimited number of trips of any length. Tickets for individual trips cost $1.50, $2.50, or $3.50, depending on the length of the trip. What is the minimum number of trips per&nbsp;month for which a monthly pass could cost less than purchasing individual tickets for&nbsp;trips? </p>\n","answer":{"style":"SPR","rationale":"<p>The correct answer is 28. The minimum number of individual trips for which the cost of the monthly pass is less than the cost of&nbsp;individual tickets can be found by assuming the maximum cost of the individual tickets, $3.50. If <span class=\"italic\">n</span>&nbsp;tickets costing $3.50 each are purchased in one month, the inequality 95 &lt; 3.50<span class=\"italic\">n</span> represents this situation. Dividing both sides of the inequality by 3.50 yields 27.14 &lt; <span class=\"italic\">n</span>, which is equivalent to <span class=\"italic\">n</span> &gt; 27.14. Since only a whole number of tickets can be purchased, it follows that 28 is the minimum number of trips.&nbsp;</p>\n"}},"createDate":1691007959629,"updateDate":1691007959629,"correct_answer_extracted_from_rationale":true}$SATQ$::jsonb, 1691007959629, 1691007959629),
    ($SATQ$ee439cff$SATQ$, $SATQ$816cb6b4-6796-4c47-ae29-2ccb52e5c8ab$SATQ$::uuid, $SATQ$af66c95d-8d7f-4418-ad12-c678d46ed700$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.E.$SATQ$, $SATQ$Linear inequalities in one or two variables$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">On a car trip, Rhett and Jessica each drove for part of the trip, and the total distance they drove was under <math alttext="220"><mn>220</mn>
</math> miles. Rhett drove at an average speed of <math alttext="35 miles per hour left parenthesis mph right parenthesis"><mrow><mn>35</mn></mrow><mo>&#160;</mo><mtext>miles</mtext><mo>&#160;</mo><mtext>per</mtext><mo>&#160;</mo><mtext>hour</mtext><mo>&#160;</mo><mfenced><mtext>mph</mtext></mfenced></math>, and Jessica drove at an average speed of <math alttext="40 mph"><mrow><mn>40</mn></mrow><mo>&#160;</mo><mtext>mph</mtext></math>. Which of the following inequalities represents this situation, where <math alttext="r"><mi>r</mi>
</math> is the number of hours Rhett drove and <math alttext="j"><mi>j</mi>
</math> is the number of hours Jessica drove?</p>$SATQ$, $SATQ$[{"id":"4a390dc9-df5e-4634-b3a6-7896b2d581e6","content":"<p><math alttext=\"35 r plus 40 j greater than 220\"><mrow><mn>35</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>40</mn></mrow><mi>j</mi><mo>&#62;</mo><mrow><mn>220</mn></mrow></math></p>"},{"id":"52e047e4-982a-41d1-85a1-522f1ec1e669","content":"<p><math alttext=\"35 r plus 40 j less than 220\"><mrow><mn>35</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>40</mn></mrow><mi>j</mi><mo>&#60;</mo><mrow><mn>220</mn></mrow></math></p>"},{"id":"4588ae3b-bf86-43e5-a323-413eb0fbf5e6","content":"<p><math alttext=\"40 r plus 35 j greater than 220\"><mrow><mn>40</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>35</mn></mrow><mi>j</mi><mo>&#62;</mo><mrow><mn>220</mn></mrow></math></p>"},{"id":"310bf7a0-83e9-47bf-98a6-7b351c3b18f3","content":"<p><math alttext=\"40 r plus 35 j less than 220\"><mrow><mn>40</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>35</mn></mrow><mi>j</mi><mo>&#60;</mo><mrow><mn>220</mn></mrow></math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["52e047e4-982a-41d1-85a1-522f1ec1e669"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. It&rsquo;s given that Rhett drove at an average speed of <math alttext="35"><mn>35</mn>
</math> miles per hour and that he drove for <math alttext="r"><mi>r</mi>
</math> hours. Multiplying <math alttext="35"><mn>35</mn>
</math> miles per hour by <math alttext="r"><mi>r</mi>
</math> hours yields <math alttext="35 r"><mrow>
	<mn>35</mn>
	<mi>r</mi>
</mrow>
</math> miles, or the distance that Rhett drove. It&rsquo;s also given that Jessica drove at an average speed of <math alttext="40"><mn>40</mn>
</math> miles per hour and that she drove for <math alttext="j"><mi>j</mi>
</math> hours. Multiplying <math alttext="40"><mn>40</mn>
</math> miles per hour by <math alttext="j"><mi>j</mi>
</math> hours yields <math alttext="40 j"><mn>40</mn><mi>j</mi></math> miles, or the distance that Jessica drove. The total distance, in miles, that Rhett and Jessica drove can be represented by the expression <math alttext="35 r plus 40 j"><mn>35</mn><mi>r</mi><mo>+</mo><mn>40</mn><mi>j</mi></math>. It&rsquo;s given that the total distance they drove was under <math alttext="220"><mn>220</mn>
</math> miles. Therefore, the inequality <math alttext="35 r plus 40 j less than 220"><mn>35</mn><mi>r</mi><mo>+</mo><mn>40</mn><mi>j</mi><mo>&#60;</mo><mn>220</mn></math> represents this situation.</p>
<p style="text-align: left;">Choice A is incorrect. This inequality represents a situation in which the total distance Rhett and Jessica drove was over, rather than under, <math alttext="220"><mn>220</mn>
</math> miles.</p>
<p style="text-align: left;">Choice C is incorrect. This inequality represents a situation in which Rhett drove at an average speed of <math alttext="40"><mn>40</mn>
</math>, rather than <math alttext="35"><mn>35</mn>
</math>, miles per hour, Jessica drove at an average speed of <math alttext="35"><mn>35</mn>
</math>, rather than <math alttext="40"><mn>40</mn>
</math>, miles per hour, and the total distance they drove was over, rather than under, <math alttext="220"><mn>220</mn>
</math> miles.</p>
<p style="text-align: left;">Choice D is incorrect. This inequality represents a situation in which Rhett drove at an average speed of <math alttext="40"><mn>40</mn>
</math>, rather than <math alttext="35"><mn>35</mn>
</math>, miles per hour, and Jessica drove at an average speed of <math alttext="35"><mn>35</mn>
</math>, rather than <math alttext="40"><mn>40</mn>
</math>, miles per hour.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"ee439cff","external_id":"816cb6b4-6796-4c47-ae29-2ccb52e5c8ab","disclosed_item_id":null,"source":"qbank","vaultid":"af66c95d-8d7f-4418-ad12-c678d46ed700","uId":"3a28cf2a-ba3c-4764-b859-21d5d0fe8198","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.E.","skill_desc":"Linear inequalities in one or two variables","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">On a car trip, Rhett and Jessica each drove for part of the trip, and the total distance they drove was under <math alttext=\"220\"><mn>220</mn>\n</math> miles. Rhett drove at an average speed of <math alttext=\"35 miles per hour left parenthesis mph right parenthesis\"><mrow><mn>35</mn></mrow><mo>&#160;</mo><mtext>miles</mtext><mo>&#160;</mo><mtext>per</mtext><mo>&#160;</mo><mtext>hour</mtext><mo>&#160;</mo><mfenced><mtext>mph</mtext></mfenced></math>, and Jessica drove at an average speed of <math alttext=\"40 mph\"><mrow><mn>40</mn></mrow><mo>&#160;</mo><mtext>mph</mtext></math>. Which of the following inequalities represents this situation, where <math alttext=\"r\"><mi>r</mi>\n</math> is the number of hours Rhett drove and <math alttext=\"j\"><mi>j</mi>\n</math> is the number of hours Jessica drove?</p>","answerOptions":[{"id":"4a390dc9-df5e-4634-b3a6-7896b2d581e6","content":"<p><math alttext=\"35 r plus 40 j greater than 220\"><mrow><mn>35</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>40</mn></mrow><mi>j</mi><mo>&#62;</mo><mrow><mn>220</mn></mrow></math></p>"},{"id":"52e047e4-982a-41d1-85a1-522f1ec1e669","content":"<p><math alttext=\"35 r plus 40 j less than 220\"><mrow><mn>35</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>40</mn></mrow><mi>j</mi><mo>&#60;</mo><mrow><mn>220</mn></mrow></math></p>"},{"id":"4588ae3b-bf86-43e5-a323-413eb0fbf5e6","content":"<p><math alttext=\"40 r plus 35 j greater than 220\"><mrow><mn>40</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>35</mn></mrow><mi>j</mi><mo>&#62;</mo><mrow><mn>220</mn></mrow></math></p>"},{"id":"310bf7a0-83e9-47bf-98a6-7b351c3b18f3","content":"<p><math alttext=\"40 r plus 35 j less than 220\"><mrow><mn>40</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>35</mn></mrow><mi>j</mi><mo>&#60;</mo><mrow><mn>220</mn></mrow></math></p>"}],"keys":["52e047e4-982a-41d1-85a1-522f1ec1e669"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. It&rsquo;s given that Rhett drove at an average speed of <math alttext=\"35\"><mn>35</mn>\n</math> miles per hour and that he drove for <math alttext=\"r\"><mi>r</mi>\n</math> hours. Multiplying <math alttext=\"35\"><mn>35</mn>\n</math> miles per hour by <math alttext=\"r\"><mi>r</mi>\n</math> hours yields <math alttext=\"35 r\"><mrow>\n\t<mn>35</mn>\n\t<mi>r</mi>\n</mrow>\n</math> miles, or the distance that Rhett drove. It&rsquo;s also given that Jessica drove at an average speed of <math alttext=\"40\"><mn>40</mn>\n</math> miles per hour and that she drove for <math alttext=\"j\"><mi>j</mi>\n</math> hours. Multiplying <math alttext=\"40\"><mn>40</mn>\n</math> miles per hour by <math alttext=\"j\"><mi>j</mi>\n</math> hours yields <math alttext=\"40 j\"><mn>40</mn><mi>j</mi></math> miles, or the distance that Jessica drove. The total distance, in miles, that Rhett and Jessica drove can be represented by the expression <math alttext=\"35 r plus 40 j\"><mn>35</mn><mi>r</mi><mo>+</mo><mn>40</mn><mi>j</mi></math>. It&rsquo;s given that the total distance they drove was under <math alttext=\"220\"><mn>220</mn>\n</math> miles. Therefore, the inequality <math alttext=\"35 r plus 40 j less than 220\"><mn>35</mn><mi>r</mi><mo>+</mo><mn>40</mn><mi>j</mi><mo>&#60;</mo><mn>220</mn></math> represents this situation.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This inequality represents a situation in which the total distance Rhett and Jessica drove was over, rather than under, <math alttext=\"220\"><mn>220</mn>\n</math> miles.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This inequality represents a situation in which Rhett drove at an average speed of <math alttext=\"40\"><mn>40</mn>\n</math>, rather than <math alttext=\"35\"><mn>35</mn>\n</math>, miles per hour, Jessica drove at an average speed of <math alttext=\"35\"><mn>35</mn>\n</math>, rather than <math alttext=\"40\"><mn>40</mn>\n</math>, miles per hour, and the total distance they drove was over, rather than under, <math alttext=\"220\"><mn>220</mn>\n</math> miles.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This inequality represents a situation in which Rhett drove at an average speed of <math alttext=\"40\"><mn>40</mn>\n</math>, rather than <math alttext=\"35\"><mn>35</mn>\n</math>, miles per hour, and Jessica drove at an average speed of <math alttext=\"35\"><mn>35</mn>\n</math>, rather than <math alttext=\"40\"><mn>40</mn>\n</math>, miles per hour.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959820,"pPcc":"SAT#H","questionId":"ee439cff","skill_cd":"H.E.","score_band_range_cd":3,"skill_desc":"Linear inequalities in one or two variables","createDate":1691007959820,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"816cb6b4-6796-4c47-ae29-2ccb52e5c8ab","primary_class_cd":"H","uId":"3a28cf2a-ba3c-4764-b859-21d5d0fe8198","difficulty":"E"},"raw_detail":{"keys":["52e047e4-982a-41d1-85a1-522f1ec1e669"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. It&rsquo;s given that Rhett drove at an average speed of <math alttext=\"35\"><mn>35</mn>\n</math> miles per hour and that he drove for <math alttext=\"r\"><mi>r</mi>\n</math> hours. Multiplying <math alttext=\"35\"><mn>35</mn>\n</math> miles per hour by <math alttext=\"r\"><mi>r</mi>\n</math> hours yields <math alttext=\"35 r\"><mrow>\n\t<mn>35</mn>\n\t<mi>r</mi>\n</mrow>\n</math> miles, or the distance that Rhett drove. It&rsquo;s also given that Jessica drove at an average speed of <math alttext=\"40\"><mn>40</mn>\n</math> miles per hour and that she drove for <math alttext=\"j\"><mi>j</mi>\n</math> hours. Multiplying <math alttext=\"40\"><mn>40</mn>\n</math> miles per hour by <math alttext=\"j\"><mi>j</mi>\n</math> hours yields <math alttext=\"40 j\"><mn>40</mn><mi>j</mi></math> miles, or the distance that Jessica drove. The total distance, in miles, that Rhett and Jessica drove can be represented by the expression <math alttext=\"35 r plus 40 j\"><mn>35</mn><mi>r</mi><mo>+</mo><mn>40</mn><mi>j</mi></math>. It&rsquo;s given that the total distance they drove was under <math alttext=\"220\"><mn>220</mn>\n</math> miles. Therefore, the inequality <math alttext=\"35 r plus 40 j less than 220\"><mn>35</mn><mi>r</mi><mo>+</mo><mn>40</mn><mi>j</mi><mo>&#60;</mo><mn>220</mn></math> represents this situation.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This inequality represents a situation in which the total distance Rhett and Jessica drove was over, rather than under, <math alttext=\"220\"><mn>220</mn>\n</math> miles.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This inequality represents a situation in which Rhett drove at an average speed of <math alttext=\"40\"><mn>40</mn>\n</math>, rather than <math alttext=\"35\"><mn>35</mn>\n</math>, miles per hour, Jessica drove at an average speed of <math alttext=\"35\"><mn>35</mn>\n</math>, rather than <math alttext=\"40\"><mn>40</mn>\n</math>, miles per hour, and the total distance they drove was over, rather than under, <math alttext=\"220\"><mn>220</mn>\n</math> miles.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This inequality represents a situation in which Rhett drove at an average speed of <math alttext=\"40\"><mn>40</mn>\n</math>, rather than <math alttext=\"35\"><mn>35</mn>\n</math>, miles per hour, and Jessica drove at an average speed of <math alttext=\"35\"><mn>35</mn>\n</math>, rather than <math alttext=\"40\"><mn>40</mn>\n</math>, miles per hour.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">On a car trip, Rhett and Jessica each drove for part of the trip, and the total distance they drove was under <math alttext=\"220\"><mn>220</mn>\n</math> miles. Rhett drove at an average speed of <math alttext=\"35 miles per hour left parenthesis mph right parenthesis\"><mrow><mn>35</mn></mrow><mo>&#160;</mo><mtext>miles</mtext><mo>&#160;</mo><mtext>per</mtext><mo>&#160;</mo><mtext>hour</mtext><mo>&#160;</mo><mfenced><mtext>mph</mtext></mfenced></math>, and Jessica drove at an average speed of <math alttext=\"40 mph\"><mrow><mn>40</mn></mrow><mo>&#160;</mo><mtext>mph</mtext></math>. Which of the following inequalities represents this situation, where <math alttext=\"r\"><mi>r</mi>\n</math> is the number of hours Rhett drove and <math alttext=\"j\"><mi>j</mi>\n</math> is the number of hours Jessica drove?</p>","externalid":"816cb6b4-6796-4c47-ae29-2ccb52e5c8ab","templateid":"6844164a-17e8-4b69-b119-934c5e597530","vaultid":"af66c95d-8d7f-4418-ad12-c678d46ed700","type":"mcq","answerOptions":[{"id":"4a390dc9-df5e-4634-b3a6-7896b2d581e6","content":"<p><math alttext=\"35 r plus 40 j greater than 220\"><mrow><mn>35</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>40</mn></mrow><mi>j</mi><mo>&#62;</mo><mrow><mn>220</mn></mrow></math></p>"},{"id":"52e047e4-982a-41d1-85a1-522f1ec1e669","content":"<p><math alttext=\"35 r plus 40 j less than 220\"><mrow><mn>35</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>40</mn></mrow><mi>j</mi><mo>&#60;</mo><mrow><mn>220</mn></mrow></math></p>"},{"id":"4588ae3b-bf86-43e5-a323-413eb0fbf5e6","content":"<p><math alttext=\"40 r plus 35 j greater than 220\"><mrow><mn>40</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>35</mn></mrow><mi>j</mi><mo>&#62;</mo><mrow><mn>220</mn></mrow></math></p>"},{"id":"310bf7a0-83e9-47bf-98a6-7b351c3b18f3","content":"<p><math alttext=\"40 r plus 35 j less than 220\"><mrow><mn>40</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>35</mn></mrow><mi>j</mi><mo>&#60;</mo><mrow><mn>220</mn></mrow></math></p>"}],"correct_answer":["B"]},"createDate":1691007959820,"updateDate":1691007959820}$SATQ$::jsonb, 1691007959820, 1691007959820),
    ($SATQ$ee7b1de1$SATQ$, $SATQ$3e613a2d-72f8-4e08-8fce-8abf51849968$SATQ$::uuid, $SATQ$8e9d64e6-d958-4e6a-9a7d-e83084534df4$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.E.$SATQ$, $SATQ$Linear inequalities in one or two variables$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: left;">A small business owner budgets&nbsp;<math alttext="dollar sign 2,200"><mo>$</mo><mrow><mn>2,200</mn></mrow></math> to purchase candles. The owner must purchase a minimum of <math alttext="200"><mn>200</mn>
</math> candles to maintain the discounted pricing. If the owner pays <math alttext="dollar sign 4.90"><mo>$</mo><mn>4.90</mn></math> per candle to purchase small candles and <math alttext="dollar sign 11.60"><mo>$</mo><mn>11.60</mn></math> per candle to purchase large candles, what is the maximum number of large candles the owner can purchase to stay within the budget and maintain the discounted pricing?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["182"]$SATQ$::jsonb, $SATQ$["182"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="182"><mn>182</mn>
</math>. Let <math alttext="s"><mi>s</mi>
</math> represent the number of small candles the owner can purchase, and let <math alttext="script l"><mi mathvariant="script">l</mi></math> represent the number of large candles the owner can purchase. It&rsquo;s given that the owner pays <math alttext="dollar sign 4.90"><mo>$</mo><mn>4.90</mn></math> per candle to purchase small candles and&nbsp;<math alttext="dollar sign 11.60"><mo>$</mo><mn>11.60</mn></math> per candle to purchase large candles. Therefore, the owner pays <math alttext="4.90 s"><mn>4.90</mn><mi>s</mi></math> dollars for <math alttext="s"><mi>s</mi>
</math> small candles and&nbsp;<math alttext="11.60 script l"><mn>11.60</mn><mi mathvariant="script">l</mi></math> dollars for&nbsp;<math alttext="script l"><mi mathvariant="script">l</mi></math> large candles, which means the owner pays a total of <math alttext="4.90 s plus 11.60 script l"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant="script">l</mi></math> dollars to purchase candles. It&rsquo;s given that the owner budgets <math alttext="dollar sign 2,200"><mo>$</mo><mn>2,200</mn></math> to purchase candles. Therefore,&nbsp;<math alttext="4.90 s plus 11.60 script l less than or equals 2,200"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant="script">l</mi><mo>≤</mo><mn>2,200</mn></math>. It&rsquo;s also given that the owner must purchase a minimum of <math alttext="200"><mn>200</mn>
</math> candles. Therefore, <math alttext="s plus script l greater than or equals 200"><mi>s</mi><mo>+</mo><mi mathvariant="script">l</mi><mo>≥</mo><mn>200</mn></math>. The inequalities <math alttext="4.90 s plus 11.60 script l less than or equals 2,200"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant="script">l</mi><mo>≤</mo><mn>2,200</mn></math> and <math alttext="s plus script l greater than or equals 200"><mi>s</mi><mo>+</mo><mi mathvariant="script">l</mi><mo>≥</mo><mn>200</mn></math> can be combined into one compound inequality by rewriting the second inequality so that its left-hand side is equivalent to the left-hand side of the first inequality. Subtracting <math alttext="script l"><mi mathvariant="script">l</mi></math> from both sides of the inequality&nbsp;<math alttext="s plus script l greater than or equals 200"><mi>s</mi><mo>+</mo><mi mathvariant="script">l</mi><mo>≥</mo><mn>200</mn></math> yields&nbsp;<math alttext="s greater than or equals 200 minus script l"><mi>s</mi><mo>≥</mo><mn>200</mn><mo>-</mo><mi mathvariant="script">l</mi></math>. Multiplying both sides of this inequality by <math alttext="4.90"><mn>4.90</mn></math> yields&nbsp;<math alttext="4.90 s greater than or equals 4.90 left parenthesis 200 minus script l right parenthesis"><mn>4.90</mn><mi>s</mi><mo>≥</mo><mn>4.90</mn><mfenced><mrow><mn>200</mn><mo>-</mo><mi mathvariant="script">l</mi></mrow></mfenced></math>, or&nbsp;<math alttext="4.90 s greater than or equals 980 minus 4.90 script l"><mn>4.90</mn><mi>s</mi><mo>≥</mo><mn>980</mn><mo>-</mo><mn>4.90</mn><mi mathvariant="script">l</mi></math>. Adding&nbsp;<math alttext="11.60 script l"><mn>11.60</mn><mi mathvariant="script">l</mi></math> to both sides of this inequality yields <math alttext="4.90 s plus 11.60 script l greater than or equals 980 minus 4 period 90 script l plus 11 period 60 script l"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant="script">l</mi><mo>≥</mo><mn>980</mn><mo>-</mo><mn>4</mn><mo>.</mo><mn>90</mn><mi mathvariant="script">l</mi><mo>+</mo><mn>11</mn><mo>.</mo><mn>60</mn><mi mathvariant="script">l</mi></math>, or&nbsp;<math alttext="4.90 s plus 11.60 script l greater than or equals 980 plus 6.70 script l"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant="script">l</mi><mo>≥</mo><mn>980</mn><mo>+</mo><mn>6.70</mn><mi mathvariant="script">l</mi></math>. This inequality can be combined with the inequality&nbsp;<math alttext="4.90 s plus 11.60 script l less than or equals 2,200"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant="script">l</mi><mo>≤</mo><mn>2,200</mn></math>, which yields the compound inequality <math alttext="980 plus 6.70 script l less than or equals 4.90 s plus 11.60 script l less than or equals 2,200"><mn>980</mn><mo>+</mo><mn>6.70</mn><mi mathvariant="script">l</mi><mo>≤</mo><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant="script">l</mi><mo>≤</mo><mn>2,200</mn></math>. It follows that&nbsp;<math alttext="980 plus 6.70 script l less than or equals 2,200"><mn>980</mn><mo>+</mo><mn>6.70</mn><mi mathvariant="script">l</mi><mo>≤</mo><mn>2,200</mn></math>. Subtracting <math alttext="980"><mn>980</mn>
</math> from both sides of this inequality yields&nbsp;<math alttext="6.70 script l less than or equals 2,200"><mn>6.70</mn><mi mathvariant="script">l</mi><mo>≤</mo><mn>2,200</mn></math>. Dividing both sides of this inequality by&nbsp;<math alttext="6.70"><mn>6.70</mn></math> yields approximately <math alttext="script l less than or equals 182.09"><mi mathvariant="script">l</mi><mo>≤</mo><mn>182.09</mn></math>. Since the number of large candles the owner purchases must be a whole number, the maximum number of large candles the owner can purchase is the largest whole number less than <math alttext="182.09"><mn>182.09</mn>
</math>, which is <math alttext="182"><mn>182</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"ee7b1de1","external_id":"3e613a2d-72f8-4e08-8fce-8abf51849968","disclosed_item_id":null,"source":"qbank","vaultid":"8e9d64e6-d958-4e6a-9a7d-e83084534df4","uId":"73857a20-b09c-4ca2-a92e-587e4a2e0732","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.E.","skill_desc":"Linear inequalities in one or two variables","difficulty":"H","score_band_range_cd":7,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: left;\">A small business owner budgets&nbsp;<math alttext=\"dollar sign 2,200\"><mo>$</mo><mrow><mn>2,200</mn></mrow></math> to purchase candles. The owner must purchase a minimum of <math alttext=\"200\"><mn>200</mn>\n</math> candles to maintain the discounted pricing. If the owner pays <math alttext=\"dollar sign 4.90\"><mo>$</mo><mn>4.90</mn></math> per candle to purchase small candles and <math alttext=\"dollar sign 11.60\"><mo>$</mo><mn>11.60</mn></math> per candle to purchase large candles, what is the maximum number of large candles the owner can purchase to stay within the budget and maintain the discounted pricing?</p>","answerOptions":[],"keys":["182"],"correct_answer":["182"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"182\"><mn>182</mn>\n</math>. Let <math alttext=\"s\"><mi>s</mi>\n</math> represent the number of small candles the owner can purchase, and let <math alttext=\"script l\"><mi mathvariant=\"script\">l</mi></math> represent the number of large candles the owner can purchase. It&rsquo;s given that the owner pays <math alttext=\"dollar sign 4.90\"><mo>$</mo><mn>4.90</mn></math> per candle to purchase small candles and&nbsp;<math alttext=\"dollar sign 11.60\"><mo>$</mo><mn>11.60</mn></math> per candle to purchase large candles. Therefore, the owner pays <math alttext=\"4.90 s\"><mn>4.90</mn><mi>s</mi></math> dollars for <math alttext=\"s\"><mi>s</mi>\n</math> small candles and&nbsp;<math alttext=\"11.60 script l\"><mn>11.60</mn><mi mathvariant=\"script\">l</mi></math> dollars for&nbsp;<math alttext=\"script l\"><mi mathvariant=\"script\">l</mi></math> large candles, which means the owner pays a total of <math alttext=\"4.90 s plus 11.60 script l\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi></math> dollars to purchase candles. It&rsquo;s given that the owner budgets <math alttext=\"dollar sign 2,200\"><mo>$</mo><mn>2,200</mn></math> to purchase candles. Therefore,&nbsp;<math alttext=\"4.90 s plus 11.60 script l less than or equals 2,200\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math>. It&rsquo;s also given that the owner must purchase a minimum of <math alttext=\"200\"><mn>200</mn>\n</math> candles. Therefore, <math alttext=\"s plus script l greater than or equals 200\"><mi>s</mi><mo>+</mo><mi mathvariant=\"script\">l</mi><mo>≥</mo><mn>200</mn></math>. The inequalities <math alttext=\"4.90 s plus 11.60 script l less than or equals 2,200\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math> and <math alttext=\"s plus script l greater than or equals 200\"><mi>s</mi><mo>+</mo><mi mathvariant=\"script\">l</mi><mo>≥</mo><mn>200</mn></math> can be combined into one compound inequality by rewriting the second inequality so that its left-hand side is equivalent to the left-hand side of the first inequality. Subtracting <math alttext=\"script l\"><mi mathvariant=\"script\">l</mi></math> from both sides of the inequality&nbsp;<math alttext=\"s plus script l greater than or equals 200\"><mi>s</mi><mo>+</mo><mi mathvariant=\"script\">l</mi><mo>≥</mo><mn>200</mn></math> yields&nbsp;<math alttext=\"s greater than or equals 200 minus script l\"><mi>s</mi><mo>≥</mo><mn>200</mn><mo>-</mo><mi mathvariant=\"script\">l</mi></math>. Multiplying both sides of this inequality by <math alttext=\"4.90\"><mn>4.90</mn></math> yields&nbsp;<math alttext=\"4.90 s greater than or equals 4.90 left parenthesis 200 minus script l right parenthesis\"><mn>4.90</mn><mi>s</mi><mo>≥</mo><mn>4.90</mn><mfenced><mrow><mn>200</mn><mo>-</mo><mi mathvariant=\"script\">l</mi></mrow></mfenced></math>, or&nbsp;<math alttext=\"4.90 s greater than or equals 980 minus 4.90 script l\"><mn>4.90</mn><mi>s</mi><mo>≥</mo><mn>980</mn><mo>-</mo><mn>4.90</mn><mi mathvariant=\"script\">l</mi></math>. Adding&nbsp;<math alttext=\"11.60 script l\"><mn>11.60</mn><mi mathvariant=\"script\">l</mi></math> to both sides of this inequality yields <math alttext=\"4.90 s plus 11.60 script l greater than or equals 980 minus 4 period 90 script l plus 11 period 60 script l\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≥</mo><mn>980</mn><mo>-</mo><mn>4</mn><mo>.</mo><mn>90</mn><mi mathvariant=\"script\">l</mi><mo>+</mo><mn>11</mn><mo>.</mo><mn>60</mn><mi mathvariant=\"script\">l</mi></math>, or&nbsp;<math alttext=\"4.90 s plus 11.60 script l greater than or equals 980 plus 6.70 script l\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≥</mo><mn>980</mn><mo>+</mo><mn>6.70</mn><mi mathvariant=\"script\">l</mi></math>. This inequality can be combined with the inequality&nbsp;<math alttext=\"4.90 s plus 11.60 script l less than or equals 2,200\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math>, which yields the compound inequality <math alttext=\"980 plus 6.70 script l less than or equals 4.90 s plus 11.60 script l less than or equals 2,200\"><mn>980</mn><mo>+</mo><mn>6.70</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math>. It follows that&nbsp;<math alttext=\"980 plus 6.70 script l less than or equals 2,200\"><mn>980</mn><mo>+</mo><mn>6.70</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math>. Subtracting <math alttext=\"980\"><mn>980</mn>\n</math> from both sides of this inequality yields&nbsp;<math alttext=\"6.70 script l less than or equals 2,200\"><mn>6.70</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math>. Dividing both sides of this inequality by&nbsp;<math alttext=\"6.70\"><mn>6.70</mn></math> yields approximately <math alttext=\"script l less than or equals 182.09\"><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>182.09</mn></math>. Since the number of large candles the owner purchases must be a whole number, the maximum number of large candles the owner can purchase is the largest whole number less than <math alttext=\"182.09\"><mn>182.09</mn>\n</math>, which is <math alttext=\"182\"><mn>182</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959820,"pPcc":"SAT#H","questionId":"ee7b1de1","skill_cd":"H.E.","score_band_range_cd":7,"skill_desc":"Linear inequalities in one or two variables","createDate":1691007959820,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"3e613a2d-72f8-4e08-8fce-8abf51849968","primary_class_cd":"H","uId":"73857a20-b09c-4ca2-a92e-587e4a2e0732","difficulty":"H"},"raw_detail":{"keys":["182"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"182\"><mn>182</mn>\n</math>. Let <math alttext=\"s\"><mi>s</mi>\n</math> represent the number of small candles the owner can purchase, and let <math alttext=\"script l\"><mi mathvariant=\"script\">l</mi></math> represent the number of large candles the owner can purchase. It&rsquo;s given that the owner pays <math alttext=\"dollar sign 4.90\"><mo>$</mo><mn>4.90</mn></math> per candle to purchase small candles and&nbsp;<math alttext=\"dollar sign 11.60\"><mo>$</mo><mn>11.60</mn></math> per candle to purchase large candles. Therefore, the owner pays <math alttext=\"4.90 s\"><mn>4.90</mn><mi>s</mi></math> dollars for <math alttext=\"s\"><mi>s</mi>\n</math> small candles and&nbsp;<math alttext=\"11.60 script l\"><mn>11.60</mn><mi mathvariant=\"script\">l</mi></math> dollars for&nbsp;<math alttext=\"script l\"><mi mathvariant=\"script\">l</mi></math> large candles, which means the owner pays a total of <math alttext=\"4.90 s plus 11.60 script l\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi></math> dollars to purchase candles. It&rsquo;s given that the owner budgets <math alttext=\"dollar sign 2,200\"><mo>$</mo><mn>2,200</mn></math> to purchase candles. Therefore,&nbsp;<math alttext=\"4.90 s plus 11.60 script l less than or equals 2,200\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math>. It&rsquo;s also given that the owner must purchase a minimum of <math alttext=\"200\"><mn>200</mn>\n</math> candles. Therefore, <math alttext=\"s plus script l greater than or equals 200\"><mi>s</mi><mo>+</mo><mi mathvariant=\"script\">l</mi><mo>≥</mo><mn>200</mn></math>. The inequalities <math alttext=\"4.90 s plus 11.60 script l less than or equals 2,200\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math> and <math alttext=\"s plus script l greater than or equals 200\"><mi>s</mi><mo>+</mo><mi mathvariant=\"script\">l</mi><mo>≥</mo><mn>200</mn></math> can be combined into one compound inequality by rewriting the second inequality so that its left-hand side is equivalent to the left-hand side of the first inequality. Subtracting <math alttext=\"script l\"><mi mathvariant=\"script\">l</mi></math> from both sides of the inequality&nbsp;<math alttext=\"s plus script l greater than or equals 200\"><mi>s</mi><mo>+</mo><mi mathvariant=\"script\">l</mi><mo>≥</mo><mn>200</mn></math> yields&nbsp;<math alttext=\"s greater than or equals 200 minus script l\"><mi>s</mi><mo>≥</mo><mn>200</mn><mo>-</mo><mi mathvariant=\"script\">l</mi></math>. Multiplying both sides of this inequality by <math alttext=\"4.90\"><mn>4.90</mn></math> yields&nbsp;<math alttext=\"4.90 s greater than or equals 4.90 left parenthesis 200 minus script l right parenthesis\"><mn>4.90</mn><mi>s</mi><mo>≥</mo><mn>4.90</mn><mfenced><mrow><mn>200</mn><mo>-</mo><mi mathvariant=\"script\">l</mi></mrow></mfenced></math>, or&nbsp;<math alttext=\"4.90 s greater than or equals 980 minus 4.90 script l\"><mn>4.90</mn><mi>s</mi><mo>≥</mo><mn>980</mn><mo>-</mo><mn>4.90</mn><mi mathvariant=\"script\">l</mi></math>. Adding&nbsp;<math alttext=\"11.60 script l\"><mn>11.60</mn><mi mathvariant=\"script\">l</mi></math> to both sides of this inequality yields <math alttext=\"4.90 s plus 11.60 script l greater than or equals 980 minus 4 period 90 script l plus 11 period 60 script l\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≥</mo><mn>980</mn><mo>-</mo><mn>4</mn><mo>.</mo><mn>90</mn><mi mathvariant=\"script\">l</mi><mo>+</mo><mn>11</mn><mo>.</mo><mn>60</mn><mi mathvariant=\"script\">l</mi></math>, or&nbsp;<math alttext=\"4.90 s plus 11.60 script l greater than or equals 980 plus 6.70 script l\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≥</mo><mn>980</mn><mo>+</mo><mn>6.70</mn><mi mathvariant=\"script\">l</mi></math>. This inequality can be combined with the inequality&nbsp;<math alttext=\"4.90 s plus 11.60 script l less than or equals 2,200\"><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math>, which yields the compound inequality <math alttext=\"980 plus 6.70 script l less than or equals 4.90 s plus 11.60 script l less than or equals 2,200\"><mn>980</mn><mo>+</mo><mn>6.70</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>4.90</mn><mi>s</mi><mo>+</mo><mn>11.60</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math>. It follows that&nbsp;<math alttext=\"980 plus 6.70 script l less than or equals 2,200\"><mn>980</mn><mo>+</mo><mn>6.70</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math>. Subtracting <math alttext=\"980\"><mn>980</mn>\n</math> from both sides of this inequality yields&nbsp;<math alttext=\"6.70 script l less than or equals 2,200\"><mn>6.70</mn><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>2,200</mn></math>. Dividing both sides of this inequality by&nbsp;<math alttext=\"6.70\"><mn>6.70</mn></math> yields approximately <math alttext=\"script l less than or equals 182.09\"><mi mathvariant=\"script\">l</mi><mo>≤</mo><mn>182.09</mn></math>. Since the number of large candles the owner purchases must be a whole number, the maximum number of large candles the owner can purchase is the largest whole number less than <math alttext=\"182.09\"><mn>182.09</mn>\n</math>, which is <math alttext=\"182\"><mn>182</mn>\n</math>.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">A small business owner budgets&nbsp;<math alttext=\"dollar sign 2,200\"><mo>$</mo><mrow><mn>2,200</mn></mrow></math> to purchase candles. The owner must purchase a minimum of <math alttext=\"200\"><mn>200</mn>\n</math> candles to maintain the discounted pricing. If the owner pays <math alttext=\"dollar sign 4.90\"><mo>$</mo><mn>4.90</mn></math> per candle to purchase small candles and <math alttext=\"dollar sign 11.60\"><mo>$</mo><mn>11.60</mn></math> per candle to purchase large candles, what is the maximum number of large candles the owner can purchase to stay within the budget and maintain the discounted pricing?</p>","externalid":"3e613a2d-72f8-4e08-8fce-8abf51849968","templateid":"1eb40d04-27ef-473a-ab1b-98662bc70336","vaultid":"8e9d64e6-d958-4e6a-9a7d-e83084534df4","type":"spr","answerOptions":[],"correct_answer":["182"]},"createDate":1691007959820,"updateDate":1691007959820}$SATQ$::jsonb, 1691007959820, 1691007959820),
    ($SATQ$ee846db7$SATQ$, $SATQ$0b8822c0-8322-4969-8780-d3d067076d46$SATQ$::uuid, $SATQ$1059378a-fd27-40c0-af95-372a87d651e1$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">A store sells two different-sized containers of a certain Greek yogurt. The store&rsquo;s sales of this Greek yogurt totaled <math alttext="1,277.94"><mn>1,277.94</mn>
</math> dollars last month. The equation <math alttext="5.48 x plus 7.30 y equals 1,277.94"><mrow>
	<mrow>
		<mrow>
			<mn>5.48</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>7.30</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>1,277.94</mn>
</mrow>
</math> represents this situation, where <math alttext="x"><mi>x</mi>
</math> is the number of smaller containers sold and <math alttext="y"><mi>y</mi>
</math> is the number of larger containers sold. According to the equation, which of the following represents the price, in dollars, of each smaller container?</p>$SATQ$, $SATQ$[{"id":"ef20bcd9-06d8-48fc-910b-45bbbf9f915b","content":"<p><math alttext=\"5.48\"><mn>5.48</mn>\n</math></p>"},{"id":"6799c3f1-f890-4960-bb5a-50b710784d23","content":"<p><math alttext=\"7.30 y\"><mrow>\n\t<mn>7.30</mn>\n\t<mi>y</mi>\n</mrow>\n</math></p>"},{"id":"da5cf79b-86f0-47db-a7c9-3aeeb4c2cb9a","content":"<p><math alttext=\"7.30\"><mn>7.30</mn>\n</math></p>"},{"id":"da4d58be-ae69-42f3-b9e3-5246e7c1e5ba","content":"<p><math alttext=\"5.48 x\"><mrow>\n\t<mn>5.48</mn>\n\t<mi>x</mi>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["ef20bcd9-06d8-48fc-910b-45bbbf9f915b"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It's given that the store's sales of a certain Greek yogurt totaled <math alttext="1,277.94"><mn>1,277.94</mn>
</math> dollars last month. It's also given that the equation <math alttext="5.48 x plus 7.30 y equals 1,277.94"><mn>5.48</mn><mi>x</mi><mo>+</mo><mn>7.30</mn><mi>y</mi><mo>=</mo><mn>1,277.94</mn></math> represents this situation, where <math alttext="x"><mi>x</mi>
</math> is the number of smaller containers sold and <math alttext="y"><mi>y</mi>
</math> is the number of larger containers sold. Since <math alttext="x"><mi>x</mi>
</math> represents the number of smaller containers of yogurt sold, the expression <math alttext="5.48 x"><mrow>
	<mn>5.48</mn>
	<mi>x</mi>
</mrow>
</math> represents the total sales, in dollars, from smaller containers of yogurt. This means that <math alttext="x"><mi>x</mi>
</math> smaller containers of yogurt were sold at a price of <math alttext="5.48"><mn>5.48</mn>
</math> dollars each. Therefore, according to the equation, <math alttext="5.48"><mn>5.48</mn>
</math> represents the price, in dollars, of each smaller container.</p>
<p style="text-align: left;">Choice B is incorrect. This expression represents the total sales, in dollars, from selling <math alttext="y"><mi>y</mi>
</math> larger containers of yogurt.</p>
<p style="text-align: left;">Choice C is incorrect. This value represents the price, in dollars, of each larger container of yogurt.</p>
<p style="text-align: left;">Choice D is incorrect. This expression represents the total sales, in dollars, from selling <math alttext="x"><mi>x</mi>
</math> smaller containers of yogurt.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"ee846db7","external_id":"0b8822c0-8322-4969-8780-d3d067076d46","disclosed_item_id":null,"source":"qbank","vaultid":"1059378a-fd27-40c0-af95-372a87d651e1","uId":"0cfcbba4-6b23-45e4-90d4-d9ed3a4e5352","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">A store sells two different-sized containers of a certain Greek yogurt. The store&rsquo;s sales of this Greek yogurt totaled <math alttext=\"1,277.94\"><mn>1,277.94</mn>\n</math> dollars last month. The equation <math alttext=\"5.48 x plus 7.30 y equals 1,277.94\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>5.48</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>7.30</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>1,277.94</mn>\n</mrow>\n</math> represents this situation, where <math alttext=\"x\"><mi>x</mi>\n</math> is the number of smaller containers sold and <math alttext=\"y\"><mi>y</mi>\n</math> is the number of larger containers sold. According to the equation, which of the following represents the price, in dollars, of each smaller container?</p>","answerOptions":[{"id":"ef20bcd9-06d8-48fc-910b-45bbbf9f915b","content":"<p><math alttext=\"5.48\"><mn>5.48</mn>\n</math></p>"},{"id":"6799c3f1-f890-4960-bb5a-50b710784d23","content":"<p><math alttext=\"7.30 y\"><mrow>\n\t<mn>7.30</mn>\n\t<mi>y</mi>\n</mrow>\n</math></p>"},{"id":"da5cf79b-86f0-47db-a7c9-3aeeb4c2cb9a","content":"<p><math alttext=\"7.30\"><mn>7.30</mn>\n</math></p>"},{"id":"da4d58be-ae69-42f3-b9e3-5246e7c1e5ba","content":"<p><math alttext=\"5.48 x\"><mrow>\n\t<mn>5.48</mn>\n\t<mi>x</mi>\n</mrow>\n</math></p>"}],"keys":["ef20bcd9-06d8-48fc-910b-45bbbf9f915b"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that the store's sales of a certain Greek yogurt totaled <math alttext=\"1,277.94\"><mn>1,277.94</mn>\n</math> dollars last month. It's also given that the equation <math alttext=\"5.48 x plus 7.30 y equals 1,277.94\"><mn>5.48</mn><mi>x</mi><mo>+</mo><mn>7.30</mn><mi>y</mi><mo>=</mo><mn>1,277.94</mn></math> represents this situation, where <math alttext=\"x\"><mi>x</mi>\n</math> is the number of smaller containers sold and <math alttext=\"y\"><mi>y</mi>\n</math> is the number of larger containers sold. Since <math alttext=\"x\"><mi>x</mi>\n</math> represents the number of smaller containers of yogurt sold, the expression <math alttext=\"5.48 x\"><mrow>\n\t<mn>5.48</mn>\n\t<mi>x</mi>\n</mrow>\n</math> represents the total sales, in dollars, from smaller containers of yogurt. This means that <math alttext=\"x\"><mi>x</mi>\n</math> smaller containers of yogurt were sold at a price of <math alttext=\"5.48\"><mn>5.48</mn>\n</math> dollars each. Therefore, according to the equation, <math alttext=\"5.48\"><mn>5.48</mn>\n</math> represents the price, in dollars, of each smaller container.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This expression represents the total sales, in dollars, from selling <math alttext=\"y\"><mi>y</mi>\n</math> larger containers of yogurt.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This value represents the price, in dollars, of each larger container of yogurt.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This expression represents the total sales, in dollars, from selling <math alttext=\"x\"><mi>x</mi>\n</math> smaller containers of yogurt.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959814,"pPcc":"SAT#H","questionId":"ee846db7","skill_cd":"H.C.","score_band_range_cd":3,"skill_desc":"Linear equations in two variables","createDate":1691007959814,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"0b8822c0-8322-4969-8780-d3d067076d46","primary_class_cd":"H","uId":"0cfcbba4-6b23-45e4-90d4-d9ed3a4e5352","difficulty":"E"},"raw_detail":{"keys":["ef20bcd9-06d8-48fc-910b-45bbbf9f915b"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that the store's sales of a certain Greek yogurt totaled <math alttext=\"1,277.94\"><mn>1,277.94</mn>\n</math> dollars last month. It's also given that the equation <math alttext=\"5.48 x plus 7.30 y equals 1,277.94\"><mn>5.48</mn><mi>x</mi><mo>+</mo><mn>7.30</mn><mi>y</mi><mo>=</mo><mn>1,277.94</mn></math> represents this situation, where <math alttext=\"x\"><mi>x</mi>\n</math> is the number of smaller containers sold and <math alttext=\"y\"><mi>y</mi>\n</math> is the number of larger containers sold. Since <math alttext=\"x\"><mi>x</mi>\n</math> represents the number of smaller containers of yogurt sold, the expression <math alttext=\"5.48 x\"><mrow>\n\t<mn>5.48</mn>\n\t<mi>x</mi>\n</mrow>\n</math> represents the total sales, in dollars, from smaller containers of yogurt. This means that <math alttext=\"x\"><mi>x</mi>\n</math> smaller containers of yogurt were sold at a price of <math alttext=\"5.48\"><mn>5.48</mn>\n</math> dollars each. Therefore, according to the equation, <math alttext=\"5.48\"><mn>5.48</mn>\n</math> represents the price, in dollars, of each smaller container.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This expression represents the total sales, in dollars, from selling <math alttext=\"y\"><mi>y</mi>\n</math> larger containers of yogurt.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This value represents the price, in dollars, of each larger container of yogurt.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This expression represents the total sales, in dollars, from selling <math alttext=\"x\"><mi>x</mi>\n</math> smaller containers of yogurt.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">A store sells two different-sized containers of a certain Greek yogurt. The store&rsquo;s sales of this Greek yogurt totaled <math alttext=\"1,277.94\"><mn>1,277.94</mn>\n</math> dollars last month. The equation <math alttext=\"5.48 x plus 7.30 y equals 1,277.94\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>5.48</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>7.30</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>1,277.94</mn>\n</mrow>\n</math> represents this situation, where <math alttext=\"x\"><mi>x</mi>\n</math> is the number of smaller containers sold and <math alttext=\"y\"><mi>y</mi>\n</math> is the number of larger containers sold. According to the equation, which of the following represents the price, in dollars, of each smaller container?</p>","externalid":"0b8822c0-8322-4969-8780-d3d067076d46","templateid":"dd6d4f0d-b551-4051-8c96-aa5d00a034e8","vaultid":"1059378a-fd27-40c0-af95-372a87d651e1","type":"mcq","answerOptions":[{"id":"ef20bcd9-06d8-48fc-910b-45bbbf9f915b","content":"<p><math alttext=\"5.48\"><mn>5.48</mn>\n</math></p>"},{"id":"6799c3f1-f890-4960-bb5a-50b710784d23","content":"<p><math alttext=\"7.30 y\"><mrow>\n\t<mn>7.30</mn>\n\t<mi>y</mi>\n</mrow>\n</math></p>"},{"id":"da5cf79b-86f0-47db-a7c9-3aeeb4c2cb9a","content":"<p><math alttext=\"7.30\"><mn>7.30</mn>\n</math></p>"},{"id":"da4d58be-ae69-42f3-b9e3-5246e7c1e5ba","content":"<p><math alttext=\"5.48 x\"><mrow>\n\t<mn>5.48</mn>\n\t<mi>x</mi>\n</mrow>\n</math></p>"}],"correct_answer":["A"]},"createDate":1691007959814,"updateDate":1691007959814}$SATQ$::jsonb, 1691007959814, 1691007959814),
    ($SATQ$eeebe166$SATQ$, $SATQ$d8fb921c-f434-41b5-b963-d87e3d7e5311$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="275.22pt" version="1.1" viewBox="0 0 288.918319 275.22" width="288.918319pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a line in the x y plane with the origin labeled O. The x axis ranges from negative 10 to 2 in increments of 1, with values marked every 2 gridlines. The y axis ranges from negative 2 to 10 in increments of 1, with values marked every 2 gridlines. Refer to long description.">
 <defs>
  <style type="text/css">
*{stroke-linecap:butt;stroke-linejoin:round;}
  </style>
 </defs>
 <g id="figure_1">
  <g id="patch_1">
   <path d="M 0 275.22 
L 288.918319 275.22 
L 288.918319 0 
L 0 0 
z
" style="fill:none;"></path>
  </g>
  <g id="axes_1">
   <g id="patch_2">
    <path d="M 9.558319 260.46 
L 281.718319 260.46 
L 281.718319 10.98 
L 9.558319 10.98 
z
" style="fill:none;"></path>
   </g>
   <g id="matplotlib.axis_1"></g>
   <g id="matplotlib.axis_2"></g>
  </g>
  <g id="axes_2">
   <g id="patch_3">
    <path d="M 7.2 268.02 
L 278.406637 268.02 
L 278.406637 7.2 
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
    <path clip-path="url(#p3ed675abbf)" d="M 39.986102 255.11539 
L 39.986102 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 57.472023 255.11539 
L 57.472023 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 74.957944 255.11539 
L 74.957944 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 92.443866 255.11539 
L 92.443866 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 109.929787 255.11539 
L 109.929787 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 127.415708 255.11539 
L 127.415708 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 144.901629 255.11539 
L 144.901629 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 162.38755 255.11539 
L 162.38755 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 179.873471 255.11539 
L 179.873471 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 197.359393 255.11539 
L 197.359393 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 232.331235 255.11539 
L 232.331235 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 249.817156 255.11539 
L 249.817156 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 249.869614 
L 255.062932 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 232.383693 
L 255.062932 232.383693 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 197.41185 
L 255.062932 197.41185 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 179.925929 
L 255.062932 179.925929 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 162.440008 
L 255.062932 162.440008 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 144.954087 
L 255.062932 144.954087 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 127.468166 
L 255.062932 127.468166 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 109.982245 
L 255.062932 109.982245 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 92.496323 
L 255.062932 92.496323 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 75.010402 
L 255.062932 75.010402 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 57.524481 
L 255.062932 57.524481 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 40.03856 
L 255.062932 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#p3ed675abbf)" d="M 34.740326 214.897772 
L 260.308709 214.897772 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 257.443461 -59.337778 
L 260.308709 -60.322228 
L 257.443461 -61.306679 
L 257.443461 -59.337778 
L 260.308709 -60.322228 
" id="mf532d20bde" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p3ed675abbf)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#mf532d20bde" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#p3ed675abbf)" d="M 214.845314 255.11539 
L 214.845314 29.547007 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 215.859856 -242.098754 
L 214.845314 -245.672993 
L 213.830772 -242.098754 
L 215.859856 -242.098754 
L 214.845314 -245.672993 
" id="mb44a100f7a" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p3ed675abbf)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#mb44a100f7a" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#p3ed675abbf)" d="M 39.986102 218.76308 
L 39.986102 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 57.472023 218.76308 
L 57.472023 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 74.957944 218.76308 
L 74.957944 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 92.443866 218.76308 
L 92.443866 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 109.929787 218.76308 
L 109.929787 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 127.415708 218.76308 
L 127.415708 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 144.901629 218.76308 
L 144.901629 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 162.38755 218.76308 
L 162.38755 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 179.873471 218.76308 
L 179.873471 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 197.359393 218.76308 
L 197.359393 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 232.331235 218.76308 
L 232.331235 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 249.817156 218.76308 
L 249.817156 211.032463 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 249.869614 
L 218.710623 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 232.383693 
L 218.710623 232.383693 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 197.41185 
L 218.710623 197.41185 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 179.925929 
L 218.710623 179.925929 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 162.440008 
L 218.710623 162.440008 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 144.954087 
L 218.710623 144.954087 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 127.468166 
L 218.710623 127.468166 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 109.982245 
L 218.710623 109.982245 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 92.496323 
L 218.710623 92.496323 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 75.010402 
L 218.710623 75.010402 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 57.524481 
L 218.710623 57.524481 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p3ed675abbf)" d="M 210.980005 40.03856 
L 218.710623 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#p3ed675abbf)" d="M 199.894851 256.164545 
L 199.894851 244.623837 
L 207.763516 244.623837 
L 207.763516 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#p3ed675abbf)" d="M 191.763898 249.082747 
L 191.763898 253.541657 
L 202.255451 253.541657 
L 202.255451 249.082747 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_1">
    <g clip-path="url(#p3ed675abbf)">
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
     <g transform="translate(192.584695 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_2">
    <g clip-path="url(#p3ed675abbf)">
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
     <g transform="translate(200.411383 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_3">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 2 -->
     <g transform="translate(200.411383 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#p3ed675abbf)" d="M 199.894851 186.220861 
L 199.894851 174.680153 
L 207.763516 174.680153 
L 207.763516 186.220861 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_4">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 2 -->
     <g transform="translate(200.411383 184.665108)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_5">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 2 -->
     <g transform="translate(200.411383 184.665108)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#p3ed675abbf)" d="M 199.894851 151.249019 
L 199.894851 139.708311 
L 207.763516 139.708311 
L 207.763516 151.249019 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_6">
    <g clip-path="url(#p3ed675abbf)">
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
     <g transform="translate(200.439508 149.693265)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_7">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 4 -->
     <g transform="translate(200.439508 149.693265)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#p3ed675abbf)" d="M 199.894851 116.277176 
L 199.894851 104.736468 
L 207.763516 104.736468 
L 207.763516 116.277176 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_8">
    <g clip-path="url(#p3ed675abbf)">
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
     <g transform="translate(200.411383 114.721423)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_9">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 6 -->
     <g transform="translate(200.411383 114.721423)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#p3ed675abbf)" d="M 199.894851 81.305334 
L 199.894851 69.764626 
L 207.763516 69.764626 
L 207.763516 81.305334 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_10">
    <g clip-path="url(#p3ed675abbf)">
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
     <g transform="translate(200.411383 79.749581)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_11">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 8 -->
     <g transform="translate(200.411383 79.749581)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#p3ed675abbf)" d="M 193.337631 46.333492 
L 193.337631 34.792784 
L 208.025805 34.792784 
L 208.025805 46.333492 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_12">
    <g clip-path="url(#p3ed675abbf)">
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
     <g transform="translate(193.321539 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_13">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 10 -->
     <g transform="translate(193.321539 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#p3ed675abbf)" d="M 19.527574 223.291014 
L 19.527574 227.487635 
L 175.152273 227.487635 
L 175.152273 223.291014 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#p3ed675abbf)" d="M 31.330571 230.110523 
L 31.330571 218.569815 
L 45.231879 218.569815 
L 45.231879 230.110523 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_14">
    <g clip-path="url(#p3ed675abbf)">
     <!-- – -->
     <g transform="translate(23.758126 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_15">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 10 -->
     <g transform="translate(31.052191 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_16">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 10 -->
     <g transform="translate(31.052191 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#p3ed675abbf)" d="M 70.236746 230.110523 
L 70.236746 218.569815 
L 78.10541 218.569815 
L 78.10541 230.110523 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_17">
    <g clip-path="url(#p3ed675abbf)">
     <!-- – -->
     <g transform="translate(63.188878 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_18">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 8 -->
     <g transform="translate(70.490989 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_19">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 8 -->
     <g transform="translate(70.490989 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#p3ed675abbf)" d="M 105.208588 230.110523 
L 105.208588 218.569815 
L 113.077253 218.569815 
L 113.077253 230.110523 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_20">
    <g clip-path="url(#p3ed675abbf)">
     <!-- – -->
     <g transform="translate(98.160721 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_21">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 6 -->
     <g transform="translate(105.462831 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_22">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 6 -->
     <g transform="translate(105.462831 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#p3ed675abbf)" d="M 140.18043 230.110523 
L 140.18043 218.569815 
L 148.049095 218.569815 
L 148.049095 230.110523 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_23">
    <g clip-path="url(#p3ed675abbf)">
     <!-- – -->
     <g transform="translate(133.132563 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_24">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 4 -->
     <g transform="translate(140.462799 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_25">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 4 -->
     <g transform="translate(140.462799 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#p3ed675abbf)" d="M 175.152273 230.110523 
L 175.152273 218.569815 
L 183.020937 218.569815 
L 183.020937 230.110523 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_26">
    <g clip-path="url(#p3ed675abbf)">
     <!-- – -->
     <g transform="translate(168.104405 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_27">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 2 -->
     <g transform="translate(175.406516 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_28">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 2 -->
     <g transform="translate(175.406516 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_14">
    <path clip-path="url(#p3ed675abbf)" d="M 245.095957 230.110523 
L 245.095957 218.569815 
L 252.964622 218.569815 
L 252.964622 230.110523 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_29">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 2 -->
     <g transform="translate(245.3502 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_30">
    <g clip-path="url(#p3ed675abbf)">
     <!-- 2 -->
     <g transform="translate(245.3502 228.817059)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_31">
    <g clip-path="url(#p3ed675abbf)">
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
     <g transform="translate(203.193203 225.274882)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_32">
    <g clip-path="url(#p3ed675abbf)">
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
     <g transform="translate(211.33672 22.350767)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_33">
    <g clip-path="url(#p3ed675abbf)">
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
     <g transform="translate(262.592735 218.193084)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-120"></use>
     </g>
    </g>
   </g>
   <g id="line2d_1">
    <path clip-path="url(#p3ed675abbf)" d="M 39.986102 224.612172 
L 249.817156 108.039364 
L 249.817156 108.039364 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="p3ed675abbf">
   <rect height="260.82" width="271.206637" x="7.2" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a line" class="sr-only"><ul><li>The line slants gradually up from left to right.</li>
<li>The line passes through the following points:<br>
<ul>
<li>(negative 9 comma 0)</li>
<li>(0 comma 5)</li>
</ul>
</li>
</ul></div></figure></p>
<p style="text-align: left;">What is the&nbsp;<em>y</em>-intercept of the line graphed?</p>$SATQ$, $SATQ$[{"id":"c510601d-5316-4854-9de2-92eab975481c","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis negative 5 comma 0 right parenthesis\"><mfenced><mrow><mo>-</mo><mrow><mn>5</mn></mrow><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"},{"id":"77f2095c-91a0-488f-9faa-ee47bab4e7ea","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"},{"id":"6e8c27cb-0768-4adf-86de-b5def86ce580","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis 0 comma 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>5</mn></mrow></mrow></mfenced></math></p>"},{"id":"38c82c5f-2869-4dc8-9498-c30a0ed2acd6","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis 0 comma 9 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>9</mn></mrow></mrow></mfenced></math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["6e8c27cb-0768-4adf-86de-b5def86ce580"]$SATQ$::jsonb, $SATQ$<p>Choice C is correct. The <em>y</em>-intercept of a graph is the point where the graph intersects the <em>y</em>-axis. The line graphed intersects the <em>y</em>-axis at the point <math alttext="left parenthesis 0 comma 5 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>5</mn></mrow></mfenced></math>. Therefore, the <em>y</em>-intercept of the line graphed is <math alttext="left parenthesis 0 comma 5 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>5</mn></mrow></mfenced></math>.</p>
<p>Choice A is incorrect and may result from conceptual errors.</p>
<p>Choice B is incorrect and may result from conceptual errors.</p>
<p>Choice D is incorrect and may result from conceptual errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"eeebe166","external_id":"d8fb921c-f434-41b5-b963-d87e3d7e5311","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"d45202da-757e-44c5-8d68-e0c44f8ad850","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 288.918319 275.22\" width=\"288.918319pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a line in the x y plane with the origin labeled O. The x axis ranges from negative 10 to 2 in increments of 1, with values marked every 2 gridlines. The y axis ranges from negative 2 to 10 in increments of 1, with values marked every 2 gridlines. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 288.918319 275.22 \nL 288.918319 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 9.558319 260.46 \nL 281.718319 260.46 \nL 281.718319 10.98 \nL 9.558319 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 278.406637 268.02 \nL 278.406637 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 39.986102 255.11539 \nL 39.986102 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 57.472023 255.11539 \nL 57.472023 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 74.957944 255.11539 \nL 74.957944 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 92.443866 255.11539 \nL 92.443866 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 109.929787 255.11539 \nL 109.929787 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 127.415708 255.11539 \nL 127.415708 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 144.901629 255.11539 \nL 144.901629 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 162.38755 255.11539 \nL 162.38755 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 179.873471 255.11539 \nL 179.873471 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 197.359393 255.11539 \nL 197.359393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 232.331235 255.11539 \nL 232.331235 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 249.817156 255.11539 \nL 249.817156 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 249.869614 \nL 255.062932 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 232.383693 \nL 255.062932 232.383693 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 197.41185 \nL 255.062932 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 179.925929 \nL 255.062932 179.925929 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 162.440008 \nL 255.062932 162.440008 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 144.954087 \nL 255.062932 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 127.468166 \nL 255.062932 127.468166 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 109.982245 \nL 255.062932 109.982245 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 92.496323 \nL 255.062932 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 75.010402 \nL 255.062932 75.010402 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 57.524481 \nL 255.062932 57.524481 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 40.03856 \nL 255.062932 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 214.897772 \nL 260.308709 214.897772 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 257.443461 -59.337778 \nL 260.308709 -60.322228 \nL 257.443461 -61.306679 \nL 257.443461 -59.337778 \nL 260.308709 -60.322228 \n\" id=\"mf532d20bde\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mf532d20bde\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 214.845314 255.11539 \nL 214.845314 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 215.859856 -242.098754 \nL 214.845314 -245.672993 \nL 213.830772 -242.098754 \nL 215.859856 -242.098754 \nL 214.845314 -245.672993 \n\" id=\"mb44a100f7a\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mb44a100f7a\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 39.986102 218.76308 \nL 39.986102 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 57.472023 218.76308 \nL 57.472023 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 74.957944 218.76308 \nL 74.957944 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 92.443866 218.76308 \nL 92.443866 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 109.929787 218.76308 \nL 109.929787 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 127.415708 218.76308 \nL 127.415708 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 144.901629 218.76308 \nL 144.901629 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 162.38755 218.76308 \nL 162.38755 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 179.873471 218.76308 \nL 179.873471 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 197.359393 218.76308 \nL 197.359393 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 232.331235 218.76308 \nL 232.331235 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 249.817156 218.76308 \nL 249.817156 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 249.869614 \nL 218.710623 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 232.383693 \nL 218.710623 232.383693 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 197.41185 \nL 218.710623 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 179.925929 \nL 218.710623 179.925929 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 162.440008 \nL 218.710623 162.440008 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 144.954087 \nL 218.710623 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 127.468166 \nL 218.710623 127.468166 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 109.982245 \nL 218.710623 109.982245 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 92.496323 \nL 218.710623 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 75.010402 \nL 218.710623 75.010402 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 57.524481 \nL 218.710623 57.524481 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 40.03856 \nL 218.710623 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 199.894851 256.164545 \nL 199.894851 244.623837 \nL 207.763516 244.623837 \nL 207.763516 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 191.763898 249.082747 \nL 191.763898 253.541657 \nL 202.255451 253.541657 \nL 202.255451 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(192.584695 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(200.411383 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(200.411383 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 199.894851 186.220861 \nL 199.894851 174.680153 \nL 207.763516 174.680153 \nL 207.763516 186.220861 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(200.411383 184.665108)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(200.411383 184.665108)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 199.894851 151.249019 \nL 199.894851 139.708311 \nL 207.763516 139.708311 \nL 207.763516 151.249019 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(200.439508 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 4 -->\n     <g transform=\"translate(200.439508 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 199.894851 116.277176 \nL 199.894851 104.736468 \nL 207.763516 104.736468 \nL 207.763516 116.277176 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(200.411383 114.721423)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 6 -->\n     <g transform=\"translate(200.411383 114.721423)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 199.894851 81.305334 \nL 199.894851 69.764626 \nL 207.763516 69.764626 \nL 207.763516 81.305334 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(200.411383 79.749581)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 8 -->\n     <g transform=\"translate(200.411383 79.749581)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 193.337631 46.333492 \nL 193.337631 34.792784 \nL 208.025805 34.792784 \nL 208.025805 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(193.321539 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 10 -->\n     <g transform=\"translate(193.321539 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 19.527574 223.291014 \nL 19.527574 227.487635 \nL 175.152273 227.487635 \nL 175.152273 223.291014 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 31.330571 230.110523 \nL 31.330571 218.569815 \nL 45.231879 218.569815 \nL 45.231879 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <g transform=\"translate(23.758126 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 70.236746 230.110523 \nL 70.236746 218.569815 \nL 78.10541 218.569815 \nL 78.10541 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <g transform=\"translate(63.188878 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 8 -->\n     <g transform=\"translate(70.490989 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 8 -->\n     <g transform=\"translate(70.490989 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 105.208588 230.110523 \nL 105.208588 218.569815 \nL 113.077253 218.569815 \nL 113.077253 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <g transform=\"translate(98.160721 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 6 -->\n     <g transform=\"translate(105.462831 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 6 -->\n     <g transform=\"translate(105.462831 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 140.18043 230.110523 \nL 140.18043 218.569815 \nL 148.049095 218.569815 \nL 148.049095 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <g transform=\"translate(133.132563 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 4 -->\n     <g transform=\"translate(140.462799 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 4 -->\n     <g transform=\"translate(140.462799 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 175.152273 230.110523 \nL 175.152273 218.569815 \nL 183.020937 218.569815 \nL 183.020937 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <g transform=\"translate(168.104405 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(175.406516 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(175.406516 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 245.095957 230.110523 \nL 245.095957 218.569815 \nL 252.964622 218.569815 \nL 252.964622 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(245.3502 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(245.3502 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(203.193203 225.274882)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(211.33672 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(262.592735 218.193084)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 39.986102 224.612172 \nL 249.817156 108.039364 \nL 249.817156 108.039364 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p3ed675abbf\">\n   <rect height=\"260.82\" width=\"271.206637\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a line\" class=\"sr-only\"><ul><li>The line slants gradually up from left to right.</li>\n<li>The line passes through the following points:<br>\n<ul>\n<li>(negative 9 comma 0)</li>\n<li>(0 comma 5)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">What is the&nbsp;<em>y</em>-intercept of the line graphed?</p>","answerOptions":[{"id":"c510601d-5316-4854-9de2-92eab975481c","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis negative 5 comma 0 right parenthesis\"><mfenced><mrow><mo>-</mo><mrow><mn>5</mn></mrow><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"},{"id":"77f2095c-91a0-488f-9faa-ee47bab4e7ea","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"},{"id":"6e8c27cb-0768-4adf-86de-b5def86ce580","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis 0 comma 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>5</mn></mrow></mrow></mfenced></math></p>"},{"id":"38c82c5f-2869-4dc8-9498-c30a0ed2acd6","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis 0 comma 9 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>9</mn></mrow></mrow></mfenced></math></p>"}],"keys":["6e8c27cb-0768-4adf-86de-b5def86ce580"],"correct_answer":["C"],"rationale":"<p>Choice C is correct. The <em>y</em>-intercept of a graph is the point where the graph intersects the <em>y</em>-axis. The line graphed intersects the <em>y</em>-axis at the point <math alttext=\"left parenthesis 0 comma 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>5</mn></mrow></mfenced></math>. Therefore, the <em>y</em>-intercept of the line graphed is <math alttext=\"left parenthesis 0 comma 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>5</mn></mrow></mfenced></math>.</p>\n<p>Choice A is incorrect and may result from conceptual errors.</p>\n<p>Choice B is incorrect and may result from conceptual errors.</p>\n<p>Choice D is incorrect and may result from conceptual errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554987,"pPcc":"SAT#H","questionId":"eeebe166","skill_cd":"H.C.","score_band_range_cd":1,"skill_desc":"Linear equations in two variables","createDate":1743430554987,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"d8fb921c-f434-41b5-b963-d87e3d7e5311","primary_class_cd":"H","uId":"d45202da-757e-44c5-8d68-e0c44f8ad850","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 288.918319 275.22\" width=\"288.918319pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a line in the x y plane with the origin labeled O. The x axis ranges from negative 10 to 2 in increments of 1, with values marked every 2 gridlines. The y axis ranges from negative 2 to 10 in increments of 1, with values marked every 2 gridlines. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 288.918319 275.22 \nL 288.918319 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 9.558319 260.46 \nL 281.718319 260.46 \nL 281.718319 10.98 \nL 9.558319 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 278.406637 268.02 \nL 278.406637 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 39.986102 255.11539 \nL 39.986102 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 57.472023 255.11539 \nL 57.472023 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 74.957944 255.11539 \nL 74.957944 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 92.443866 255.11539 \nL 92.443866 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 109.929787 255.11539 \nL 109.929787 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 127.415708 255.11539 \nL 127.415708 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 144.901629 255.11539 \nL 144.901629 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 162.38755 255.11539 \nL 162.38755 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 179.873471 255.11539 \nL 179.873471 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 197.359393 255.11539 \nL 197.359393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 232.331235 255.11539 \nL 232.331235 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 249.817156 255.11539 \nL 249.817156 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 249.869614 \nL 255.062932 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 232.383693 \nL 255.062932 232.383693 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 197.41185 \nL 255.062932 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 179.925929 \nL 255.062932 179.925929 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 162.440008 \nL 255.062932 162.440008 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 144.954087 \nL 255.062932 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 127.468166 \nL 255.062932 127.468166 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 109.982245 \nL 255.062932 109.982245 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 92.496323 \nL 255.062932 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 75.010402 \nL 255.062932 75.010402 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 57.524481 \nL 255.062932 57.524481 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 40.03856 \nL 255.062932 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 34.740326 214.897772 \nL 260.308709 214.897772 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 257.443461 -59.337778 \nL 260.308709 -60.322228 \nL 257.443461 -61.306679 \nL 257.443461 -59.337778 \nL 260.308709 -60.322228 \n\" id=\"mf532d20bde\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mf532d20bde\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 214.845314 255.11539 \nL 214.845314 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 215.859856 -242.098754 \nL 214.845314 -245.672993 \nL 213.830772 -242.098754 \nL 215.859856 -242.098754 \nL 214.845314 -245.672993 \n\" id=\"mb44a100f7a\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mb44a100f7a\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 39.986102 218.76308 \nL 39.986102 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 57.472023 218.76308 \nL 57.472023 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 74.957944 218.76308 \nL 74.957944 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 92.443866 218.76308 \nL 92.443866 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 109.929787 218.76308 \nL 109.929787 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 127.415708 218.76308 \nL 127.415708 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 144.901629 218.76308 \nL 144.901629 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 162.38755 218.76308 \nL 162.38755 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 179.873471 218.76308 \nL 179.873471 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 197.359393 218.76308 \nL 197.359393 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 232.331235 218.76308 \nL 232.331235 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 249.817156 218.76308 \nL 249.817156 211.032463 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 249.869614 \nL 218.710623 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 232.383693 \nL 218.710623 232.383693 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 197.41185 \nL 218.710623 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 179.925929 \nL 218.710623 179.925929 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 162.440008 \nL 218.710623 162.440008 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 144.954087 \nL 218.710623 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 127.468166 \nL 218.710623 127.468166 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 109.982245 \nL 218.710623 109.982245 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 92.496323 \nL 218.710623 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 75.010402 \nL 218.710623 75.010402 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 57.524481 \nL 218.710623 57.524481 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 210.980005 40.03856 \nL 218.710623 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 199.894851 256.164545 \nL 199.894851 244.623837 \nL 207.763516 244.623837 \nL 207.763516 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 191.763898 249.082747 \nL 191.763898 253.541657 \nL 202.255451 253.541657 \nL 202.255451 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(192.584695 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(200.411383 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(200.411383 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 199.894851 186.220861 \nL 199.894851 174.680153 \nL 207.763516 174.680153 \nL 207.763516 186.220861 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(200.411383 184.665108)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(200.411383 184.665108)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 199.894851 151.249019 \nL 199.894851 139.708311 \nL 207.763516 139.708311 \nL 207.763516 151.249019 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(200.439508 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 4 -->\n     <g transform=\"translate(200.439508 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 199.894851 116.277176 \nL 199.894851 104.736468 \nL 207.763516 104.736468 \nL 207.763516 116.277176 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(200.411383 114.721423)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 6 -->\n     <g transform=\"translate(200.411383 114.721423)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 199.894851 81.305334 \nL 199.894851 69.764626 \nL 207.763516 69.764626 \nL 207.763516 81.305334 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(200.411383 79.749581)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 8 -->\n     <g transform=\"translate(200.411383 79.749581)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 193.337631 46.333492 \nL 193.337631 34.792784 \nL 208.025805 34.792784 \nL 208.025805 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(193.321539 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 10 -->\n     <g transform=\"translate(193.321539 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 19.527574 223.291014 \nL 19.527574 227.487635 \nL 175.152273 227.487635 \nL 175.152273 223.291014 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 31.330571 230.110523 \nL 31.330571 218.569815 \nL 45.231879 218.569815 \nL 45.231879 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <g transform=\"translate(23.758126 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 70.236746 230.110523 \nL 70.236746 218.569815 \nL 78.10541 218.569815 \nL 78.10541 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <g transform=\"translate(63.188878 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 8 -->\n     <g transform=\"translate(70.490989 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 8 -->\n     <g transform=\"translate(70.490989 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 105.208588 230.110523 \nL 105.208588 218.569815 \nL 113.077253 218.569815 \nL 113.077253 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <g transform=\"translate(98.160721 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 6 -->\n     <g transform=\"translate(105.462831 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 6 -->\n     <g transform=\"translate(105.462831 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 140.18043 230.110523 \nL 140.18043 218.569815 \nL 148.049095 218.569815 \nL 148.049095 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <g transform=\"translate(133.132563 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 4 -->\n     <g transform=\"translate(140.462799 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 4 -->\n     <g transform=\"translate(140.462799 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 175.152273 230.110523 \nL 175.152273 218.569815 \nL 183.020937 218.569815 \nL 183.020937 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- – -->\n     <g transform=\"translate(168.104405 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(175.406516 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(175.406516 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 245.095957 230.110523 \nL 245.095957 218.569815 \nL 252.964622 218.569815 \nL 252.964622 230.110523 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(245.3502 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- 2 -->\n     <g transform=\"translate(245.3502 228.817059)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(203.193203 225.274882)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(211.33672 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p3ed675abbf)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(262.592735 218.193084)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#p3ed675abbf)\" d=\"M 39.986102 224.612172 \nL 249.817156 108.039364 \nL 249.817156 108.039364 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p3ed675abbf\">\n   <rect height=\"260.82\" width=\"271.206637\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a line\" class=\"sr-only\"><ul><li>The line slants gradually up from left to right.</li>\n<li>The line passes through the following points:<br>\n<ul>\n<li>(negative 9 comma 0)</li>\n<li>(0 comma 5)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">What is the&nbsp;<em>y</em>-intercept of the line graphed?</p>","keys":["6e8c27cb-0768-4adf-86de-b5def86ce580"],"answerOptions":[{"id":"c510601d-5316-4854-9de2-92eab975481c","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis negative 5 comma 0 right parenthesis\"><mfenced><mrow><mo>-</mo><mrow><mn>5</mn></mrow><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"},{"id":"77f2095c-91a0-488f-9faa-ee47bab4e7ea","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"},{"id":"6e8c27cb-0768-4adf-86de-b5def86ce580","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis 0 comma 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>5</mn></mrow></mrow></mfenced></math></p>"},{"id":"38c82c5f-2869-4dc8-9498-c30a0ed2acd6","content":"<p style=\"text-align: left;\"><math alttext=\"left parenthesis 0 comma 9 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>9</mn></mrow></mrow></mfenced></math></p>"}],"rationale":"<p>Choice C is correct. The <em>y</em>-intercept of a graph is the point where the graph intersects the <em>y</em>-axis. The line graphed intersects the <em>y</em>-axis at the point <math alttext=\"left parenthesis 0 comma 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>5</mn></mrow></mfenced></math>. Therefore, the <em>y</em>-intercept of the line graphed is <math alttext=\"left parenthesis 0 comma 5 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>5</mn></mrow></mfenced></math>.</p>\n<p>Choice A is incorrect and may result from conceptual errors.</p>\n<p>Choice B is incorrect and may result from conceptual errors.</p>\n<p>Choice D is incorrect and may result from conceptual errors.</p>","externalid":"d8fb921c-f434-41b5-b963-d87e3d7e5311","correct_answer":["C"]},"createDate":1743430554987,"updateDate":1743430554987}$SATQ$::jsonb, 1743430554987, 1743430554987),
    ($SATQ$f01ef454$SATQ$, $SATQ$40468143-fc48-4d07-9364-198a459e602f$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.E.$SATQ$, $SATQ$Linear inequalities in one or two variables$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">A geologist estimates that the volume of a slab of granite is greater than <math alttext="12.7"><mn>12.7</mn></math> cubic feet but less than&nbsp;<math alttext="15.7"><mn>15.7</mn></math> cubic feet. The geologist also estimates that the slab of granite weighs <math alttext="165"><mn>165</mn>
</math> pounds per cubic foot of volume. Which inequality represents this situation, where <math alttext="x"><mi>x</mi>
</math> represents the estimated total weight, in pounds, of the slab of granite?</p>$SATQ$, $SATQ$[{"id":"24d2d9e2-d7cd-46ba-97f0-696c8c3f4530","content":"<p><math alttext=\"165 minus 15.7 less than x less than 165 minus 12.7\"><mn>165</mn><mo>-</mo><mn>15.7</mn><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mo>-</mo><mn>12.7</mn></math></p>"},{"id":"2a031012-cf88-4d7d-9a55-ac34116e5d9c","content":"<p><math alttext=\"165 plus 12.7 less than x less than 165 plus 15.7\"><mn>165</mn><mo>+</mo><mn>12.7</mn><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mo>+</mo><mn>15.7</mn></math></p>"},{"id":"6389e1ef-0129-4dfb-9a7e-981d0e4a41fc","content":"<p><math alttext=\"165 left parenthesis 12.7 right parenthesis less than x less than 165 left parenthesis 15.7 right parenthesis\"><mn>165</mn><mfenced><mn>12.7</mn></mfenced><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mfenced><mn>15.7</mn></mfenced></math></p>"},{"id":"f5bdde21-9c20-44fd-b6b2-2b202634089c","content":"<p><math alttext=\"StartFraction 165 Over 15.7 EndFraction less than x less than StartFraction 165 Over 12.7 EndFraction\"><mfrac><mn>165</mn><mn>15.7</mn></mfrac><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mfrac><mn>165</mn><mn>12.7</mn></mfrac></math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["6389e1ef-0129-4dfb-9a7e-981d0e4a41fc"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. It's given that the estimated volume of the slab of granite is greater than <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="12.7"><mn>12.7</mn></math> cubic feet but less than <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="15.7"><mn>15.7</mn></math> cubic feet. It's also given that the estimated weight per cubic foot of volume of that slab is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="165"><mn>165</mn></math> pounds. The estimated total weight of the slab of granite, in pounds, can be calculated by multiplying the estimated volume by the estimated weight per cubic foot. Therefore, if the estimated volume of the slab of granite is&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="12.7"><mn>12.7</mn></math> cubic feet, its estimated total weight is&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="165 left parenthesis 12.7 right parenthesis"><mn>165</mn><mo>(</mo><mn>12.7</mn><mo>)</mo></math> pounds, and if the estimated volume of the slab of granite is&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="15.7"><mn>15.7</mn></math> cubic feet, its estimated total weight is&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="165 left parenthesis 15.7 right parenthesis"><mn>165</mn><mo>(</mo><mn>15.7</mn><mo>)</mo></math> pounds. Since the estimated volume of the slab of granite is greater than&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="12.7"><mn>12.7</mn></math> cubic feet but less than&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="15.7"><mn>15.7</mn></math> cubic feet, the estimated total weight <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x"><mi>x</mi></math>, in pounds, must be greater than&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="165 left parenthesis 12.7 right parenthesis"><mn>165</mn><mo>(</mo><mn>12.7</mn><mo>)</mo></math> pounds and less than&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="165 left parenthesis 15.7 right parenthesis"><mn>165</mn><mo>(</mo><mn>15.7</mn><mo>)</mo></math> pounds. This situation can be represented by the inequality <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="165 left parenthesis 12.7 right parenthesis less than x less than 165 left parenthesis 15.7 right parenthesis"><mn>165</mn><mo>(</mo><mn>12.7</mn><mo>)</mo><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mo>(</mo><mn>15.7</mn><mo>)</mo></math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"f01ef454","external_id":"40468143-fc48-4d07-9364-198a459e602f","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"c649c248-297d-44b9-acba-1df3d4e2a1bb","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.E.","skill_desc":"Linear inequalities in one or two variables","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">A geologist estimates that the volume of a slab of granite is greater than <math alttext=\"12.7\"><mn>12.7</mn></math> cubic feet but less than&nbsp;<math alttext=\"15.7\"><mn>15.7</mn></math> cubic feet. The geologist also estimates that the slab of granite weighs <math alttext=\"165\"><mn>165</mn>\n</math> pounds per cubic foot of volume. Which inequality represents this situation, where <math alttext=\"x\"><mi>x</mi>\n</math> represents the estimated total weight, in pounds, of the slab of granite?</p>","answerOptions":[{"id":"24d2d9e2-d7cd-46ba-97f0-696c8c3f4530","content":"<p><math alttext=\"165 minus 15.7 less than x less than 165 minus 12.7\"><mn>165</mn><mo>-</mo><mn>15.7</mn><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mo>-</mo><mn>12.7</mn></math></p>"},{"id":"2a031012-cf88-4d7d-9a55-ac34116e5d9c","content":"<p><math alttext=\"165 plus 12.7 less than x less than 165 plus 15.7\"><mn>165</mn><mo>+</mo><mn>12.7</mn><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mo>+</mo><mn>15.7</mn></math></p>"},{"id":"6389e1ef-0129-4dfb-9a7e-981d0e4a41fc","content":"<p><math alttext=\"165 left parenthesis 12.7 right parenthesis less than x less than 165 left parenthesis 15.7 right parenthesis\"><mn>165</mn><mfenced><mn>12.7</mn></mfenced><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mfenced><mn>15.7</mn></mfenced></math></p>"},{"id":"f5bdde21-9c20-44fd-b6b2-2b202634089c","content":"<p><math alttext=\"StartFraction 165 Over 15.7 EndFraction less than x less than StartFraction 165 Over 12.7 EndFraction\"><mfrac><mn>165</mn><mn>15.7</mn></mfrac><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mfrac><mn>165</mn><mn>12.7</mn></mfrac></math></p>"}],"keys":["6389e1ef-0129-4dfb-9a7e-981d0e4a41fc"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It's given that the estimated volume of the slab of granite is greater than <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"12.7\"><mn>12.7</mn></math> cubic feet but less than <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"15.7\"><mn>15.7</mn></math> cubic feet. It's also given that the estimated weight per cubic foot of volume of that slab is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165\"><mn>165</mn></math> pounds. The estimated total weight of the slab of granite, in pounds, can be calculated by multiplying the estimated volume by the estimated weight per cubic foot. Therefore, if the estimated volume of the slab of granite is&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"12.7\"><mn>12.7</mn></math> cubic feet, its estimated total weight is&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165 left parenthesis 12.7 right parenthesis\"><mn>165</mn><mo>(</mo><mn>12.7</mn><mo>)</mo></math> pounds, and if the estimated volume of the slab of granite is&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"15.7\"><mn>15.7</mn></math> cubic feet, its estimated total weight is&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165 left parenthesis 15.7 right parenthesis\"><mn>165</mn><mo>(</mo><mn>15.7</mn><mo>)</mo></math> pounds. Since the estimated volume of the slab of granite is greater than&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"12.7\"><mn>12.7</mn></math> cubic feet but less than&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"15.7\"><mn>15.7</mn></math> cubic feet, the estimated total weight <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math>, in pounds, must be greater than&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165 left parenthesis 12.7 right parenthesis\"><mn>165</mn><mo>(</mo><mn>12.7</mn><mo>)</mo></math> pounds and less than&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165 left parenthesis 15.7 right parenthesis\"><mn>165</mn><mo>(</mo><mn>15.7</mn><mo>)</mo></math> pounds. This situation can be represented by the inequality <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165 left parenthesis 12.7 right parenthesis less than x less than 165 left parenthesis 15.7 right parenthesis\"><mn>165</mn><mo>(</mo><mn>12.7</mn><mo>)</mo><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mo>(</mo><mn>15.7</mn><mo>)</mo></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1755117017717,"pPcc":"SAT#H","questionId":"f01ef454","skill_cd":"H.E.","score_band_range_cd":3,"skill_desc":"Linear inequalities in one or two variables","createDate":1755117017717,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"40468143-fc48-4d07-9364-198a459e602f","primary_class_cd":"H","uId":"c649c248-297d-44b9-acba-1df3d4e2a1bb","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">A geologist estimates that the volume of a slab of granite is greater than <math alttext=\"12.7\"><mn>12.7</mn></math> cubic feet but less than&nbsp;<math alttext=\"15.7\"><mn>15.7</mn></math> cubic feet. The geologist also estimates that the slab of granite weighs <math alttext=\"165\"><mn>165</mn>\n</math> pounds per cubic foot of volume. Which inequality represents this situation, where <math alttext=\"x\"><mi>x</mi>\n</math> represents the estimated total weight, in pounds, of the slab of granite?</p>","keys":["6389e1ef-0129-4dfb-9a7e-981d0e4a41fc"],"answerOptions":[{"id":"24d2d9e2-d7cd-46ba-97f0-696c8c3f4530","content":"<p><math alttext=\"165 minus 15.7 less than x less than 165 minus 12.7\"><mn>165</mn><mo>-</mo><mn>15.7</mn><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mo>-</mo><mn>12.7</mn></math></p>"},{"id":"2a031012-cf88-4d7d-9a55-ac34116e5d9c","content":"<p><math alttext=\"165 plus 12.7 less than x less than 165 plus 15.7\"><mn>165</mn><mo>+</mo><mn>12.7</mn><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mo>+</mo><mn>15.7</mn></math></p>"},{"id":"6389e1ef-0129-4dfb-9a7e-981d0e4a41fc","content":"<p><math alttext=\"165 left parenthesis 12.7 right parenthesis less than x less than 165 left parenthesis 15.7 right parenthesis\"><mn>165</mn><mfenced><mn>12.7</mn></mfenced><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mfenced><mn>15.7</mn></mfenced></math></p>"},{"id":"f5bdde21-9c20-44fd-b6b2-2b202634089c","content":"<p><math alttext=\"StartFraction 165 Over 15.7 EndFraction less than x less than StartFraction 165 Over 12.7 EndFraction\"><mfrac><mn>165</mn><mn>15.7</mn></mfrac><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mfrac><mn>165</mn><mn>12.7</mn></mfrac></math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It's given that the estimated volume of the slab of granite is greater than <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"12.7\"><mn>12.7</mn></math> cubic feet but less than <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"15.7\"><mn>15.7</mn></math> cubic feet. It's also given that the estimated weight per cubic foot of volume of that slab is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165\"><mn>165</mn></math> pounds. The estimated total weight of the slab of granite, in pounds, can be calculated by multiplying the estimated volume by the estimated weight per cubic foot. Therefore, if the estimated volume of the slab of granite is&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"12.7\"><mn>12.7</mn></math> cubic feet, its estimated total weight is&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165 left parenthesis 12.7 right parenthesis\"><mn>165</mn><mo>(</mo><mn>12.7</mn><mo>)</mo></math> pounds, and if the estimated volume of the slab of granite is&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"15.7\"><mn>15.7</mn></math> cubic feet, its estimated total weight is&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165 left parenthesis 15.7 right parenthesis\"><mn>165</mn><mo>(</mo><mn>15.7</mn><mo>)</mo></math> pounds. Since the estimated volume of the slab of granite is greater than&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"12.7\"><mn>12.7</mn></math> cubic feet but less than&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"15.7\"><mn>15.7</mn></math> cubic feet, the estimated total weight <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math>, in pounds, must be greater than&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165 left parenthesis 12.7 right parenthesis\"><mn>165</mn><mo>(</mo><mn>12.7</mn><mo>)</mo></math> pounds and less than&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165 left parenthesis 15.7 right parenthesis\"><mn>165</mn><mo>(</mo><mn>15.7</mn><mo>)</mo></math> pounds. This situation can be represented by the inequality <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"165 left parenthesis 12.7 right parenthesis less than x less than 165 left parenthesis 15.7 right parenthesis\"><mn>165</mn><mo>(</mo><mn>12.7</mn><mo>)</mo><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>165</mn><mo>(</mo><mn>15.7</mn><mo>)</mo></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"40468143-fc48-4d07-9364-198a459e602f","correct_answer":["C"]},"createDate":1755117017717,"updateDate":1755117017717}$SATQ$::jsonb, 1755117017717, 1755117017717),
    ($SATQ$f02b4509$SATQ$, $SATQ$1678f18c-082f-4417-97ca-e3e524d586e6$SATQ$::uuid, $SATQ$7c5c1f3f-7c22-4dea-98a3-09837dbca995$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.E.$SATQ$, $SATQ$Linear inequalities in one or two variables$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">A moving truck can tow a trailer if the combined weight of the trailer and the boxes it contains is no more than <math alttext="4,600"><mn>4,600</mn>
</math> pounds. What is the maximum number of boxes this truck can tow in a trailer with a weight of <math alttext="500"><mn>500</mn>
</math> pounds if each box weighs <math alttext="120"><mn>120</mn>
</math> pounds?</p>$SATQ$, $SATQ$[{"id":"7cc03e23-9131-4b02-80be-8d553b10c7de","content":"<p><math alttext=\"34\"><mn>34</mn>\n</math></p>"},{"id":"6c0d1dd7-91f5-46b0-82bf-8706904ae157","content":"<p><math alttext=\"35\"><mn>35</mn>\n</math></p>"},{"id":"588bcf52-1c93-4eb5-a32f-0a6c49525c6d","content":"<p><math alttext=\"38\"><mn>38</mn>\n</math></p>"},{"id":"e6a39d30-a9f6-4db8-8118-49b41574aba2","content":"<p><math alttext=\"39\"><mn>39</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["7cc03e23-9131-4b02-80be-8d553b10c7de"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It&rsquo;s given that the truck can tow a trailer if the combined weight of the trailer and the boxes it contains is no more than <math alttext="4,600"><mn>4,600</mn>
</math> pounds. If the trailer has a weight of <math alttext="500"><mn>500</mn>
</math> pounds and each box weighs <math alttext="120"><mn>120</mn>
</math> pounds, the expression <math alttext="500 plus 120 b"><mn>500</mn><mo>+</mo><mn>120</mn><mi>b</mi></math>, where <math alttext="b"><mi>b</mi>
</math> is the number of boxes, gives the combined weight of the trailer and the boxes. Since the combined weight must be no more than <math alttext="4,600"><mn>4,600</mn>
</math> pounds, the possible numbers of boxes the truck can tow are given by the inequality <math alttext="500 plus 120 b less than or equals 4,600"><mn>500</mn><mo>+</mo><mn>120</mn><mi>b</mi><mo>≤</mo><mn>4,600</mn></math>. Subtracting <math alttext="500"><mn>500</mn>
</math> from both sides of this inequality yields <math alttext="120 b less than or equals 4,100"><mn>120</mn><mi>b</mi><mo>≤</mo><mn>4,100</mn></math>. Dividing both sides of this inequality by <math alttext="120"><mn>120</mn>
</math> yields <math alttext="b less than or equals StartFraction 205 Over 6 EndFraction"><mi>b</mi><mo>≤</mo><mfrac><mn>205</mn><mn>6</mn></mfrac></math>, or <math alttext="b"><mi>b</mi>
</math> is less than or equal to approximately <math alttext="34.17"><mn>34.17</mn>
</math>. Since the number of boxes, <math alttext="b"><mi>b</mi>
</math>, must be a whole number, the maximum number of boxes the truck can tow is the greatest whole number less than <math alttext="34.17"><mn>34.17</mn>
</math>, which is <math alttext="34"><mn>34</mn>
</math>.</p>
<p style="text-align: left;">Choice B is incorrect. Towing the trailer and <math alttext="35"><mn>35</mn>
</math> boxes would yield a combined weight of <math alttext="4,700"><mn>4,700</mn>
</math> pounds, which is greater than <math alttext="4,600"><mn>4,600</mn>
</math> pounds.</p>
<p style="text-align: left;">Choice C is incorrect. Towing the trailer and <math alttext="38"><mn>38</mn>
</math> boxes would yield a combined weight of <math alttext="5,060"><mn>5,060</mn>
</math> pounds, which is greater than <math alttext="4,600"><mn>4,600</mn>
</math> pounds.</p>
<p style="text-align: left;">Choice D is incorrect. Towing the trailer and <math alttext="39"><mn>39</mn>
</math> boxes would yield a combined weight of <math alttext="5,180"><mn>5,180</mn>
</math> pounds, which is greater than <math alttext="4,600"><mn>4,600</mn>
</math> pounds.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"f02b4509","external_id":"1678f18c-082f-4417-97ca-e3e524d586e6","disclosed_item_id":null,"source":"qbank","vaultid":"7c5c1f3f-7c22-4dea-98a3-09837dbca995","uId":"d309f42a-08d0-4754-a471-111f088a7203","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.E.","skill_desc":"Linear inequalities in one or two variables","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">A moving truck can tow a trailer if the combined weight of the trailer and the boxes it contains is no more than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds. What is the maximum number of boxes this truck can tow in a trailer with a weight of <math alttext=\"500\"><mn>500</mn>\n</math> pounds if each box weighs <math alttext=\"120\"><mn>120</mn>\n</math> pounds?</p>","answerOptions":[{"id":"7cc03e23-9131-4b02-80be-8d553b10c7de","content":"<p><math alttext=\"34\"><mn>34</mn>\n</math></p>"},{"id":"6c0d1dd7-91f5-46b0-82bf-8706904ae157","content":"<p><math alttext=\"35\"><mn>35</mn>\n</math></p>"},{"id":"588bcf52-1c93-4eb5-a32f-0a6c49525c6d","content":"<p><math alttext=\"38\"><mn>38</mn>\n</math></p>"},{"id":"e6a39d30-a9f6-4db8-8118-49b41574aba2","content":"<p><math alttext=\"39\"><mn>39</mn>\n</math></p>"}],"keys":["7cc03e23-9131-4b02-80be-8d553b10c7de"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It&rsquo;s given that the truck can tow a trailer if the combined weight of the trailer and the boxes it contains is no more than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds. If the trailer has a weight of <math alttext=\"500\"><mn>500</mn>\n</math> pounds and each box weighs <math alttext=\"120\"><mn>120</mn>\n</math> pounds, the expression <math alttext=\"500 plus 120 b\"><mn>500</mn><mo>+</mo><mn>120</mn><mi>b</mi></math>, where <math alttext=\"b\"><mi>b</mi>\n</math> is the number of boxes, gives the combined weight of the trailer and the boxes. Since the combined weight must be no more than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds, the possible numbers of boxes the truck can tow are given by the inequality <math alttext=\"500 plus 120 b less than or equals 4,600\"><mn>500</mn><mo>+</mo><mn>120</mn><mi>b</mi><mo>≤</mo><mn>4,600</mn></math>. Subtracting <math alttext=\"500\"><mn>500</mn>\n</math> from both sides of this inequality yields <math alttext=\"120 b less than or equals 4,100\"><mn>120</mn><mi>b</mi><mo>≤</mo><mn>4,100</mn></math>. Dividing both sides of this inequality by <math alttext=\"120\"><mn>120</mn>\n</math> yields <math alttext=\"b less than or equals StartFraction 205 Over 6 EndFraction\"><mi>b</mi><mo>≤</mo><mfrac><mn>205</mn><mn>6</mn></mfrac></math>, or <math alttext=\"b\"><mi>b</mi>\n</math> is less than or equal to approximately <math alttext=\"34.17\"><mn>34.17</mn>\n</math>. Since the number of boxes, <math alttext=\"b\"><mi>b</mi>\n</math>, must be a whole number, the maximum number of boxes the truck can tow is the greatest whole number less than <math alttext=\"34.17\"><mn>34.17</mn>\n</math>, which is <math alttext=\"34\"><mn>34</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. Towing the trailer and <math alttext=\"35\"><mn>35</mn>\n</math> boxes would yield a combined weight of <math alttext=\"4,700\"><mn>4,700</mn>\n</math> pounds, which is greater than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. Towing the trailer and <math alttext=\"38\"><mn>38</mn>\n</math> boxes would yield a combined weight of <math alttext=\"5,060\"><mn>5,060</mn>\n</math> pounds, which is greater than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. Towing the trailer and <math alttext=\"39\"><mn>39</mn>\n</math> boxes would yield a combined weight of <math alttext=\"5,180\"><mn>5,180</mn>\n</math> pounds, which is greater than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959819,"pPcc":"SAT#H","questionId":"f02b4509","skill_cd":"H.E.","score_band_range_cd":4,"skill_desc":"Linear inequalities in one or two variables","createDate":1691007959819,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"1678f18c-082f-4417-97ca-e3e524d586e6","primary_class_cd":"H","uId":"d309f42a-08d0-4754-a471-111f088a7203","difficulty":"M"},"raw_detail":{"keys":["7cc03e23-9131-4b02-80be-8d553b10c7de"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It&rsquo;s given that the truck can tow a trailer if the combined weight of the trailer and the boxes it contains is no more than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds. If the trailer has a weight of <math alttext=\"500\"><mn>500</mn>\n</math> pounds and each box weighs <math alttext=\"120\"><mn>120</mn>\n</math> pounds, the expression <math alttext=\"500 plus 120 b\"><mn>500</mn><mo>+</mo><mn>120</mn><mi>b</mi></math>, where <math alttext=\"b\"><mi>b</mi>\n</math> is the number of boxes, gives the combined weight of the trailer and the boxes. Since the combined weight must be no more than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds, the possible numbers of boxes the truck can tow are given by the inequality <math alttext=\"500 plus 120 b less than or equals 4,600\"><mn>500</mn><mo>+</mo><mn>120</mn><mi>b</mi><mo>≤</mo><mn>4,600</mn></math>. Subtracting <math alttext=\"500\"><mn>500</mn>\n</math> from both sides of this inequality yields <math alttext=\"120 b less than or equals 4,100\"><mn>120</mn><mi>b</mi><mo>≤</mo><mn>4,100</mn></math>. Dividing both sides of this inequality by <math alttext=\"120\"><mn>120</mn>\n</math> yields <math alttext=\"b less than or equals StartFraction 205 Over 6 EndFraction\"><mi>b</mi><mo>≤</mo><mfrac><mn>205</mn><mn>6</mn></mfrac></math>, or <math alttext=\"b\"><mi>b</mi>\n</math> is less than or equal to approximately <math alttext=\"34.17\"><mn>34.17</mn>\n</math>. Since the number of boxes, <math alttext=\"b\"><mi>b</mi>\n</math>, must be a whole number, the maximum number of boxes the truck can tow is the greatest whole number less than <math alttext=\"34.17\"><mn>34.17</mn>\n</math>, which is <math alttext=\"34\"><mn>34</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. Towing the trailer and <math alttext=\"35\"><mn>35</mn>\n</math> boxes would yield a combined weight of <math alttext=\"4,700\"><mn>4,700</mn>\n</math> pounds, which is greater than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. Towing the trailer and <math alttext=\"38\"><mn>38</mn>\n</math> boxes would yield a combined weight of <math alttext=\"5,060\"><mn>5,060</mn>\n</math> pounds, which is greater than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. Towing the trailer and <math alttext=\"39\"><mn>39</mn>\n</math> boxes would yield a combined weight of <math alttext=\"5,180\"><mn>5,180</mn>\n</math> pounds, which is greater than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">A moving truck can tow a trailer if the combined weight of the trailer and the boxes it contains is no more than <math alttext=\"4,600\"><mn>4,600</mn>\n</math> pounds. What is the maximum number of boxes this truck can tow in a trailer with a weight of <math alttext=\"500\"><mn>500</mn>\n</math> pounds if each box weighs <math alttext=\"120\"><mn>120</mn>\n</math> pounds?</p>","externalid":"1678f18c-082f-4417-97ca-e3e524d586e6","templateid":"386d661a-ec0a-48df-86f6-460ce8c66365","vaultid":"7c5c1f3f-7c22-4dea-98a3-09837dbca995","type":"mcq","answerOptions":[{"id":"7cc03e23-9131-4b02-80be-8d553b10c7de","content":"<p><math alttext=\"34\"><mn>34</mn>\n</math></p>"},{"id":"6c0d1dd7-91f5-46b0-82bf-8706904ae157","content":"<p><math alttext=\"35\"><mn>35</mn>\n</math></p>"},{"id":"588bcf52-1c93-4eb5-a32f-0a6c49525c6d","content":"<p><math alttext=\"38\"><mn>38</mn>\n</math></p>"},{"id":"e6a39d30-a9f6-4db8-8118-49b41574aba2","content":"<p><math alttext=\"39\"><mn>39</mn>\n</math></p>"}],"correct_answer":["A"]},"createDate":1691007959819,"updateDate":1691007959819}$SATQ$::jsonb, 1691007959819, 1691007959819),
    ($SATQ$f03465dc$SATQ$, $SATQ$c4e7a98c-fecd-45d1-ad5b-69c978af6bf7$SATQ$::uuid, $SATQ$a91e6b7d-361c-40d5-ade1-2b3512d65fff$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="8 x plus 7 y equals 9"><mrow>
	<mrow>
		<mrow>
			<mn>8</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>7</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>9</mn>
</mrow>
</math><br /><math alttext="24 x plus 21 y equals 27"><mrow>
	<mrow>
		<mrow>
			<mn>24</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>21</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>27</mn>
</mrow>
</math></p>
<p style="text-align: left;">For each real number <math alttext="r"><mi>r</mi>
</math>, which of the following points lies on the graph of each equation in the <em>xy</em>-plane for the given system?</p>$SATQ$, $SATQ$[{"id":"708eaea8-4a84-423c-95a8-8d740f176155","content":"<p><math alttext=\"left parenthesis r comma minus StartFraction 8 r Over 7 EndFraction plus nine sevenths right parenthesis\"><mfenced><mrow><mi>r</mi><mo>,</mo><mo>-</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mrow></mfenced></math></p>"},{"id":"0ff497dc-111b-4c73-af9e-4cc5e0124247","content":"<p><math alttext=\"left parenthesis minus StartFraction 8 r Over 7 EndFraction plus nine sevenths comma r right parenthesis\"><mfenced><mrow><mo>-</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow><mo>,</mo><mi>r</mi></mrow></mfenced></math></p>"},{"id":"fccfe2ca-3b1a-42f0-93ef-2cf33b4d6fb8","content":"<p><math alttext=\"left parenthesis minus StartFraction 8 r Over 7 EndFraction plus 9 comma StartFraction 8 r Over 7 EndFraction plus 27 right parenthesis\"><mfenced><mrow><mo>-</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mn>9</mn></mrow><mo>,</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mn>27</mn></mrow></mrow></mfenced></math></p>"},{"id":"fc6e3303-bff3-4441-99b7-d8a5b4d79603","content":"<p><math alttext=\"left parenthesis StartFraction r Over 3 EndFraction plus 9 comma minus StartFraction r Over 3 EndFraction plus 27 right parenthesis\"><mfenced><mrow><mfrac><mi>r</mi><mn>3</mn></mfrac><mo>+</mo><mrow><mn>9</mn></mrow><mo>,</mo><mo>-</mo><mfrac><mi>r</mi><mn>3</mn></mfrac><mo>+</mo><mrow><mn>27</mn></mrow></mrow></mfenced></math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["708eaea8-4a84-423c-95a8-8d740f176155"]$SATQ$::jsonb, $SATQ$<p>Choice A is correct. Dividing both sides of the second equation in the given system by <math alttext="3"><mn>3</mn>
</math> yields <math alttext="8 x plus 7 y equals 9"><mrow>
	<mrow>
		<mrow>
			<mn>8</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>7</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>9</mn>
</mrow>
</math>, which is the first equation in the given system. Therefore, the first and second equations represent the same line in the <em>xy</em>-plane. If the <em>x</em>- and <em>y</em>-coordinates of a point satisfy an equation, the point lies on the graph of the equation in the <em>xy</em>-plane. Choice A is a point with <em>x</em>-coordinate <math alttext="r"><mi>r</mi>
</math> and <em>y</em>-coordinate <math alttext="minus StartFraction 8 r Over 7 EndFraction plus nine sevenths"><mrow>
	<mrow>
		<mo>-</mo>
		<mfrac>
			<mrow>
				<mn>8</mn>
				<mi>r</mi>
			</mrow>
			<mn>7</mn>
		</mfrac>
	</mrow>
	<mo>+</mo>
	<mfrac>
		<mn>9</mn>
		<mn>7</mn>
	</mfrac>
</mrow>
</math>. Substituting <math alttext="r"><mi>r</mi>
</math> for <math alttext="x"><mi>x</mi>
</math> and <math alttext="minus StartFraction 8 r Over 7 EndFraction plus nine sevenths"><mrow>
	<mrow>
		<mo>-</mo>
		<mfrac>
			<mrow>
				<mn>8</mn>
				<mi>r</mi>
			</mrow>
			<mn>7</mn>
		</mfrac>
	</mrow>
	<mo>+</mo>
	<mfrac>
		<mn>9</mn>
		<mn>7</mn>
	</mfrac>
</mrow>
</math> for <math alttext="y"><mi>y</mi>
</math> in the equation <math alttext="8 x plus 7 y equals 9"><mrow>
	<mrow>
		<mrow>
			<mn>8</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>7</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>9</mn>
</mrow>
</math> yields <math alttext="8 r plus 7 left parenthesis minus eight sevenths r plus nine sevenths right parenthesis equals 9"><mn>8</mn><mi>r</mi><mo>+</mo><mn>7</mn><mfenced><mrow><mo>-</mo><mfrac><mn>8</mn><mn>7</mn></mfrac><mi>r</mi><mo>+</mo><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mfenced><mo>=</mo><mn>9</mn></math>. Applying the distributive property to the left-hand side of this equation yields <math alttext="8 r minus 8 r plus 9 equals 9"><mn>8</mn><mi>r</mi><mo>-</mo><mn>8</mn><mi>r</mi><mo>+</mo><mn>9</mn><mo>=</mo><mn>9</mn></math>. Combining like terms on the left-hand side of this equation yields <math alttext="9 equals 9"><mn>9</mn><mo>=</mo><mn>9</mn></math>, so the coordinates of the point <math alttext="left parenthesis r comma minus eight sevenths r plus nine sevenths right parenthesis"><mfenced><mrow><mi>r</mi><mo>,</mo><mo>-</mo><mfrac><mn>8</mn><mn>7</mn></mfrac><mi>r</mi><mo>+</mo><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mfenced></math> satisfy both equations in the given system. Therefore, for each real number <math alttext="r"><mi>r</mi>
</math>, the point&nbsp;<math alttext="left parenthesis r comma minus eight sevenths r plus nine sevenths right parenthesis"><mfenced><mrow><mi>r</mi><mo>,</mo><mo>-</mo><mfrac><mn>8</mn><mn>7</mn></mfrac><mi>r</mi><mo>+</mo><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mfenced></math>&nbsp;lies on the graph of each equation in the <em>xy</em>-plane for the given system.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"f03465dc","external_id":"c4e7a98c-fecd-45d1-ad5b-69c978af6bf7","disclosed_item_id":null,"source":"qbank","vaultid":"a91e6b7d-361c-40d5-ade1-2b3512d65fff","uId":"afcaaf12-05c7-4160-ab50-3ea549347478","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"8 x plus 7 y equals 9\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>7</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>9</mn>\n</mrow>\n</math><br /><math alttext=\"24 x plus 21 y equals 27\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>24</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>21</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>27</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">For each real number <math alttext=\"r\"><mi>r</mi>\n</math>, which of the following points lies on the graph of each equation in the <em>xy</em>-plane for the given system?</p>","answerOptions":[{"id":"708eaea8-4a84-423c-95a8-8d740f176155","content":"<p><math alttext=\"left parenthesis r comma minus StartFraction 8 r Over 7 EndFraction plus nine sevenths right parenthesis\"><mfenced><mrow><mi>r</mi><mo>,</mo><mo>-</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mrow></mfenced></math></p>"},{"id":"0ff497dc-111b-4c73-af9e-4cc5e0124247","content":"<p><math alttext=\"left parenthesis minus StartFraction 8 r Over 7 EndFraction plus nine sevenths comma r right parenthesis\"><mfenced><mrow><mo>-</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow><mo>,</mo><mi>r</mi></mrow></mfenced></math></p>"},{"id":"fccfe2ca-3b1a-42f0-93ef-2cf33b4d6fb8","content":"<p><math alttext=\"left parenthesis minus StartFraction 8 r Over 7 EndFraction plus 9 comma StartFraction 8 r Over 7 EndFraction plus 27 right parenthesis\"><mfenced><mrow><mo>-</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mn>9</mn></mrow><mo>,</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mn>27</mn></mrow></mrow></mfenced></math></p>"},{"id":"fc6e3303-bff3-4441-99b7-d8a5b4d79603","content":"<p><math alttext=\"left parenthesis StartFraction r Over 3 EndFraction plus 9 comma minus StartFraction r Over 3 EndFraction plus 27 right parenthesis\"><mfenced><mrow><mfrac><mi>r</mi><mn>3</mn></mfrac><mo>+</mo><mrow><mn>9</mn></mrow><mo>,</mo><mo>-</mo><mfrac><mi>r</mi><mn>3</mn></mfrac><mo>+</mo><mrow><mn>27</mn></mrow></mrow></mfenced></math></p>"}],"keys":["708eaea8-4a84-423c-95a8-8d740f176155"],"correct_answer":["A"],"rationale":"<p>Choice A is correct. Dividing both sides of the second equation in the given system by <math alttext=\"3\"><mn>3</mn>\n</math> yields <math alttext=\"8 x plus 7 y equals 9\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>7</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>9</mn>\n</mrow>\n</math>, which is the first equation in the given system. Therefore, the first and second equations represent the same line in the <em>xy</em>-plane. If the <em>x</em>- and <em>y</em>-coordinates of a point satisfy an equation, the point lies on the graph of the equation in the <em>xy</em>-plane. Choice A is a point with <em>x</em>-coordinate <math alttext=\"r\"><mi>r</mi>\n</math> and <em>y</em>-coordinate <math alttext=\"minus StartFraction 8 r Over 7 EndFraction plus nine sevenths\"><mrow>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mfrac>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>r</mi>\n\t\t\t</mrow>\n\t\t\t<mn>7</mn>\n\t\t</mfrac>\n\t</mrow>\n\t<mo>+</mo>\n\t<mfrac>\n\t\t<mn>9</mn>\n\t\t<mn>7</mn>\n\t</mfrac>\n</mrow>\n</math>. Substituting <math alttext=\"r\"><mi>r</mi>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"minus StartFraction 8 r Over 7 EndFraction plus nine sevenths\"><mrow>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mfrac>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>r</mi>\n\t\t\t</mrow>\n\t\t\t<mn>7</mn>\n\t\t</mfrac>\n\t</mrow>\n\t<mo>+</mo>\n\t<mfrac>\n\t\t<mn>9</mn>\n\t\t<mn>7</mn>\n\t</mfrac>\n</mrow>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the equation <math alttext=\"8 x plus 7 y equals 9\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>7</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>9</mn>\n</mrow>\n</math> yields <math alttext=\"8 r plus 7 left parenthesis minus eight sevenths r plus nine sevenths right parenthesis equals 9\"><mn>8</mn><mi>r</mi><mo>+</mo><mn>7</mn><mfenced><mrow><mo>-</mo><mfrac><mn>8</mn><mn>7</mn></mfrac><mi>r</mi><mo>+</mo><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mfenced><mo>=</mo><mn>9</mn></math>. Applying the distributive property to the left-hand side of this equation yields <math alttext=\"8 r minus 8 r plus 9 equals 9\"><mn>8</mn><mi>r</mi><mo>-</mo><mn>8</mn><mi>r</mi><mo>+</mo><mn>9</mn><mo>=</mo><mn>9</mn></math>. Combining like terms on the left-hand side of this equation yields <math alttext=\"9 equals 9\"><mn>9</mn><mo>=</mo><mn>9</mn></math>, so the coordinates of the point <math alttext=\"left parenthesis r comma minus eight sevenths r plus nine sevenths right parenthesis\"><mfenced><mrow><mi>r</mi><mo>,</mo><mo>-</mo><mfrac><mn>8</mn><mn>7</mn></mfrac><mi>r</mi><mo>+</mo><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mfenced></math> satisfy both equations in the given system. Therefore, for each real number <math alttext=\"r\"><mi>r</mi>\n</math>, the point&nbsp;<math alttext=\"left parenthesis r comma minus eight sevenths r plus nine sevenths right parenthesis\"><mfenced><mrow><mi>r</mi><mo>,</mo><mo>-</mo><mfrac><mn>8</mn><mn>7</mn></mfrac><mi>r</mi><mo>+</mo><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mfenced></math>&nbsp;lies on the graph of each equation in the <em>xy</em>-plane for the given system.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959818,"pPcc":"SAT#H","questionId":"f03465dc","skill_cd":"H.D.","score_band_range_cd":7,"skill_desc":"Systems of two linear equations in two variables","createDate":1691007959818,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"c4e7a98c-fecd-45d1-ad5b-69c978af6bf7","primary_class_cd":"H","uId":"afcaaf12-05c7-4160-ab50-3ea549347478","difficulty":"H"},"raw_detail":{"keys":["708eaea8-4a84-423c-95a8-8d740f176155"],"rationale":"<p>Choice A is correct. Dividing both sides of the second equation in the given system by <math alttext=\"3\"><mn>3</mn>\n</math> yields <math alttext=\"8 x plus 7 y equals 9\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>7</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>9</mn>\n</mrow>\n</math>, which is the first equation in the given system. Therefore, the first and second equations represent the same line in the <em>xy</em>-plane. If the <em>x</em>- and <em>y</em>-coordinates of a point satisfy an equation, the point lies on the graph of the equation in the <em>xy</em>-plane. Choice A is a point with <em>x</em>-coordinate <math alttext=\"r\"><mi>r</mi>\n</math> and <em>y</em>-coordinate <math alttext=\"minus StartFraction 8 r Over 7 EndFraction plus nine sevenths\"><mrow>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mfrac>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>r</mi>\n\t\t\t</mrow>\n\t\t\t<mn>7</mn>\n\t\t</mfrac>\n\t</mrow>\n\t<mo>+</mo>\n\t<mfrac>\n\t\t<mn>9</mn>\n\t\t<mn>7</mn>\n\t</mfrac>\n</mrow>\n</math>. Substituting <math alttext=\"r\"><mi>r</mi>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"minus StartFraction 8 r Over 7 EndFraction plus nine sevenths\"><mrow>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mfrac>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>r</mi>\n\t\t\t</mrow>\n\t\t\t<mn>7</mn>\n\t\t</mfrac>\n\t</mrow>\n\t<mo>+</mo>\n\t<mfrac>\n\t\t<mn>9</mn>\n\t\t<mn>7</mn>\n\t</mfrac>\n</mrow>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the equation <math alttext=\"8 x plus 7 y equals 9\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>7</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>9</mn>\n</mrow>\n</math> yields <math alttext=\"8 r plus 7 left parenthesis minus eight sevenths r plus nine sevenths right parenthesis equals 9\"><mn>8</mn><mi>r</mi><mo>+</mo><mn>7</mn><mfenced><mrow><mo>-</mo><mfrac><mn>8</mn><mn>7</mn></mfrac><mi>r</mi><mo>+</mo><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mfenced><mo>=</mo><mn>9</mn></math>. Applying the distributive property to the left-hand side of this equation yields <math alttext=\"8 r minus 8 r plus 9 equals 9\"><mn>8</mn><mi>r</mi><mo>-</mo><mn>8</mn><mi>r</mi><mo>+</mo><mn>9</mn><mo>=</mo><mn>9</mn></math>. Combining like terms on the left-hand side of this equation yields <math alttext=\"9 equals 9\"><mn>9</mn><mo>=</mo><mn>9</mn></math>, so the coordinates of the point <math alttext=\"left parenthesis r comma minus eight sevenths r plus nine sevenths right parenthesis\"><mfenced><mrow><mi>r</mi><mo>,</mo><mo>-</mo><mfrac><mn>8</mn><mn>7</mn></mfrac><mi>r</mi><mo>+</mo><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mfenced></math> satisfy both equations in the given system. Therefore, for each real number <math alttext=\"r\"><mi>r</mi>\n</math>, the point&nbsp;<math alttext=\"left parenthesis r comma minus eight sevenths r plus nine sevenths right parenthesis\"><mfenced><mrow><mi>r</mi><mo>,</mo><mo>-</mo><mfrac><mn>8</mn><mn>7</mn></mfrac><mi>r</mi><mo>+</mo><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mfenced></math>&nbsp;lies on the graph of each equation in the <em>xy</em>-plane for the given system.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"8 x plus 7 y equals 9\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>7</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>9</mn>\n</mrow>\n</math><br /><math alttext=\"24 x plus 21 y equals 27\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>24</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>21</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>27</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">For each real number <math alttext=\"r\"><mi>r</mi>\n</math>, which of the following points lies on the graph of each equation in the <em>xy</em>-plane for the given system?</p>","externalid":"c4e7a98c-fecd-45d1-ad5b-69c978af6bf7","templateid":"78f6f8ed-6df2-4445-8a65-aff2bcb208db","vaultid":"a91e6b7d-361c-40d5-ade1-2b3512d65fff","type":"mcq","answerOptions":[{"id":"708eaea8-4a84-423c-95a8-8d740f176155","content":"<p><math alttext=\"left parenthesis r comma minus StartFraction 8 r Over 7 EndFraction plus nine sevenths right parenthesis\"><mfenced><mrow><mi>r</mi><mo>,</mo><mo>-</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow></mrow></mfenced></math></p>"},{"id":"0ff497dc-111b-4c73-af9e-4cc5e0124247","content":"<p><math alttext=\"left parenthesis minus StartFraction 8 r Over 7 EndFraction plus nine sevenths comma r right parenthesis\"><mfenced><mrow><mo>-</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mfrac><mn>9</mn><mn>7</mn></mfrac></mrow><mo>,</mo><mi>r</mi></mrow></mfenced></math></p>"},{"id":"fccfe2ca-3b1a-42f0-93ef-2cf33b4d6fb8","content":"<p><math alttext=\"left parenthesis minus StartFraction 8 r Over 7 EndFraction plus 9 comma StartFraction 8 r Over 7 EndFraction plus 27 right parenthesis\"><mfenced><mrow><mo>-</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mn>9</mn></mrow><mo>,</mo><mfrac><mrow><mrow><mn>8</mn></mrow><mi>r</mi></mrow><mrow><mn>7</mn></mrow></mfrac><mo>+</mo><mrow><mn>27</mn></mrow></mrow></mfenced></math></p>"},{"id":"fc6e3303-bff3-4441-99b7-d8a5b4d79603","content":"<p><math alttext=\"left parenthesis StartFraction r Over 3 EndFraction plus 9 comma minus StartFraction r Over 3 EndFraction plus 27 right parenthesis\"><mfenced><mrow><mfrac><mi>r</mi><mn>3</mn></mfrac><mo>+</mo><mrow><mn>9</mn></mrow><mo>,</mo><mo>-</mo><mfrac><mi>r</mi><mn>3</mn></mfrac><mo>+</mo><mrow><mn>27</mn></mrow></mrow></mfenced></math></p>"}],"correct_answer":["A"]},"createDate":1691007959818,"updateDate":1691007959818}$SATQ$::jsonb, 1691007959818, 1691007959818),
    ($SATQ$f0773a55$SATQ$, $SATQ$461f9ba1-a36e-4795-9b6e-093390fd8977$SATQ$::uuid, $SATQ$921b58ac-ed33-4dcb-b9b0-b235367cfe77$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="280.512pt" version="1.1" viewBox="0 0 280.512 280.512" width="280.512pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a line in the x y plane with the origin labeled O. The x axis has no values marked. The y axis has no values marked. Refer to long description.">
 <defs>
  <style type="text/css">
*{stroke-linecap:butt;stroke-linejoin:round;}
  </style>
 </defs>
 <g id="figure_1">
  <g id="patch_1">
   <path d="M 0 280.512 
L 280.512 280.512 
L 280.512 0 
L 0 0 
z
" style="fill:#ffffff;"></path>
  </g>
  <g id="axes_1">
   <g id="patch_2">
    <path d="M 7.2 273.312 
L 273.312 273.312 
L 273.312 7.2 
L 7.2 7.2 
z
" style="fill:none;"></path>
   </g>
   <g id="matplotlib.axis_1">
    <g id="xtick_1"></g>
    <g id="xtick_2"></g>
    <g id="xtick_3"></g>
    <g id="xtick_4"></g>
    <g id="xtick_5"></g>
    <g id="xtick_6"></g>
    <g id="xtick_7"></g>
   </g>
   <g id="matplotlib.axis_2">
    <g id="ytick_1"></g>
    <g id="ytick_2"></g>
    <g id="ytick_3"></g>
    <g id="ytick_4"></g>
    <g id="ytick_5"></g>
    <g id="ytick_6"></g>
    <g id="ytick_7"></g>
   </g>
   <g id="LineCollection_1">
    <path clip-path="url(#p26d6a4e8c1)" d="M 21.163078 254.014412 
L 250.546981 254.014412 
" style="fill:none;stroke:#000000;stroke-width:1.772454;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 247.735558 -25.493163 
L 250.546981 -26.497588 
L 247.735558 -27.502013 
L 247.735558 -25.493163 
L 250.546981 -26.497588 
" id="m86ace52809" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;"></path>
    </defs>
    <g clip-path="url(#p26d6a4e8c1)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;" x="0" xlink:href="#m86ace52809" y="280.512"></use>
    </g>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#p26d6a4e8c1)" d="M 26.497588 259.348922 
L 26.497588 29.965019 
" style="fill:none;stroke:#000000;stroke-width:1.772454;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 27.493071 -246.900222 
L 26.497588 -250.546981 
L 25.502104 -246.900222 
L 27.493071 -246.900222 
L 26.497588 -250.546981 
" id="m070d95f13c" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;"></path>
    </defs>
    <g clip-path="url(#p26d6a4e8c1)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;" x="0" xlink:href="#m070d95f13c" y="280.512"></use>
    </g>
   </g>
   <g id="text_1">
    <g clip-path="url(#p26d6a4e8c1)">
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
     <g transform="translate(16.096781 263.522719)scale(0.105 -0.105)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_2">
    <g clip-path="url(#p26d6a4e8c1)">
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
     <g transform="translate(24.041572 21.602719)scale(0.105 -0.105)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_3">
    <g clip-path="url(#p26d6a4e8c1)">
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
     <g transform="translate(258.77557 256.321131)scale(0.105 -0.105)">
      <use xlink:href="#CrimsonText-Italic-120"></use>
     </g>
    </g>
   </g>
   <g id="line2d_1">
    <path clip-path="url(#p26d6a4e8c1)" d="M 26.497588 239.789054 
L 162.47947 35.816231 
L 162.47947 35.816231 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:1.5;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="p26d6a4e8c1">
   <rect height="266.112" width="266.112" x="7.2" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a line" class="sr-only"><ul>
<li>The line begins on the y axis above the x axis.</li>
<li>The line slants sharply up from left to right.</li>
</ul></div></figure></p>
<p style="text-align: left;">The graph represents the total charge, in dollars, by an electrician for <math alttext="x"><mi>x</mi>
</math> hours of work. The electrician charges a onetime fee plus an hourly rate. What is the best interpretation of the slope of the graph?</p>$SATQ$, $SATQ$[{"id":"f9b699d2-56e0-4b01-836f-92e87a8f52be","content":"<p style=\"text-align: left;\">The electrician&rsquo;s hourly rate</p>"},{"id":"bc5aec38-a895-4b3a-baf5-0a84a868bcd1","content":"<p style=\"text-align: left;\">The electrician&rsquo;s onetime fee</p>"},{"id":"0fcaeda4-190c-4712-9e8b-402078a84c9c","content":"<p style=\"text-align: left;\">The maximum amount that the electrician charges</p>"},{"id":"72b20659-3e46-4ec1-b68d-c0391855a1f7","content":"<p style=\"text-align: left;\">The total amount that the electrician charges</p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["f9b699d2-56e0-4b01-836f-92e87a8f52be"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It&rsquo;s given that the electrician charges a onetime fee plus an hourly rate. It's also given that the graph represents the total charge, in dollars, for <math alttext="x"><mi>x</mi>
</math> hours of work. This graph shows a linear relationship in the <em>xy</em>-plane. Thus, the total charge <math alttext="y"><mi>y</mi>
</math>, in dollars, for <math alttext="x"><mi>x</mi>
</math> hours of work can be represented as <math alttext="y equals m x plus b"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext="m"><mi>m</mi>
</math> is the slope and <math alttext="left parenthesis 0 comma b right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math> is the <em>y</em>-intercept of the graph of the equation in the <em>xy</em>-plane. Since the given graph represents the total charge, in dollars, by an electrician for <math alttext="x"><mi>x</mi>
</math> hours of work, it follows that its slope is <math alttext="m"><mi>m</mi>
</math>, or the electrician&rsquo;s hourly rate.</p>
<p style="text-align: left;">Choice B is incorrect. The electrician's onetime fee is represented by the <em>y</em>-coordinate of the <em>y</em>-intercept, not the slope, of the graph.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"f0773a55","external_id":"461f9ba1-a36e-4795-9b6e-093390fd8977","disclosed_item_id":null,"source":"qbank","vaultid":"921b58ac-ed33-4dcb-b9b0-b235367cfe77","uId":"e2b2ea28-d09d-4ad0-b663-0291b5c1e386","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"280.512pt\" version=\"1.1\" viewBox=\"0 0 280.512 280.512\" width=\"280.512pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a line in the x y plane with the origin labeled O. The x axis has no values marked. The y axis has no values marked. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 280.512 \nL 280.512 280.512 \nL 280.512 0 \nL 0 0 \nz\n\" style=\"fill:#ffffff;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 7.2 273.312 \nL 273.312 273.312 \nL 273.312 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n   </g>\n   <g id=\"matplotlib.axis_2\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p26d6a4e8c1)\" d=\"M 21.163078 254.014412 \nL 250.546981 254.014412 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.772454;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 247.735558 -25.493163 \nL 250.546981 -26.497588 \nL 247.735558 -27.502013 \nL 247.735558 -25.493163 \nL 250.546981 -26.497588 \n\" id=\"m86ace52809\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;\"></path>\n    </defs>\n    <g clip-path=\"url(#p26d6a4e8c1)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;\" x=\"0\" xlink:href=\"#m86ace52809\" y=\"280.512\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p26d6a4e8c1)\" d=\"M 26.497588 259.348922 \nL 26.497588 29.965019 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.772454;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 27.493071 -246.900222 \nL 26.497588 -250.546981 \nL 25.502104 -246.900222 \nL 27.493071 -246.900222 \nL 26.497588 -250.546981 \n\" id=\"m070d95f13c\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;\"></path>\n    </defs>\n    <g clip-path=\"url(#p26d6a4e8c1)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;\" x=\"0\" xlink:href=\"#m070d95f13c\" y=\"280.512\"></use>\n    </g>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p26d6a4e8c1)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(16.096781 263.522719)scale(0.105 -0.105)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p26d6a4e8c1)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(24.041572 21.602719)scale(0.105 -0.105)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p26d6a4e8c1)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(258.77557 256.321131)scale(0.105 -0.105)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#p26d6a4e8c1)\" d=\"M 26.497588 239.789054 \nL 162.47947 35.816231 \nL 162.47947 35.816231 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:1.5;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p26d6a4e8c1\">\n   <rect height=\"266.112\" width=\"266.112\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a line\" class=\"sr-only\"><ul>\n<li>The line begins on the y axis above the x axis.</li>\n<li>The line slants sharply up from left to right.</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The graph represents the total charge, in dollars, by an electrician for <math alttext=\"x\"><mi>x</mi>\n</math> hours of work. The electrician charges a onetime fee plus an hourly rate. What is the best interpretation of the slope of the graph?</p>","answerOptions":[{"id":"f9b699d2-56e0-4b01-836f-92e87a8f52be","content":"<p style=\"text-align: left;\">The electrician&rsquo;s hourly rate</p>"},{"id":"bc5aec38-a895-4b3a-baf5-0a84a868bcd1","content":"<p style=\"text-align: left;\">The electrician&rsquo;s onetime fee</p>"},{"id":"0fcaeda4-190c-4712-9e8b-402078a84c9c","content":"<p style=\"text-align: left;\">The maximum amount that the electrician charges</p>"},{"id":"72b20659-3e46-4ec1-b68d-c0391855a1f7","content":"<p style=\"text-align: left;\">The total amount that the electrician charges</p>"}],"keys":["f9b699d2-56e0-4b01-836f-92e87a8f52be"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It&rsquo;s given that the electrician charges a onetime fee plus an hourly rate. It's also given that the graph represents the total charge, in dollars, for <math alttext=\"x\"><mi>x</mi>\n</math> hours of work. This graph shows a linear relationship in the <em>xy</em>-plane. Thus, the total charge <math alttext=\"y\"><mi>y</mi>\n</math>, in dollars, for <math alttext=\"x\"><mi>x</mi>\n</math> hours of work can be represented as <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope and <math alttext=\"left parenthesis 0 comma b right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math> is the <em>y</em>-intercept of the graph of the equation in the <em>xy</em>-plane. Since the given graph represents the total charge, in dollars, by an electrician for <math alttext=\"x\"><mi>x</mi>\n</math> hours of work, it follows that its slope is <math alttext=\"m\"><mi>m</mi>\n</math>, or the electrician&rsquo;s hourly rate.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. The electrician's onetime fee is represented by the <em>y</em>-coordinate of the <em>y</em>-intercept, not the slope, of the graph.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959811,"pPcc":"SAT#H","questionId":"f0773a55","skill_cd":"H.B.","score_band_range_cd":4,"skill_desc":"Linear functions","createDate":1691007959811,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"461f9ba1-a36e-4795-9b6e-093390fd8977","primary_class_cd":"H","uId":"e2b2ea28-d09d-4ad0-b663-0291b5c1e386","difficulty":"M"},"raw_detail":{"keys":["f9b699d2-56e0-4b01-836f-92e87a8f52be"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It&rsquo;s given that the electrician charges a onetime fee plus an hourly rate. It's also given that the graph represents the total charge, in dollars, for <math alttext=\"x\"><mi>x</mi>\n</math> hours of work. This graph shows a linear relationship in the <em>xy</em>-plane. Thus, the total charge <math alttext=\"y\"><mi>y</mi>\n</math>, in dollars, for <math alttext=\"x\"><mi>x</mi>\n</math> hours of work can be represented as <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope and <math alttext=\"left parenthesis 0 comma b right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math> is the <em>y</em>-intercept of the graph of the equation in the <em>xy</em>-plane. Since the given graph represents the total charge, in dollars, by an electrician for <math alttext=\"x\"><mi>x</mi>\n</math> hours of work, it follows that its slope is <math alttext=\"m\"><mi>m</mi>\n</math>, or the electrician&rsquo;s hourly rate.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. The electrician's onetime fee is represented by the <em>y</em>-coordinate of the <em>y</em>-intercept, not the slope, of the graph.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"280.512pt\" version=\"1.1\" viewBox=\"0 0 280.512 280.512\" width=\"280.512pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a line in the x y plane with the origin labeled O. The x axis has no values marked. The y axis has no values marked. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 280.512 \nL 280.512 280.512 \nL 280.512 0 \nL 0 0 \nz\n\" style=\"fill:#ffffff;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 7.2 273.312 \nL 273.312 273.312 \nL 273.312 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n   </g>\n   <g id=\"matplotlib.axis_2\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p26d6a4e8c1)\" d=\"M 21.163078 254.014412 \nL 250.546981 254.014412 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.772454;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 247.735558 -25.493163 \nL 250.546981 -26.497588 \nL 247.735558 -27.502013 \nL 247.735558 -25.493163 \nL 250.546981 -26.497588 \n\" id=\"m86ace52809\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;\"></path>\n    </defs>\n    <g clip-path=\"url(#p26d6a4e8c1)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;\" x=\"0\" xlink:href=\"#m86ace52809\" y=\"280.512\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p26d6a4e8c1)\" d=\"M 26.497588 259.348922 \nL 26.497588 29.965019 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.772454;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 27.493071 -246.900222 \nL 26.497588 -250.546981 \nL 25.502104 -246.900222 \nL 27.493071 -246.900222 \nL 26.497588 -250.546981 \n\" id=\"m070d95f13c\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;\"></path>\n    </defs>\n    <g clip-path=\"url(#p26d6a4e8c1)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.772454;\" x=\"0\" xlink:href=\"#m070d95f13c\" y=\"280.512\"></use>\n    </g>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p26d6a4e8c1)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(16.096781 263.522719)scale(0.105 -0.105)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p26d6a4e8c1)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(24.041572 21.602719)scale(0.105 -0.105)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p26d6a4e8c1)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(258.77557 256.321131)scale(0.105 -0.105)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#p26d6a4e8c1)\" d=\"M 26.497588 239.789054 \nL 162.47947 35.816231 \nL 162.47947 35.816231 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:1.5;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p26d6a4e8c1\">\n   <rect height=\"266.112\" width=\"266.112\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a line\" class=\"sr-only\"><ul>\n<li>The line begins on the y axis above the x axis.</li>\n<li>The line slants sharply up from left to right.</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The graph represents the total charge, in dollars, by an electrician for <math alttext=\"x\"><mi>x</mi>\n</math> hours of work. The electrician charges a onetime fee plus an hourly rate. What is the best interpretation of the slope of the graph?</p>","externalid":"461f9ba1-a36e-4795-9b6e-093390fd8977","templateid":"f203251b-8f6f-4973-bfca-0b5d4f5ac435","vaultid":"921b58ac-ed33-4dcb-b9b0-b235367cfe77","type":"mcq","answerOptions":[{"id":"f9b699d2-56e0-4b01-836f-92e87a8f52be","content":"<p style=\"text-align: left;\">The electrician&rsquo;s hourly rate</p>"},{"id":"bc5aec38-a895-4b3a-baf5-0a84a868bcd1","content":"<p style=\"text-align: left;\">The electrician&rsquo;s onetime fee</p>"},{"id":"0fcaeda4-190c-4712-9e8b-402078a84c9c","content":"<p style=\"text-align: left;\">The maximum amount that the electrician charges</p>"},{"id":"72b20659-3e46-4ec1-b68d-c0391855a1f7","content":"<p style=\"text-align: left;\">The total amount that the electrician charges</p>"}],"correct_answer":["A"]},"createDate":1691007959811,"updateDate":1691007959811}$SATQ$::jsonb, 1691007959811, 1691007959811),
    ($SATQ$f09097b1$SATQ$, NULL, NULL, $SATQ$070609-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$spr$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">An agricultural scientist studying the growth of corn plants recorded the height of a corn plant at the beginning of a study and the height of the plant each day for the next 12&nbsp;days. The scientist found that the height of the plant increased by an average of 1.20&nbsp;centimeters per day for the 12&nbsp;days. If the height of the plant on the last day of the study was 36.8&nbsp;centimeters, what was the height, in centimeters, of the corn plant at the beginning of the study?</p>
$SATQ$, NULL, $SATQ$["22.4"]$SATQ$::jsonb, NULL, $SATQ$<p>The correct answer is 22.4. If the height of the plant increased by an average of 1.20 centimeters per day for 12 days, then its total growth over the 12 days was <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f09097b1/img_000_cb8596ac.png" alt="1 point 2 0, times 12, equals 14.4"></span> centimeters. The plant was 36.8 centimeters tall after 12 days, so at the beginning of the study&nbsp;its height was <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f09097b1/img_001_4fdf4b78.png" alt="36 point 8, minus 14 point 4, equals 22 point 4"></span> centimeters. Note that 22.4 and 112/5 are examples of ways to enter a correct answer.<p>Alternate approach:&nbsp;The equation <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f09097b1/img_002_f7cb0350.png" alt="36 point 8 equals, 12, times, 1 point 2 0, plus h"></span> can be used to represent this situation, where <span class="italic">h</span> is the height of the plant, in centimeters, at the beginning of the study. Solving this equation for <span class="italic">h </span>yields 22.4 centimeters.</p><p>&nbsp;</p></p>
$SATQ$, true, 3, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$SPR$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"f09097b1","external_id":null,"disclosed_item_id":"070609-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"M","score_band_range_cd":5,"type":"spr","stimulus":null,"stem":"<p class=\"stem_paragraph \">An agricultural scientist studying the growth of corn plants recorded the height of a corn plant at the beginning of a study and the height of the plant each day for the next 12&nbsp;days. The scientist found that the height of the plant increased by an average of 1.20&nbsp;centimeters per day for the 12&nbsp;days. If the height of the plant on the last day of the study was 36.8&nbsp;centimeters, what was the height, in centimeters, of the corn plant at the beginning of the study?</p>\n","answerOptions":null,"keys":null,"correct_answer":["22.4"],"rationale":"<p>The correct answer is 22.4. If the height of the plant increased by an average of 1.20 centimeters per day for 12 days, then its total growth over the 12 days was <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f09097b1/img_000_cb8596ac.png\" alt=\"1 point 2 0, times 12, equals 14.4\"></span> centimeters. The plant was 36.8 centimeters tall after 12 days, so at the beginning of the study&nbsp;its height was <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f09097b1/img_001_4fdf4b78.png\" alt=\"36 point 8, minus 14 point 4, equals 22 point 4\"></span> centimeters. Note that 22.4 and 112/5 are examples of ways to enter a correct answer.<p>Alternate approach:&nbsp;The equation <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f09097b1/img_002_f7cb0350.png\" alt=\"36 point 8 equals, 12, times, 1 point 2 0, plus h\"></span> can be used to represent this situation, where <span class=\"italic\">h</span> is the height of the plant, in centimeters, at the beginning of the study. Solving this equation for <span class=\"italic\">h </span>yields 22.4 centimeters.</p><p>&nbsp;</p></p>\n","answer_style":"SPR","section":"Math","image_count":3,"raw_list":{"updateDate":1691007959631,"pPcc":"SAT#H","questionId":"f09097b1","skill_cd":"H.A.","score_band_range_cd":5,"skill_desc":"Linear equations in one variable","createDate":1691007959631,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"070609-DC","external_id":null,"primary_class_cd":"H","uId":"72edbd43-c8e4-49b8-8eb1-9653d20a3d58","difficulty":"M"},"raw_detail":{"item_id":"070609-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">An agricultural scientist studying the growth of corn plants recorded the height of a corn plant at the beginning of a study and the height of the plant each day for the next 12&nbsp;days. The scientist found that the height of the plant increased by an average of 1.20&nbsp;centimeters per day for the 12&nbsp;days. If the height of the plant on the last day of the study was 36.8&nbsp;centimeters, what was the height, in centimeters, of the corn plant at the beginning of the study?</p>\n","answer":{"style":"SPR","rationale":"<p>The correct answer is 22.4. If the height of the plant increased by an average of 1.20 centimeters per day for 12 days, then its total growth over the 12 days was <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAAAaCAYAAACNU8MOAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACSUlEQVRoQ+2Wja2DMAyEMx4DMQ67sAqb+OXPJTW54NBQ9Cp/EmoJOD58TsCV0DqTcxMtG/nfZyDaaJkcuXmFGkbq1OT799C20ORmWuk5Y0vW2ZGv90HLXTpRvp+g9XDh2uSXST5t8loJ/i8ftdi0+vie4ypEJl7RqdH0jebW1DHp6G80GNd6MDZBY+5exH2uWrzcVtE2K4txRadWU6CniXtBOSVBg//pNhfGbctUfefEcR8QDs1Dp+IfTUrzpOJysWuFlRpiQabFR6T5rujUaMpDh3yj0NaRGyAcPebCOC62nCwFhKKsNPtTjbmINFc2F2wf1WIXK3W0zlJTHmruDFfR6ns931KvD6IZR/5R5kpnM+n6Z+bGVZlXBFpJ1WIX2kbrLDXlIVgLnjv8bR0tQ870xeYOekDzI5pxo4smSabtSfdOfs9XG09dmcZG6pSamDJfHhpGSx9fC3rQzlbjNG5k0SRcxPI9+bS5NU3MU+aW3xs95p7G3WXu6yNCFPHJbRlpYlAOnjv8bR0tQ5A+WQ+tuaq41K14Mk3RJLGjQAwSf/WDijnT2dLElPny0DCQvlfDVQ/czOq4eKOvWjwR9JrLSdH9bJK8Xm4xTFzNxUfPVZ1nmhiZbyTaOqLmPwPGtTq2p2icQFXEcksR50wwvJzrik6tpoDMN5JPzT1dNCAuEh6sdqHHXD6vH++mvN97NBYZ2atTq6nVOCN41Ny7H64XaOJNOlG+nwFtj9+E38no3RoYqVOTzzAMwzAMwzAMwzAMwzCMfpz7Awus7Oqg1iexAAAAxXRFWHRNYXRoTUwAPG1hdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTgvTWF0aC9NYXRoTUwiPjxtZmVuY2VkPjxtcm93Pjxtbj4xPC9tbj48bW8+LjwvbW8+PG1uPjIwPC9tbj48L21yb3c+PC9tZmVuY2VkPjxtZmVuY2VkPjxtbj4xMjwvbW4+PC9tZmVuY2VkPjxtbz49PC9tbz48bW4+MTQ8L21uPjxtbz4uPC9tbz48bW4+NDwvbW4+PC9tYXRoPgY5/XkAAAAASUVORK5CYII=\" alt=\"1 point 2 0, times 12, equals 14.4\"></span> centimeters. The plant was 36.8 centimeters tall after 12 days, so at the beginning of the study&nbsp;its height was <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAAAWCAYAAAAIAZSVAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACOklEQVRoQ+2WibHEIAhAU14KSjnpJa2kE78GUaOgiPuvGd6Ms7suyCnJhlzH5vxHXLs7bxe+v3D36fYk49dxNTIU77M359VEerMEO7t3PP4kwRhmfdDqSXDuduf+zlEdh0RmBBsDFOhwfv/5w12H/3w3AexlZeelD/8xcoI++/OJxHNl/szb1+qNyIVtc4SxSGQkkDFQXYEGawdqY/e5+9/ZqRpskjppjyN+M/5cBvyA4HoJwaSFNVNIrZ4EyH87ccvcSmTiFstUDKnjYpE4B0ZwI+eTDQCBBd/6EwljOk7aJw6t3ioQV7+4EpnAdAzQWbng2RAkOWyFJRk/MHayk9iJn07k6JH0xLSf7maakkOqh/bD196S2n3yFux2iiuRCYhjh8K3jmLRXk0RD5M0QXku94K5Sq8BykcRN5UotHqrSC6J9CKpYkDB9AiIxurkQmH5EYSj5zUBmMZZvUG9BigfOTOF1OqtkC5btEshkUHUMUBx4bZy3Qb7/I3mDI4aRwPXAOBDO7lGSZjVW23gQJqUXgh2WiQyiDb2h7K4nOKwAZj/R3oauAZICSMX74NWT8tzU/3Z1ARDJDIlohigGG1xQRluaT+5nUdAt3F+ZgLUTN2CAq2eBCxUz3eJzAgyhvScLt4msSlKY3Wj4GGlDOUkdO34HWCV1QYYJfi7GkCSD2nO1DHkl7W8qECxCXDVhjgHcHThGgWi4b82ANqlF1wciYz//msxGIZhGIZhGIZhGIZhGIbxt9m2L7Yq8lnzNnQ3AAAAsHRFWHRNYXRoTUwAPG1hdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTgvTWF0aC9NYXRoTUwiPjxtbj4zNjwvbW4+PG1vPi48L21vPjxtbj44PC9tbj48bW8+LTwvbW8+PG1uPjE0PC9tbj48bW8+LjwvbW8+PG1uPjQ8L21uPjxtbz49PC9tbz48bW4+MjI8L21uPjxtbz4uPC9tbz48bW4+NDwvbW4+PC9tYXRoPhyWHcAAAAAASUVORK5CYII=\" alt=\"36 point 8, minus 14 point 4, equals 22 point 4\"></span> centimeters. Note that 22.4 and 112/5 are examples of ways to enter a correct answer.<p>Alternate approach:&nbsp;The equation <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIYAAAAaCAYAAABy3SSpAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAC5klEQVRoQ+2Wi5GEIAyGLc+CLMdetpXthANCNMYkBE/PmZt8M86uLOT5AzsFMumzpGma0/pN+fMdUvqmdZ7StHxeiyEgpO+a5mlJn/SeKCifZUpZG+/EUpznj/bIOwUKRuY5lXy0/XySxd+cE2ivG9sOJLFI86xGaLYlvP7gdMI559o/IVTspdkLaNzuWDpGMXg0lPLsJX/0iiTbfk4caJ/HtTfpHAudazVBsy3h9lfH9lrzd2REkB7Aj5xnRVIOJoWB8Hfku86mcRQPF0EVSx5sr7cB8ZRmnGOFPM8F5znUdyE2y7aEx59WV6k+tZHzmlfItS5o9ZaocXTsndjU3oLTkuwhia7whDD2neY7yRC6czBvHu9V2xIHf0p9uFgLMPc4xvEKg/YXYyjD3Z5AYLsQ9mTAcRkqj6dAI1cJJla+Wo+VuPeKQ2p8befAWn0DjNqWOPhTNhwVTxtqvvXYChhfXxgtj3k/NTSRVuhxSSdgMw9iaYY8RaJ2pfvzTkaax0XaK/6IbYmTv/quCeM4Drvcrp1bGHhK5IltyJcbX4gJ8UXSkUfZjix6YgwI6gre5mFO5+I8IwzR3y+FgfGUr9bDhSLat04MCr1OMCmPA4rmTBPU1UQpnuZtJ1g2BCMArDXycdiWUP3V+pz9QV2fu0pqPOyPp9aTE7TpWoO7wlB+7637Db3mwX8e+Xc84bTCXhGG6W9g48Bcu3FeYdSY8qT2WqH/feoANMkOTitIT2W2oBzqvIDVPIjXbmydw4qGjAqj5w+FyH+XGldrxnY5xyMMKYftyqc+t0HiFMVyWMwEhE2nc6RCwI7ZRSCtuxOteV6/1s4cEZ3bX63rfnryd6TUsWurxWcKo8VF56h5beLIX/GRjKM48OGGtB0C4tDX3YmWJMYmP0chlHjF/AeEMeLvOFe4eg2xjgI9PNoC+89c7f+KOxtxB5pQgxfQjvS/RLz7gyAIgiAIgiAIgiAIgiAIgktM0w/qPFT6sHIhAgAAAMZ0RVh0TWF0aE1MADxtYXRoIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8xOTk4L01hdGgvTWF0aE1MIj48bW4+MzY8L21uPjxtbz4uPC9tbz48bW4+ODwvbW4+PG1vPj08L21vPjxtbj4xMjwvbW4+PG1mZW5jZWQ+PG1yb3c+PG1uPjE8L21uPjxtbz4uPC9tbz48bW4+MjA8L21uPjwvbXJvdz48L21mZW5jZWQ+PG1vPis8L21vPjxtaT5oPC9taT48L21hdGg+QX1i5gAAAABJRU5ErkJggg==\" alt=\"36 point 8 equals, 12, times, 1 point 2 0, plus h\"></span> can be used to represent this situation, where <span class=\"italic\">h</span> is the height of the plant, in centimeters, at the beginning of the study. Solving this equation for <span class=\"italic\">h </span>yields 22.4 centimeters.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959631,"updateDate":1691007959631,"correct_answer_extracted_from_rationale":true}$SATQ$::jsonb, 1691007959631, 1691007959631),
    ($SATQ$f14484a5$SATQ$, $SATQ$0d482312-5261-43da-8a42-d4ab593d0949$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">A manufacturing plant makes <math alttext="10"><mn>10</mn>
</math>-inch, <math alttext="9"><mn>9</mn>
</math>-inch, and <math alttext="7"><mn>7</mn>
</math>-inch frying pans. During a certain day, the number of <math alttext="10"><mn>10</mn>
</math>-inch frying pans that the manufacturing plant makes is <math alttext="4"><mn>4</mn>
</math> times the number <math alttext="n"><mi>n</mi>
</math> of <math alttext="9"><mn>9</mn>
</math>-inch frying pans it makes, and the number of <math alttext="7"><mn>7</mn>
</math>-inch frying pans it makes is <math alttext="10"><mn>10</mn>
</math>. During this day, the manufacturing plant makes <math alttext="100"><mn>100</mn>
</math> frying pans total. Which equation represents this situation?</p>$SATQ$, $SATQ$[{"id":"9cc8e023-e82a-4416-853f-5d9a67196573","content":"<p><math alttext=\"10 left parenthesis 4 n right parenthesis plus 9 n plus 7 left parenthesis 10 right parenthesis equals 100\"><mn>10</mn><mfenced><mrow><mn>4</mn><mi>n</mi></mrow></mfenced><mo>+</mo><mn>9</mn><mi>n</mi><mo>+</mo><mn>7</mn><mfenced><mn>10</mn></mfenced><mo>=</mo><mn>100</mn></math></p>"},{"id":"6f4fee3a-67b3-4695-84e8-25adc87f8ac8","content":"<p><math alttext=\"10 n plus 9 n plus 7 n equals 100\"><mn>10</mn><mi>n</mi><mo>+</mo><mn>9</mn><mi>n</mi><mo>+</mo><mn>7</mn><mi>n</mi><mo>=</mo><mn>100</mn></math></p>"},{"id":"46bdcb5b-b46b-40d4-881e-b5e2cfbf7e0f","content":"<p><math alttext=\"4 n plus 10 equals 100\"><mn>4</mn><mi>n</mi><mo>+</mo><mn>10</mn><mo>=</mo><mn>100</mn></math></p>"},{"id":"1b6458cf-c43b-40bc-9f76-e784d72c2d23","content":"<p><math alttext=\"5 n plus 10 equals 100\"><mn>5</mn><mi>n</mi><mo>+</mo><mn>10</mn><mo>=</mo><mn>100</mn></math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["1b6458cf-c43b-40bc-9f76-e784d72c2d23"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. It's given that during a certain day, the number of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="9"><mn>9</mn></math>-inch frying pans the manufacturing plant makes is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="n"><mi>n</mi></math> and the number of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="7"><mn>7</mn></math>-inch frying pans it makes is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="10"><mn>10</mn></math>. It's also given that during this day the number of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="10"><mn>10</mn></math>-inch frying pans that the manufacturing plant makes is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4"><mn>4</mn></math> times the number of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="9"><mn>9</mn></math>-inch frying pans, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4 n"><mn>4</mn><mi>n</mi></math>. Therefore, the total number of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="7"><mn>7</mn></math>-inch, <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="9"><mn>9</mn></math>-inch, and <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="10"><mn>10</mn></math>-inch frying pans the manufacturing plant makes is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="n plus 10 plus 4 n"><mi>n</mi><mo>+</mo><mn>10</mn><mo>+</mo><mn>4</mn><mi>n</mi></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="5 n plus 10"><mn>5</mn><mi>n</mi><mo>+</mo><mn>10</mn></math>. It's given that during this day the manufacturing plant makes <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="100"><mn>100</mn></math> frying pans total. Thus, the equation <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="5 n plus 10 equals 100"><mn>5</mn><mi>n</mi><mo>+</mo><mn>10</mn><mo>=</mo><mn>100</mn></math> represents this situation.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"f14484a5","external_id":"0d482312-5261-43da-8a42-d4ab593d0949","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"1e1f3a41-669a-44c9-8194-df584c74da29","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">A manufacturing plant makes <math alttext=\"10\"><mn>10</mn>\n</math>-inch, <math alttext=\"9\"><mn>9</mn>\n</math>-inch, and <math alttext=\"7\"><mn>7</mn>\n</math>-inch frying pans. During a certain day, the number of <math alttext=\"10\"><mn>10</mn>\n</math>-inch frying pans that the manufacturing plant makes is <math alttext=\"4\"><mn>4</mn>\n</math> times the number <math alttext=\"n\"><mi>n</mi>\n</math> of <math alttext=\"9\"><mn>9</mn>\n</math>-inch frying pans it makes, and the number of <math alttext=\"7\"><mn>7</mn>\n</math>-inch frying pans it makes is <math alttext=\"10\"><mn>10</mn>\n</math>. During this day, the manufacturing plant makes <math alttext=\"100\"><mn>100</mn>\n</math> frying pans total. Which equation represents this situation?</p>","answerOptions":[{"id":"9cc8e023-e82a-4416-853f-5d9a67196573","content":"<p><math alttext=\"10 left parenthesis 4 n right parenthesis plus 9 n plus 7 left parenthesis 10 right parenthesis equals 100\"><mn>10</mn><mfenced><mrow><mn>4</mn><mi>n</mi></mrow></mfenced><mo>+</mo><mn>9</mn><mi>n</mi><mo>+</mo><mn>7</mn><mfenced><mn>10</mn></mfenced><mo>=</mo><mn>100</mn></math></p>"},{"id":"6f4fee3a-67b3-4695-84e8-25adc87f8ac8","content":"<p><math alttext=\"10 n plus 9 n plus 7 n equals 100\"><mn>10</mn><mi>n</mi><mo>+</mo><mn>9</mn><mi>n</mi><mo>+</mo><mn>7</mn><mi>n</mi><mo>=</mo><mn>100</mn></math></p>"},{"id":"46bdcb5b-b46b-40d4-881e-b5e2cfbf7e0f","content":"<p><math alttext=\"4 n plus 10 equals 100\"><mn>4</mn><mi>n</mi><mo>+</mo><mn>10</mn><mo>=</mo><mn>100</mn></math></p>"},{"id":"1b6458cf-c43b-40bc-9f76-e784d72c2d23","content":"<p><math alttext=\"5 n plus 10 equals 100\"><mn>5</mn><mi>n</mi><mo>+</mo><mn>10</mn><mo>=</mo><mn>100</mn></math></p>"}],"keys":["1b6458cf-c43b-40bc-9f76-e784d72c2d23"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. It's given that during a certain day, the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9\"><mn>9</mn></math>-inch frying pans the manufacturing plant makes is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"n\"><mi>n</mi></math> and the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7\"><mn>7</mn></math>-inch frying pans it makes is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"10\"><mn>10</mn></math>. It's also given that during this day the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"10\"><mn>10</mn></math>-inch frying pans that the manufacturing plant makes is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4\"><mn>4</mn></math> times the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9\"><mn>9</mn></math>-inch frying pans, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 n\"><mn>4</mn><mi>n</mi></math>. Therefore, the total number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7\"><mn>7</mn></math>-inch, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9\"><mn>9</mn></math>-inch, and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"10\"><mn>10</mn></math>-inch frying pans the manufacturing plant makes is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"n plus 10 plus 4 n\"><mi>n</mi><mo>+</mo><mn>10</mn><mo>+</mo><mn>4</mn><mi>n</mi></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"5 n plus 10\"><mn>5</mn><mi>n</mi><mo>+</mo><mn>10</mn></math>. It's given that during this day the manufacturing plant makes <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"100\"><mn>100</mn></math> frying pans total. Thus, the equation <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"5 n plus 10 equals 100\"><mn>5</mn><mi>n</mi><mo>+</mo><mn>10</mn><mo>=</mo><mn>100</mn></math> represents this situation.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1755117017716,"pPcc":"SAT#H","questionId":"f14484a5","skill_cd":"H.A.","score_band_range_cd":6,"skill_desc":"Linear equations in one variable","createDate":1755117017716,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"0d482312-5261-43da-8a42-d4ab593d0949","primary_class_cd":"H","uId":"1e1f3a41-669a-44c9-8194-df584c74da29","difficulty":"H"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">A manufacturing plant makes <math alttext=\"10\"><mn>10</mn>\n</math>-inch, <math alttext=\"9\"><mn>9</mn>\n</math>-inch, and <math alttext=\"7\"><mn>7</mn>\n</math>-inch frying pans. During a certain day, the number of <math alttext=\"10\"><mn>10</mn>\n</math>-inch frying pans that the manufacturing plant makes is <math alttext=\"4\"><mn>4</mn>\n</math> times the number <math alttext=\"n\"><mi>n</mi>\n</math> of <math alttext=\"9\"><mn>9</mn>\n</math>-inch frying pans it makes, and the number of <math alttext=\"7\"><mn>7</mn>\n</math>-inch frying pans it makes is <math alttext=\"10\"><mn>10</mn>\n</math>. During this day, the manufacturing plant makes <math alttext=\"100\"><mn>100</mn>\n</math> frying pans total. Which equation represents this situation?</p>","keys":["1b6458cf-c43b-40bc-9f76-e784d72c2d23"],"answerOptions":[{"id":"9cc8e023-e82a-4416-853f-5d9a67196573","content":"<p><math alttext=\"10 left parenthesis 4 n right parenthesis plus 9 n plus 7 left parenthesis 10 right parenthesis equals 100\"><mn>10</mn><mfenced><mrow><mn>4</mn><mi>n</mi></mrow></mfenced><mo>+</mo><mn>9</mn><mi>n</mi><mo>+</mo><mn>7</mn><mfenced><mn>10</mn></mfenced><mo>=</mo><mn>100</mn></math></p>"},{"id":"6f4fee3a-67b3-4695-84e8-25adc87f8ac8","content":"<p><math alttext=\"10 n plus 9 n plus 7 n equals 100\"><mn>10</mn><mi>n</mi><mo>+</mo><mn>9</mn><mi>n</mi><mo>+</mo><mn>7</mn><mi>n</mi><mo>=</mo><mn>100</mn></math></p>"},{"id":"46bdcb5b-b46b-40d4-881e-b5e2cfbf7e0f","content":"<p><math alttext=\"4 n plus 10 equals 100\"><mn>4</mn><mi>n</mi><mo>+</mo><mn>10</mn><mo>=</mo><mn>100</mn></math></p>"},{"id":"1b6458cf-c43b-40bc-9f76-e784d72c2d23","content":"<p><math alttext=\"5 n plus 10 equals 100\"><mn>5</mn><mi>n</mi><mo>+</mo><mn>10</mn><mo>=</mo><mn>100</mn></math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice D is correct. It's given that during a certain day, the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9\"><mn>9</mn></math>-inch frying pans the manufacturing plant makes is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"n\"><mi>n</mi></math> and the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7\"><mn>7</mn></math>-inch frying pans it makes is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"10\"><mn>10</mn></math>. It's also given that during this day the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"10\"><mn>10</mn></math>-inch frying pans that the manufacturing plant makes is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4\"><mn>4</mn></math> times the number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9\"><mn>9</mn></math>-inch frying pans, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 n\"><mn>4</mn><mi>n</mi></math>. Therefore, the total number of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7\"><mn>7</mn></math>-inch, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9\"><mn>9</mn></math>-inch, and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"10\"><mn>10</mn></math>-inch frying pans the manufacturing plant makes is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"n plus 10 plus 4 n\"><mi>n</mi><mo>+</mo><mn>10</mn><mo>+</mo><mn>4</mn><mi>n</mi></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"5 n plus 10\"><mn>5</mn><mi>n</mi><mo>+</mo><mn>10</mn></math>. It's given that during this day the manufacturing plant makes <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"100\"><mn>100</mn></math> frying pans total. Thus, the equation <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"5 n plus 10 equals 100\"><mn>5</mn><mi>n</mi><mo>+</mo><mn>10</mn><mo>=</mo><mn>100</mn></math> represents this situation.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>","externalid":"0d482312-5261-43da-8a42-d4ab593d0949","correct_answer":["D"]},"createDate":1755117017716,"updateDate":1755117017716}$SATQ$::jsonb, 1755117017716, 1755117017716),
    ($SATQ$f224df07$SATQ$, NULL, NULL, $SATQ$022222-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.E.$SATQ$, $SATQ$Linear inequalities in one or two variables$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">A cargo helicopter delivers only 100-pound packages and 120-pound packages. For each delivery trip, the helicopter must carry at least 10 packages, and the total weight of the packages can be at most 1,100 pounds. What is the maximum number of 120-pound packages that the helicopter can carry per trip?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p class=\"choice_paragraph \">2</p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \">4</p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \">5</p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \">6</p>\n"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice C is correct. Let <span class="italic">a</span> equal the number of 120-pound packages, and let <span class="italic">b</span> equal the number of 100-pound packages. It&rsquo;s given that the total weight of the packages can be at most 1,100 pounds: the inequality <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_000_bc67d560.png" alt="120 a, plus 100 b, is less than or equal to 1,100"></span> represents this situation. It&rsquo;s also given that the helicopter must carry at least 10 packages: the inequality <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_001_a0ccc977.png" alt="a, plus b, is greater than or equal to 10"></span> represents this situation. Values of <span class="italic">a</span> and <span class="italic">b</span> that satisfy these two inequalities represent the allowable numbers of 120-pound packages and 100-pound packages the helicopter can transport. To maximize the number of 120-pound packages, <span class="italic">a</span>, in the helicopter, the number of 100-pound packages, <span class="italic">b</span>, in the helicopter needs to be minimized. Expressing <span class="italic">b</span> in terms of <span class="italic">a</span> in the second inequality yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_002_0ec0a66c.png" alt="b is greater than or equal to, 10 minus a"></span>, so the minimum value of <span class="italic">b</span> is equal to <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_003_6cce0f12.png" alt="10 minus a"></span>. Substituting <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_004_6cce0f12.png" alt="10 minus a"></span> for <span class="italic">b</span> in the first inequality results in <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_005_143b64fd.png" alt="120 a, plus 100, times, open parenthesis, 10 minus a, close parenthesis, is less than or equal to 1,100"></span>. Using the distributive property to rewrite this inequality yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_006_0d0a6e10.png" alt="120 a, plus 1,000, minus 100 a, is less than or equal to 1,100"></span>, or <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_007_f2516fdf.png" alt="20 a, plus 1,000, is less than or equal to 1,100"></span>. Subtracting 1,000 from both sides of this inequality yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_008_ddcedc42.png" alt="20 a, is less than or equal to 100"></span>. Dividing both sides of this inequality by 20 results in <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_009_b7fbde78.png" alt="a, is less than or equal to 5"></span>. This means that the maximum number of 120-pound packages that the helicopter can carry per trip is 5.<p>Choices A, B, and D are incorrect and may result from incorrectly creating or solving the system of inequalities.</p></p>
$SATQ$, false, 10, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"f224df07","external_id":null,"disclosed_item_id":"022222-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.E.","skill_desc":"Linear inequalities in one or two variables","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">A cargo helicopter delivers only 100-pound packages and 120-pound packages. For each delivery trip, the helicopter must carry at least 10 packages, and the total weight of the packages can be at most 1,100 pounds. What is the maximum number of 120-pound packages that the helicopter can carry per trip?</p>\n","answerOptions":[{"id":"a","content":"<p class=\"choice_paragraph \">2</p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \">4</p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \">5</p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \">6</p>\n"}],"keys":null,"correct_answer":["C"],"rationale":"<p>Choice C is correct. Let <span class=\"italic\">a</span> equal the number of 120-pound packages, and let <span class=\"italic\">b</span> equal the number of 100-pound packages. It&rsquo;s given that the total weight of the packages can be at most 1,100 pounds: the inequality <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_000_bc67d560.png\" alt=\"120 a, plus 100 b, is less than or equal to 1,100\"></span> represents this situation. It&rsquo;s also given that the helicopter must carry at least 10 packages: the inequality <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_001_a0ccc977.png\" alt=\"a, plus b, is greater than or equal to 10\"></span> represents this situation. Values of <span class=\"italic\">a</span> and <span class=\"italic\">b</span> that satisfy these two inequalities represent the allowable numbers of 120-pound packages and 100-pound packages the helicopter can transport. To maximize the number of 120-pound packages, <span class=\"italic\">a</span>, in the helicopter, the number of 100-pound packages, <span class=\"italic\">b</span>, in the helicopter needs to be minimized. Expressing <span class=\"italic\">b</span> in terms of <span class=\"italic\">a</span> in the second inequality yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_002_0ec0a66c.png\" alt=\"b is greater than or equal to, 10 minus a\"></span>, so the minimum value of <span class=\"italic\">b</span> is equal to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_003_6cce0f12.png\" alt=\"10 minus a\"></span>. Substituting <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_004_6cce0f12.png\" alt=\"10 minus a\"></span> for <span class=\"italic\">b</span> in the first inequality results in <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_005_143b64fd.png\" alt=\"120 a, plus 100, times, open parenthesis, 10 minus a, close parenthesis, is less than or equal to 1,100\"></span>. Using the distributive property to rewrite this inequality yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_006_0d0a6e10.png\" alt=\"120 a, plus 1,000, minus 100 a, is less than or equal to 1,100\"></span>, or <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_007_f2516fdf.png\" alt=\"20 a, plus 1,000, is less than or equal to 1,100\"></span>. Subtracting 1,000 from both sides of this inequality yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_008_ddcedc42.png\" alt=\"20 a, is less than or equal to 100\"></span>. Dividing both sides of this inequality by 20 results in <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/f224df07/img_009_b7fbde78.png\" alt=\"a, is less than or equal to 5\"></span>. This means that the maximum number of 120-pound packages that the helicopter can carry per trip is 5.<p>Choices A, B, and D are incorrect and may result from incorrectly creating or solving the system of inequalities.</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":10,"raw_list":{"updateDate":1691007959617,"pPcc":"SAT#H","questionId":"f224df07","skill_cd":"H.E.","score_band_range_cd":4,"skill_desc":"Linear inequalities in one or two variables","createDate":1691007959617,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"022222-DC","external_id":null,"primary_class_cd":"H","uId":"016d3534-2566-4551-af72-a61ad0c95b5f","difficulty":"M"},"raw_detail":{"item_id":"022222-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">A cargo helicopter delivers only 100-pound packages and 120-pound packages. For each delivery trip, the helicopter must carry at least 10 packages, and the total weight of the packages can be at most 1,100 pounds. What is the maximum number of 120-pound packages that the helicopter can carry per trip?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p class=\"choice_paragraph \">2</p>\n"},"b":{"body":"<p class=\"choice_paragraph \">4</p>\n"},"c":{"body":"<p class=\"choice_paragraph \">5</p>\n"},"d":{"body":"<p class=\"choice_paragraph \">6</p>\n"}},"correct_choice":"c","rationale":"<p>Choice C is correct. Let <span class=\"italic\">a</span> equal the number of 120-pound packages, and let <span class=\"italic\">b</span> equal the number of 100-pound packages. It&rsquo;s given that the total weight of the packages can be at most 1,100 pounds: the inequality <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJEAAAAWCAYAAADAbX5DAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACjklEQVRoQ+2XYZKDIAyFPZ4H8jjepVfpTVhIDCiQ8NxW9sfmm2HaYpCXR0C71Ly2Jaz7Oxw/MyG8w74uqT+3btxrO8WsIYY0MTPR8kkgWqGY9x7W+LG95uRq5aQxwwdCAuvJSgFtIfpE13qx3FcmqH/PRssngWhF8+H+4s2T8Fz3isgag+SIxBDvfU0d1Joiop3WDuIxbJ4UWj027YAlbtHj50eEONMWP5Adb+YDaL2TD8217nHEWJcF56cXo5WTxjQfSmXxIqECedxRRMqRfi60oysjAtNXbp3qPoEW0SgfRCuaT84hBpKxsSu1kcYzkpfmU+I3azTTh4wkgxYRmXbsQJ6sLYJzoR1dBPcXcUiBoEUkaPkgWtF8SgEUXdbGOVPGjmMFLSeLGT5k7ghsioB+a5Nd+3vCuM82U/R9XESAVjQf1n2dY6RTrt8pHkHLyWKGDxlUIN8gmhBd4h79pr1+9b2i6itm2220WI8WUSfO8pGv3S8ewbq3xgwfMohAPqrj4tULDh573VMINEbitKKpUc0DtKL5kB/VS/VIp1z/85Poiz5kRgLlxbF3nSdrjavfD3qTc18rtGa0ODW2ebZWNJ/eqXo3n+5iKIzWqMcMHzKWQB6ki4+zQX8FyeDTzpVxyF9k0VcnpKGaB2jFYvj+dRFRzI2//Pk+QDFZa6TxtA8X1MmOahwJr3dgb0fWlc0xiqAK0SdjR1iGQ1oHMZLL6D4orNcuJCsnjad9uKBNJqdQv12Tvsb2Jyrmx5YqgkThxYEyMhzRasWw7pQ/z5O6VHO/hJUTae2cgE/74ExGFjR97bfxI02DHj0b/hh1nAY64YHXAsdRSY+cb78SOI7jOI7jOI7jOI7zT1iWH/UtZOqOxolhAAAAAElFTkSuQmCC\" alt=\"120 a, plus 100 b, is less than or equal to 1,100\"></span> represents this situation. It&rsquo;s also given that the helicopter must carry at least 10 packages: the inequality <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEUAAAAWCAYAAACWl1FwAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABe0lEQVRYR+2V7bGEIAxFKY+CKIdebMVO8gIh4oaAkX36Y4c7w6xmIR8nUd2bgj2Cx5+wARTTo9qCAx93NRZsIdnL8oDbXsmpESUSAJk8ngAXrUGh/yoIef+1AEsM+GPp/h49OB8BY1/uJb9zAHMcdJGWhAIYPfrWnqbKYRHl9lN8KF3SGhO0Qjn84sacQPE/Ose+70xX7TqdbaB0HmECqcThkeMDloLtULjAurebiNAUnHJGh9I2mmoX/rXNZBsnYoZSOnRO0nqWdQdOF0rn/aHatWcqd1LYamLjJQvVgvYSvxKdszVrGoo6JcaEed9Vt7WXrPUsi/d/NSnWx6cxoHpEpayFaZN4N4YFBmsMpc23eb/l5E5dPL4Uhs+nBcpRlICSQQ1izMBgdaGU2qS9aZqkRx1si9BkglL8n6fiakrI730YrB6UJBm7m0tNnGAwmFGxVpGvVCB3/hPQExpBSaLH5Z1c/k1cVLrU1/wULS0tLS0tLS0t/Yyc+wNLm/viO87UngAAAABJRU5ErkJggg==\" alt=\"a, plus b, is greater than or equal to 10\"></span> represents this situation. Values of <span class=\"italic\">a</span> and <span class=\"italic\">b</span> that satisfy these two inequalities represent the allowable numbers of 120-pound packages and 100-pound packages the helicopter can transport. To maximize the number of 120-pound packages, <span class=\"italic\">a</span>, in the helicopter, the number of 100-pound packages, <span class=\"italic\">b</span>, in the helicopter needs to be minimized. Expressing <span class=\"italic\">b</span> in terms of <span class=\"italic\">a</span> in the second inequality yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEUAAAAWCAYAAACWl1FwAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABYUlEQVRYR+2V0RGEIAxEKY+CKIdebMVOcgkhwkEAZZQvdoY55dBsXgIaEZweLP64AyBOfarDGbD+VGPB4Wg+Dgu4bImnSmzEATL53IAkrUHh/xKI8n6pTm/BWA8YexgcEJ2bBBji4CtolFAAo3tbz1NXGWzheLtGYoYCBwPRdG8rMRhadx9Oqjo/W0FpbGEG+X4XX3njJY+sI1OCydBdI1Nw4jM6lHqrMMx3ofA7U77i6SqIVCg3WS0a6AmcJpTG+dGan5UGn+cy71rQlvGR+Lk+mDegpCL0h1ZU7YwKOyOf0w5ZCbq0UxZsH7VLND8aubst+wSGqA+lLsSbB60GuMr1SqqAEkB1PtEzMERNKAs+yQFAltf1BcpzlerkpEZdwknNV64FhVTGHnl5qrIb+f0FdJ6kBKXy/4C+UA8KibfLd15SI+AgOhGMgJqSJEWX+nhn/29tbW1tbW1tbW0NZMwPoZm44qI9u2IAAAAASUVORK5CYII=\" alt=\"b is greater than or equal to, 10 minus a\"></span>, so the minimum value of <span class=\"italic\">b</span> is equal to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAWCAYAAABZuWWzAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA6klEQVRIS+2V4Q3EIAiFHc+BHMddXMVNOJByrYj8uHheLvElpkpt/XhiG7RKChBzhWvYCUqi+NUi4DRz3hYJjAXL925APd6qmiMt2pqGBaiQ4xinXQip7IW9XSqQLNiaIeIFubo4J5gAw0uBxRzqcjN2EHDZOez4ACe5FlZKUYwRJm3UHHZSn6vr1jKFY4YhK2DlHdT12uAUyjoDrdRUrOmXZWC6OuFp8mG/e8CsxN0ym8Ju+HQ1sJhxJQZ7fxEesU6e7TpLN+sPpHeP3++Y4dYI6vnjWAkqEmDqEqQA6/I7Ojo6Ojr6J4XwAl35p5bhi2j0AAAAAElFTkSuQmCC\" alt=\"10 minus a\"></span>. Substituting <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAWCAYAAABZuWWzAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA6klEQVRIS+2V4Q3EIAiFHc+BHMddXMVNOJByrYj8uHheLvElpkpt/XhiG7RKChBzhWvYCUqi+NUi4DRz3hYJjAXL925APd6qmiMt2pqGBaiQ4xinXQip7IW9XSqQLNiaIeIFubo4J5gAw0uBxRzqcjN2EHDZOez4ACe5FlZKUYwRJm3UHHZSn6vr1jKFY4YhK2DlHdT12uAUyjoDrdRUrOmXZWC6OuFp8mG/e8CsxN0ym8Ju+HQ1sJhxJQZ7fxEesU6e7TpLN+sPpHeP3++Y4dYI6vnjWAkqEmDqEqQA6/I7Ojo6Ojr6J4XwAl35p5bhi2j0AAAAAElFTkSuQmCC\" alt=\"10 minus a\"></span> for <span class=\"italic\">b</span> in the first inequality results in <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALwAAAAaCAYAAAANDDZYAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADIklEQVR4Xu2ZAbKqMAxFWR4LYjnuxa24k36aNIKlCbcG+/RPzgwzElOS3KaljlNwDelxS/M0p9sjpWL6alJ6pNs8peX+G/kGX0RK97T8ULMLv5r3pdyXKc2rAuX2iewI+aNcTb/7svP5ezG1ejJIroiPFcMb/9NQDvNtnd3PxLbq1xgxZ4Q41sG2Zl/WPYEHt3zZtgWo70ej1ZNBcoV86Ciz6bLHG38EnzzaWPVreDVDfIjHbc4Guupg2vmUx/Bki3D12Lxap1XNcuuCX8HY5Jj1ALmi9VCcRn3e+COhpuiMy3PRXugZq36NUXO2WwXcUGiCPK40PC2KYzNyEcoOWBLMH/lqrMQdaMOf1YPkitaTxax9rohfTJdwpjPng8WVObDyfKefRs7ZEykGbXhaOeX8x8FehczsF0UxEWzfkkOaGW14QasHyRXyoUY6+gie+MXkBtGZbXodGRnXk59Wv4VHs25dexI8CEn3WrBXeysxttliSn7uhgdyhXzo+UcfwRO/mFygOlsLV2p4ZyFq9Vt4NOvWFU2QH7CKsHYeW/SHtuytsyq9dirbJrZ9aQvg0+Lx848+gid+Mbk0wHVuNzzH7m90QavfwqNZj64EkiCfh45Coq+T5q4DCiN+WoPXqOIBuUI+9PyGkAVP/GJ6mx6drTpkzJ/v8BfNWTExZwnSjqF8z8GOzVj/YGgFZ1tb8D2S3zUNb+cK+ZQfg1o+nvjF9DY9OnOedlyppSc/rX6LT89ZMTFWgjxIT14mv/6+fq2S6Ls/OmQc8ueH5Kc1WI0qHpArWk++1zV5P76XHp1rXwupCWl8q580RszZEzVYWTlnidc7SGtHqVch+2ATLfnJ2DMswaFcUR+lWbzxPfTobC1aDa4Neyv0PHvEnD3Rgsnu3r5ei371bQeSycgf8wTIZKCNjHImOJLrmY/sKq3cr4jvAdGZc7w+dsaqn2pvvW0GzFnghBoJPBJ8G7k5tOaS5ssf29f5sUaDNorlNzULVnhX+Z3dxDrTj4DePuurptwGwf9N3iCuPsIGQRAEQRAEQRAEQRAEQRAEQRAEwSCm6R/Lpmx4FIR0QQAAAABJRU5ErkJggg==\" alt=\"120 a, plus 100, times, open parenthesis, 10 minus a, close parenthesis, is less than or equal to 1,100\"></span>. Using the distributive property to rewrite this inequality yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAAAWCAYAAACFbNPBAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACyElEQVR4Xu2YgbGDIAyGHc+BHMdduko34QkhSpHAj0bau5fvzqumQf4kBG2nnNcyuXl9u3i549zbrfPk7ftR9Hstic/sNpeTz0ikeEog2rV8NKjF9ks6e+ipFzMsD+yYT3Y0x+JejgaXfMl2TJBfj0aKpwSiXctHA7pvObZf0tlDLSaJ2hgkRsQn8F5nbwhHPpl7r24uDKIx1DTcRPlY393T8vqwXcVtMy3bx3a75v1q8eQg2rV8NKjW6od0plDtjg02p6dezLA8HF1DCxAVSONig4QmOi/etImiaYcF+lM6Cp2bgDZIbzyIdi2faLpMK7andPbWiuGa1eK/sv6+kgcOBm2Q0GnzuqWOJzsnLW2iaAqQ/RCHLH60QRg0HkS7lk803UaK7QmdZL9Wq5640XqljMxDl8BT0sK1NNmnvSSMbPVkIoVJQeNBtGv5RNNtpNi0dfbWinX1NAYjxVRjVB4CqEC6wZaEbaWSRb5pyV561w2Ptcx2JLt+SA3TF09du5ZPND0Wm7ZOtFYe0tTfGIwUU41ReQggAun97Jw09HFV3JHAxLCftGhy4PsC2rV8ouk2UmyaOkt+rZzy91fiReuVMiIPOy2BYTcRvqfJzos3/8FTmpxsZ6E5rO+ZBqlr1/KJptvUF4aOTo1a9cSN1itlRB52agJpkCx+mw36yywkOP6wD9f870hik2B9eUASaMIR7Vo+WogLQ1HnnVoxrBNpFLReKSPysCNOFjutJTzfXUq7Td615CMIymB9PLZFT8Ih7Uo+GtRi09J5p1Y5pLfeJD31YkbkYUeajJ8e5eMz6E/f8kSceH/qk82JRxc+Si15QWe2EyLatXzu0lpMWjpH1crTWy/PqDz8O8LjdcFfFYw2vFj9aflov2ZJWL0GE3bGC68Kxneweg3GP1afeE0wnsHqZRiGYRiGYRiGYRiGYRiGYXQzTX/wWeGGv/N/NQAAAABJRU5ErkJggg==\" alt=\"120 a, plus 1,000, minus 100 a, is less than or equal to 1,100\"></span>, or <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIsAAAAWCAYAAADw4W9iAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACRklEQVRoQ+2XDZKDIAyFPZ4H8jjexat4ExYIqcjvYzd0bSffjLOaBsiDt7FdHMacZl8X4275WvfT/b1hji3KWY1NyXLeybGV6yyB1C6VI8WIPqY15s/6LqNs5jD0AQ+IF6XYNTh9fjelGmsgtUvlSEFzj5mlNQapvZtjzt2sBcHnvtpnMhAbKi3CuXjZjlvstxi70mb/2Om681Ft5P7eZiK1S+WgkNbrnzNlRB/TGjNdH7kqmMUbKj/I2FAh9IIXd7d05YaMQc1yuZ3ye5uJ1C6VE0JVWGMrf1Sfozdmuj7vqHW3R84T5YcdGyqEPBS/FkaMMNJZHJyPmaVdu1ROCGUgJklB9cXUxkzVRwnRYfvn2kT3eGlRimEbKm4WoHapnBB6wTWOmIRB9cXUxszSFz60Au2pUQRbLISK7zjfypLYtZHtq2YedDOR2qVyQshD9Y2bhEH1xdTGzNAX3k/2kNKDBVtUsauAojmvZo4UeF6gdqmcEHrBNf57Z5HW5ztCYSEHTZQfZPrlpzQxxfIiUuaapV27VE4IZfzGNPJmEdJHgXphdiboZ5U3RvhS7J/5F1EUqzHNLEDtUjk9RkwjahYpfeyoXlFphyh1jNSdlINt5iyzOKDahXIQqHasGyH6mNYYEX3cVcrXXdA9t7xJbBh360xCC+ImQGltjK8z6WZI7VI5Eozqc/QM9iR9j8G31K3/6psJH5y7LV/9V1GNJ+j7Gnx3A159n8q363srrpVKv/aexLfrUxRFURRFURRFUZSPZFl+ALa9LKBwdFjiAAAAAElFTkSuQmCC\" alt=\"20 a, plus 1,000, is less than or equal to 1,100\"></span>. Subtracting 1,000 from both sides of this inequality yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEcAAAAWCAYAAACSYoFNAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABjklEQVRYR+2V7RGDIAyGGY+BHMddXMVNUkIIHzFAtF77h+fOq8QAb96gdQjACbt3gLd8+f3E3wY4tirHQ0i55PyaY9O1Iha9w5xizAYH0AOeUG9KsTJZjv+BppOx6J3mwLmDV4o8dx/GZBgbKEVg19x2NLG3gLDzVjVMQvqo41KXRe9XNZGLyZxooIMwp5lUG5hCmXIi+bo2QINMwfy+MaXDlHsxx6D3SU2Z6KDfQ4m80LW42sAUilC8bMwFSyE1FlMkPEc3Z6z3bk2ZS3Fx3FuojWubUkzf8IkpTNccg947NWXoYRAbnKGIbbMUUt/ZeFRFDKHi7pvC/NSc/JEThViPoHpqOgUw/PzVk2PQa60pEjuubITQQvOPl7ZwtxOCJyaNzRnrtdaUT0y/u7a/vWhE+ojHMf9jVbEZd0zqmmPQa6qJHewZw8gToJ0I2Q3KaQ20QoWPDeqZg5j0znLyd0a9WnFtbrsRwwbhLZrCBrFhbzIyB7HoteT8BS4Ob/Vr/motFovFYrFYLBYv4twHaQrSivFxH2wAAAAASUVORK5CYII=\" alt=\"20 a, is less than or equal to 100\"></span>. Dividing both sides of this inequality by 20 results in <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAWCAYAAABKbiVHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA7ElEQVRIS+2U2xHEIAhFLc+CKMdebCWdENQlYoRENzv5Wc9MxjwQLg/j3gQxItCSbpsLYlrfBbeA3gFJwneCl+z1gBgBnQ+4jYpBMg1eltFjoN354wW1BXbmESZakpXTQvZ5AwfgZ40REQlO0gNQqzhReqZMs4Gk9LOtwlWPR0Uwh71oU/GvCNJKuAWvlrU4HhNxR44hfalV+WSilpGYrYxFGQ0Ru7xonXZGBk9F6WJkL/lETRzDO1E8H+fDYLRJnKKstp+hEax5qr+M+o3jnAUegtJtEmEaPqD/h/3Af22JdX03P4vFYvFHOLcDDHx8qt19fE8AAAAASUVORK5CYII=\" alt=\"a, is less than or equal to 5\"></span>. This means that the maximum number of 120-pound packages that the helicopter can carry per trip is 5.<p>Choices A, B, and D are incorrect and may result from incorrectly creating or solving the system of inequalities.</p></p>\n"}},"createDate":1691007959617,"updateDate":1691007959617}$SATQ$::jsonb, 1691007959617, 1691007959617),
    ($SATQ$f2b63f49$SATQ$, $SATQ$55b379da-d6e2-4c9e-857d-8da822c1d1fa$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="8 x minus 7 x plus 130 equals 260"><mn>8</mn><mi>x</mi><mo>-</mo><mn>7</mn><mi>x</mi><mo>+</mo><mn>130</mn><mo>=</mo><mn>260</mn></math></p>
<p style="text-align: left;">What value of <math alttext="x"><mi>x</mi>
</math> is the solution to the given equation?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["130"]$SATQ$::jsonb, $SATQ$["130"]$SATQ$::jsonb, $SATQ$<p>The correct answer is <math alttext="130"><mn>130</mn>
</math>. It&rsquo;s given that <math alttext="8 x minus 7 x plus 130 equals 260"><mn>8</mn><mi>x</mi><mo>-</mo><mn>7</mn><mi>x</mi><mo>+</mo><mn>130</mn><mo>=</mo><mn>260</mn></math>. Combining like terms on the left-hand side of this equation yields <math alttext="x plus 130 equals 260"><mi>x</mi><mo>+</mo><mn>130</mn><mo>=</mo><mn>260</mn></math>. Subtracting <math alttext="130"><mn>130</mn>
</math> from each side of this equation yields <math alttext="x equals 130"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>130</mn>
</mrow>
</math>. Therefore, the value of <math alttext="x"><mi>x</mi>
</math> that's the solution to the given equation is <math alttext="130"><mn>130</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"f2b63f49","external_id":"55b379da-d6e2-4c9e-857d-8da822c1d1fa","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"16c00270-b89b-44be-80b4-58ca2a26a270","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":2,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"8 x minus 7 x plus 130 equals 260\"><mn>8</mn><mi>x</mi><mo>-</mo><mn>7</mn><mi>x</mi><mo>+</mo><mn>130</mn><mo>=</mo><mn>260</mn></math></p>\n<p style=\"text-align: left;\">What value of <math alttext=\"x\"><mi>x</mi>\n</math> is the solution to the given equation?</p>","answerOptions":[],"keys":["130"],"correct_answer":["130"],"rationale":"<p>The correct answer is <math alttext=\"130\"><mn>130</mn>\n</math>. It&rsquo;s given that <math alttext=\"8 x minus 7 x plus 130 equals 260\"><mn>8</mn><mi>x</mi><mo>-</mo><mn>7</mn><mi>x</mi><mo>+</mo><mn>130</mn><mo>=</mo><mn>260</mn></math>. Combining like terms on the left-hand side of this equation yields <math alttext=\"x plus 130 equals 260\"><mi>x</mi><mo>+</mo><mn>130</mn><mo>=</mo><mn>260</mn></math>. Subtracting <math alttext=\"130\"><mn>130</mn>\n</math> from each side of this equation yields <math alttext=\"x equals 130\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>130</mn>\n</mrow>\n</math>. Therefore, the value of <math alttext=\"x\"><mi>x</mi>\n</math> that's the solution to the given equation is <math alttext=\"130\"><mn>130</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357387,"pPcc":"SAT#H","questionId":"f2b63f49","skill_cd":"H.A.","score_band_range_cd":2,"skill_desc":"Linear equations in one variable","createDate":1730147357387,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"55b379da-d6e2-4c9e-857d-8da822c1d1fa","primary_class_cd":"H","uId":"16c00270-b89b-44be-80b4-58ca2a26a270","difficulty":"E"},"raw_detail":{"answerOptions":[],"externalid":"55b379da-d6e2-4c9e-857d-8da822c1d1fa","keys":["130"],"rationale":"<p>The correct answer is <math alttext=\"130\"><mn>130</mn>\n</math>. It&rsquo;s given that <math alttext=\"8 x minus 7 x plus 130 equals 260\"><mn>8</mn><mi>x</mi><mo>-</mo><mn>7</mn><mi>x</mi><mo>+</mo><mn>130</mn><mo>=</mo><mn>260</mn></math>. Combining like terms on the left-hand side of this equation yields <math alttext=\"x plus 130 equals 260\"><mi>x</mi><mo>+</mo><mn>130</mn><mo>=</mo><mn>260</mn></math>. Subtracting <math alttext=\"130\"><mn>130</mn>\n</math> from each side of this equation yields <math alttext=\"x equals 130\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>130</mn>\n</mrow>\n</math>. Therefore, the value of <math alttext=\"x\"><mi>x</mi>\n</math> that's the solution to the given equation is <math alttext=\"130\"><mn>130</mn>\n</math>.</p>","stem":"<p style=\"text-align: center;\"><math alttext=\"8 x minus 7 x plus 130 equals 260\"><mn>8</mn><mi>x</mi><mo>-</mo><mn>7</mn><mi>x</mi><mo>+</mo><mn>130</mn><mo>=</mo><mn>260</mn></math></p>\n<p style=\"text-align: left;\">What value of <math alttext=\"x\"><mi>x</mi>\n</math> is the solution to the given equation?</p>","type":"spr","correct_answer":["130"]},"createDate":1730147357387,"updateDate":1730147357387}$SATQ$::jsonb, 1730147357387, 1730147357387),
    ($SATQ$f2bbd43d$SATQ$, $SATQ$e82ae7c1-3cdb-480b-8a7b-5d3fe9c18b84$SATQ$::uuid, $SATQ$07381f78-9e72-4341-9c08-b001a1affc21$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.E.$SATQ$, $SATQ$Linear inequalities in one or two variables$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="y greater than 14"><mi>y</mi><mo>&#62;</mo><mrow><mn>14</mn></mrow></math></p>
<p style="text-align: center;"><math alttext="4 x plus y less than 18"><mrow><mn>4</mn></mrow><mi>x</mi><mo>+</mo><mi>y</mi><mo>&#60;</mo><mrow><mn>18</mn></mrow></math></p>
<p style="text-align: left;">The point <math alttext="left parenthesis x comma 53 right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mrow><mn>53</mn></mrow></mrow></mfenced></math> is a solution to the system of inequalities in the <em>xy</em>-plane. Which of the following could be the value of <math alttext="x"><mi>x</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"27ce1ee0-13f8-4ed4-a032-9f018cdf1913","content":"<p><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></p>"},{"id":"ac8b2279-bb98-4956-abc0-878b5b168f9d","content":"<p><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></p>"},{"id":"61ff8f83-707d-42de-9767-7979d57898e2","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"bb604750-8f3b-49a4-9c13-aa2b82b69106","content":"<p><math alttext=\"9\"><mn>9</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["27ce1ee0-13f8-4ed4-a032-9f018cdf1913"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It&rsquo;s given that the point <math alttext="left parenthesis x comma 53 right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mn>53</mn></mrow></mfenced></math> is a solution to the given system of inequalities in the <em>xy</em>-plane. This means that the coordinates of the point, when substituted for the variables <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math>, make both of the inequalities in the system true. Substituting <math alttext="53"><mn>53</mn>
</math> for <math alttext="y"><mi>y</mi>
</math> in the inequality&nbsp;<math alttext="y greater than 14"><mi>y</mi><mo>&gt;</mo><mn>14</mn></math> yields <math alttext="53 greater than 14"><mn>53</mn><mo>&gt;</mo><mn>14</mn></math>, which is true. Substituting <math alttext="53"><mn>53</mn>
</math> for <math alttext="y"><mi>y</mi>
</math> in the inequality&nbsp;<math alttext="4 x plus y less than 18"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields <math alttext="4 x plus 53 less than 18"><mn>4</mn><mi>x</mi><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>. Subtracting <math alttext="53"><mn>53</mn>
</math> from both sides of this inequality yields&nbsp;<math alttext="4 x less than negative 35"><mn>4</mn><mi>x</mi><mo>&lt;</mo><mo>-</mo><mn>35</mn></math>. Dividing both sides of this inequality by <math alttext="4"><mn>4</mn>
</math> yields <math alttext="x less than negative 8.75"><mi>x</mi><mo>&lt;</mo><mo>-</mo><mn>8.75</mn></math>. Therefore, <math alttext="x"><mi>x</mi>
</math> must be a value less than <math alttext="negative 8.75"><mo>-</mo><mn>8.75</mn>
</math>. Of the given choices, only <math alttext="negative 9"><mo>-</mo><mn>9</mn>
</math> is less than <math alttext="negative 8.75"><mo>-</mo><mn>8.75</mn>
</math>.</p>
<p style="text-align: left;">Choice B is incorrect. Substituting <math alttext="negative 5"><mo>-</mo><mn>5</mn>
</math> for <math alttext="x"><mi>x</mi>
</math> and <math alttext="53"><mn>53</mn>
</math> for <math alttext="y"><mi>y</mi>
</math> in the inequality&nbsp;<math alttext="4 x plus y less than 18"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields&nbsp;<math alttext="4 left parenthesis negative 5 right parenthesis plus 53 less than 18"><mn>4</mn><mfenced><mrow><mo>-</mo><mn>5</mn></mrow></mfenced><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>, or&nbsp;<math alttext="33 less than 18"><mn>33</mn><mo>&lt;</mo><mn>18</mn></math>, which is not true.</p>
<p style="text-align: left;">Choice C is incorrect. Substituting <math alttext="5"><mn>5</mn>
</math> for <math alttext="x"><mi>x</mi>
</math> and <math alttext="53"><mn>53</mn>
</math> for <math alttext="y"><mi>y</mi>
</math> in the inequality&nbsp;<math alttext="4 x plus y less than 18"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields&nbsp;<math alttext="4 left parenthesis 5 right parenthesis plus 53 less than 18"><mn>4</mn><mfenced><mn>5</mn></mfenced><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>, or&nbsp;<math alttext="73 less than 18"><mn>73</mn><mo>&lt;</mo><mn>18</mn></math>, which is not true.</p>
<p style="text-align: left;">Choice D is incorrect. Substituting <math alttext="9"><mn>9</mn>
</math> for <math alttext="x"><mi>x</mi>
</math> and <math alttext="53"><mn>53</mn>
</math> for <math alttext="y"><mi>y</mi>
</math> in the inequality&nbsp;<math alttext="4 x plus y less than 18"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields&nbsp;<math alttext="4 left parenthesis 9 right parenthesis plus 53 less than 18"><mn>4</mn><mfenced><mn>9</mn></mfenced><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>, or&nbsp;<math alttext="89 less than 18"><mn>89</mn><mo>&lt;</mo><mn>18</mn></math>, which is not true.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"f2bbd43d","external_id":"e82ae7c1-3cdb-480b-8a7b-5d3fe9c18b84","disclosed_item_id":null,"source":"qbank","vaultid":"07381f78-9e72-4341-9c08-b001a1affc21","uId":"95bf49fe-456b-468a-9722-37b223d534cb","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.E.","skill_desc":"Linear inequalities in one or two variables","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"y greater than 14\"><mi>y</mi><mo>&#62;</mo><mrow><mn>14</mn></mrow></math></p>\n<p style=\"text-align: center;\"><math alttext=\"4 x plus y less than 18\"><mrow><mn>4</mn></mrow><mi>x</mi><mo>+</mo><mi>y</mi><mo>&#60;</mo><mrow><mn>18</mn></mrow></math></p>\n<p style=\"text-align: left;\">The point <math alttext=\"left parenthesis x comma 53 right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mrow><mn>53</mn></mrow></mrow></mfenced></math> is a solution to the system of inequalities in the <em>xy</em>-plane. Which of the following could be the value of <math alttext=\"x\"><mi>x</mi>\n</math>?</p>","answerOptions":[{"id":"27ce1ee0-13f8-4ed4-a032-9f018cdf1913","content":"<p><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></p>"},{"id":"ac8b2279-bb98-4956-abc0-878b5b168f9d","content":"<p><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></p>"},{"id":"61ff8f83-707d-42de-9767-7979d57898e2","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"bb604750-8f3b-49a4-9c13-aa2b82b69106","content":"<p><math alttext=\"9\"><mn>9</mn>\n</math></p>"}],"keys":["27ce1ee0-13f8-4ed4-a032-9f018cdf1913"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It&rsquo;s given that the point <math alttext=\"left parenthesis x comma 53 right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mn>53</mn></mrow></mfenced></math> is a solution to the given system of inequalities in the <em>xy</em>-plane. This means that the coordinates of the point, when substituted for the variables <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>, make both of the inequalities in the system true. Substituting <math alttext=\"53\"><mn>53</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the inequality&nbsp;<math alttext=\"y greater than 14\"><mi>y</mi><mo>&gt;</mo><mn>14</mn></math> yields <math alttext=\"53 greater than 14\"><mn>53</mn><mo>&gt;</mo><mn>14</mn></math>, which is true. Substituting <math alttext=\"53\"><mn>53</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the inequality&nbsp;<math alttext=\"4 x plus y less than 18\"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields <math alttext=\"4 x plus 53 less than 18\"><mn>4</mn><mi>x</mi><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>. Subtracting <math alttext=\"53\"><mn>53</mn>\n</math> from both sides of this inequality yields&nbsp;<math alttext=\"4 x less than negative 35\"><mn>4</mn><mi>x</mi><mo>&lt;</mo><mo>-</mo><mn>35</mn></math>. Dividing both sides of this inequality by <math alttext=\"4\"><mn>4</mn>\n</math> yields <math alttext=\"x less than negative 8.75\"><mi>x</mi><mo>&lt;</mo><mo>-</mo><mn>8.75</mn></math>. Therefore, <math alttext=\"x\"><mi>x</mi>\n</math> must be a value less than <math alttext=\"negative 8.75\"><mo>-</mo><mn>8.75</mn>\n</math>. Of the given choices, only <math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math> is less than <math alttext=\"negative 8.75\"><mo>-</mo><mn>8.75</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. Substituting <math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"53\"><mn>53</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the inequality&nbsp;<math alttext=\"4 x plus y less than 18\"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields&nbsp;<math alttext=\"4 left parenthesis negative 5 right parenthesis plus 53 less than 18\"><mn>4</mn><mfenced><mrow><mo>-</mo><mn>5</mn></mrow></mfenced><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>, or&nbsp;<math alttext=\"33 less than 18\"><mn>33</mn><mo>&lt;</mo><mn>18</mn></math>, which is not true.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. Substituting <math alttext=\"5\"><mn>5</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"53\"><mn>53</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the inequality&nbsp;<math alttext=\"4 x plus y less than 18\"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields&nbsp;<math alttext=\"4 left parenthesis 5 right parenthesis plus 53 less than 18\"><mn>4</mn><mfenced><mn>5</mn></mfenced><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>, or&nbsp;<math alttext=\"73 less than 18\"><mn>73</mn><mo>&lt;</mo><mn>18</mn></math>, which is not true.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. Substituting <math alttext=\"9\"><mn>9</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"53\"><mn>53</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the inequality&nbsp;<math alttext=\"4 x plus y less than 18\"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields&nbsp;<math alttext=\"4 left parenthesis 9 right parenthesis plus 53 less than 18\"><mn>4</mn><mfenced><mn>9</mn></mfenced><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>, or&nbsp;<math alttext=\"89 less than 18\"><mn>89</mn><mo>&lt;</mo><mn>18</mn></math>, which is not true.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959820,"pPcc":"SAT#H","questionId":"f2bbd43d","skill_cd":"H.E.","score_band_range_cd":5,"skill_desc":"Linear inequalities in one or two variables","createDate":1691007959820,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"e82ae7c1-3cdb-480b-8a7b-5d3fe9c18b84","primary_class_cd":"H","uId":"95bf49fe-456b-468a-9722-37b223d534cb","difficulty":"M"},"raw_detail":{"keys":["27ce1ee0-13f8-4ed4-a032-9f018cdf1913"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It&rsquo;s given that the point <math alttext=\"left parenthesis x comma 53 right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mn>53</mn></mrow></mfenced></math> is a solution to the given system of inequalities in the <em>xy</em>-plane. This means that the coordinates of the point, when substituted for the variables <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>, make both of the inequalities in the system true. Substituting <math alttext=\"53\"><mn>53</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the inequality&nbsp;<math alttext=\"y greater than 14\"><mi>y</mi><mo>&gt;</mo><mn>14</mn></math> yields <math alttext=\"53 greater than 14\"><mn>53</mn><mo>&gt;</mo><mn>14</mn></math>, which is true. Substituting <math alttext=\"53\"><mn>53</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the inequality&nbsp;<math alttext=\"4 x plus y less than 18\"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields <math alttext=\"4 x plus 53 less than 18\"><mn>4</mn><mi>x</mi><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>. Subtracting <math alttext=\"53\"><mn>53</mn>\n</math> from both sides of this inequality yields&nbsp;<math alttext=\"4 x less than negative 35\"><mn>4</mn><mi>x</mi><mo>&lt;</mo><mo>-</mo><mn>35</mn></math>. Dividing both sides of this inequality by <math alttext=\"4\"><mn>4</mn>\n</math> yields <math alttext=\"x less than negative 8.75\"><mi>x</mi><mo>&lt;</mo><mo>-</mo><mn>8.75</mn></math>. Therefore, <math alttext=\"x\"><mi>x</mi>\n</math> must be a value less than <math alttext=\"negative 8.75\"><mo>-</mo><mn>8.75</mn>\n</math>. Of the given choices, only <math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math> is less than <math alttext=\"negative 8.75\"><mo>-</mo><mn>8.75</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. Substituting <math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"53\"><mn>53</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the inequality&nbsp;<math alttext=\"4 x plus y less than 18\"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields&nbsp;<math alttext=\"4 left parenthesis negative 5 right parenthesis plus 53 less than 18\"><mn>4</mn><mfenced><mrow><mo>-</mo><mn>5</mn></mrow></mfenced><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>, or&nbsp;<math alttext=\"33 less than 18\"><mn>33</mn><mo>&lt;</mo><mn>18</mn></math>, which is not true.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. Substituting <math alttext=\"5\"><mn>5</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"53\"><mn>53</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the inequality&nbsp;<math alttext=\"4 x plus y less than 18\"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields&nbsp;<math alttext=\"4 left parenthesis 5 right parenthesis plus 53 less than 18\"><mn>4</mn><mfenced><mn>5</mn></mfenced><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>, or&nbsp;<math alttext=\"73 less than 18\"><mn>73</mn><mo>&lt;</mo><mn>18</mn></math>, which is not true.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. Substituting <math alttext=\"9\"><mn>9</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"53\"><mn>53</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the inequality&nbsp;<math alttext=\"4 x plus y less than 18\"><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>&lt;</mo><mn>18</mn></math> yields&nbsp;<math alttext=\"4 left parenthesis 9 right parenthesis plus 53 less than 18\"><mn>4</mn><mfenced><mn>9</mn></mfenced><mo>+</mo><mn>53</mn><mo>&lt;</mo><mn>18</mn></math>, or&nbsp;<math alttext=\"89 less than 18\"><mn>89</mn><mo>&lt;</mo><mn>18</mn></math>, which is not true.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"y greater than 14\"><mi>y</mi><mo>&#62;</mo><mrow><mn>14</mn></mrow></math></p>\n<p style=\"text-align: center;\"><math alttext=\"4 x plus y less than 18\"><mrow><mn>4</mn></mrow><mi>x</mi><mo>+</mo><mi>y</mi><mo>&#60;</mo><mrow><mn>18</mn></mrow></math></p>\n<p style=\"text-align: left;\">The point <math alttext=\"left parenthesis x comma 53 right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mrow><mn>53</mn></mrow></mrow></mfenced></math> is a solution to the system of inequalities in the <em>xy</em>-plane. Which of the following could be the value of <math alttext=\"x\"><mi>x</mi>\n</math>?</p>","externalid":"e82ae7c1-3cdb-480b-8a7b-5d3fe9c18b84","templateid":"4cd1895a-d93b-46c3-913b-c3798da4d947","vaultid":"07381f78-9e72-4341-9c08-b001a1affc21","type":"mcq","answerOptions":[{"id":"27ce1ee0-13f8-4ed4-a032-9f018cdf1913","content":"<p><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></p>"},{"id":"ac8b2279-bb98-4956-abc0-878b5b168f9d","content":"<p><math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math></p>"},{"id":"61ff8f83-707d-42de-9767-7979d57898e2","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"bb604750-8f3b-49a4-9c13-aa2b82b69106","content":"<p><math alttext=\"9\"><mn>9</mn>\n</math></p>"}],"correct_answer":["A"]},"createDate":1691007959820,"updateDate":1691007959820}$SATQ$::jsonb, 1691007959820, 1691007959820),
    ($SATQ$f305b5ca$SATQ$, $SATQ$4d9de101-04d3-4a9b-96ae-eef85f72bd23$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">Lorenzo purchased a box of cereal and some strawberries at the grocery store. Lorenzo paid <math alttext="dollar sign 2"><mo>$</mo><mn>2</mn></math> for the box of cereal and <math alttext="dollar sign 1.90"><mo>$</mo><mn>1.90</mn></math> per pound for the strawberries. If Lorenzo paid a total of <math alttext="dollar sign 9.60"><mo>$</mo><mn>9.60</mn></math> for the box of cereal and the strawberries, which of the following equations can be used to find <math alttext="p"><mi>p</mi>
</math>, the number of pounds of strawberries Lorenzo purchased? (Assume there is no sales tax.)</p>$SATQ$, $SATQ$[{"id":"8c23d591-4dfd-4c06-9c5c-b3b55e3b3423","content":"<p><math alttext=\"1.90 p plus 2 equals 9.60\"><mn>1.90</mn><mi>p</mi><mo>+</mo><mn>2</mn><mo>=</mo><mn>9.60</mn></math></p>"},{"id":"6186893f-3556-4562-bbda-5034d4e17296","content":"<p><math alttext=\"1.90 p minus 2 equals 9.60\"><mn>1.90</mn><mi>p</mi><mo>-</mo><mn>2</mn><mo>=</mo><mn>9.60</mn></math></p>"},{"id":"87e2ae18-02f6-47b4-90a5-1a15c3ec6fb5","content":"<p><math alttext=\"1.90 plus 2 p equals 9.60\"><mn>1.90</mn><mo>+</mo><mn>2</mn><mi>p</mi><mo>=</mo><mn>9.60</mn></math></p>"},{"id":"26973c34-977d-4aef-b99b-a2562050d41b","content":"<p><math alttext=\"1.90 minus 2 p equals 9.60\"><mn>1.90</mn><mo>-</mo><mn>2</mn><mi>p</mi><mo>=</mo><mn>9.60</mn></math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["8c23d591-4dfd-4c06-9c5c-b3b55e3b3423"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It's given that <math alttext="p"><mi>p</mi>
</math> represents the number of pounds of strawberries Lorenzo purchased and Lorenzo paid <math alttext="dollar sign 1.90"><mo>$</mo><mn>1.90</mn></math> per pound for the strawberries. It follows that the total amount, in dollars, Lorenzo paid for strawberries can be represented by <math alttext="1.90 p"><mn>1.90</mn><mi>p</mi></math>. It&rsquo;s given that Lorenzo paid <math alttext="dollar sign 2"><mo>$</mo><mn>2</mn></math> for the box of cereal. If Lorenzo paid a total of <math alttext="dollar sign 9.60"><mo>$</mo><mn>9.60</mn></math> for the box of cereal and strawberries, it follows that the equation <math alttext="1.90 p plus 2 equals 9.60"><mn>1.90</mn><mi>p</mi><mo>+</mo><mn>2</mn><mo>=</mo><mn>9.60</mn></math> can be used to find <math alttext="p"><mi>p</mi>
</math>.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"f305b5ca","external_id":"4d9de101-04d3-4a9b-96ae-eef85f72bd23","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"2a1b7013-101d-4826-9a5c-15a7237a6bbe","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">Lorenzo purchased a box of cereal and some strawberries at the grocery store. Lorenzo paid <math alttext=\"dollar sign 2\"><mo>$</mo><mn>2</mn></math> for the box of cereal and <math alttext=\"dollar sign 1.90\"><mo>$</mo><mn>1.90</mn></math> per pound for the strawberries. If Lorenzo paid a total of <math alttext=\"dollar sign 9.60\"><mo>$</mo><mn>9.60</mn></math> for the box of cereal and the strawberries, which of the following equations can be used to find <math alttext=\"p\"><mi>p</mi>\n</math>, the number of pounds of strawberries Lorenzo purchased? (Assume there is no sales tax.)</p>","answerOptions":[{"id":"8c23d591-4dfd-4c06-9c5c-b3b55e3b3423","content":"<p><math alttext=\"1.90 p plus 2 equals 9.60\"><mn>1.90</mn><mi>p</mi><mo>+</mo><mn>2</mn><mo>=</mo><mn>9.60</mn></math></p>"},{"id":"6186893f-3556-4562-bbda-5034d4e17296","content":"<p><math alttext=\"1.90 p minus 2 equals 9.60\"><mn>1.90</mn><mi>p</mi><mo>-</mo><mn>2</mn><mo>=</mo><mn>9.60</mn></math></p>"},{"id":"87e2ae18-02f6-47b4-90a5-1a15c3ec6fb5","content":"<p><math alttext=\"1.90 plus 2 p equals 9.60\"><mn>1.90</mn><mo>+</mo><mn>2</mn><mi>p</mi><mo>=</mo><mn>9.60</mn></math></p>"},{"id":"26973c34-977d-4aef-b99b-a2562050d41b","content":"<p><math alttext=\"1.90 minus 2 p equals 9.60\"><mn>1.90</mn><mo>-</mo><mn>2</mn><mi>p</mi><mo>=</mo><mn>9.60</mn></math></p>"}],"keys":["8c23d591-4dfd-4c06-9c5c-b3b55e3b3423"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that <math alttext=\"p\"><mi>p</mi>\n</math> represents the number of pounds of strawberries Lorenzo purchased and Lorenzo paid <math alttext=\"dollar sign 1.90\"><mo>$</mo><mn>1.90</mn></math> per pound for the strawberries. It follows that the total amount, in dollars, Lorenzo paid for strawberries can be represented by <math alttext=\"1.90 p\"><mn>1.90</mn><mi>p</mi></math>. It&rsquo;s given that Lorenzo paid <math alttext=\"dollar sign 2\"><mo>$</mo><mn>2</mn></math> for the box of cereal. If Lorenzo paid a total of <math alttext=\"dollar sign 9.60\"><mo>$</mo><mn>9.60</mn></math> for the box of cereal and strawberries, it follows that the equation <math alttext=\"1.90 p plus 2 equals 9.60\"><mn>1.90</mn><mi>p</mi><mo>+</mo><mn>2</mn><mo>=</mo><mn>9.60</mn></math> can be used to find <math alttext=\"p\"><mi>p</mi>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554982,"pPcc":"SAT#H","questionId":"f305b5ca","skill_cd":"H.A.","score_band_range_cd":1,"skill_desc":"Linear equations in one variable","createDate":1743430554982,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"4d9de101-04d3-4a9b-96ae-eef85f72bd23","primary_class_cd":"H","uId":"2a1b7013-101d-4826-9a5c-15a7237a6bbe","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">Lorenzo purchased a box of cereal and some strawberries at the grocery store. Lorenzo paid <math alttext=\"dollar sign 2\"><mo>$</mo><mn>2</mn></math> for the box of cereal and <math alttext=\"dollar sign 1.90\"><mo>$</mo><mn>1.90</mn></math> per pound for the strawberries. If Lorenzo paid a total of <math alttext=\"dollar sign 9.60\"><mo>$</mo><mn>9.60</mn></math> for the box of cereal and the strawberries, which of the following equations can be used to find <math alttext=\"p\"><mi>p</mi>\n</math>, the number of pounds of strawberries Lorenzo purchased? (Assume there is no sales tax.)</p>","keys":["8c23d591-4dfd-4c06-9c5c-b3b55e3b3423"],"answerOptions":[{"id":"8c23d591-4dfd-4c06-9c5c-b3b55e3b3423","content":"<p><math alttext=\"1.90 p plus 2 equals 9.60\"><mn>1.90</mn><mi>p</mi><mo>+</mo><mn>2</mn><mo>=</mo><mn>9.60</mn></math></p>"},{"id":"6186893f-3556-4562-bbda-5034d4e17296","content":"<p><math alttext=\"1.90 p minus 2 equals 9.60\"><mn>1.90</mn><mi>p</mi><mo>-</mo><mn>2</mn><mo>=</mo><mn>9.60</mn></math></p>"},{"id":"87e2ae18-02f6-47b4-90a5-1a15c3ec6fb5","content":"<p><math alttext=\"1.90 plus 2 p equals 9.60\"><mn>1.90</mn><mo>+</mo><mn>2</mn><mi>p</mi><mo>=</mo><mn>9.60</mn></math></p>"},{"id":"26973c34-977d-4aef-b99b-a2562050d41b","content":"<p><math alttext=\"1.90 minus 2 p equals 9.60\"><mn>1.90</mn><mo>-</mo><mn>2</mn><mi>p</mi><mo>=</mo><mn>9.60</mn></math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that <math alttext=\"p\"><mi>p</mi>\n</math> represents the number of pounds of strawberries Lorenzo purchased and Lorenzo paid <math alttext=\"dollar sign 1.90\"><mo>$</mo><mn>1.90</mn></math> per pound for the strawberries. It follows that the total amount, in dollars, Lorenzo paid for strawberries can be represented by <math alttext=\"1.90 p\"><mn>1.90</mn><mi>p</mi></math>. It&rsquo;s given that Lorenzo paid <math alttext=\"dollar sign 2\"><mo>$</mo><mn>2</mn></math> for the box of cereal. If Lorenzo paid a total of <math alttext=\"dollar sign 9.60\"><mo>$</mo><mn>9.60</mn></math> for the box of cereal and strawberries, it follows that the equation <math alttext=\"1.90 p plus 2 equals 9.60\"><mn>1.90</mn><mi>p</mi><mo>+</mo><mn>2</mn><mo>=</mo><mn>9.60</mn></math> can be used to find <math alttext=\"p\"><mi>p</mi>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual errors.</p>","externalid":"4d9de101-04d3-4a9b-96ae-eef85f72bd23","correct_answer":["A"]},"createDate":1743430554982,"updateDate":1743430554982}$SATQ$::jsonb, 1743430554982, 1743430554982),
    ($SATQ$f40552a9$SATQ$, $SATQ$6c6e9e8c-6e47-4600-94eb-347c7a7ae6c5$SATQ$::uuid, $SATQ$3ffb186b-89b7-40d9-82ab-34945977b69a$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="275.22pt" version="1.1" viewBox="0 0 286.56 275.22" width="286.56pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a line in the x y plane with the origin labeled O. The x axis ranges from 0 to 10 in increments of 1. The y axis ranges from 0 to 10 in increments of 1. Refer to long description.">
 <defs>
  <style type="text/css">
*{stroke-linecap:butt;stroke-linejoin:round;}
  </style>
 </defs>
 <g id="figure_1">
  <g id="patch_1">
   <path d="M 0 275.22 
L 286.56 275.22 
L 286.56 0 
L 0 0 
z
" style="fill:none;"></path>
  </g>
  <g id="axes_1">
   <g id="patch_2">
    <path d="M 7.2 260.46 
L 279.36 260.46 
L 279.36 10.98 
L 7.2 10.98 
z
" style="fill:none;"></path>
   </g>
   <g id="matplotlib.axis_1"></g>
   <g id="matplotlib.axis_2"></g>
  </g>
  <g id="axes_2">
   <g id="patch_3">
    <path d="M 9.200821 268.02 
L 271.689179 268.02 
L 271.689179 7.2 
L 9.200821 7.2 
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
   </g>
   <g id="matplotlib.axis_4">
    <g id="ytick_1"></g>
    <g id="ytick_2"></g>
    <g id="ytick_3"></g>
    <g id="ytick_4"></g>
    <g id="ytick_5"></g>
    <g id="ytick_6"></g>
   </g>
   <g id="LineCollection_1">
    <path clip-path="url(#padf9753a3d)" d="M 62.08272 246.558847 
L 62.08272 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 82.305244 246.558847 
L 82.305244 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 102.527768 246.558847 
L 102.527768 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 122.750292 246.558847 
L 122.750292 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 142.972815 246.558847 
L 142.972815 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 163.195339 246.558847 
L 163.195339 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 183.417863 246.558847 
L 183.417863 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 203.640387 246.558847 
L 203.640387 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 223.86291 246.558847 
L 223.86291 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 244.085434 246.558847 
L 244.085434 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 221.280692 
L 249.141065 221.280692 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 201.058168 
L 249.141065 201.058168 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 180.835645 
L 249.141065 180.835645 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 160.613121 
L 249.141065 160.613121 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 140.390597 
L 249.141065 140.390597 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 120.168073 
L 249.141065 120.168073 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 99.94555 
L 249.141065 99.94555 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 79.723026 
L 249.141065 79.723026 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 59.500502 
L 249.141065 59.500502 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 39.277978 
L 249.141065 39.277978 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#padf9753a3d)" d="M 36.804566 241.503216 
L 254.196696 241.503216 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 251.423555 -32.732334 
L 254.196696 -33.716784 
L 251.423555 -34.701235 
L 251.423555 -32.732334 
L 254.196696 -33.716784 
" id="m6656b6a9b8" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#padf9753a3d)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m6656b6a9b8" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#padf9753a3d)" d="M 41.860197 246.558847 
L 41.860197 29.166716 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 42.842125 -242.479045 
L 41.860197 -246.053284 
L 40.878268 -242.479045 
L 42.842125 -242.479045 
L 41.860197 -246.053284 
" id="m6bbb8f38da" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#padf9753a3d)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m6bbb8f38da" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#padf9753a3d)" d="M 62.08272 245.228417 
L 62.08272 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 82.305244 245.228417 
L 82.305244 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 102.527768 245.228417 
L 102.527768 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 122.750292 245.228417 
L 122.750292 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 142.972815 245.228417 
L 142.972815 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 163.195339 245.228417 
L 163.195339 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 183.417863 245.228417 
L 183.417863 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 203.640387 245.228417 
L 203.640387 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 223.86291 245.228417 
L 223.86291 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 244.085434 245.228417 
L 244.085434 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#padf9753a3d)" d="M 38.134995 221.280692 
L 45.585398 221.280692 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 38.134995 201.058168 
L 45.585398 201.058168 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 38.134995 180.835645 
L 45.585398 180.835645 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 38.134995 160.613121 
L 45.585398 160.613121 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 38.134995 140.390597 
L 45.585398 140.390597 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 38.134995 120.168073 
L 45.585398 120.168073 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 38.134995 99.94555 
L 45.585398 99.94555 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 38.134995 79.723026 
L 45.585398 79.723026 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 38.134995 59.500502 
L 45.585398 59.500502 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#padf9753a3d)" d="M 38.134995 39.277978 
L 45.585398 39.277978 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#padf9753a3d)" d="M 27.451649 227.347449 
L 27.451649 216.225061 
L 35.035095 216.225061 
L 35.035095 227.347449 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_1">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(27.69247 225.972334)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_2">
    <g clip-path="url(#padf9753a3d)">
     <!-- 1 -->
     <g transform="translate(27.69247 225.972334)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#padf9753a3d)" d="M 27.451649 207.124925 
L 27.451649 196.002537 
L 35.035095 196.002537 
L 35.035095 207.124925 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_3">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(27.69247 205.74981)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_4">
    <g clip-path="url(#padf9753a3d)">
     <!-- 2 -->
     <g transform="translate(27.69247 205.74981)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#padf9753a3d)" d="M 27.451649 186.902402 
L 27.451649 175.780014 
L 35.035095 175.780014 
L 35.035095 186.902402 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_5">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(27.678407 185.527287)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="text_6">
    <g clip-path="url(#padf9753a3d)">
     <!-- 3 -->
     <g transform="translate(27.678407 185.527287)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#padf9753a3d)" d="M 27.451649 166.679878 
L 27.451649 155.55749 
L 35.035095 155.55749 
L 35.035095 166.679878 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_7">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(27.720595 165.304763)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_8">
    <g clip-path="url(#padf9753a3d)">
     <!-- 4 -->
     <g transform="translate(27.720595 165.304763)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#padf9753a3d)" d="M 27.451649 146.457354 
L 27.451649 135.334966 
L 35.035095 135.334966 
L 35.035095 146.457354 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_9">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(27.678407 145.082239)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_10">
    <g clip-path="url(#padf9753a3d)">
     <!-- 5 -->
     <g transform="translate(27.678407 145.082239)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#padf9753a3d)" d="M 27.451649 126.23483 
L 27.451649 115.112442 
L 35.035095 115.112442 
L 35.035095 126.23483 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_11">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(27.69247 124.859715)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_12">
    <g clip-path="url(#padf9753a3d)">
     <!-- 6 -->
     <g transform="translate(27.69247 124.859715)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#padf9753a3d)" d="M 27.451649 106.012307 
L 27.451649 94.889919 
L 35.035095 94.889919 
L 35.035095 106.012307 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_13">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(27.706532 104.637192)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="text_14">
    <g clip-path="url(#padf9753a3d)">
     <!-- 7 -->
     <g transform="translate(27.706532 104.637192)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#padf9753a3d)" d="M 27.451649 85.789783 
L 27.451649 74.667395 
L 35.035095 74.667395 
L 35.035095 85.789783 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_15">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(27.69247 84.414668)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_16">
    <g clip-path="url(#padf9753a3d)">
     <!-- 8 -->
     <g transform="translate(27.69247 84.414668)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#padf9753a3d)" d="M 27.451649 65.567259 
L 27.451649 54.444871 
L 35.035095 54.444871 
L 35.035095 65.567259 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_17">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(27.69247 64.192144)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-57"></use>
     </g>
    </g>
   </g>
   <g id="text_18">
    <g clip-path="url(#padf9753a3d)">
     <!-- 9 -->
     <g transform="translate(27.69247 64.192144)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-57"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#padf9753a3d)" d="M 21.13211 45.344735 
L 21.13211 34.222347 
L 35.287877 34.222347 
L 35.287877 45.344735 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_19">
    <g clip-path="url(#padf9753a3d)">
     <!-- 10 -->
     <defs>
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
     <g transform="translate(20.602626 43.96962)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_20">
    <g clip-path="url(#padf9753a3d)">
     <!-- 10 -->
     <g transform="translate(20.602626 43.96962)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#padf9753a3d)" d="M 57.532653 256.164545 
L 57.532653 245.042157 
L 65.116099 245.042157 
L 65.116099 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_21">
    <g clip-path="url(#padf9753a3d)">
     <!-- 1 -->
     <g transform="translate(57.520692 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_22">
    <g clip-path="url(#padf9753a3d)">
     <!-- 1 -->
     <g transform="translate(57.520692 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#padf9753a3d)" d="M 77.755176 256.164545 
L 77.755176 245.042157 
L 85.338623 245.042157 
L 85.338623 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_23">
    <g clip-path="url(#padf9753a3d)">
     <!-- 2 -->
     <g transform="translate(77.743216 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_24">
    <g clip-path="url(#padf9753a3d)">
     <!-- 2 -->
     <g transform="translate(77.743216 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#padf9753a3d)" d="M 97.9777 256.164545 
L 97.9777 245.042157 
L 105.561147 245.042157 
L 105.561147 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_25">
    <g clip-path="url(#padf9753a3d)">
     <!-- 3 -->
     <g transform="translate(97.951677 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="text_26">
    <g clip-path="url(#padf9753a3d)">
     <!-- 3 -->
     <g transform="translate(97.951677 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_14">
    <path clip-path="url(#padf9753a3d)" d="M 118.200224 256.164545 
L 118.200224 245.042157 
L 125.78367 245.042157 
L 125.78367 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_27">
    <g clip-path="url(#padf9753a3d)">
     <!-- 4 -->
     <g transform="translate(118.216388 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_28">
    <g clip-path="url(#padf9753a3d)">
     <!-- 4 -->
     <g transform="translate(118.216388 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_15">
    <path clip-path="url(#padf9753a3d)" d="M 138.422748 256.164545 
L 138.422748 245.042157 
L 146.006194 245.042157 
L 146.006194 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_29">
    <g clip-path="url(#padf9753a3d)">
     <!-- 5 -->
     <g transform="translate(138.396725 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_30">
    <g clip-path="url(#padf9753a3d)">
     <!-- 5 -->
     <g transform="translate(138.396725 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_16">
    <path clip-path="url(#padf9753a3d)" d="M 158.645271 256.164545 
L 158.645271 245.042157 
L 166.228718 245.042157 
L 166.228718 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_31">
    <g clip-path="url(#padf9753a3d)">
     <!-- 6 -->
     <g transform="translate(158.633311 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_32">
    <g clip-path="url(#padf9753a3d)">
     <!-- 6 -->
     <g transform="translate(158.633311 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_17">
    <path clip-path="url(#padf9753a3d)" d="M 178.867795 256.164545 
L 178.867795 245.042157 
L 186.451242 245.042157 
L 186.451242 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_33">
    <g clip-path="url(#padf9753a3d)">
     <!-- 7 -->
     <g transform="translate(178.869897 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="text_34">
    <g clip-path="url(#padf9753a3d)">
     <!-- 7 -->
     <g transform="translate(178.869897 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_18">
    <path clip-path="url(#padf9753a3d)" d="M 199.090319 256.164545 
L 199.090319 245.042157 
L 206.673765 245.042157 
L 206.673765 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_35">
    <g clip-path="url(#padf9753a3d)">
     <!-- 8 -->
     <g transform="translate(199.078358 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_36">
    <g clip-path="url(#padf9753a3d)">
     <!-- 8 -->
     <g transform="translate(199.078358 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_19">
    <path clip-path="url(#padf9753a3d)" d="M 219.312843 256.164545 
L 219.312843 245.042157 
L 226.896289 245.042157 
L 226.896289 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_37">
    <g clip-path="url(#padf9753a3d)">
     <!-- 9 -->
     <g transform="translate(219.300882 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-57"></use>
     </g>
    </g>
   </g>
   <g id="text_38">
    <g clip-path="url(#padf9753a3d)">
     <!-- 9 -->
     <g transform="translate(219.300882 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-57"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_20">
    <path clip-path="url(#padf9753a3d)" d="M 235.490862 256.164545 
L 235.490862 245.042157 
L 249.646628 245.042157 
L 249.646628 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_39">
    <g clip-path="url(#padf9753a3d)">
     <!-- 10 -->
     <g transform="translate(234.961378 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_40">
    <g clip-path="url(#padf9753a3d)">
     <!-- 10 -->
     <g transform="translate(234.961378 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_41">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(30.464782 251.62363)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_42">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(38.351603 22.350767)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_43">
    <g clip-path="url(#padf9753a3d)">
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
     <g transform="translate(256.271562 244.798528)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-120"></use>
     </g>
    </g>
   </g>
   <g id="line2d_1">
    <path clip-path="url(#padf9753a3d)" d="M 41.860197 79.723026 
L 244.085434 39.277978 
L 244.085434 39.277978 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="padf9753a3d">
   <rect height="260.82" width="262.488358" x="9.200821" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a line" class="sr-only"><ul>
<li>The line slants gradually up from left to right.</li>
<li>The line passes through the following points:<br>
<ul>
<li>(0 comma 8)</li>
<li>(5 comma 9)</li>
<li>(10 comma 10)</li>
</ul>
</li>
</ul></div></figure></p>
<p style="text-align: left;">What is the&nbsp;<em>y</em>-intercept of the line graphed?</p>$SATQ$, $SATQ$[{"id":"dc766d7a-f8c1-4fad-aa32-559051868e8e","content":"<p><math alttext=\"left parenthesis 0 comma negative 8 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mrow><mn>8</mn></mrow></mrow></mfenced></math></p>"},{"id":"5704cca5-9050-456d-9fe9-e86d98ccf701","content":"<p><math alttext=\"left parenthesis 0 comma negative one eighth right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mfrac><mn>1</mn><mrow><mn>8</mn></mrow></mfrac></mrow></mfenced></math></p>"},{"id":"7cd21c71-4b39-4562-bc18-7f7021241cfd","content":"<p><math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"},{"id":"f6249e00-d76c-4f79-966d-153030801483","content":"<p><math alttext=\"left parenthesis 0 comma 8 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>8</mn></mrow></mrow></mfenced></math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["f6249e00-d76c-4f79-966d-153030801483"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. The <em>y</em>-intercept of a line graphed in the <em>xy</em>-plane is the point where the line intersects the <em>y</em>-axis. The line graphed intersects the <em>y</em>-axis at the point <math alttext="left parenthesis 0 comma 8 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>8</mn></mrow></mfenced></math>. Therefore, the <em>y</em>-intercept of the line graphed is <math alttext="left parenthesis 0 comma 8 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>8</mn></mrow></mfenced></math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual errors.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"f40552a9","external_id":"6c6e9e8c-6e47-4600-94eb-347c7a7ae6c5","disclosed_item_id":null,"source":"qbank","vaultid":"3ffb186b-89b7-40d9-82ab-34945977b69a","uId":"ed0300e9-d6cd-4ba9-b7a9-704a4f71d7d9","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 286.56 275.22\" width=\"286.56pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a line in the x y plane with the origin labeled O. The x axis ranges from 0 to 10 in increments of 1. The y axis ranges from 0 to 10 in increments of 1. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 286.56 275.22 \nL 286.56 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 7.2 260.46 \nL 279.36 260.46 \nL 279.36 10.98 \nL 7.2 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 9.200821 268.02 \nL 271.689179 268.02 \nL 271.689179 7.2 \nL 9.200821 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 62.08272 246.558847 \nL 62.08272 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 82.305244 246.558847 \nL 82.305244 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 102.527768 246.558847 \nL 102.527768 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 122.750292 246.558847 \nL 122.750292 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 142.972815 246.558847 \nL 142.972815 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 163.195339 246.558847 \nL 163.195339 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 183.417863 246.558847 \nL 183.417863 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 203.640387 246.558847 \nL 203.640387 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 223.86291 246.558847 \nL 223.86291 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 244.085434 246.558847 \nL 244.085434 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 221.280692 \nL 249.141065 221.280692 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 201.058168 \nL 249.141065 201.058168 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 180.835645 \nL 249.141065 180.835645 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 160.613121 \nL 249.141065 160.613121 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 140.390597 \nL 249.141065 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 120.168073 \nL 249.141065 120.168073 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 99.94555 \nL 249.141065 99.94555 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 79.723026 \nL 249.141065 79.723026 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 59.500502 \nL 249.141065 59.500502 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 39.277978 \nL 249.141065 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 241.503216 \nL 254.196696 241.503216 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 251.423555 -32.732334 \nL 254.196696 -33.716784 \nL 251.423555 -34.701235 \nL 251.423555 -32.732334 \nL 254.196696 -33.716784 \n\" id=\"m6656b6a9b8\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#padf9753a3d)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m6656b6a9b8\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 41.860197 246.558847 \nL 41.860197 29.166716 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 42.842125 -242.479045 \nL 41.860197 -246.053284 \nL 40.878268 -242.479045 \nL 42.842125 -242.479045 \nL 41.860197 -246.053284 \n\" id=\"m6bbb8f38da\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#padf9753a3d)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m6bbb8f38da\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 62.08272 245.228417 \nL 62.08272 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 82.305244 245.228417 \nL 82.305244 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 102.527768 245.228417 \nL 102.527768 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 122.750292 245.228417 \nL 122.750292 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 142.972815 245.228417 \nL 142.972815 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 163.195339 245.228417 \nL 163.195339 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 183.417863 245.228417 \nL 183.417863 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 203.640387 245.228417 \nL 203.640387 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 223.86291 245.228417 \nL 223.86291 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 244.085434 245.228417 \nL 244.085434 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 221.280692 \nL 45.585398 221.280692 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 201.058168 \nL 45.585398 201.058168 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 180.835645 \nL 45.585398 180.835645 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 160.613121 \nL 45.585398 160.613121 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 140.390597 \nL 45.585398 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 120.168073 \nL 45.585398 120.168073 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 99.94555 \nL 45.585398 99.94555 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 79.723026 \nL 45.585398 79.723026 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 59.500502 \nL 45.585398 59.500502 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 39.277978 \nL 45.585398 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 227.347449 \nL 27.451649 216.225061 \nL 35.035095 216.225061 \nL 35.035095 227.347449 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 1 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n     </defs>\n     <g transform=\"translate(27.69247 225.972334)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 1 -->\n     <g transform=\"translate(27.69247 225.972334)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 207.124925 \nL 27.451649 196.002537 \nL 35.035095 196.002537 \nL 35.035095 207.124925 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(27.69247 205.74981)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 2 -->\n     <g transform=\"translate(27.69247 205.74981)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 186.902402 \nL 27.451649 175.780014 \nL 35.035095 175.780014 \nL 35.035095 186.902402 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 3 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(27.678407 185.527287)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 3 -->\n     <g transform=\"translate(27.678407 185.527287)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 166.679878 \nL 27.451649 155.55749 \nL 35.035095 155.55749 \nL 35.035095 166.679878 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(27.720595 165.304763)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 4 -->\n     <g transform=\"translate(27.720595 165.304763)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 146.457354 \nL 27.451649 135.334966 \nL 35.035095 135.334966 \nL 35.035095 146.457354 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 5 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n     </defs>\n     <g transform=\"translate(27.678407 145.082239)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 5 -->\n     <g transform=\"translate(27.678407 145.082239)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 126.23483 \nL 27.451649 115.112442 \nL 35.035095 115.112442 \nL 35.035095 126.23483 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(27.69247 124.859715)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 6 -->\n     <g transform=\"translate(27.69247 124.859715)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 106.012307 \nL 27.451649 94.889919 \nL 35.035095 94.889919 \nL 35.035095 106.012307 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 7 -->\n     <defs>\n      <path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n     </defs>\n     <g transform=\"translate(27.706532 104.637192)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 7 -->\n     <g transform=\"translate(27.706532 104.637192)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 85.789783 \nL 27.451649 74.667395 \nL 35.035095 74.667395 \nL 35.035095 85.789783 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(27.69247 84.414668)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 8 -->\n     <g transform=\"translate(27.69247 84.414668)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 65.567259 \nL 27.451649 54.444871 \nL 35.035095 54.444871 \nL 35.035095 65.567259 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 9 -->\n     <defs>\n      <path d=\"M 34.46875 42.09375 \nQ 34.46875 49.03125 31.203125 54.203125 \nQ 27.9375 59.375 22.75 59.375 \nQ 18.5625 59.375 15.53125 55.46875 \nQ 12.5 51.5625 12.5 45.21875 \nQ 12.5 38.875 15.71875 34.625 \nQ 18.953125 30.375 24.90625 30.375 \nQ 27.546875 30.375 29.984375 31.78125 \nQ 32.421875 33.203125 33.109375 34.765625 \nQ 34.375 37.703125 34.46875 42.09375 \nz\nM 24.3125 63.1875 \nQ 32.328125 63.1875 37.59375 56.890625 \nQ 42.875 50.59375 42.875 42.28125 \nQ 42.875 34.671875 39.75 27.390625 \nQ 36.625 20.125 31.6875 14.703125 \nQ 26.765625 9.28125 21.234375 5.328125 \nQ 15.71875 1.375 10.25 -0.59375 \nQ 9.671875 -0.59375 8.890625 0.578125 \nQ 8.109375 1.765625 8.109375 2.25 \nQ 15.625 5.171875 22.5625 11.859375 \nQ 29.5 18.5625 32.125 28.21875 \nQ 32.328125 29.203125 32.03125 29.203125 \nQ 31.84375 29.109375 31.734375 29 \nQ 30.671875 27.734375 27.25 26.65625 \nQ 23.828125 25.59375 21.1875 25.59375 \nQ 14.15625 25.59375 9.265625 30.859375 \nQ 4.390625 36.140625 4.390625 43.453125 \nQ 4.390625 51.5625 10.390625 57.375 \nQ 16.40625 63.1875 24.3125 63.1875 \nz\n\" id=\"CrimsonText-Regular-57\"></path>\n     </defs>\n     <g transform=\"translate(27.69247 64.192144)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 9 -->\n     <g transform=\"translate(27.69247 64.192144)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 21.13211 45.344735 \nL 21.13211 34.222347 \nL 35.287877 34.222347 \nL 35.287877 45.344735 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(20.602626 43.96962)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 10 -->\n     <g transform=\"translate(20.602626 43.96962)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 57.532653 256.164545 \nL 57.532653 245.042157 \nL 65.116099 245.042157 \nL 65.116099 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 1 -->\n     <g transform=\"translate(57.520692 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 1 -->\n     <g transform=\"translate(57.520692 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 77.755176 256.164545 \nL 77.755176 245.042157 \nL 85.338623 245.042157 \nL 85.338623 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 2 -->\n     <g transform=\"translate(77.743216 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 2 -->\n     <g transform=\"translate(77.743216 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 97.9777 256.164545 \nL 97.9777 245.042157 \nL 105.561147 245.042157 \nL 105.561147 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 3 -->\n     <g transform=\"translate(97.951677 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 3 -->\n     <g transform=\"translate(97.951677 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 118.200224 256.164545 \nL 118.200224 245.042157 \nL 125.78367 245.042157 \nL 125.78367 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 4 -->\n     <g transform=\"translate(118.216388 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 4 -->\n     <g transform=\"translate(118.216388 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 138.422748 256.164545 \nL 138.422748 245.042157 \nL 146.006194 245.042157 \nL 146.006194 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 5 -->\n     <g transform=\"translate(138.396725 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 5 -->\n     <g transform=\"translate(138.396725 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 158.645271 256.164545 \nL 158.645271 245.042157 \nL 166.228718 245.042157 \nL 166.228718 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 6 -->\n     <g transform=\"translate(158.633311 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 6 -->\n     <g transform=\"translate(158.633311 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 178.867795 256.164545 \nL 178.867795 245.042157 \nL 186.451242 245.042157 \nL 186.451242 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 7 -->\n     <g transform=\"translate(178.869897 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 7 -->\n     <g transform=\"translate(178.869897 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 199.090319 256.164545 \nL 199.090319 245.042157 \nL 206.673765 245.042157 \nL 206.673765 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 8 -->\n     <g transform=\"translate(199.078358 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 8 -->\n     <g transform=\"translate(199.078358 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 219.312843 256.164545 \nL 219.312843 245.042157 \nL 226.896289 245.042157 \nL 226.896289 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 9 -->\n     <g transform=\"translate(219.300882 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 9 -->\n     <g transform=\"translate(219.300882 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 235.490862 256.164545 \nL 235.490862 245.042157 \nL 249.646628 245.042157 \nL 249.646628 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 10 -->\n     <g transform=\"translate(234.961378 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 10 -->\n     <g transform=\"translate(234.961378 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(30.464782 251.62363)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(38.351603 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(256.271562 244.798528)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 41.860197 79.723026 \nL 244.085434 39.277978 \nL 244.085434 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"padf9753a3d\">\n   <rect height=\"260.82\" width=\"262.488358\" x=\"9.200821\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a line\" class=\"sr-only\"><ul>\n<li>The line slants gradually up from left to right.</li>\n<li>The line passes through the following points:<br>\n<ul>\n<li>(0 comma 8)</li>\n<li>(5 comma 9)</li>\n<li>(10 comma 10)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">What is the&nbsp;<em>y</em>-intercept of the line graphed?</p>","answerOptions":[{"id":"dc766d7a-f8c1-4fad-aa32-559051868e8e","content":"<p><math alttext=\"left parenthesis 0 comma negative 8 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mrow><mn>8</mn></mrow></mrow></mfenced></math></p>"},{"id":"5704cca5-9050-456d-9fe9-e86d98ccf701","content":"<p><math alttext=\"left parenthesis 0 comma negative one eighth right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mfrac><mn>1</mn><mrow><mn>8</mn></mrow></mfrac></mrow></mfenced></math></p>"},{"id":"7cd21c71-4b39-4562-bc18-7f7021241cfd","content":"<p><math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"},{"id":"f6249e00-d76c-4f79-966d-153030801483","content":"<p><math alttext=\"left parenthesis 0 comma 8 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>8</mn></mrow></mrow></mfenced></math></p>"}],"keys":["f6249e00-d76c-4f79-966d-153030801483"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. The <em>y</em>-intercept of a line graphed in the <em>xy</em>-plane is the point where the line intersects the <em>y</em>-axis. The line graphed intersects the <em>y</em>-axis at the point <math alttext=\"left parenthesis 0 comma 8 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>8</mn></mrow></mfenced></math>. Therefore, the <em>y</em>-intercept of the line graphed is <math alttext=\"left parenthesis 0 comma 8 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>8</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959815,"pPcc":"SAT#H","questionId":"f40552a9","skill_cd":"H.C.","score_band_range_cd":1,"skill_desc":"Linear equations in two variables","createDate":1691007959815,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"6c6e9e8c-6e47-4600-94eb-347c7a7ae6c5","primary_class_cd":"H","uId":"ed0300e9-d6cd-4ba9-b7a9-704a4f71d7d9","difficulty":"E"},"raw_detail":{"keys":["f6249e00-d76c-4f79-966d-153030801483"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. The <em>y</em>-intercept of a line graphed in the <em>xy</em>-plane is the point where the line intersects the <em>y</em>-axis. The line graphed intersects the <em>y</em>-axis at the point <math alttext=\"left parenthesis 0 comma 8 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>8</mn></mrow></mfenced></math>. Therefore, the <em>y</em>-intercept of the line graphed is <math alttext=\"left parenthesis 0 comma 8 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>8</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 286.56 275.22\" width=\"286.56pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a line in the x y plane with the origin labeled O. The x axis ranges from 0 to 10 in increments of 1. The y axis ranges from 0 to 10 in increments of 1. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 286.56 275.22 \nL 286.56 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 7.2 260.46 \nL 279.36 260.46 \nL 279.36 10.98 \nL 7.2 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 9.200821 268.02 \nL 271.689179 268.02 \nL 271.689179 7.2 \nL 9.200821 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 62.08272 246.558847 \nL 62.08272 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 82.305244 246.558847 \nL 82.305244 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 102.527768 246.558847 \nL 102.527768 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 122.750292 246.558847 \nL 122.750292 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 142.972815 246.558847 \nL 142.972815 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 163.195339 246.558847 \nL 163.195339 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 183.417863 246.558847 \nL 183.417863 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 203.640387 246.558847 \nL 203.640387 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 223.86291 246.558847 \nL 223.86291 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 244.085434 246.558847 \nL 244.085434 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 221.280692 \nL 249.141065 221.280692 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 201.058168 \nL 249.141065 201.058168 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 180.835645 \nL 249.141065 180.835645 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 160.613121 \nL 249.141065 160.613121 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 140.390597 \nL 249.141065 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 120.168073 \nL 249.141065 120.168073 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 99.94555 \nL 249.141065 99.94555 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 79.723026 \nL 249.141065 79.723026 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 59.500502 \nL 249.141065 59.500502 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 39.277978 \nL 249.141065 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 36.804566 241.503216 \nL 254.196696 241.503216 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 251.423555 -32.732334 \nL 254.196696 -33.716784 \nL 251.423555 -34.701235 \nL 251.423555 -32.732334 \nL 254.196696 -33.716784 \n\" id=\"m6656b6a9b8\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#padf9753a3d)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m6656b6a9b8\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 41.860197 246.558847 \nL 41.860197 29.166716 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 42.842125 -242.479045 \nL 41.860197 -246.053284 \nL 40.878268 -242.479045 \nL 42.842125 -242.479045 \nL 41.860197 -246.053284 \n\" id=\"m6bbb8f38da\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#padf9753a3d)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m6bbb8f38da\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 62.08272 245.228417 \nL 62.08272 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 82.305244 245.228417 \nL 82.305244 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 102.527768 245.228417 \nL 102.527768 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 122.750292 245.228417 \nL 122.750292 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 142.972815 245.228417 \nL 142.972815 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 163.195339 245.228417 \nL 163.195339 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 183.417863 245.228417 \nL 183.417863 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 203.640387 245.228417 \nL 203.640387 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 223.86291 245.228417 \nL 223.86291 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 244.085434 245.228417 \nL 244.085434 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 221.280692 \nL 45.585398 221.280692 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 201.058168 \nL 45.585398 201.058168 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 180.835645 \nL 45.585398 180.835645 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 160.613121 \nL 45.585398 160.613121 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 140.390597 \nL 45.585398 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 120.168073 \nL 45.585398 120.168073 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 99.94555 \nL 45.585398 99.94555 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 79.723026 \nL 45.585398 79.723026 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 59.500502 \nL 45.585398 59.500502 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 38.134995 39.277978 \nL 45.585398 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 227.347449 \nL 27.451649 216.225061 \nL 35.035095 216.225061 \nL 35.035095 227.347449 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 1 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n     </defs>\n     <g transform=\"translate(27.69247 225.972334)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 1 -->\n     <g transform=\"translate(27.69247 225.972334)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 207.124925 \nL 27.451649 196.002537 \nL 35.035095 196.002537 \nL 35.035095 207.124925 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(27.69247 205.74981)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 2 -->\n     <g transform=\"translate(27.69247 205.74981)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 186.902402 \nL 27.451649 175.780014 \nL 35.035095 175.780014 \nL 35.035095 186.902402 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 3 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(27.678407 185.527287)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 3 -->\n     <g transform=\"translate(27.678407 185.527287)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 166.679878 \nL 27.451649 155.55749 \nL 35.035095 155.55749 \nL 35.035095 166.679878 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(27.720595 165.304763)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 4 -->\n     <g transform=\"translate(27.720595 165.304763)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 146.457354 \nL 27.451649 135.334966 \nL 35.035095 135.334966 \nL 35.035095 146.457354 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 5 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n     </defs>\n     <g transform=\"translate(27.678407 145.082239)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 5 -->\n     <g transform=\"translate(27.678407 145.082239)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 126.23483 \nL 27.451649 115.112442 \nL 35.035095 115.112442 \nL 35.035095 126.23483 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(27.69247 124.859715)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 6 -->\n     <g transform=\"translate(27.69247 124.859715)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 106.012307 \nL 27.451649 94.889919 \nL 35.035095 94.889919 \nL 35.035095 106.012307 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 7 -->\n     <defs>\n      <path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n     </defs>\n     <g transform=\"translate(27.706532 104.637192)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 7 -->\n     <g transform=\"translate(27.706532 104.637192)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 85.789783 \nL 27.451649 74.667395 \nL 35.035095 74.667395 \nL 35.035095 85.789783 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(27.69247 84.414668)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 8 -->\n     <g transform=\"translate(27.69247 84.414668)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 27.451649 65.567259 \nL 27.451649 54.444871 \nL 35.035095 54.444871 \nL 35.035095 65.567259 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 9 -->\n     <defs>\n      <path d=\"M 34.46875 42.09375 \nQ 34.46875 49.03125 31.203125 54.203125 \nQ 27.9375 59.375 22.75 59.375 \nQ 18.5625 59.375 15.53125 55.46875 \nQ 12.5 51.5625 12.5 45.21875 \nQ 12.5 38.875 15.71875 34.625 \nQ 18.953125 30.375 24.90625 30.375 \nQ 27.546875 30.375 29.984375 31.78125 \nQ 32.421875 33.203125 33.109375 34.765625 \nQ 34.375 37.703125 34.46875 42.09375 \nz\nM 24.3125 63.1875 \nQ 32.328125 63.1875 37.59375 56.890625 \nQ 42.875 50.59375 42.875 42.28125 \nQ 42.875 34.671875 39.75 27.390625 \nQ 36.625 20.125 31.6875 14.703125 \nQ 26.765625 9.28125 21.234375 5.328125 \nQ 15.71875 1.375 10.25 -0.59375 \nQ 9.671875 -0.59375 8.890625 0.578125 \nQ 8.109375 1.765625 8.109375 2.25 \nQ 15.625 5.171875 22.5625 11.859375 \nQ 29.5 18.5625 32.125 28.21875 \nQ 32.328125 29.203125 32.03125 29.203125 \nQ 31.84375 29.109375 31.734375 29 \nQ 30.671875 27.734375 27.25 26.65625 \nQ 23.828125 25.59375 21.1875 25.59375 \nQ 14.15625 25.59375 9.265625 30.859375 \nQ 4.390625 36.140625 4.390625 43.453125 \nQ 4.390625 51.5625 10.390625 57.375 \nQ 16.40625 63.1875 24.3125 63.1875 \nz\n\" id=\"CrimsonText-Regular-57\"></path>\n     </defs>\n     <g transform=\"translate(27.69247 64.192144)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 9 -->\n     <g transform=\"translate(27.69247 64.192144)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 21.13211 45.344735 \nL 21.13211 34.222347 \nL 35.287877 34.222347 \nL 35.287877 45.344735 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(20.602626 43.96962)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 10 -->\n     <g transform=\"translate(20.602626 43.96962)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 57.532653 256.164545 \nL 57.532653 245.042157 \nL 65.116099 245.042157 \nL 65.116099 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 1 -->\n     <g transform=\"translate(57.520692 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 1 -->\n     <g transform=\"translate(57.520692 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 77.755176 256.164545 \nL 77.755176 245.042157 \nL 85.338623 245.042157 \nL 85.338623 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 2 -->\n     <g transform=\"translate(77.743216 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 2 -->\n     <g transform=\"translate(77.743216 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 97.9777 256.164545 \nL 97.9777 245.042157 \nL 105.561147 245.042157 \nL 105.561147 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 3 -->\n     <g transform=\"translate(97.951677 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 3 -->\n     <g transform=\"translate(97.951677 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 118.200224 256.164545 \nL 118.200224 245.042157 \nL 125.78367 245.042157 \nL 125.78367 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 4 -->\n     <g transform=\"translate(118.216388 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 4 -->\n     <g transform=\"translate(118.216388 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 138.422748 256.164545 \nL 138.422748 245.042157 \nL 146.006194 245.042157 \nL 146.006194 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 5 -->\n     <g transform=\"translate(138.396725 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 5 -->\n     <g transform=\"translate(138.396725 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 158.645271 256.164545 \nL 158.645271 245.042157 \nL 166.228718 245.042157 \nL 166.228718 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 6 -->\n     <g transform=\"translate(158.633311 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 6 -->\n     <g transform=\"translate(158.633311 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 178.867795 256.164545 \nL 178.867795 245.042157 \nL 186.451242 245.042157 \nL 186.451242 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 7 -->\n     <g transform=\"translate(178.869897 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 7 -->\n     <g transform=\"translate(178.869897 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 199.090319 256.164545 \nL 199.090319 245.042157 \nL 206.673765 245.042157 \nL 206.673765 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 8 -->\n     <g transform=\"translate(199.078358 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 8 -->\n     <g transform=\"translate(199.078358 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 219.312843 256.164545 \nL 219.312843 245.042157 \nL 226.896289 245.042157 \nL 226.896289 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 9 -->\n     <g transform=\"translate(219.300882 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 9 -->\n     <g transform=\"translate(219.300882 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 235.490862 256.164545 \nL 235.490862 245.042157 \nL 249.646628 245.042157 \nL 249.646628 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 10 -->\n     <g transform=\"translate(234.961378 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- 10 -->\n     <g transform=\"translate(234.961378 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(30.464782 251.62363)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(38.351603 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#padf9753a3d)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(256.271562 244.798528)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#padf9753a3d)\" d=\"M 41.860197 79.723026 \nL 244.085434 39.277978 \nL 244.085434 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"padf9753a3d\">\n   <rect height=\"260.82\" width=\"262.488358\" x=\"9.200821\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a line\" class=\"sr-only\"><ul>\n<li>The line slants gradually up from left to right.</li>\n<li>The line passes through the following points:<br>\n<ul>\n<li>(0 comma 8)</li>\n<li>(5 comma 9)</li>\n<li>(10 comma 10)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">What is the&nbsp;<em>y</em>-intercept of the line graphed?</p>","externalid":"6c6e9e8c-6e47-4600-94eb-347c7a7ae6c5","templateid":"79e44a74-2e6c-4183-bf2e-e1262235aba7","vaultid":"3ffb186b-89b7-40d9-82ab-34945977b69a","type":"mcq","answerOptions":[{"id":"dc766d7a-f8c1-4fad-aa32-559051868e8e","content":"<p><math alttext=\"left parenthesis 0 comma negative 8 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mrow><mn>8</mn></mrow></mrow></mfenced></math></p>"},{"id":"5704cca5-9050-456d-9fe9-e86d98ccf701","content":"<p><math alttext=\"left parenthesis 0 comma negative one eighth right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mo>-</mo><mfrac><mn>1</mn><mrow><mn>8</mn></mrow></mfrac></mrow></mfenced></math></p>"},{"id":"7cd21c71-4b39-4562-bc18-7f7021241cfd","content":"<p><math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"},{"id":"f6249e00-d76c-4f79-966d-153030801483","content":"<p><math alttext=\"left parenthesis 0 comma 8 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mn>8</mn></mrow></mrow></mfenced></math></p>"}],"correct_answer":["D"]},"createDate":1691007959815,"updateDate":1691007959815}$SATQ$::jsonb, 1691007959815, 1691007959815),
    ($SATQ$f5563c26$SATQ$, $SATQ$5f351eb6-67ee-4ee2-a604-17867c3570b7$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="y equals 4"><mi>y</mi><mo>=</mo><mrow><mn>4</mn></mrow></math></p>
<p style="text-align: center;"><math alttext="x equals y plus 6"><mi>x</mi><mo>=</mo><mi>y</mi><mo>+</mo><mrow><mn>6</mn></mrow></math></p>
<p style="text-align: left;">The solution to the given system of equations is&nbsp;<math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext="x"><mi>x</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"a4c3dd54-3c30-433e-beae-cd50bafba0cd","content":"<p style=\"text-align: left;\"><math alttext=\"10\"><mn>10</mn>\n</math></p>"},{"id":"288cbc58-528f-4265-bd3f-19d228f9ef5f","content":"<p style=\"text-align: left;\"><math alttext=\"6\"><mn>6</mn>\n</math></p>"},{"id":"f385366d-73e9-499d-8490-0344988f6f68","content":"<p style=\"text-align: left;\"><math alttext=\"4\"><mn>4</mn>\n</math></p>"},{"id":"64634e1c-06dc-4bb8-9606-8248aeb90299","content":"<p style=\"text-align: left;\"><math alttext=\"2\"><mn>2</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["a4c3dd54-3c30-433e-beae-cd50bafba0cd"]$SATQ$::jsonb, $SATQ$<p>Choice A is correct. According to the first equation in the given system, <math alttext="y equals 4"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mn>4</mn>
</mrow>
</math>. Substituting <math alttext="4"><mn>4</mn>
</math> for <math alttext="y"><mi>y</mi>
</math> in the second equation in the given system yields <math alttext="x equals 4 plus 6"><mi>x</mi><mo>=</mo><mn>4</mn><mo>+</mo><mn>6</mn></math>, or <math alttext="x equals 10"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>10</mn>
</mrow>
</math>.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice C is incorrect. This is the value of <math alttext="y"><mi>y</mi>
</math>, not <math alttext="x"><mi>x</mi>
</math>.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"f5563c26","external_id":"5f351eb6-67ee-4ee2-a604-17867c3570b7","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"325ecd25-095d-4566-85e6-55ecbafc7bc9","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"y equals 4\"><mi>y</mi><mo>=</mo><mrow><mn>4</mn></mrow></math></p>\n<p style=\"text-align: center;\"><math alttext=\"x equals y plus 6\"><mi>x</mi><mo>=</mo><mi>y</mi><mo>+</mo><mrow><mn>6</mn></mrow></math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"x\"><mi>x</mi>\n</math>?</p>","answerOptions":[{"id":"a4c3dd54-3c30-433e-beae-cd50bafba0cd","content":"<p style=\"text-align: left;\"><math alttext=\"10\"><mn>10</mn>\n</math></p>"},{"id":"288cbc58-528f-4265-bd3f-19d228f9ef5f","content":"<p style=\"text-align: left;\"><math alttext=\"6\"><mn>6</mn>\n</math></p>"},{"id":"f385366d-73e9-499d-8490-0344988f6f68","content":"<p style=\"text-align: left;\"><math alttext=\"4\"><mn>4</mn>\n</math></p>"},{"id":"64634e1c-06dc-4bb8-9606-8248aeb90299","content":"<p style=\"text-align: left;\"><math alttext=\"2\"><mn>2</mn>\n</math></p>"}],"keys":["a4c3dd54-3c30-433e-beae-cd50bafba0cd"],"correct_answer":["A"],"rationale":"<p>Choice A is correct. According to the first equation in the given system, <math alttext=\"y equals 4\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math>. Substituting <math alttext=\"4\"><mn>4</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the second equation in the given system yields <math alttext=\"x equals 4 plus 6\"><mi>x</mi><mo>=</mo><mn>4</mn><mo>+</mo><mn>6</mn></math>, or <math alttext=\"x equals 10\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>10</mn>\n</mrow>\n</math>.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect. This is the value of <math alttext=\"y\"><mi>y</mi>\n</math>, not <math alttext=\"x\"><mi>x</mi>\n</math>.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357393,"pPcc":"SAT#H","questionId":"f5563c26","skill_cd":"H.D.","score_band_range_cd":1,"skill_desc":"Systems of two linear equations in two variables","createDate":1730147357393,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"5f351eb6-67ee-4ee2-a604-17867c3570b7","primary_class_cd":"H","uId":"325ecd25-095d-4566-85e6-55ecbafc7bc9","difficulty":"E"},"raw_detail":{"answerOptions":[{"content":"<p style=\"text-align: left;\"><math alttext=\"10\"><mn>10</mn>\n</math></p>","id":"a4c3dd54-3c30-433e-beae-cd50bafba0cd"},{"content":"<p style=\"text-align: left;\"><math alttext=\"6\"><mn>6</mn>\n</math></p>","id":"288cbc58-528f-4265-bd3f-19d228f9ef5f"},{"content":"<p style=\"text-align: left;\"><math alttext=\"4\"><mn>4</mn>\n</math></p>","id":"f385366d-73e9-499d-8490-0344988f6f68"},{"content":"<p style=\"text-align: left;\"><math alttext=\"2\"><mn>2</mn>\n</math></p>","id":"64634e1c-06dc-4bb8-9606-8248aeb90299"}],"externalid":"5f351eb6-67ee-4ee2-a604-17867c3570b7","keys":["a4c3dd54-3c30-433e-beae-cd50bafba0cd"],"rationale":"<p>Choice A is correct. According to the first equation in the given system, <math alttext=\"y equals 4\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math>. Substituting <math alttext=\"4\"><mn>4</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the second equation in the given system yields <math alttext=\"x equals 4 plus 6\"><mi>x</mi><mo>=</mo><mn>4</mn><mo>+</mo><mn>6</mn></math>, or <math alttext=\"x equals 10\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>10</mn>\n</mrow>\n</math>.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect. This is the value of <math alttext=\"y\"><mi>y</mi>\n</math>, not <math alttext=\"x\"><mi>x</mi>\n</math>.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","stem":"<p style=\"text-align: center;\"><math alttext=\"y equals 4\"><mi>y</mi><mo>=</mo><mrow><mn>4</mn></mrow></math></p>\n<p style=\"text-align: center;\"><math alttext=\"x equals y plus 6\"><mi>x</mi><mo>=</mo><mi>y</mi><mo>+</mo><mrow><mn>6</mn></mrow></math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"x\"><mi>x</mi>\n</math>?</p>","type":"mcq","correct_answer":["A"]},"createDate":1730147357393,"updateDate":1730147357393}$SATQ$::jsonb, 1730147357393, 1730147357393),
    ($SATQ$f5929f7a$SATQ$, $SATQ$b992e5d3-e84d-4c00-86c0-75f34b0c6f14$SATQ$::uuid, $SATQ$aeace487-a34b-4a27-9201-e6532a075f0f$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="y equals minus one ninth x"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mrow><mn>9</mn></mrow></mfrac><mi>x</mi></math></p>
<p style="text-align: center;"><math alttext="y equals one half x"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mrow><mn>2</mn></mrow></mfrac><mi>x</mi></math></p>
<p style="text-align: left;">The solution to the given system of equations is <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext="x"><mi>x</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"9c2fdee7-cc8c-4709-a5c8-032830e50ae0","content":"<p><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></p>"},{"id":"6fbe38e5-aa7c-4e3c-af19-1972c4de004d","content":"<p><math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></p>"},{"id":"bb12c91c-517d-4cb4-bc2c-afe37e122c27","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"38dbee92-5a40-45b6-989d-d5cbac447ab5","content":"<p><math alttext=\"2\"><mn>2</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["bb12c91c-517d-4cb4-bc2c-afe37e122c27"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. It's given by the first equation in the system that <math alttext="y equals minus one ninth x"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>9</mn></mfrac><mi>x</mi></math>. Substituting&nbsp;<math alttext="minus one ninth x"><mo>-</mo><mfrac><mn>1</mn><mn>9</mn></mfrac><mi>x</mi></math> for <math alttext="y"><mi>y</mi>
</math> in the second equation in the system yields <math alttext="minus one ninth x equals one half x"><mo>-</mo><mfrac><mn>1</mn><mn>9</mn></mfrac><mi>x</mi><mo>=</mo><mfrac><mn>1</mn><mn>2</mn></mfrac><mi>x</mi></math>. Multiplying the left-hand side of this equation by <math alttext="two halves"><mfrac><mn>2</mn><mn>2</mn></mfrac></math> and the right-hand side by&nbsp;<math alttext="nine ninths"><mfrac><mn>9</mn><mn>9</mn></mfrac></math> yields <math alttext="minus two eighteenths x equals nine eighteenths x"><mo>-</mo><mfrac><mn>2</mn><mn>18</mn></mfrac><mi>x</mi><mo>=</mo><mfrac><mn>9</mn><mn>18</mn></mfrac><mi>x</mi></math>. Adding&nbsp;<math alttext="two eighteenths x"><mfrac><mn>2</mn><mn>18</mn></mfrac><mi>x</mi></math> to both sides of this equation yields <math alttext="0 equals StartFraction 11 Over 18 EndFraction x"><mn>0</mn><mo>=</mo><mfrac><mn>11</mn><mn>18</mn></mfrac><mi>x</mi></math>. Multiplying both sides of this equation by <math alttext="StartFraction 18 Over 11 EndFraction"><mfrac><mn>18</mn><mn>11</mn></mfrac></math> yields <math alttext="x equals 0"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.&nbsp;</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.&nbsp;</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.&nbsp;</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"f5929f7a","external_id":"b992e5d3-e84d-4c00-86c0-75f34b0c6f14","disclosed_item_id":null,"source":"qbank","vaultid":"aeace487-a34b-4a27-9201-e6532a075f0f","uId":"47548dc0-42b0-4e09-aaca-80db7779a364","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"y equals minus one ninth x\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mrow><mn>9</mn></mrow></mfrac><mi>x</mi></math></p>\n<p style=\"text-align: center;\"><math alttext=\"y equals one half x\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mrow><mn>2</mn></mrow></mfrac><mi>x</mi></math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"x\"><mi>x</mi>\n</math>?</p>","answerOptions":[{"id":"9c2fdee7-cc8c-4709-a5c8-032830e50ae0","content":"<p><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></p>"},{"id":"6fbe38e5-aa7c-4e3c-af19-1972c4de004d","content":"<p><math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></p>"},{"id":"bb12c91c-517d-4cb4-bc2c-afe37e122c27","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"38dbee92-5a40-45b6-989d-d5cbac447ab5","content":"<p><math alttext=\"2\"><mn>2</mn>\n</math></p>"}],"keys":["bb12c91c-517d-4cb4-bc2c-afe37e122c27"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It's given by the first equation in the system that <math alttext=\"y equals minus one ninth x\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>9</mn></mfrac><mi>x</mi></math>. Substituting&nbsp;<math alttext=\"minus one ninth x\"><mo>-</mo><mfrac><mn>1</mn><mn>9</mn></mfrac><mi>x</mi></math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the second equation in the system yields <math alttext=\"minus one ninth x equals one half x\"><mo>-</mo><mfrac><mn>1</mn><mn>9</mn></mfrac><mi>x</mi><mo>=</mo><mfrac><mn>1</mn><mn>2</mn></mfrac><mi>x</mi></math>. Multiplying the left-hand side of this equation by <math alttext=\"two halves\"><mfrac><mn>2</mn><mn>2</mn></mfrac></math> and the right-hand side by&nbsp;<math alttext=\"nine ninths\"><mfrac><mn>9</mn><mn>9</mn></mfrac></math> yields <math alttext=\"minus two eighteenths x equals nine eighteenths x\"><mo>-</mo><mfrac><mn>2</mn><mn>18</mn></mfrac><mi>x</mi><mo>=</mo><mfrac><mn>9</mn><mn>18</mn></mfrac><mi>x</mi></math>. Adding&nbsp;<math alttext=\"two eighteenths x\"><mfrac><mn>2</mn><mn>18</mn></mfrac><mi>x</mi></math> to both sides of this equation yields <math alttext=\"0 equals StartFraction 11 Over 18 EndFraction x\"><mn>0</mn><mo>=</mo><mfrac><mn>11</mn><mn>18</mn></mfrac><mi>x</mi></math>. Multiplying both sides of this equation by <math alttext=\"StartFraction 18 Over 11 EndFraction\"><mfrac><mn>18</mn><mn>11</mn></mfrac></math> yields <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.&nbsp;</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.&nbsp;</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.&nbsp;</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959817,"pPcc":"SAT#H","questionId":"f5929f7a","skill_cd":"H.D.","score_band_range_cd":4,"skill_desc":"Systems of two linear equations in two variables","createDate":1691007959817,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"b992e5d3-e84d-4c00-86c0-75f34b0c6f14","primary_class_cd":"H","uId":"47548dc0-42b0-4e09-aaca-80db7779a364","difficulty":"M"},"raw_detail":{"keys":["bb12c91c-517d-4cb4-bc2c-afe37e122c27"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It's given by the first equation in the system that <math alttext=\"y equals minus one ninth x\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>9</mn></mfrac><mi>x</mi></math>. Substituting&nbsp;<math alttext=\"minus one ninth x\"><mo>-</mo><mfrac><mn>1</mn><mn>9</mn></mfrac><mi>x</mi></math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the second equation in the system yields <math alttext=\"minus one ninth x equals one half x\"><mo>-</mo><mfrac><mn>1</mn><mn>9</mn></mfrac><mi>x</mi><mo>=</mo><mfrac><mn>1</mn><mn>2</mn></mfrac><mi>x</mi></math>. Multiplying the left-hand side of this equation by <math alttext=\"two halves\"><mfrac><mn>2</mn><mn>2</mn></mfrac></math> and the right-hand side by&nbsp;<math alttext=\"nine ninths\"><mfrac><mn>9</mn><mn>9</mn></mfrac></math> yields <math alttext=\"minus two eighteenths x equals nine eighteenths x\"><mo>-</mo><mfrac><mn>2</mn><mn>18</mn></mfrac><mi>x</mi><mo>=</mo><mfrac><mn>9</mn><mn>18</mn></mfrac><mi>x</mi></math>. Adding&nbsp;<math alttext=\"two eighteenths x\"><mfrac><mn>2</mn><mn>18</mn></mfrac><mi>x</mi></math> to both sides of this equation yields <math alttext=\"0 equals StartFraction 11 Over 18 EndFraction x\"><mn>0</mn><mo>=</mo><mfrac><mn>11</mn><mn>18</mn></mfrac><mi>x</mi></math>. Multiplying both sides of this equation by <math alttext=\"StartFraction 18 Over 11 EndFraction\"><mfrac><mn>18</mn><mn>11</mn></mfrac></math> yields <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.&nbsp;</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.&nbsp;</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.&nbsp;</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"y equals minus one ninth x\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mrow><mn>9</mn></mrow></mfrac><mi>x</mi></math></p>\n<p style=\"text-align: center;\"><math alttext=\"y equals one half x\"><mi>y</mi><mo>=</mo><mfrac><mn>1</mn><mrow><mn>2</mn></mrow></mfrac><mi>x</mi></math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"x\"><mi>x</mi>\n</math>?</p>","externalid":"b992e5d3-e84d-4c00-86c0-75f34b0c6f14","templateid":"5535a585-fba2-466b-b4c9-4265a6aaed93","vaultid":"aeace487-a34b-4a27-9201-e6532a075f0f","type":"mcq","answerOptions":[{"id":"9c2fdee7-cc8c-4709-a5c8-032830e50ae0","content":"<p><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math></p>"},{"id":"6fbe38e5-aa7c-4e3c-af19-1972c4de004d","content":"<p><math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></p>"},{"id":"bb12c91c-517d-4cb4-bc2c-afe37e122c27","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"38dbee92-5a40-45b6-989d-d5cbac447ab5","content":"<p><math alttext=\"2\"><mn>2</mn>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959817,"updateDate":1691007959817}$SATQ$::jsonb, 1691007959817, 1691007959817),
    ($SATQ$f5ff91b2$SATQ$, $SATQ$eec9f1c3-9c60-420a-98bf-68fc90a14f95$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">If <math alttext="StartFraction x minus 5 Over 7 EndFraction equals StartFraction x minus 5 Over 9 EndFraction"><mfrac><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow><mrow><mn>7</mn></mrow></mfrac><mo>=</mo><mfrac><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow><mrow><mn>9</mn></mrow></mfrac></math>, the value of <math alttext="x minus 5"><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></math> is between which of the following pairs of values?</p>$SATQ$, $SATQ$[{"id":"9668b9e4-ae01-444f-be94-b415d841aae5","content":"<p><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math> and <math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></p>"},{"id":"de24c3b3-58f5-440f-b02b-316c158255fe","content":"<p><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math> and <math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"5421e6b0-aee2-4772-939d-581f67e28fff","content":"<p><math alttext=\"4.5\"><mrow><mn>4.5</mn></mrow></math> and&nbsp;<math alttext=\"5.5\"><mrow><mn>5.5</mn></mrow></math></p>"},{"id":"36d647a1-b669-42ae-9637-fc606ba6b647","content":"<p><math alttext=\"6.75\"><mn>6.75</mn>\n</math> and <math alttext=\"9.25\"><mn>9.25</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["de24c3b3-58f5-440f-b02b-316c158255fe"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. Multiplying both sides of the given equation&nbsp;by <math alttext="left parenthesis 7 right parenthesis left parenthesis 9 right parenthesis"><mo>(</mo><mn>7</mn><mo>)</mo><mo>(</mo><mn>9</mn><mo>)</mo></math>, or <math alttext="63"><mn>63</mn></math>, yields&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis 63 right parenthesis left parenthesis StartFraction x minus 5 Over 7 EndFraction right parenthesis equals left parenthesis 63 right parenthesis left parenthesis StartFraction x minus 5 Over 9 EndFraction right parenthesis"><mo>(</mo><mn>63</mn><mo>)</mo><mfenced><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>7</mn></mfrac></mfenced><mo>=</mo><mo>(</mo><mn>63</mn><mo>)</mo><mfenced><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>9</mn></mfrac></mfenced></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="9 left parenthesis x minus 5 right parenthesis equals 7 left parenthesis x minus 5 right parenthesis"><mn>9</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo><mo>=</mo><mn>7</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo></math>. Subtracting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="7 left parenthesis x minus 5 right parenthesis"><mn>7</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo></math> from both sides of this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2 left parenthesis x minus 5 right parenthesis equals 0"><mn>2</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo><mo>=</mo><mn>0</mn></math>. Dividing both sides of this equation by <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2"><mn>2</mn></math> yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x minus 5 equals 0"><mi>x</mi><mo>-</mo><mn>5</mn><mo>=</mo><mn>0</mn></math>. Therefore, if <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="StartFraction x minus 5 Over 7 EndFraction equals StartFraction x minus 5 Over 9 EndFraction"><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>7</mn></mfrac><mo>=</mo><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>9</mn></mfrac></math>, then the value of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x minus 5"><mi>x</mi><mo>-</mo><mn>5</mn></math> is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="0"><mn>0</mn></math>. It follows that of the given choices, the value of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x minus 5"><mi>x</mi><mo>-</mo><mn>5</mn></math> is between <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="negative 3"><mo>-</mo><mn>3</mn></math> and <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3"><mn>3</mn></math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"f5ff91b2","external_id":"eec9f1c3-9c60-420a-98bf-68fc90a14f95","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"e4d33a23-718b-4669-a40e-1739549c152c","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">If <math alttext=\"StartFraction x minus 5 Over 7 EndFraction equals StartFraction x minus 5 Over 9 EndFraction\"><mfrac><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow><mrow><mn>7</mn></mrow></mfrac><mo>=</mo><mfrac><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow><mrow><mn>9</mn></mrow></mfrac></math>, the value of <math alttext=\"x minus 5\"><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></math> is between which of the following pairs of values?</p>","answerOptions":[{"id":"9668b9e4-ae01-444f-be94-b415d841aae5","content":"<p><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math> and <math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></p>"},{"id":"de24c3b3-58f5-440f-b02b-316c158255fe","content":"<p><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math> and <math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"5421e6b0-aee2-4772-939d-581f67e28fff","content":"<p><math alttext=\"4.5\"><mrow><mn>4.5</mn></mrow></math> and&nbsp;<math alttext=\"5.5\"><mrow><mn>5.5</mn></mrow></math></p>"},{"id":"36d647a1-b669-42ae-9637-fc606ba6b647","content":"<p><math alttext=\"6.75\"><mn>6.75</mn>\n</math> and <math alttext=\"9.25\"><mn>9.25</mn>\n</math></p>"}],"keys":["de24c3b3-58f5-440f-b02b-316c158255fe"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. Multiplying both sides of the given equation&nbsp;by <math alttext=\"left parenthesis 7 right parenthesis left parenthesis 9 right parenthesis\"><mo>(</mo><mn>7</mn><mo>)</mo><mo>(</mo><mn>9</mn><mo>)</mo></math>, or <math alttext=\"63\"><mn>63</mn></math>, yields&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 63 right parenthesis left parenthesis StartFraction x minus 5 Over 7 EndFraction right parenthesis equals left parenthesis 63 right parenthesis left parenthesis StartFraction x minus 5 Over 9 EndFraction right parenthesis\"><mo>(</mo><mn>63</mn><mo>)</mo><mfenced><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>7</mn></mfrac></mfenced><mo>=</mo><mo>(</mo><mn>63</mn><mo>)</mo><mfenced><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>9</mn></mfrac></mfenced></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9 left parenthesis x minus 5 right parenthesis equals 7 left parenthesis x minus 5 right parenthesis\"><mn>9</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo><mo>=</mo><mn>7</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo></math>. Subtracting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7 left parenthesis x minus 5 right parenthesis\"><mn>7</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo></math> from both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 left parenthesis x minus 5 right parenthesis equals 0\"><mn>2</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo><mo>=</mo><mn>0</mn></math>. Dividing both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2\"><mn>2</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x minus 5 equals 0\"><mi>x</mi><mo>-</mo><mn>5</mn><mo>=</mo><mn>0</mn></math>. Therefore, if <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"StartFraction x minus 5 Over 7 EndFraction equals StartFraction x minus 5 Over 9 EndFraction\"><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>7</mn></mfrac><mo>=</mo><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>9</mn></mfrac></math>, then the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x minus 5\"><mi>x</mi><mo>-</mo><mn>5</mn></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0\"><mn>0</mn></math>. It follows that of the given choices, the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x minus 5\"><mi>x</mi><mo>-</mo><mn>5</mn></math> is between <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"negative 3\"><mo>-</mo><mn>3</mn></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3\"><mn>3</mn></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1755117017725,"pPcc":"SAT#H","questionId":"f5ff91b2","skill_cd":"H.A.","score_band_range_cd":7,"skill_desc":"Linear equations in one variable","createDate":1755117017725,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"eec9f1c3-9c60-420a-98bf-68fc90a14f95","primary_class_cd":"H","uId":"e4d33a23-718b-4669-a40e-1739549c152c","difficulty":"H"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">If <math alttext=\"StartFraction x minus 5 Over 7 EndFraction equals StartFraction x minus 5 Over 9 EndFraction\"><mfrac><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow><mrow><mn>7</mn></mrow></mfrac><mo>=</mo><mfrac><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow><mrow><mn>9</mn></mrow></mfrac></math>, the value of <math alttext=\"x minus 5\"><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></math> is between which of the following pairs of values?</p>","keys":["de24c3b3-58f5-440f-b02b-316c158255fe"],"answerOptions":[{"id":"9668b9e4-ae01-444f-be94-b415d841aae5","content":"<p><math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math> and <math alttext=\"negative 7\"><mo>-</mo><mn>7</mn>\n</math></p>"},{"id":"de24c3b3-58f5-440f-b02b-316c158255fe","content":"<p><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math> and <math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"5421e6b0-aee2-4772-939d-581f67e28fff","content":"<p><math alttext=\"4.5\"><mrow><mn>4.5</mn></mrow></math> and&nbsp;<math alttext=\"5.5\"><mrow><mn>5.5</mn></mrow></math></p>"},{"id":"36d647a1-b669-42ae-9637-fc606ba6b647","content":"<p><math alttext=\"6.75\"><mn>6.75</mn>\n</math> and <math alttext=\"9.25\"><mn>9.25</mn>\n</math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice B is correct. Multiplying both sides of the given equation&nbsp;by <math alttext=\"left parenthesis 7 right parenthesis left parenthesis 9 right parenthesis\"><mo>(</mo><mn>7</mn><mo>)</mo><mo>(</mo><mn>9</mn><mo>)</mo></math>, or <math alttext=\"63\"><mn>63</mn></math>, yields&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 63 right parenthesis left parenthesis StartFraction x minus 5 Over 7 EndFraction right parenthesis equals left parenthesis 63 right parenthesis left parenthesis StartFraction x minus 5 Over 9 EndFraction right parenthesis\"><mo>(</mo><mn>63</mn><mo>)</mo><mfenced><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>7</mn></mfrac></mfenced><mo>=</mo><mo>(</mo><mn>63</mn><mo>)</mo><mfenced><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>9</mn></mfrac></mfenced></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9 left parenthesis x minus 5 right parenthesis equals 7 left parenthesis x minus 5 right parenthesis\"><mn>9</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo><mo>=</mo><mn>7</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo></math>. Subtracting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7 left parenthesis x minus 5 right parenthesis\"><mn>7</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo></math> from both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2 left parenthesis x minus 5 right parenthesis equals 0\"><mn>2</mn><mo>(</mo><mi>x</mi><mo>-</mo><mn>5</mn><mo>)</mo><mo>=</mo><mn>0</mn></math>. Dividing both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2\"><mn>2</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x minus 5 equals 0\"><mi>x</mi><mo>-</mo><mn>5</mn><mo>=</mo><mn>0</mn></math>. Therefore, if <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"StartFraction x minus 5 Over 7 EndFraction equals StartFraction x minus 5 Over 9 EndFraction\"><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>7</mn></mfrac><mo>=</mo><mfrac><mrow><mi>x</mi><mo>-</mo><mn>5</mn></mrow><mn>9</mn></mfrac></math>, then the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x minus 5\"><mi>x</mi><mo>-</mo><mn>5</mn></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0\"><mn>0</mn></math>. It follows that of the given choices, the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x minus 5\"><mi>x</mi><mo>-</mo><mn>5</mn></math> is between <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"negative 3\"><mo>-</mo><mn>3</mn></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3\"><mn>3</mn></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"eec9f1c3-9c60-420a-98bf-68fc90a14f95","correct_answer":["B"]},"createDate":1755117017725,"updateDate":1755117017725}$SATQ$::jsonb, 1755117017725, 1755117017725)
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
