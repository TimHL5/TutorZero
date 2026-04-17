-- batch 94/138 (25 rows)
INSERT INTO sat_questions (question_id, external_id, vault_id, disclosed_item_id, source, program, test_type, test_type_desc, domain, primary_class_cd, skill_cd, skill_desc, difficulty, score_band_range_cd, question_type, stimulus_html, stem_html, answer_options, correct_answer, answer_keys, rationale_html, correct_answer_extracted_from_rationale, image_count, parent_template_name, parent_template_id, template_cluster_id, template_cluster_name, origin, position, answer_style, section, raw_payload, created_date, updated_date) VALUES
    ($SATQ$1a722d7d$SATQ$, NULL, NULL, $SATQ$04172-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">Let the function&nbsp;<span class="italic">p</span> be defined as <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_000_1f67b8f7.png" alt="p of x equals, the fraction with numerator, open parenthesis, x minus c, close parenthesis, squared, plus, 160, and denominator, 2 c , end fraction"></span></span>, where&nbsp;<span class="italic">c</span> is a constant. <span class="formatted_line_break delivery_mode:PPT "></span>If <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_001_29fd9477.png" alt="p of c equals, 10"></span></span>, what is the value of <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_002_39e9eb7c.png" alt="p of 12"></span></span> ?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p>10.00</p>\n"},{"id":"b","content":"<p>10.25</p>\n"},{"id":"c","content":"<p>10.75</p>\n"},{"id":"d","content":"<p>11.00</p>\n"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice D is correct. The value of <span class="italic">p</span>(12) depends on the value of the constant <span class="italic">c</span>, so the value of <span class="italic">c</span> must first be determined. It is given that <span class="italic">p</span>(<span class="italic">c</span>) = 10. Based on the definition of <span class="italic">p</span>, it follows that:<p>
        <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_003_050c5ba0.png" alt="p of c equals, the fraction with numerator open parenthesis, c minus c, close parenthesis, squared, plus 160, and denominator 2 c, end fraction, which equals 10"></span></p><p>
        <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_004_beffdd8e.png" alt="the fraction 160 over 2 c, end fraction, equals 10"></span></p><p>
        <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_005_751be52f.png" alt="2 c equals 16"></span></p><p>
        <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_006_0b0a928b.png" alt="c equals 8"></span></p><p>This means that <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_007_6740016b.png" alt="p of x equals, the fraction with numerator open parenthesis, x minus 8, close parenthesis, squared, plus 160, and denominator 16"></span> for all values of <span class="italic">x</span>. Therefore:</p><p>
        <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_008_1eedf84e.png" alt="p of 12 equals, the fraction with numerator open parenthesis, 12 minus 8, close parenthesis, squared, plus 160, and denominator 16"></span></p><p>
        <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_009_61827a5a.png" alt="which equals the fraction with numerator 16 plus 160, and denominator 16"></span></p><p>
        <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_010_ca4dd451.png" alt="which equals 11"></span></p><p>Choice A is incorrect. It is the value of <span class="italic">p</span>(8), not <span class="italic">p</span>(12). Choices B and C are incorrect. If one of these values were correct, then<span class="italic"> x</span> = 12 and the selected value of <span class="italic">p</span>(12) could be substituted into the equation to solve for <span class="italic">c</span>. However, the values of <span class="italic">c</span> that result from choices B and C each result in <span class="italic">p</span>(<span class="italic">c</span>) &lt; 10.</p></p>
$SATQ$, false, 11, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"1a722d7d","external_id":null,"disclosed_item_id":"04172-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">Let the function&nbsp;<span class=\"italic\">p</span> be defined as <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_000_1f67b8f7.png\" alt=\"p of x equals, the fraction with numerator, open parenthesis, x minus c, close parenthesis, squared, plus, 160, and denominator, 2 c , end fraction\"></span></span>, where&nbsp;<span class=\"italic\">c</span> is a constant. <span class=\"formatted_line_break delivery_mode:PPT \"></span>If <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_001_29fd9477.png\" alt=\"p of c equals, 10\"></span></span>, what is the value of <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_002_39e9eb7c.png\" alt=\"p of 12\"></span></span> ?</p>\n","answerOptions":[{"id":"a","content":"<p>10.00</p>\n"},{"id":"b","content":"<p>10.25</p>\n"},{"id":"c","content":"<p>10.75</p>\n"},{"id":"d","content":"<p>11.00</p>\n"}],"keys":null,"correct_answer":["D"],"rationale":"<p>Choice D is correct. The value of <span class=\"italic\">p</span>(12) depends on the value of the constant <span class=\"italic\">c</span>, so the value of <span class=\"italic\">c</span> must first be determined. It is given that <span class=\"italic\">p</span>(<span class=\"italic\">c</span>) = 10. Based on the definition of <span class=\"italic\">p</span>, it follows that:<p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_003_050c5ba0.png\" alt=\"p of c equals, the fraction with numerator open parenthesis, c minus c, close parenthesis, squared, plus 160, and denominator 2 c, end fraction, which equals 10\"></span></p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_004_beffdd8e.png\" alt=\"the fraction 160 over 2 c, end fraction, equals 10\"></span></p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_005_751be52f.png\" alt=\"2 c equals 16\"></span></p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_006_0b0a928b.png\" alt=\"c equals 8\"></span></p><p>This means that <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_007_6740016b.png\" alt=\"p of x equals, the fraction with numerator open parenthesis, x minus 8, close parenthesis, squared, plus 160, and denominator 16\"></span> for all values of <span class=\"italic\">x</span>. Therefore:</p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_008_1eedf84e.png\" alt=\"p of 12 equals, the fraction with numerator open parenthesis, 12 minus 8, close parenthesis, squared, plus 160, and denominator 16\"></span></p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_009_61827a5a.png\" alt=\"which equals the fraction with numerator 16 plus 160, and denominator 16\"></span></p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1a722d7d/img_010_ca4dd451.png\" alt=\"which equals 11\"></span></p><p>Choice A is incorrect. It is the value of <span class=\"italic\">p</span>(8), not <span class=\"italic\">p</span>(12). Choices B and C are incorrect. If one of these values were correct, then<span class=\"italic\"> x</span> = 12 and the selected value of <span class=\"italic\">p</span>(12) could be substituted into the equation to solve for <span class=\"italic\">c</span>. However, the values of <span class=\"italic\">c</span> that result from choices B and C each result in <span class=\"italic\">p</span>(<span class=\"italic\">c</span>) &lt; 10.</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":11,"raw_list":{"updateDate":1691007959628,"pPcc":"SAT#P","questionId":"1a722d7d","skill_cd":"P.C.","score_band_range_cd":7,"skill_desc":"Nonlinear functions","createDate":1691007959628,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"04172-DC","external_id":null,"primary_class_cd":"P","uId":"fad52911-8e5b-4d8f-9f63-6cfbf9bf6687","difficulty":"H"},"raw_detail":{"item_id":"04172-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">Let the function&nbsp;<span class=\"italic\">p</span> be defined as <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJkAAAA2CAYAAADUFjuBAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAbSkFbcgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAD/klEQVR4Xu2Zi5GrMAxFUx4FUU56SSvbiR+SkHFkifBN4PmeGc+C44BXuvpAHuC3pFef6I+MPr1SomMAjiH9PVP36NLzT4TFguueaTiF0O6CdeKvSINsnt0j9UOaGqcYFtUwOZ4O616pRza7D+Kw3wtMWbIfZLKb8eofqRs8Op5egjkRiQjrbAcuipTJ65WdsGzyfs8T2FzA6b3pkEdRvpX3h5PrVIef8vfsXGNdgaoPYwee5zgViCcy/UzFrdm0XGv3d/Z+bwNF7llZYS9llt3yYLKmrHKwDWtpWJFpVrXz8p1xf8Easu9Vg/griGFqx7FhTD/EcwdGpTqFDmXUJbt8AChFMI35Mr9UZFPGqbMTsUTgWkrtvUohjlNtUTpxnGKsc8RQJwisiHBP2FEQLGVNJiN0fSUyFiEJRT6nKRrlukiI03ePsd3tiERGZKePEWoNvwcWrRWU46RriYyENe1FM5eujfqvaL4Z5kSmRqTDqKdQp9Dh3CidrFlsiWjn9uexZT8ln0Rm5996MojMRx0eGV36sGNTfdS7eIjTt99fRbPkXsQnkdnrlAJCuZyBhORllanRPjYKI2d4sIOCF7JLOExkQWDUIqvXfK3xX2rYT5nlDDxHivHE2JzNhg3JJ/vxnBGJIQqApRwmsmD+rVwGbcDR9nORDS7PBmvX78UKWw2qhimjlc73ovfL19fz6slyvx30f9krMkIDL9tpDJZyrbXV0bYL2RKNvLkdZWIt0/1GgRXp3YriCPI1+V7+tSlLrLXbXuZERqjQdHjrpjaDxhcEJmpfX49tdvkGYpwvGOUDUWYDAey4jRmAo+bA7AFuhkYbpUtu7IYpGjbz0GfenI1SucZ7FtmaBcF/Qm6OC2HZciNCrMuPbUajMiXr4u/T4dyw4gY3w32yKLKbnPsiIXI2c66jRCIFjSBPGe+lbI3IVKR0GPVdJ4pM7ovx6zEPZyIjjjUiI6QPi3sulMuGUTFVIhuzkzpX13nOnt6lxCIUMaHxb5KcSYzIWDjOU6Ptt/SFHs17GVHhdXhX1CaSsbrU933OQiIcp7QZoViBRt8jPIGCRhBhUBkbyyaJJhBKWTKnXmoqgWHp5bVxKf3fyXZhe8loKuC4xK0oY1vKHpXeVrPYJLAiGDmwGxGaGmDtPxu9cLVkAzfci2k7Ym0lNmzgQUhLHpW/cQp8ialNmWxfl9UGRAjOw7YpWWBFP7u2lQEgoz1ZWUG8V0ZRqQVgFhVYmbG29sYAVEiz/y4wwv66AsAmuL8ahORlK5RFsBvNYFE59DIZnvzBYlRAc/2WfbLE+0WwityHucP5SU4/M30bAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJzG4/EPMK3nnUqq5hkAAAAASUVORK5CYII=\" alt=\"p of x equals, the fraction with numerator, open parenthesis, x minus c, close parenthesis, squared, plus, 160, and denominator, 2 c , end fraction\"></span></span>, where&nbsp;<span class=\"italic\">c</span> is a constant. <span class=\"formatted_line_break delivery_mode:PPT \"></span>If <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEUAAAAaCAYAAADhVZELAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABqklEQVRYR+2WC66EIAxFWR4LYjnuxa24kz6g1IHaFnR08kw4CRlx+LS3n+iuAtsC3nlYNoDySgRgg8U7CKu97vUArBAGBCHOrn8la3Dgo4dlOgSsAZxfYt48J4xlV74//uC4OUBYNiHG/tyhT5cROS2Jgv99hODzr9kWDy56VqanyMZc3GuRbYrHp8FFoWDw9ymrurbUm/OGcgmPbPpPijbtT484jtl0NcssPlFPfUsQJd95tBmF7NiCzbAVAjdWaZcdP6bdLkilfBaW9RCt4dZ3W0MKBkFnyKIId2Yxe6IURetDeeppTmXxuACCMZqod6CKovQP7X2DpNyIKHyNxetEkRrPkChKzUpomUYOpUdr/LR8yPmDKMxhWlcbp10qgYbf22gJW5SjoN1Gu0eKiSL1ipRR9cXSpXQeNyRH56EPOFUUlu2EVBkNFO0Qwh5xsxYrx3iW7XPBeS7onWiiJLgvmm8NuCilUnEovtI2iSXU7ItDiAAaPVZmV7BESWC52L41SN8UFjxbRkhGPZUlt6PVXA9Uvq+4VU7/Fq0pTiaTyWQymUwmL8C5P9XfUwrTh3JQAAAAAElFTkSuQmCC\" alt=\"p of c equals, 10\"></span></span>, what is the value of <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAaCAYAAAAue6XIAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABZElEQVRYR+1V0RHDIAh1PAdyHHfJKtmECohpFNGkyV0/fHfeNUbh8Xg07i5gj+Cdh7gD5K3bANghegdh+z1WA4ANwkNEBW/EJGzBgU9R8+MJvXeiHv6UVZ+DLYDzMZ18iDC3PyQd2oCUTCNRiB73tLOP22GPHlyKlh8LaD/lw9WQ7fib75wLpyKU+CdIVZgIW4lbuOoq8V29xyohGfRdS7YHvleRNTpXwAY/E+TKD0W4oP4QSIxZsiRK5dGpQeOKdA/J3ijQFbLi2aZLA0EIakteIitENW9OkaWWVJffIFsGUSGKGOUopBqy2RrSKjknzzVGZGVwrWI4hjFgkqQmSypUA4AJe8kssqKoRRRBFrE+DPI/GEIo8rOv2nZYwXpkteHtwRKDcAxXtkPa0ogiLCv0yBafqutoOd+fGa4L3+Rhq24Ci7JVzUrNtOgbrNZAhUmUAR8JIK3rTfjCwsLCwsIfwrkPwO2DM3ze5Y4AAAAASUVORK5CYII=\" alt=\"p of 12\"></span></span> ?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p>10.00</p>\n"},"b":{"body":"<p>10.25</p>\n"},"c":{"body":"<p>10.75</p>\n"},"d":{"body":"<p>11.00</p>\n"}},"correct_choice":"d","rationale":"<p>Choice D is correct. The value of <span class=\"italic\">p</span>(12) depends on the value of the constant <span class=\"italic\">c</span>, so the value of <span class=\"italic\">c</span> must first be determined. It is given that <span class=\"italic\">p</span>(<span class=\"italic\">c</span>) = 10. Based on the definition of <span class=\"italic\">p</span>, it follows that:<p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALgAAAA2CAYAAAB0iVNvAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAbSkFbcgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAEUUlEQVR4Xu2ZDZKDIAyFe7weyOP0Lr1Kb+IaYjCGgODSqu37Zpj1B8GFl2egN3As43MY6Q+XYXyOIx0DcH3G12O83+7j48WiDmK/P8bpFCIH1ycIenhGMY+Tfw9wcVCLdcijGCdPftxv46Tl4nvAwUE17IbHi1vYeh++vx0Ee3gOt/E+dTyfrmATkDXAVNQXRVivE84zpj9NaVKPIufQIrJ3iFvE6Y2F3JN+Jch0Xa5j1gkQ+bGwYM6Xy3qpSqtgWpz+9bhTnVCswOVd7HV+hscuV4fMw3N68CHCJDkTIBNGh1z6BkFN+0HQ87vtWSPUCnwJnNSViZq+c18WHQTzJfBJyGHspETxKeEHJ+q0qKttX39dtMMupSyc1lzdSzsIDgDqi+/TJSq6Xi4Ilmf/P26gERZaOilBTK7Y2hw0R237LLj9ffYVOIl6eRd+36Xu8hVY95W7Dj6AJyBxVzvJHiIIOiwVLbC29v0AzLHnfTRbArfXdfoBgZ8QV+CzM9W6Xist7bcK3CKC7eXgth0t3twXjusgRTmEvMD3i2qLlva992uhm8AzQZkKPK2DReaBSLqgJ8WbqFahlGhpn6/vF0c3gWeur1KUTOqFbcKDoQnQkyITFbfn5PxNOyil9oND/qPfXgInbJoigboaO+Xo3vnXwoOx/Y/KZNdOSA88EUXRTYehzGLsRW37NvjeTUnghIhcilePXV3q/IK4w6DV/6Ot9f/LEUFVw6fH4ZsoGcM6SDuM7x4X8lz1nXy6vxrICT/p3t+CCNgbO763iNqeN8OpSfsi6QhX5U/r8Y4Z05eTBdwV0OmRFbiMq73uLoJ15VBhbtQKMnTo5JdxEufnvG2kEF3OswB4LG7sryO83SuCg8LoTxYjdCgPeA5I4rcNRnEr8YYgsQu9jPvrvkvF9gvOT4+5lTZ8gadfaA4MK/A5GnQj9hPA52mDIRBcMa/rYpEF9pAVeCbfdq97qk8FngrU1imRC5AOUHsox5e30EXgXmJeJfBMHuSRE7j8A3RYKkhRrkePuc0KvDZFESEnAjfizQs87cTDex6ALcoCT4MjWWTGKDMCt7m1BIJu0OtE2rMd8/V0kQlAiazATYYhJNmIuPAwDNFdc/kNPawbtO4fz50939Am9oJBIzmBE1anrm6XnGUW53TJEzfhiTSKOjw3FR09Chscv0QyRlP51bFopSRwglMSGVdHt96edQ6ZKJt+bMEv6QfNt7OIe0nP2FQg8rcjg98y0J6Lb0FR9rPunVmIJ4sh0B+x/1ZH5snZduToXsi9E5bUcBmXNJVBAICLYlPDKG61hmlJHwE4DZKD6y+n3ZYlWn5nAOAUiLi1U+9ZCwFwOuKWlhI3kftVDoDLEPLpScSeSyMVAZdGnDuXgngOvneHC4CPIuIt5dd2BwXbq+AyxLzbLerXTRG13DN5OgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAERutz8f7iSJ7ZAKlAAAAABJRU5ErkJggg==\" alt=\"p of c equals, the fraction with numerator open parenthesis, c minus c, close parenthesis, squared, plus 160, and denominator 2 c, end fraction, which equals 10\"></span></p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAAAsCAYAAADGiP4LAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABxElEQVRoQ+2XgXHDIAxFPR4DeRzv4lW8CUWQH7BAxGmb1iC9Oy42yMnxI33h5Qr7uni3Hf5xe8Ifm3fhgy7jWPcqzu9rXl+cD19VxQwLNtcSCGtBk7jm/e5XFptisij8fmiOzdEm4uACeX/4zdXz6Zk1SEW0YygjW5k2FPmfrrOCSKXVzwSUHzIMlCI+psalVTZEEpA2mdZpikYZJ4mYn51eoLPpImMQK/mNND8krwTi8ycPMoFqfyk3r7vEBAOuBdJq0sK8mjYPJCEIXmbcpIkyo1r3w9MTiIBIGK24lFWI+R9xuq9Lpz1M9OddBQLIVTBxhr+izF4ukAqP7JGz4b1OPFSXhQfSZW/wTZaInVjDOe0KokCC34jzNxgf4bcEuiVWYn9AX6DJX4WuIAqkvc0DSSCC+823/Qdq0yVG6wfvSE8g4sevQlmcXJdJ6XFE+iiS26szs3dptcO6FBULGN3ebUGSR9lBnKID8Bg1wIPKM0QsOSaGVJ5TA3HKTJHOFOp4tkR2kJJOpaqIfhJEaB64NJZSCTJHKqFWBuGANn1WYfM9f+Ed7HmvoYOdj+J8FKdriII15lOGYRiGYRiGYehgWb4Ajq/qaKPk/SgAAAAASUVORK5CYII=\" alt=\"the fraction 160 over 2 c, end fraction, equals 10\"></span></p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAWCAYAAABg3tToAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABKElEQVRYR+2V2w3DIAxFGY+BGIddWIVNXAwxD4NJoibtj4+EGogJXPtCDQIQwVsD+EjN+oi/fyU4eR8QPdhuv8aFFtcEOQgA+QUElwP/KWy3B3qXdOR3kHbu+tii2ELqD5Ojt6nfhP6SsvbaMVQEPn5pvyUbY9Bs0+dFl3UxySz7B1IRLoF+NtYnGWVyFdR5l8cQZAd83DWyz4rJUgct2eMaPG6CexbJ5WUCvsraCXtRKKStS5eGKKxO6ioi+fhNzkTxcfFM1QPaCUIoEzu79Lxvv3luGWeuyedj8RHkTZtJiKKEBE+iqEIrQcjqQ7To1erdRRQljA/2Oz1kCX7z1f7i5nsKafMIt+CkoZ6jZWsHb/qPOgS+xU4UQsKo7YqiKIqiKIpyF2M+r3UN2m3Mm8AAAAAASUVORK5CYII=\" alt=\"2 c equals 16\"></span></p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAWCAYAAABKbiVHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAyklEQVRIS+2T2RGFIAxFKS8FUQ690AqdxEDCDuo8xffDmWGUuNxLFvU1ViukS1raor9+DxvRSPrBAFr9H0NIFvRAOBikoGwZRIcGyhTmE7wBOoNwx0wyUgTDS2DoSf1xPKG/PVutqOdWmZyBTphPAmgoKKFXCFpiWLX/j1kBikpoCbkNisxI6ZL2rJYzfi3TTIczJQZXlaOF+6PXqeIjx7MxfMIsM2wmZqaZpLQfTNJTumkSg1W/5uaSJcZWwIbyWj04m81ms7lGqQNsPjcnIMTBDgAAAABJRU5ErkJggg==\" alt=\"c equals 8\"></span></p><p>This means that <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJUAAAA2CAYAAADOKtsPAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAbSkFbcgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAEAElEQVR4Xu2ZDZKDIAyFezwP5HF6l15lb8I2xAhEAviv9X0zzHYtKiaPl7j7AufiPr2jHzx693GOPgOwDPf3dt2rc+8/FpIXWPd2318hLLAML6L+MwrIfX2qh1tdG+0EZ+G+3vPuXu6rn+I64FQXh3f9sYL69NIb8YhFVFsPf18X3hJoXd33xsOvCbzxonVHzimkfd/5m/Q0SoHcAxZUKF2SiERYhhNJYvcQlKwjFwu9RhF2PJfnqL7vicLiJB3Xm1gu44UW7fxcGZybpDmO9vfuaI4fWlSyFn2cz+HYWXP0cz0CHxj10D4QyiXYXdbvOstpcsH3IhqOLen5WkUVxDp1H6Ll3tZzxcIbDv0+lEwdCJ0MDsx6QQks0HL5I2IXjZ0kjHKy5jgVIfMnovLro3vx93SIRjzPEl44t20Nt4ctOy+W0a2GHagDvZZUJPk1cJKXi3lbUaXrFGeSucHt0ntZx3+WUtIkaPTR6gkkCfSxNOKkSu+ROJUh3JLocyxZT0xNVPp4XNogqoGSqAhdprZABKQTm+s95opKIyLZyqn0dWLBoPwNlEQVytPypOaYs6Nroq+xmaiMjTAVVdtm+WmkFOWDxcHNvZWtoZwg7VSU5OUJ2UxUxvGk/A2x1HO2jt8toIeOAyEBHF/lDWdZgy6rIrRJMuneK/4Vs5WoCNlocq3cmnWs9ojdCC+gfnHLOfYkTtwoqDjhw5q23m0srDByidSC35uSqAgRlozcvNA20NhLUH6h7RefO38tZwi5haPjcCuW7LbYPYZDu3L0/VqgHX+kS90GLnvzG80z3INt+3xnGMvtxUS+O/LgtJPi3kCLwCdK9SJ+vgoYXyNNqHePjfsYcGFCQxuElNvpJBYtNDm3dB5huVx879LQ9wUXJ/s6GblX+D1fTka3ylxHQKP6MPjVMnWRqahsUYgo6aNV4kqiXAnfF+PskeKdRolhjqgI7qPsJt4SFcrfDyLimYhqcB9JZklU3EdR8m3Rofw9iNEplKi8UKK3OhGfdgwunexoOccT+D7z/xwBbgg7Uuf6vh9dhIUydRUSTdyEa0Fa5xH+u6f9reapsBDIQYYySCJpEMYoqMh9rFJKaEE+lVIckhceGobrXx5fshodxCqBNdBPMbyB86KS7yS2smlvtxFFJHMWvqSMUX/2dJcKLzPTeFt54HNu1ofKbpjrPPywdecZy+HDeyl2IYpX3n2kr63FE4AJVklj0ZEj8fd0iMbT3R00UBYVCSm4lTTtEBYoUhOVPn7LngocS01UurcNvRhEBQxMUal/iQkQFahiiso4jvIHqljiIXQJRKMOmiiJihBhyYCgAAAAAAAAAAAAAAAAAAAAAAAAAAAAOIjX6x8+PzV8KmY3WQAAAABJRU5ErkJggg==\" alt=\"p of x equals, the fraction with numerator open parenthesis, x minus 8, close parenthesis, squared, plus 160, and denominator 16\"></span> for all values of <span class=\"italic\">x</span>. Therefore:</p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKcAAAA2CAYAAACiLIkKAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAbSkFbcgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAEUElEQVR4Xu2ZDZKDIAxGe7weyOP0Lr1Kb8ISQhSBxD+0i/3eDLNKrSI8Eug+wD1w78HRHy6DeztHxwB8F/d5uefj6V4fFjKI+nw5fwpBeyYf2P+M87q9ng83+LAYqwJBRl8ZT/11bzcgevYND2IfYgpr2ozIeQPew8M9/SjH026w5GN5y+gKOoLTuZ76NHEltdKhlNaC07P9n7EUaVxL7+GdzhPTmszybDoMJVlmCPNNW18Z61I+r2e1AwnpxHwgJjEnqbVr98JilvcvRKT6pP183XkDbr1n3kaJ3um1efvObm/XkAT5gBNBWt93VAo5lc0Tf+f4BkRLyUHYREQijfxauyy2pH+zT+KEzevTPtGuqb3Xz8OdVQ7mNJvLmW/B32sgp5KWq3IGufgdUnmmYrdnrZxLfbJmYmjv1WpS34p0YGPVDBm4tXIGeRrtjsO9kgFjOcqB1SbYWrZETkLrk2li8udURSW9ThO41aS+FS3l1OQ5wjwS1tv5v+Sct1MipVzL12hy7n+HW9JKznFg/AhzzYTcgw6tksoha7NZ5MwGWlh6h5w97UnR+kT6IK+frTkh53pEgq0DkTJGt4qYe9myNuM27k+J8o5aH+QsyZnfJxUPaX0jtLbT5FuSk9eFtrx72BJhQt2BdW4zOZUJVcq5btIBjzW4lpwSMVuLSdgDPR9Ea3KtoZmcSv0srcdMlV8TJrlvQDxthxaq97CUZs/AeuZSlDgixRLFbr3yTG7fsb5vJSfBk2e6V7XNSSStnTfD6hxtRosMdCildYdvRYue2kCM68xqaZeeZNkgpdaOWh+fiSUnIYJKqV0377+TxloVMDYw/2wSM4kIlWs1Wc6EO+zaSbGXsR8v7qNu4JBdRol0VhRyKksA/k4ibOz8K9M76AARg8RK00ouShDKV8bTAEdBks8O/Tn8vbnooS67P/hxZE1BhyJkLeWRuFpkW1qX5IRJkKUoLTKn7bOK1jbQMfVd4RRNp3N9fbZFTo6apUx8jz7WgOAiqim2kNMWZ62cImb93372BDgAPxOlhzInpNhMljPkHDdOFTEJTU65Nx1aBWn9ZoiEhZwx1cuAH5VTNlqWvEvPAD/GGJUyOUOUSzYsIrEWnSw5JWJaYhJ8j3JDBH4U+R1yGIYxYvG6sIxgFP00wTQ5a5stjfBc/MgMhGkzFNO7r9L+a2LJo8k5rjOrZR4lLfl/HTMwxABAh6FkWbBbwlpwZbRaSu1HYLmx3qwhv3DU5JTP5nuDG0zyfEe+hrNSL0VYRM2SNPPk/aONH3+n87W7zLKtkZBfvk2UG38twFqzgKMi9bO1nke2AV9E3WwGeSlC8udURQUZCFyGLScJOUXPLb+OAHCYJTnz+lusOUEfLMmZ7xmmtSrkBCejyhlTOOQEX0OVU6lHWgeXoUlI5KkdGyJwKZachAgqBWICAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACd8Hj8AZBUBbZnxkB9AAAAAElFTkSuQmCC\" alt=\"p of 12 equals, the fraction with numerator open parenthesis, 12 minus 8, close parenthesis, squared, plus 160, and denominator 16\"></span></p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFcAAAAsCAYAAAAQLSRuAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABxElEQVRoQ+2ZgXGDMAxFGY+BGIddWIVNVIRRTYRli9ih0Px35yuxFSJ9JDl1uquYho76cabt5Qs0j9Qvf/hyHcOUtKul1geahrje9bTc6mBzOeJUKjBZW2JZ14gmGgzbGmp9CDZRUP36T5jHnj98HTowopnG/jgf3jMsIdqOiwAiSI5aHywbroRPVVmR+HTT2RhK8b2n7xW3hQ/SMvRneZLg41ilHgJn58I6T/HQdinOZC5T44P1AOJ7bysuBxMdlywpCdxW3LwPwcYSN5/1H6cUmJ5PlZvcgy9zwxK7xodHi6sF8Tgt92yVuTkfntkWjI3iUnEdPlg2997QjHmP083Edfhwy69ighUAo8tSbyYWrcRlPD7oavJU1yXkAmMkOBklYd+hhQ8hm8XmBsICAB6N9CW+zA3vJgLAYzhk+ZeOI2gLAAAALO7wi/K/RM4CUuLK2u9BTOFcAezYH6BowTy/5m5TQBOP+tLZGNoBTqyqsEo9iM8Z+vqdHS3hBHlxWdDdwbbzAB5slMTV8+i5JyiJq/9Fj70a4hYxxd1aAMStwBTXmEdbOIElIqNbAza0k+TEZURgGRAWAAAAAAAAAL6XrvsBByxyngmQwwcAAAAASUVORK5CYII=\" alt=\"which equals the fraction with numerator 16 plus 160, and denominator 16\"></span></p><p>\n        <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAWCAYAAABKbiVHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAc0lEQVRIS+3R0QmAMAwE0IzXgTJOd8kq3eQk1vplQ7AKIvcgWOHwUpQ3mApKbTheL2Uyy2DqBWFRJrOs1bKX+MyKMpll/bYFtRl0UpTJnIAe8mM0avDnpfGNqCiTecQ/lxkhP0bD33QHl5n51DJERJQisgEZE955Q1EkPQAAAABJRU5ErkJggg==\" alt=\"which equals 11\"></span></p><p>Choice A is incorrect. It is the value of <span class=\"italic\">p</span>(8), not <span class=\"italic\">p</span>(12). Choices B and C are incorrect. If one of these values were correct, then<span class=\"italic\"> x</span> = 12 and the selected value of <span class=\"italic\">p</span>(12) could be substituted into the equation to solve for <span class=\"italic\">c</span>. However, the values of <span class=\"italic\">c</span> that result from choices B and C each result in <span class=\"italic\">p</span>(<span class=\"italic\">c</span>) &lt; 10.</p></p>\n"}},"createDate":1691007959628,"updateDate":1691007959628}$SATQ$::jsonb, 1691007959628, 1691007959628),
    ($SATQ$1be909aa$SATQ$, $SATQ$d469dd2b-510b-49e3-b521-1271ecbbfa1e$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">Which expression is equivalent to <math alttext="StartFraction h Superscript 15 Baseline q Superscript 7 Baseline Over h Superscript 5 Baseline q Superscript 21 Baseline EndFraction"><mfrac><mrow><msup><mi>h</mi><mn>15</mn></msup><msup><mi>q</mi><mn>7</mn></msup></mrow><mrow><msup><mi>h</mi><mn>5</mn></msup><msup><mi>q</mi><mn>21</mn></msup></mrow></mfrac></math>, where&nbsp;<math alttext="h greater than 0"><mi>h</mi><mo>&#62;</mo><mn>0</mn></math> and <math alttext="q greater than 0"><mi>q</mi><mo>&#62;</mo><mn>0</mn></math>?</p>$SATQ$, $SATQ$[{"id":"eda3a06b-9614-4ae2-9049-04d07bf67c53","content":"<p><math alttext=\"StartFraction h Superscript 10 Baseline Over q Superscript 14 Baseline EndFraction\"><mrow>\n\t<mfrac>\n\t\t<msup>\n\t\t\t<mi>h</mi>\n\t\t\t<mn>10</mn>\n\t\t</msup>\n\t\t<msup>\n\t\t\t<mi>q</mi>\n\t\t\t<mn>14</mn>\n\t\t</msup>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"41f72cda-2d32-4c0f-ad1c-fb5c056b6ee2","content":"<p><math alttext=\"StartFraction h cubed Over q cubed EndFraction\"><mrow>\n\t<mfrac>\n\t\t<msup>\n\t\t\t<mi>h</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t\t<msup>\n\t\t\t<mi>q</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"f7033d81-2500-47ff-8135-f68cee36a198","content":"<p><math alttext=\"h Superscript 10 Baseline q Superscript 14\"><mrow>\n\t<msup>\n\t\t<mi>h</mi>\n\t\t<mn>10</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>q</mi>\n\t\t<mn>14</mn>\n\t</msup>\n</mrow>\n</math></p>"},{"id":"3586d3c4-8ceb-4616-b5f7-fdfac2e7c39e","content":"<p><math alttext=\"h cubed q cubed\"><mrow>\n\t<msup>\n\t\t<mi>h</mi>\n\t\t<mn>3</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>q</mi>\n\t\t<mn>3</mn>\n\t</msup>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["eda3a06b-9614-4ae2-9049-04d07bf67c53"]$SATQ$::jsonb, $SATQ$<p>Choice A is correct. For positive values of <math alttext="a"><mi>a</mi>
</math>, <math alttext="StartFraction a Superscript m Baseline Over a Superscript n Baseline EndFraction equals a Superscript left parenthesis m minus n right parenthesis"><mfrac><msup><mi>a</mi><mi>m</mi></msup><msup><mi>a</mi><mi>n</mi></msup></mfrac><mo>=</mo><msup><mi>a</mi><mfenced><mrow><mi>m</mi><mo>-</mo><mi>n</mi></mrow></mfenced></msup></math>, where <math alttext="m"><mi>m</mi>
</math> and <math alttext="n"><mi>n</mi>
</math> are integers. Since it's given that <math alttext="h greater than 0"><mi>h</mi><mo>&gt;</mo><mn>0</mn></math> and <math alttext="q greater than 0"><mi>q</mi><mo>&gt;</mo><mn>0</mn></math>, this property can be applied to rewrite the given expression as <math alttext="left parenthesis h Superscript left parenthesis 15 minus 5 right parenthesis Baseline right parenthesis left parenthesis q Superscript left parenthesis 7 minus 21 right parenthesis Baseline right parenthesis"><mfenced><msup><mi>h</mi><mfenced><mrow><mn>15</mn><mo>-</mo><mn>5</mn></mrow></mfenced></msup></mfenced><mfenced><msup><mi>q</mi><mfenced><mrow><mn>7</mn><mo>-</mo><mn>21</mn></mrow></mfenced></msup></mfenced></math>, which is equivalent to <math alttext="h Superscript 10 Baseline q Superscript negative 14"><msup><mi>h</mi><mn>10</mn></msup><msup><mi>q</mi><mrow><mo>-</mo><mn>14</mn></mrow></msup></math>. For positive values of <math alttext="a"><mi>a</mi>
</math>, <math alttext="a Superscript negative n Baseline equals StartFraction 1 Over a Superscript n Baseline EndFraction"><msup><mi>a</mi><mrow><mo>-</mo><mi>n</mi></mrow></msup><mo>=</mo><mfrac><mn>1</mn><msup><mi>a</mi><mi>n</mi></msup></mfrac></math>. This property can be applied to rewrite the expression <math alttext="h Superscript 10 Baseline q Superscript negative 14"><msup><mi>h</mi><mn>10</mn></msup><msup><mi>q</mi><mrow><mo>-</mo><mn>14</mn></mrow></msup></math> as <math alttext="left parenthesis h Superscript 10 Baseline right parenthesis left parenthesis StartFraction 1 Over q Superscript 14 Baseline EndFraction right parenthesis"><mfenced><msup><mi>h</mi><mn>10</mn></msup></mfenced><mfenced><mfrac><mn>1</mn><msup><mi>q</mi><mn>14</mn></msup></mfrac></mfenced></math>, which is equivalent to <math alttext="StartFraction h Superscript 10 Baseline Over q Superscript 14 Baseline EndFraction"><mfrac><msup><mi>h</mi><mn>10</mn></msup><msup><mi>q</mi><mn>14</mn></msup></mfrac></math>.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"1be909aa","external_id":"d469dd2b-510b-49e3-b521-1271ecbbfa1e","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"9f846287-d5bc-4224-b0b4-f37a1db1e82c","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">Which expression is equivalent to <math alttext=\"StartFraction h Superscript 15 Baseline q Superscript 7 Baseline Over h Superscript 5 Baseline q Superscript 21 Baseline EndFraction\"><mfrac><mrow><msup><mi>h</mi><mn>15</mn></msup><msup><mi>q</mi><mn>7</mn></msup></mrow><mrow><msup><mi>h</mi><mn>5</mn></msup><msup><mi>q</mi><mn>21</mn></msup></mrow></mfrac></math>, where&nbsp;<math alttext=\"h greater than 0\"><mi>h</mi><mo>&#62;</mo><mn>0</mn></math> and <math alttext=\"q greater than 0\"><mi>q</mi><mo>&#62;</mo><mn>0</mn></math>?</p>","answerOptions":[{"id":"eda3a06b-9614-4ae2-9049-04d07bf67c53","content":"<p><math alttext=\"StartFraction h Superscript 10 Baseline Over q Superscript 14 Baseline EndFraction\"><mrow>\n\t<mfrac>\n\t\t<msup>\n\t\t\t<mi>h</mi>\n\t\t\t<mn>10</mn>\n\t\t</msup>\n\t\t<msup>\n\t\t\t<mi>q</mi>\n\t\t\t<mn>14</mn>\n\t\t</msup>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"41f72cda-2d32-4c0f-ad1c-fb5c056b6ee2","content":"<p><math alttext=\"StartFraction h cubed Over q cubed EndFraction\"><mrow>\n\t<mfrac>\n\t\t<msup>\n\t\t\t<mi>h</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t\t<msup>\n\t\t\t<mi>q</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"f7033d81-2500-47ff-8135-f68cee36a198","content":"<p><math alttext=\"h Superscript 10 Baseline q Superscript 14\"><mrow>\n\t<msup>\n\t\t<mi>h</mi>\n\t\t<mn>10</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>q</mi>\n\t\t<mn>14</mn>\n\t</msup>\n</mrow>\n</math></p>"},{"id":"3586d3c4-8ceb-4616-b5f7-fdfac2e7c39e","content":"<p><math alttext=\"h cubed q cubed\"><mrow>\n\t<msup>\n\t\t<mi>h</mi>\n\t\t<mn>3</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>q</mi>\n\t\t<mn>3</mn>\n\t</msup>\n</mrow>\n</math></p>"}],"keys":["eda3a06b-9614-4ae2-9049-04d07bf67c53"],"correct_answer":["A"],"rationale":"<p>Choice A is correct. For positive values of <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"StartFraction a Superscript m Baseline Over a Superscript n Baseline EndFraction equals a Superscript left parenthesis m minus n right parenthesis\"><mfrac><msup><mi>a</mi><mi>m</mi></msup><msup><mi>a</mi><mi>n</mi></msup></mfrac><mo>=</mo><msup><mi>a</mi><mfenced><mrow><mi>m</mi><mo>-</mo><mi>n</mi></mrow></mfenced></msup></math>, where <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"n\"><mi>n</mi>\n</math> are integers. Since it's given that <math alttext=\"h greater than 0\"><mi>h</mi><mo>&gt;</mo><mn>0</mn></math> and <math alttext=\"q greater than 0\"><mi>q</mi><mo>&gt;</mo><mn>0</mn></math>, this property can be applied to rewrite the given expression as <math alttext=\"left parenthesis h Superscript left parenthesis 15 minus 5 right parenthesis Baseline right parenthesis left parenthesis q Superscript left parenthesis 7 minus 21 right parenthesis Baseline right parenthesis\"><mfenced><msup><mi>h</mi><mfenced><mrow><mn>15</mn><mo>-</mo><mn>5</mn></mrow></mfenced></msup></mfenced><mfenced><msup><mi>q</mi><mfenced><mrow><mn>7</mn><mo>-</mo><mn>21</mn></mrow></mfenced></msup></mfenced></math>, which is equivalent to <math alttext=\"h Superscript 10 Baseline q Superscript negative 14\"><msup><mi>h</mi><mn>10</mn></msup><msup><mi>q</mi><mrow><mo>-</mo><mn>14</mn></mrow></msup></math>. For positive values of <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"a Superscript negative n Baseline equals StartFraction 1 Over a Superscript n Baseline EndFraction\"><msup><mi>a</mi><mrow><mo>-</mo><mi>n</mi></mrow></msup><mo>=</mo><mfrac><mn>1</mn><msup><mi>a</mi><mi>n</mi></msup></mfrac></math>. This property can be applied to rewrite the expression <math alttext=\"h Superscript 10 Baseline q Superscript negative 14\"><msup><mi>h</mi><mn>10</mn></msup><msup><mi>q</mi><mrow><mo>-</mo><mn>14</mn></mrow></msup></math> as <math alttext=\"left parenthesis h Superscript 10 Baseline right parenthesis left parenthesis StartFraction 1 Over q Superscript 14 Baseline EndFraction right parenthesis\"><mfenced><msup><mi>h</mi><mn>10</mn></msup></mfenced><mfenced><mfrac><mn>1</mn><msup><mi>q</mi><mn>14</mn></msup></mfrac></mfenced></math>, which is equivalent to <math alttext=\"StartFraction h Superscript 10 Baseline Over q Superscript 14 Baseline EndFraction\"><mfrac><msup><mi>h</mi><mn>10</mn></msup><msup><mi>q</mi><mn>14</mn></msup></mfrac></math>.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554987,"pPcc":"SAT#P","questionId":"1be909aa","skill_cd":"P.A.","score_band_range_cd":4,"skill_desc":"Equivalent expressions","createDate":1743430554987,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"d469dd2b-510b-49e3-b521-1271ecbbfa1e","primary_class_cd":"P","uId":"9f846287-d5bc-4224-b0b4-f37a1db1e82c","difficulty":"M"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">Which expression is equivalent to <math alttext=\"StartFraction h Superscript 15 Baseline q Superscript 7 Baseline Over h Superscript 5 Baseline q Superscript 21 Baseline EndFraction\"><mfrac><mrow><msup><mi>h</mi><mn>15</mn></msup><msup><mi>q</mi><mn>7</mn></msup></mrow><mrow><msup><mi>h</mi><mn>5</mn></msup><msup><mi>q</mi><mn>21</mn></msup></mrow></mfrac></math>, where&nbsp;<math alttext=\"h greater than 0\"><mi>h</mi><mo>&#62;</mo><mn>0</mn></math> and <math alttext=\"q greater than 0\"><mi>q</mi><mo>&#62;</mo><mn>0</mn></math>?</p>","keys":["eda3a06b-9614-4ae2-9049-04d07bf67c53"],"answerOptions":[{"id":"eda3a06b-9614-4ae2-9049-04d07bf67c53","content":"<p><math alttext=\"StartFraction h Superscript 10 Baseline Over q Superscript 14 Baseline EndFraction\"><mrow>\n\t<mfrac>\n\t\t<msup>\n\t\t\t<mi>h</mi>\n\t\t\t<mn>10</mn>\n\t\t</msup>\n\t\t<msup>\n\t\t\t<mi>q</mi>\n\t\t\t<mn>14</mn>\n\t\t</msup>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"41f72cda-2d32-4c0f-ad1c-fb5c056b6ee2","content":"<p><math alttext=\"StartFraction h cubed Over q cubed EndFraction\"><mrow>\n\t<mfrac>\n\t\t<msup>\n\t\t\t<mi>h</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t\t<msup>\n\t\t\t<mi>q</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"f7033d81-2500-47ff-8135-f68cee36a198","content":"<p><math alttext=\"h Superscript 10 Baseline q Superscript 14\"><mrow>\n\t<msup>\n\t\t<mi>h</mi>\n\t\t<mn>10</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>q</mi>\n\t\t<mn>14</mn>\n\t</msup>\n</mrow>\n</math></p>"},{"id":"3586d3c4-8ceb-4616-b5f7-fdfac2e7c39e","content":"<p><math alttext=\"h cubed q cubed\"><mrow>\n\t<msup>\n\t\t<mi>h</mi>\n\t\t<mn>3</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>q</mi>\n\t\t<mn>3</mn>\n\t</msup>\n</mrow>\n</math></p>"}],"rationale":"<p>Choice A is correct. For positive values of <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"StartFraction a Superscript m Baseline Over a Superscript n Baseline EndFraction equals a Superscript left parenthesis m minus n right parenthesis\"><mfrac><msup><mi>a</mi><mi>m</mi></msup><msup><mi>a</mi><mi>n</mi></msup></mfrac><mo>=</mo><msup><mi>a</mi><mfenced><mrow><mi>m</mi><mo>-</mo><mi>n</mi></mrow></mfenced></msup></math>, where <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"n\"><mi>n</mi>\n</math> are integers. Since it's given that <math alttext=\"h greater than 0\"><mi>h</mi><mo>&gt;</mo><mn>0</mn></math> and <math alttext=\"q greater than 0\"><mi>q</mi><mo>&gt;</mo><mn>0</mn></math>, this property can be applied to rewrite the given expression as <math alttext=\"left parenthesis h Superscript left parenthesis 15 minus 5 right parenthesis Baseline right parenthesis left parenthesis q Superscript left parenthesis 7 minus 21 right parenthesis Baseline right parenthesis\"><mfenced><msup><mi>h</mi><mfenced><mrow><mn>15</mn><mo>-</mo><mn>5</mn></mrow></mfenced></msup></mfenced><mfenced><msup><mi>q</mi><mfenced><mrow><mn>7</mn><mo>-</mo><mn>21</mn></mrow></mfenced></msup></mfenced></math>, which is equivalent to <math alttext=\"h Superscript 10 Baseline q Superscript negative 14\"><msup><mi>h</mi><mn>10</mn></msup><msup><mi>q</mi><mrow><mo>-</mo><mn>14</mn></mrow></msup></math>. For positive values of <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"a Superscript negative n Baseline equals StartFraction 1 Over a Superscript n Baseline EndFraction\"><msup><mi>a</mi><mrow><mo>-</mo><mi>n</mi></mrow></msup><mo>=</mo><mfrac><mn>1</mn><msup><mi>a</mi><mi>n</mi></msup></mfrac></math>. This property can be applied to rewrite the expression <math alttext=\"h Superscript 10 Baseline q Superscript negative 14\"><msup><mi>h</mi><mn>10</mn></msup><msup><mi>q</mi><mrow><mo>-</mo><mn>14</mn></mrow></msup></math> as <math alttext=\"left parenthesis h Superscript 10 Baseline right parenthesis left parenthesis StartFraction 1 Over q Superscript 14 Baseline EndFraction right parenthesis\"><mfenced><msup><mi>h</mi><mn>10</mn></msup></mfenced><mfenced><mfrac><mn>1</mn><msup><mi>q</mi><mn>14</mn></msup></mfrac></mfenced></math>, which is equivalent to <math alttext=\"StartFraction h Superscript 10 Baseline Over q Superscript 14 Baseline EndFraction\"><mfrac><msup><mi>h</mi><mn>10</mn></msup><msup><mi>q</mi><mn>14</mn></msup></mfrac></math>.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"d469dd2b-510b-49e3-b521-1271ecbbfa1e","correct_answer":["A"]},"createDate":1743430554987,"updateDate":1743430554987}$SATQ$::jsonb, 1743430554987, 1743430554987),
    ($SATQ$1ce9ffcd$SATQ$, $SATQ$a5f0747c-79a9-4cc0-a9eb-aa9d68a2d5e8$SATQ$::uuid, $SATQ$dc0aecc7-863a-4b96-87ab-7a6035cd7816$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="minus 9 x squared plus 30 x plus c equals 0"><mrow>
	<mrow>
		<mrow>
			<mo>-</mo>
			<mn>9</mn>
			<msup>
				<mi>x</mi>
				<mn>2</mn>
			</msup>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>30</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mi>c</mi>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math></p>
<p style="text-align: left;">In the given equation, <math alttext="c"><mi>c</mi>
</math> is a constant. The equation has exactly one solution. What is the value of <math alttext="c"><mi>c</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"0907ba90-392e-42f7-b03e-2ea58ca5cd89","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"b4268726-7d75-4dd4-be2a-210783f8d829","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"bf72983f-7fb8-4f91-8e29-bcefd0623e7c","content":"<p><math alttext=\"negative 25\"><mo>-</mo><mn>25</mn>\n</math></p>"},{"id":"af05fcd8-e734-4cc2-b0dc-96771fce957d","content":"<p><math alttext=\"negative 53\"><mo>-</mo><mn>53</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["bf72983f-7fb8-4f91-8e29-bcefd0623e7c"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. It's given that the equation <math alttext="minus 9 x squared plus 30 x plus c equals 0"><mo>-</mo><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>30</mn><mi>x</mi><mo>+</mo><mi>c</mi><mo>=</mo><mn>0</mn></math> has exactly one solution. A quadratic equation of the form <math alttext="a x squared plus b x plus c equals 0"><mrow>
	<mrow>
		<mrow>
			<mi>a</mi>
			<msup>
				<mi>x</mi>
				<mn>2</mn>
			</msup>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mi>b</mi>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mi>c</mi>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math> has exactly one solution if and only if its discriminant, <math alttext="minus 4 a c plus b squared"><mrow>
	<mrow>
		<mo>-</mo>
		<mn>4</mn>
		<mi>a</mi>
		<mi>c</mi>
	</mrow>
	<mo>+</mo>
	<msup>
		<mi>b</mi>
		<mn>2</mn>
	</msup>
</mrow>
</math>, is equal to zero. It follows that for the given equation, <math alttext="a equals negative 9"><mrow>
	<mi>a</mi>
	<mo>=</mo>
	<mo>-</mo><mn>9</mn>
</mrow>
</math> and <math alttext="b equals 30"><mrow>
	<mi>b</mi>
	<mo>=</mo>
	<mn>30</mn>
</mrow>
</math>. Substituting <math alttext="negative 9"><mo>-</mo><mn>9</mn>
</math> for <math alttext="a"><mi>a</mi>
</math> and <math alttext="30"><mn>30</mn>
</math> for <math alttext="b"><mi>b</mi>
</math> into <math alttext="b squared minus 4 a c"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math> &nbsp;yields <math alttext="30 squared minus 4 left parenthesis negative 9 right parenthesis left parenthesis c right parenthesis"><msup><mn>30</mn><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mrow><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>c</mi></mfenced></math>, or <math alttext="900 plus 36 c"><mn>900</mn><mo>+</mo><mn>36</mn><mi>c</mi></math>. Since the discriminant must equal zero, <math alttext="900 plus 36 c equals 0"><mn>900</mn><mo>+</mo><mn>36</mn><mi>c</mi><mo>=</mo><mn>0</mn></math>. Subtracting <math alttext="36 c"><mrow>
	<mn>36</mn>
	<mi>c</mi>
</mrow>
</math> from both sides of this equation yields <math alttext="900 equals minus 36 c"><mrow>
	<mn>900</mn>
	<mo>=</mo>
	<mrow>
		<mo>-</mo>
		<mn>36</mn>
		<mi>c</mi>
	</mrow>
</mrow>
</math>. Dividing each side of this equation by <math alttext="negative 36"><mo>-</mo><mn>36</mn>
</math> yields <math alttext="negative 25 equals c"><mrow>
	<mo>-</mo><mn>25</mn>
	<mo>=</mo>
	<mi>c</mi>
</mrow>
</math>. Therefore, the value of <math alttext="c"><mi>c</mi>
</math> is <math alttext="negative 25"><mo>-</mo><mn>25</mn>
</math>.&nbsp;</p>
<p>Choice A is incorrect. If the value of <math alttext="c"><mi>c</mi>
</math> is <math alttext="3"><mn>3</mn>
</math>, this would yield a discriminant that is greater than zero. Therefore, the given equation would have two solutions, rather than exactly one solution.</p>
<p>Choice B is incorrect. If the value of <math alttext="c"><mi>c</mi>
</math> is <math alttext="0"><mn>0</mn>
</math>, this would yield a discriminant that is greater than zero. Therefore, the given equation would have two solutions, rather than exactly one solution.</p>
<p>Choice D is incorrect. If the value of <math alttext="c"><mi>c</mi>
</math> is <math alttext="negative 53"><mo>-</mo><mn>53</mn>
</math>, this would yield a discriminant that is less than zero. Therefore, the given equation would have no real solutions, rather than exactly one solution.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"1ce9ffcd","external_id":"a5f0747c-79a9-4cc0-a9eb-aa9d68a2d5e8","disclosed_item_id":null,"source":"qbank","vaultid":"dc0aecc7-863a-4b96-87ab-7a6035cd7816","uId":"715cca3c-12e3-4e96-8e2c-3de141c0be29","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"minus 9 x squared plus 30 x plus c equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>9</mn>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>30</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>c</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">In the given equation, <math alttext=\"c\"><mi>c</mi>\n</math> is a constant. The equation has exactly one solution. What is the value of <math alttext=\"c\"><mi>c</mi>\n</math>?</p>","answerOptions":[{"id":"0907ba90-392e-42f7-b03e-2ea58ca5cd89","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"b4268726-7d75-4dd4-be2a-210783f8d829","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"bf72983f-7fb8-4f91-8e29-bcefd0623e7c","content":"<p><math alttext=\"negative 25\"><mo>-</mo><mn>25</mn>\n</math></p>"},{"id":"af05fcd8-e734-4cc2-b0dc-96771fce957d","content":"<p><math alttext=\"negative 53\"><mo>-</mo><mn>53</mn>\n</math></p>"}],"keys":["bf72983f-7fb8-4f91-8e29-bcefd0623e7c"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It's given that the equation <math alttext=\"minus 9 x squared plus 30 x plus c equals 0\"><mo>-</mo><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>30</mn><mi>x</mi><mo>+</mo><mi>c</mi><mo>=</mo><mn>0</mn></math> has exactly one solution. A quadratic equation of the form <math alttext=\"a x squared plus b x plus c equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>a</mi>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mi>b</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>c</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> has exactly one solution if and only if its discriminant, <math alttext=\"minus 4 a c plus b squared\"><mrow>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mn>4</mn>\n\t\t<mi>a</mi>\n\t\t<mi>c</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<msup>\n\t\t<mi>b</mi>\n\t\t<mn>2</mn>\n\t</msup>\n</mrow>\n</math>, is equal to zero. It follows that for the given equation, <math alttext=\"a equals negative 9\"><mrow>\n\t<mi>a</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>9</mn>\n</mrow>\n</math> and <math alttext=\"b equals 30\"><mrow>\n\t<mi>b</mi>\n\t<mo>=</mo>\n\t<mn>30</mn>\n</mrow>\n</math>. Substituting <math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math> and <math alttext=\"30\"><mn>30</mn>\n</math> for <math alttext=\"b\"><mi>b</mi>\n</math> into <math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math> &nbsp;yields <math alttext=\"30 squared minus 4 left parenthesis negative 9 right parenthesis left parenthesis c right parenthesis\"><msup><mn>30</mn><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mrow><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>c</mi></mfenced></math>, or <math alttext=\"900 plus 36 c\"><mn>900</mn><mo>+</mo><mn>36</mn><mi>c</mi></math>. Since the discriminant must equal zero, <math alttext=\"900 plus 36 c equals 0\"><mn>900</mn><mo>+</mo><mn>36</mn><mi>c</mi><mo>=</mo><mn>0</mn></math>. Subtracting <math alttext=\"36 c\"><mrow>\n\t<mn>36</mn>\n\t<mi>c</mi>\n</mrow>\n</math> from both sides of this equation yields <math alttext=\"900 equals minus 36 c\"><mrow>\n\t<mn>900</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mn>36</mn>\n\t\t<mi>c</mi>\n\t</mrow>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"negative 36\"><mo>-</mo><mn>36</mn>\n</math> yields <math alttext=\"negative 25 equals c\"><mrow>\n\t<mo>-</mo><mn>25</mn>\n\t<mo>=</mo>\n\t<mi>c</mi>\n</mrow>\n</math>. Therefore, the value of <math alttext=\"c\"><mi>c</mi>\n</math> is <math alttext=\"negative 25\"><mo>-</mo><mn>25</mn>\n</math>.&nbsp;</p>\n<p>Choice A is incorrect. If the value of <math alttext=\"c\"><mi>c</mi>\n</math> is <math alttext=\"3\"><mn>3</mn>\n</math>, this would yield a discriminant that is greater than zero. Therefore, the given equation would have two solutions, rather than exactly one solution.</p>\n<p>Choice B is incorrect. If the value of <math alttext=\"c\"><mi>c</mi>\n</math> is <math alttext=\"0\"><mn>0</mn>\n</math>, this would yield a discriminant that is greater than zero. Therefore, the given equation would have two solutions, rather than exactly one solution.</p>\n<p>Choice D is incorrect. If the value of <math alttext=\"c\"><mi>c</mi>\n</math> is <math alttext=\"negative 53\"><mo>-</mo><mn>53</mn>\n</math>, this would yield a discriminant that is less than zero. Therefore, the given equation would have no real solutions, rather than exactly one solution.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959824,"pPcc":"SAT#P","questionId":"1ce9ffcd","skill_cd":"P.B.","score_band_range_cd":7,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1691007959824,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"a5f0747c-79a9-4cc0-a9eb-aa9d68a2d5e8","primary_class_cd":"P","uId":"715cca3c-12e3-4e96-8e2c-3de141c0be29","difficulty":"H"},"raw_detail":{"keys":["bf72983f-7fb8-4f91-8e29-bcefd0623e7c"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It's given that the equation <math alttext=\"minus 9 x squared plus 30 x plus c equals 0\"><mo>-</mo><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>30</mn><mi>x</mi><mo>+</mo><mi>c</mi><mo>=</mo><mn>0</mn></math> has exactly one solution. A quadratic equation of the form <math alttext=\"a x squared plus b x plus c equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>a</mi>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mi>b</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>c</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> has exactly one solution if and only if its discriminant, <math alttext=\"minus 4 a c plus b squared\"><mrow>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mn>4</mn>\n\t\t<mi>a</mi>\n\t\t<mi>c</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<msup>\n\t\t<mi>b</mi>\n\t\t<mn>2</mn>\n\t</msup>\n</mrow>\n</math>, is equal to zero. It follows that for the given equation, <math alttext=\"a equals negative 9\"><mrow>\n\t<mi>a</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>9</mn>\n</mrow>\n</math> and <math alttext=\"b equals 30\"><mrow>\n\t<mi>b</mi>\n\t<mo>=</mo>\n\t<mn>30</mn>\n</mrow>\n</math>. Substituting <math alttext=\"negative 9\"><mo>-</mo><mn>9</mn>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math> and <math alttext=\"30\"><mn>30</mn>\n</math> for <math alttext=\"b\"><mi>b</mi>\n</math> into <math alttext=\"b squared minus 4 a c\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mi>a</mi><mi>c</mi></math> &nbsp;yields <math alttext=\"30 squared minus 4 left parenthesis negative 9 right parenthesis left parenthesis c right parenthesis\"><msup><mn>30</mn><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mrow><mo>-</mo><mn>9</mn></mrow></mfenced><mfenced><mi>c</mi></mfenced></math>, or <math alttext=\"900 plus 36 c\"><mn>900</mn><mo>+</mo><mn>36</mn><mi>c</mi></math>. Since the discriminant must equal zero, <math alttext=\"900 plus 36 c equals 0\"><mn>900</mn><mo>+</mo><mn>36</mn><mi>c</mi><mo>=</mo><mn>0</mn></math>. Subtracting <math alttext=\"36 c\"><mrow>\n\t<mn>36</mn>\n\t<mi>c</mi>\n</mrow>\n</math> from both sides of this equation yields <math alttext=\"900 equals minus 36 c\"><mrow>\n\t<mn>900</mn>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mn>36</mn>\n\t\t<mi>c</mi>\n\t</mrow>\n</mrow>\n</math>. Dividing each side of this equation by <math alttext=\"negative 36\"><mo>-</mo><mn>36</mn>\n</math> yields <math alttext=\"negative 25 equals c\"><mrow>\n\t<mo>-</mo><mn>25</mn>\n\t<mo>=</mo>\n\t<mi>c</mi>\n</mrow>\n</math>. Therefore, the value of <math alttext=\"c\"><mi>c</mi>\n</math> is <math alttext=\"negative 25\"><mo>-</mo><mn>25</mn>\n</math>.&nbsp;</p>\n<p>Choice A is incorrect. If the value of <math alttext=\"c\"><mi>c</mi>\n</math> is <math alttext=\"3\"><mn>3</mn>\n</math>, this would yield a discriminant that is greater than zero. Therefore, the given equation would have two solutions, rather than exactly one solution.</p>\n<p>Choice B is incorrect. If the value of <math alttext=\"c\"><mi>c</mi>\n</math> is <math alttext=\"0\"><mn>0</mn>\n</math>, this would yield a discriminant that is greater than zero. Therefore, the given equation would have two solutions, rather than exactly one solution.</p>\n<p>Choice D is incorrect. If the value of <math alttext=\"c\"><mi>c</mi>\n</math> is <math alttext=\"negative 53\"><mo>-</mo><mn>53</mn>\n</math>, this would yield a discriminant that is less than zero. Therefore, the given equation would have no real solutions, rather than exactly one solution.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"minus 9 x squared plus 30 x plus c equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>9</mn>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>30</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>c</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">In the given equation, <math alttext=\"c\"><mi>c</mi>\n</math> is a constant. The equation has exactly one solution. What is the value of <math alttext=\"c\"><mi>c</mi>\n</math>?</p>","externalid":"a5f0747c-79a9-4cc0-a9eb-aa9d68a2d5e8","templateid":"8735f7a3-d190-4633-ae68-c74e2479adcf","vaultid":"dc0aecc7-863a-4b96-87ab-7a6035cd7816","type":"mcq","answerOptions":[{"id":"0907ba90-392e-42f7-b03e-2ea58ca5cd89","content":"<p><math alttext=\"3\"><mn>3</mn>\n</math></p>"},{"id":"b4268726-7d75-4dd4-be2a-210783f8d829","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"bf72983f-7fb8-4f91-8e29-bcefd0623e7c","content":"<p><math alttext=\"negative 25\"><mo>-</mo><mn>25</mn>\n</math></p>"},{"id":"af05fcd8-e734-4cc2-b0dc-96771fce957d","content":"<p><math alttext=\"negative 53\"><mo>-</mo><mn>53</mn>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959824,"updateDate":1691007959824}$SATQ$::jsonb, 1691007959824, 1691007959824),
    ($SATQ$1d3c5c95$SATQ$, $SATQ$b5fc9e88-ea7b-46f4-af78-c536a42d0baf$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="f left parenthesis x right parenthesis equals 4,000 left parenthesis 0.75 right parenthesis Superscript x"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>4,000</mn><msup><mfenced><mn>0.75</mn></mfenced><mi>x</mi></msup></math></p>
<p style="text-align: left;">An entomologist recommended a program to reduce a certain invasive beetle population in an area. The given function estimates this beetle species' population <math alttext="x"><mi>x</mi>
</math> years after <math alttext="2012"><mn>2012</mn></math>, where <math alttext="x less than or equals 7"><mi>x</mi><mo>&#8804;</mo><mn>7</mn></math>. Which of the following is the best interpretation of <math alttext="4,000"><mn>4,000</mn></math> in this context?</p>$SATQ$, $SATQ$[{"id":"4247efa7-01a4-42db-846a-c8e84168f184","content":"<p style=\"text-align: left;\">The estimated initial beetle population for this species and area in <math alttext=\"2012\"><mn>2012</mn></math></p>"},{"id":"c141a3f5-5f72-4058-9a94-6ca5334ee041","content":"<p style=\"text-align: left;\">The estimated beetle population for this species and area <math alttext=\"7\"><mn>7</mn></math>&nbsp;years after <math alttext=\"2012\"><mn>2012</mn></math></p>"},{"id":"805f8c91-3278-4c22-9b73-bf4a46440975","content":"<p style=\"text-align: left;\">The estimated percent decrease in the beetle population for this species and area each year after <math alttext=\"2012\"><mn>2012</mn></math></p>"},{"id":"68b3e702-ede7-4dfc-82ae-baf78ff3dccb","content":"<p style=\"text-align: left;\">The estimated percent decrease in the beetle population for this species and area every <math alttext=\"7\"><mn>7</mn></math> years after&nbsp;<math alttext=\"2012\"><mn>2012</mn></math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["4247efa7-01a4-42db-846a-c8e84168f184"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. For an exponential function in the form <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="f left parenthesis x right parenthesis equals a left parenthesis b right parenthesis Superscript x"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mi>b</mi></mfenced><mi>x</mi></msup></math>, where <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="a"><mi>a</mi></math> and <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="b"><mi>b</mi></math> are positive constants and <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="b less than 1"><mi>b</mi><mo>&#60;</mo><mn>1</mn></math>, the initial value of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="f left parenthesis x right parenthesis"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math>, or the value of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="f left parenthesis x right parenthesis"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x equals 0"><mi>x</mi><mo>=</mo><mn>0</mn></math>, is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="a"><mi>a</mi></math> and the value of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="f left parenthesis x right parenthesis"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> decreases by <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="100 left parenthesis 1 minus b right parenthesis percent sign"><mn>100</mn><mo>(</mo><mn>1</mn><mo>-</mo><mi>b</mi><mo>)</mo><mo>%</mo></math> each time <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x"><mi>x</mi></math> increases by <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="1"><mn>1</mn></math>. Therefore, the initial value of the function <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="f left parenthesis x right parenthesis equals 4,000 left parenthesis 0.75 right parenthesis Superscript x"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>4,000</mn><msup><mfenced><mn>0.75</mn></mfenced><mi>x</mi></msup></math>, or the value of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="f left parenthesis x right parenthesis"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x equals 0"><mi>x</mi><mo>=</mo><mn>0</mn></math>, is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4,000"><mn>4,000</mn></math>. Therefore, the best interpretation of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4,000"><mn>4,000</mn></math> in this context is the estimated initial beetle population for this species and area in <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2012"><mn>2012</mn></math>.</p>
<p style="text-align: left;">Choice B is incorrect. The estimated beetle population for this species and area <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="7"><mn>7</mn></math> years after <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2012"><mn>2012</mn></math> is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4,000 left parenthesis 0.75 right parenthesis Superscript 7"><mn>4,000</mn><mo>(</mo><mn>0.75</mn><msup><mo>)</mo><mn>7</mn></msup></math>, or approximately <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="534"><mn>534</mn></math>, not <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4,000"><mn>4,000</mn></math>.</p>
<p style="text-align: left;">Choice C is incorrect. The estimated percent decrease in the beetle population for this species and area each year after <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2012"><mn>2012</mn></math> is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="100 left parenthesis 1 minus 0.75 right parenthesis"><mn>100</mn><mo>(</mo><mn>1</mn><mo>-</mo><mn>0.75</mn><mo>)</mo></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="25"><mn>25</mn></math>, not <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4,000"><mn>4,000</mn></math>.</p>
<p style="text-align: left;">Choice D is incorrect. The estimated percent decrease in the beetle population for this species and area every <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="7"><mn>7</mn></math> years after <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="2012"><mn>2012</mn></math> is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="100 left parenthesis 1 minus 0.75 Superscript 7 Baseline right parenthesis"><mn>100</mn><mo>(</mo><mn>1</mn><mo>-</mo><msup><mn>0.75</mn><mn>7</mn></msup><mo>)</mo></math>, or approximately <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="87"><mn>87</mn></math>, not <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4,000"><mn>4,000</mn></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"1d3c5c95","external_id":"b5fc9e88-ea7b-46f4-af78-c536a42d0baf","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"175d02a5-d981-4101-9615-b65f4d0c7dae","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"f left parenthesis x right parenthesis equals 4,000 left parenthesis 0.75 right parenthesis Superscript x\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>4,000</mn><msup><mfenced><mn>0.75</mn></mfenced><mi>x</mi></msup></math></p>\n<p style=\"text-align: left;\">An entomologist recommended a program to reduce a certain invasive beetle population in an area. The given function estimates this beetle species' population <math alttext=\"x\"><mi>x</mi>\n</math> years after <math alttext=\"2012\"><mn>2012</mn></math>, where <math alttext=\"x less than or equals 7\"><mi>x</mi><mo>&#8804;</mo><mn>7</mn></math>. Which of the following is the best interpretation of <math alttext=\"4,000\"><mn>4,000</mn></math> in this context?</p>","answerOptions":[{"id":"4247efa7-01a4-42db-846a-c8e84168f184","content":"<p style=\"text-align: left;\">The estimated initial beetle population for this species and area in <math alttext=\"2012\"><mn>2012</mn></math></p>"},{"id":"c141a3f5-5f72-4058-9a94-6ca5334ee041","content":"<p style=\"text-align: left;\">The estimated beetle population for this species and area <math alttext=\"7\"><mn>7</mn></math>&nbsp;years after <math alttext=\"2012\"><mn>2012</mn></math></p>"},{"id":"805f8c91-3278-4c22-9b73-bf4a46440975","content":"<p style=\"text-align: left;\">The estimated percent decrease in the beetle population for this species and area each year after <math alttext=\"2012\"><mn>2012</mn></math></p>"},{"id":"68b3e702-ede7-4dfc-82ae-baf78ff3dccb","content":"<p style=\"text-align: left;\">The estimated percent decrease in the beetle population for this species and area every <math alttext=\"7\"><mn>7</mn></math> years after&nbsp;<math alttext=\"2012\"><mn>2012</mn></math></p>"}],"keys":["4247efa7-01a4-42db-846a-c8e84168f184"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. For an exponential function in the form <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis equals a left parenthesis b right parenthesis Superscript x\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mi>b</mi></mfenced><mi>x</mi></msup></math>, where <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"b\"><mi>b</mi></math> are positive constants and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"b less than 1\"><mi>b</mi><mo>&#60;</mo><mn>1</mn></math>, the initial value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math>, or the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 0\"><mi>x</mi><mo>=</mo><mn>0</mn></math>, is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> and the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> decreases by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"100 left parenthesis 1 minus b right parenthesis percent sign\"><mn>100</mn><mo>(</mo><mn>1</mn><mo>-</mo><mi>b</mi><mo>)</mo><mo>%</mo></math> each time <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> increases by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"1\"><mn>1</mn></math>. Therefore, the initial value of the function <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis equals 4,000 left parenthesis 0.75 right parenthesis Superscript x\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>4,000</mn><msup><mfenced><mn>0.75</mn></mfenced><mi>x</mi></msup></math>, or the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 0\"><mi>x</mi><mo>=</mo><mn>0</mn></math>, is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000\"><mn>4,000</mn></math>. Therefore, the best interpretation of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000\"><mn>4,000</mn></math> in this context is the estimated initial beetle population for this species and area in <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2012\"><mn>2012</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. The estimated beetle population for this species and area <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7\"><mn>7</mn></math> years after <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2012\"><mn>2012</mn></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000 left parenthesis 0.75 right parenthesis Superscript 7\"><mn>4,000</mn><mo>(</mo><mn>0.75</mn><msup><mo>)</mo><mn>7</mn></msup></math>, or approximately <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"534\"><mn>534</mn></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000\"><mn>4,000</mn></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. The estimated percent decrease in the beetle population for this species and area each year after <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2012\"><mn>2012</mn></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"100 left parenthesis 1 minus 0.75 right parenthesis\"><mn>100</mn><mo>(</mo><mn>1</mn><mo>-</mo><mn>0.75</mn><mo>)</mo></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"25\"><mn>25</mn></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000\"><mn>4,000</mn></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. The estimated percent decrease in the beetle population for this species and area every <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7\"><mn>7</mn></math> years after <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2012\"><mn>2012</mn></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"100 left parenthesis 1 minus 0.75 Superscript 7 Baseline right parenthesis\"><mn>100</mn><mo>(</mo><mn>1</mn><mo>-</mo><msup><mn>0.75</mn><mn>7</mn></msup><mo>)</mo></math>, or approximately <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"87\"><mn>87</mn></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000\"><mn>4,000</mn></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1755117017723,"pPcc":"SAT#P","questionId":"1d3c5c95","skill_cd":"P.C.","score_band_range_cd":4,"skill_desc":"Nonlinear functions","createDate":1755117017723,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"b5fc9e88-ea7b-46f4-af78-c536a42d0baf","primary_class_cd":"P","uId":"175d02a5-d981-4101-9615-b65f4d0c7dae","difficulty":"M"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: center;\"><math alttext=\"f left parenthesis x right parenthesis equals 4,000 left parenthesis 0.75 right parenthesis Superscript x\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>4,000</mn><msup><mfenced><mn>0.75</mn></mfenced><mi>x</mi></msup></math></p>\n<p style=\"text-align: left;\">An entomologist recommended a program to reduce a certain invasive beetle population in an area. The given function estimates this beetle species' population <math alttext=\"x\"><mi>x</mi>\n</math> years after <math alttext=\"2012\"><mn>2012</mn></math>, where <math alttext=\"x less than or equals 7\"><mi>x</mi><mo>&#8804;</mo><mn>7</mn></math>. Which of the following is the best interpretation of <math alttext=\"4,000\"><mn>4,000</mn></math> in this context?</p>","keys":["4247efa7-01a4-42db-846a-c8e84168f184"],"answerOptions":[{"id":"4247efa7-01a4-42db-846a-c8e84168f184","content":"<p style=\"text-align: left;\">The estimated initial beetle population for this species and area in <math alttext=\"2012\"><mn>2012</mn></math></p>"},{"id":"c141a3f5-5f72-4058-9a94-6ca5334ee041","content":"<p style=\"text-align: left;\">The estimated beetle population for this species and area <math alttext=\"7\"><mn>7</mn></math>&nbsp;years after <math alttext=\"2012\"><mn>2012</mn></math></p>"},{"id":"805f8c91-3278-4c22-9b73-bf4a46440975","content":"<p style=\"text-align: left;\">The estimated percent decrease in the beetle population for this species and area each year after <math alttext=\"2012\"><mn>2012</mn></math></p>"},{"id":"68b3e702-ede7-4dfc-82ae-baf78ff3dccb","content":"<p style=\"text-align: left;\">The estimated percent decrease in the beetle population for this species and area every <math alttext=\"7\"><mn>7</mn></math> years after&nbsp;<math alttext=\"2012\"><mn>2012</mn></math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice A is correct. For an exponential function in the form <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis equals a left parenthesis b right parenthesis Superscript x\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mi>a</mi><msup><mfenced><mi>b</mi></mfenced><mi>x</mi></msup></math>, where <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"b\"><mi>b</mi></math> are positive constants and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"b less than 1\"><mi>b</mi><mo>&#60;</mo><mn>1</mn></math>, the initial value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math>, or the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 0\"><mi>x</mi><mo>=</mo><mn>0</mn></math>, is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> and the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> decreases by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"100 left parenthesis 1 minus b right parenthesis percent sign\"><mn>100</mn><mo>(</mo><mn>1</mn><mo>-</mo><mi>b</mi><mo>)</mo><mo>%</mo></math> each time <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> increases by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"1\"><mn>1</mn></math>. Therefore, the initial value of the function <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis equals 4,000 left parenthesis 0.75 right parenthesis Superscript x\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>4,000</mn><msup><mfenced><mn>0.75</mn></mfenced><mi>x</mi></msup></math>, or the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> when <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals 0\"><mi>x</mi><mo>=</mo><mn>0</mn></math>, is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000\"><mn>4,000</mn></math>. Therefore, the best interpretation of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000\"><mn>4,000</mn></math> in this context is the estimated initial beetle population for this species and area in <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2012\"><mn>2012</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. The estimated beetle population for this species and area <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7\"><mn>7</mn></math> years after <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2012\"><mn>2012</mn></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000 left parenthesis 0.75 right parenthesis Superscript 7\"><mn>4,000</mn><mo>(</mo><mn>0.75</mn><msup><mo>)</mo><mn>7</mn></msup></math>, or approximately <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"534\"><mn>534</mn></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000\"><mn>4,000</mn></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. The estimated percent decrease in the beetle population for this species and area each year after <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2012\"><mn>2012</mn></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"100 left parenthesis 1 minus 0.75 right parenthesis\"><mn>100</mn><mo>(</mo><mn>1</mn><mo>-</mo><mn>0.75</mn><mo>)</mo></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"25\"><mn>25</mn></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000\"><mn>4,000</mn></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. The estimated percent decrease in the beetle population for this species and area every <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7\"><mn>7</mn></math> years after <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"2012\"><mn>2012</mn></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"100 left parenthesis 1 minus 0.75 Superscript 7 Baseline right parenthesis\"><mn>100</mn><mo>(</mo><mn>1</mn><mo>-</mo><msup><mn>0.75</mn><mn>7</mn></msup><mo>)</mo></math>, or approximately <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"87\"><mn>87</mn></math>, not <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4,000\"><mn>4,000</mn></math>.</p>","externalid":"b5fc9e88-ea7b-46f4-af78-c536a42d0baf","correct_answer":["A"]},"createDate":1755117017723,"updateDate":1755117017723}$SATQ$::jsonb, 1755117017723, 1755117017723),
    ($SATQ$1d3fee25$SATQ$, NULL, NULL, $SATQ$04639-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">Which of the following is equivalent to <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_004_2e1978ba.png" alt="3 times, open parenthesis, x plus 5, close parenthesis, minus 6"></span></span> ?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_000_708d4daf.png\" alt=\"3 x minus 3\"></span></span></p>\n"},{"id":"b","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_001_e1dd87da.png\" alt=\"3 x minus 1\"></span></span></p>\n"},{"id":"c","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_002_6dbb65cf.png\" alt=\"3 x plus 9\"></span></span></p>\n"},{"id":"d","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_003_4f1b10e3.png\" alt=\"15 x minus 6\"></span></span></p>\n"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice C is correct. Using the distributive property to multiply 3 and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_005_a03ca752.png" alt="open parenthesis, x plus 5, close parenthesis"></span> gives <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_006_df0c997a.png" alt="3 x plus 15, minus 6"></span>, which can be rewritten as <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_007_6dbb65cf.png" alt="3 x plus 9"></span>.<p>Choice A is incorrect and may result from rewriting the given expression as <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_008_5f74c371.png" alt="3 times, open parenthesis, x plus 5, minus 6, close parenthesis"></span>. Choice B is incorrect and may result from incorrectly rewriting the expression as <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_009_4fd7b508.png" alt="open parenthesis, 3 x plus 5, close parenthesis, minus 6"></span>. Choice D is incorrect and may result from incorrectly rewriting the expression as <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_010_f9546733.png" alt="3 times 5 x, minus 6"></span>.</p><p>&nbsp;</p></p>
$SATQ$, false, 11, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"1d3fee25","external_id":null,"disclosed_item_id":"04639-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">Which of the following is equivalent to <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_004_2e1978ba.png\" alt=\"3 times, open parenthesis, x plus 5, close parenthesis, minus 6\"></span></span> ?</p>\n","answerOptions":[{"id":"a","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_000_708d4daf.png\" alt=\"3 x minus 3\"></span></span></p>\n"},{"id":"b","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_001_e1dd87da.png\" alt=\"3 x minus 1\"></span></span></p>\n"},{"id":"c","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_002_6dbb65cf.png\" alt=\"3 x plus 9\"></span></span></p>\n"},{"id":"d","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_003_4f1b10e3.png\" alt=\"15 x minus 6\"></span></span></p>\n"}],"keys":null,"correct_answer":["C"],"rationale":"<p>Choice C is correct. Using the distributive property to multiply 3 and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_005_a03ca752.png\" alt=\"open parenthesis, x plus 5, close parenthesis\"></span> gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_006_df0c997a.png\" alt=\"3 x plus 15, minus 6\"></span>, which can be rewritten as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_007_6dbb65cf.png\" alt=\"3 x plus 9\"></span>.<p>Choice A is incorrect and may result from rewriting the given expression as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_008_5f74c371.png\" alt=\"3 times, open parenthesis, x plus 5, minus 6, close parenthesis\"></span>. Choice B is incorrect and may result from incorrectly rewriting the expression as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_009_4fd7b508.png\" alt=\"open parenthesis, 3 x plus 5, close parenthesis, minus 6\"></span>. Choice D is incorrect and may result from incorrectly rewriting the expression as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/1d3fee25/img_010_f9546733.png\" alt=\"3 times 5 x, minus 6\"></span>.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":11,"raw_list":{"updateDate":1691007959628,"pPcc":"SAT#P","questionId":"1d3fee25","skill_cd":"P.A.","score_band_range_cd":2,"skill_desc":"Equivalent expressions","createDate":1691007959628,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"04639-DC","external_id":null,"primary_class_cd":"P","uId":"31fa1672-c3f7-4e6c-a7f5-e7206f34fddc","difficulty":"E"},"raw_detail":{"item_id":"04639-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">Which of the following is equivalent to <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAAAcCAYAAADLGVncAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB5ElEQVRoQ+2W7RHDIAiGHS8DOU52ySrZhAYRpUQNbW2bHzx3Xi85RXj5SMOrwL7CEhZYd4D86i8A7LAuAeL2Xz+GAGwQbyAWczd/TmwxwHJ4lx9vAWwRwrIe9fZj0VCM4yevc9aoFeOR0985RhUk/crr6MPjN/GN1qRY2/clSKwqRsqaEm1fl/PBL2NNUvJ3km8Ue00AJ610FqspM8RZk+2Hoso9n8BOXNmzttus6m/FjaRiGdnng5w1ej63aapMFRBV63gQWwVLtrIPI2YNfxL+DTukaD3Yc0gHrs/1sAhWsh3j0zxpfXR6CX0VakesJPIPX+HqfugoYNokgxllsFRZbu2ucYFNsOy0qGAeH/qOuYJh/NVW784neFNtyb5gZa/YrynBX6yRgExrnrT8e+dOFkyLcznDENle3B69gGhu2YcuB2MRSENBtcSx39+DBdN+te48oTehKK2yrG18YVAwXTB8N+HPK3fLUDB6OG/SZdhyis+ikNYvGmIRrOd8qz16yXwV9mvYktxuT8NVCIHPiG5LNl7mnMzCBSbB2C+dNHWObNmr+wp9R3PoV+fqagWTjCVhs1gyGLaRBZyBxS/M/ozqkrBovD6yT+U5L6PvUsScMLscx3Ecx3Ecx3Ec53uE8AB38oeR9XR/IgAAAABJRU5ErkJggg==\" alt=\"3 times, open parenthesis, x plus 5, close parenthesis, minus 6\"></span></span> ?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAWCAYAAAC2ew6NAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA7ElEQVRIS+2U6w3DIAyEGY+BGIddsgqbXByMeQQSaAVVf/BJKAQ70XE2KOEwCvQIQ8M6XPOf0tXACQYHOIDDtBMX0tUAZ6HpYSjDLxCAg9UKmrLC0lK+1iBJir4MS7xjbSmSfsYurHG+paHCWV0JABXFZLtu5czk9f8cvFwqyyBEV0OpVrRGT0OB9Mzd9rjeiAni/DV9Gz0RTxoqnqy/n86VDLVX64pKZVnXmzmFBn6pS8Gi7vca96V3tVeSDxjSEK+B7OrJRfl36bsgjuPzXB3R4ImJNJUhu0uHI3NX8me6+qJhs9lsNpt/Q6kTsNmH94ecSrQAAAAASUVORK5CYII=\" alt=\"3 x minus 3\"></span></span></p>\n"},"b":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAWCAYAAAC2ew6NAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA9UlEQVRIS+2U0Q3EIAhAHc+BHMddXMVNOCignkFjcza9D19iarWpTyA4JQUH+JDhIWag+SuQi0cBea2wZIAELAcpvCbLZxuikCN4fAS0lCUHkCH6wa0eJEd/SdJYOltFHdrLEkfdR9ypF+JM7Il8zWKCsCrKN/sWACwM+oFG3vpmB3rOVLQNfVsKSomqlMsTpbEkqmjdtqknyrqxp+hBNJ0NKxDELVFilNq+Q+zmtqjVompp7K9NZSiqfatPBUv1vZV/cEV1kPpfGYtqK2paTyvF30jdiZwV7V1MU19kSUaGRrhIttE1+uwupqKHw+FwOPwJzn0AI25inS78O9IAAAAASUVORK5CYII=\" alt=\"3 x minus 1\"></span></span></p>\n"},"c":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAWCAYAAAC2ew6NAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABFklEQVRIS+2U0RHDIAiGGc+BHMddsoqbUAxgDMFoem2vD353Xo0i/AIVlC0C0o+MgCljmf+UnMK9BhYZcUPewC36hl+ENRwxWQNgJFHlGzAnDO0CgZgxBcBAp2TpbZCuH41/i2qw8fYMh0RqOmdVKJB3WeIbm0M2Cx5TQjsVHFaWe+VsYAN6Nh5fEdo2s+e4ZrVTKo8npbc2w2Towbb0hbru7CkqrEzvhhV1+UPXWIOq9W5jHY6YyajCvnVQjF3sQKjXH0drDA43PBFqYQ2SFP7o9Yd9W7kv95t3Sm+Z6lGxsT1/ilOfoubpaUWxjfSdHOL9uazOZvTSo16MKpamOtRxFdk6cd7ZT3DpUYm3WCwWi8W/AfACI07qBV/XQkoAAAAASUVORK5CYII=\" alt=\"3 x plus 9\"></span></span></p>\n"},"d":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADMAAAAWCAYAAABtwKSvAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABKklEQVRYR+2U6RECIQyFtzwKohx62VboJJLg487shfpDvhnGVUM2L9fWstuNjPP0/pog2smGD36sjt07209C3pE5837arRgMxYgTGyTR+PIXQHwhfokBCe7i9c6IIZ+hGHZkHPkfiaHwZmf62GLcRZKjYkPOK0oD3H5HLSU2jWD5TXw/S0LsjAt+tLKlrFhb9WtvF++jDWLWngthYsK5AvXsjhIv6GLeDoqsYxBb21Qd5f+7YF7K5GgxCOpAKXT9Gqi2jdKWKTkHBxVmIKaNbRSDcFVMnrXaUZyTuZsPYkqBjBbDFDF5K86ZFYCKPxajOWpLjOzx/TPb7wpabJfbDNtsFDgE4i4EqBl7QPfOuwsgC8qnE1KKhf3E6jAQhDMUslgsFovF4m/YthdMjgxOiRh5sQAAAABJRU5ErkJggg==\" alt=\"15 x minus 6\"></span></span></p>\n"}},"correct_choice":"c","rationale":"<p>Choice C is correct. Using the distributive property to multiply 3 and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAcCAYAAAD4IkbVAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABR0lEQVRYR+1U0RHDIAh1PAdyHHdxlWxCRSSiwYTepWk+fHde29TA4/HAScAWwTsPcQOoj/4CgA2idxDShAdAgvACooxTPik48Pmf+vMVgBTA+Zh1FoSp/SHX8pyqpJzDfP3Jvc+fBaodtui7S0/AKlBRV3JDC0zN/CVYsat4aosVdEWR1EcjYwFjsPLsYgitZEssQze7QZtN3Zi0WMWwLSxk2Ys+hKxa9Wo+2oB3Ys7IInZ1Syts28JGlu7IzlG7jznMZDkAfp21bE98cc7IM6h7/dB1/NT1IEA+ta81i7IzlKEbhKN4Ij8S0lpMlSJZXXkNt5Mdt4a2RuhFKsI6uQgLWbbXeEezwUHI0QqckAlqFc9gIlvzSWIsjnyPYil5m7qVqAzEwSv5O9AItzMWiEpPN5B1l/4aeyGDNRcWFhYWFhYWGpz7AEusTRHqs8ovAAAAAElFTkSuQmCC\" alt=\"open parenthesis, x plus 5, close parenthesis\"></span> gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEsAAAAWCAYAAACIXmHDAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABh0lEQVRYR+2WgY3DIAxFMx4DMQ67ZJVs4sOAwaE2kBxS7yQ/CbVJHfP9MaQHcfoD4kcZDsIF+P0roBYXBZTLCsAJvmpkw58fsW+BK4Ab5c5G+SglGwSnj5/fMSzPrZiVCmk6d0NzR39SflqcqoWcpAAE4ILgZMFPoQl5fo0rOIxJQzQLi3EhqttvllZz1jRYIHqQt2Dqvk5o7shxB66a1bq5W01Gmo9p2klumhe7Kbt5f7AvWoqReNJZyEfrF+rKe387U3Z0P5IXCzsoz4+3cKj5+TaQiqvdVbbuitB9ZpUiWHfTEbLDMDqveAMs5aegvuXrfeE3ohY1GZp5mlka0pnyRgOZ1c87PbMQbZv1b84ZJPy3naXRzrq1/BpkVq9zKb8U1Lbpurh/Y1bZNUOzNEf79qM4LOLJW2mXWVoxS9tkAW3eW/76N4EfnMyYdF0SkUE3tydsM4t0Cgu4mntGn0884JuQNuoDZBQXSfHFvJ1oZiEjnbsgw2hIOgzDMAzDMAzD+Pscxw+Z2uPkfFnaRwAAAABJRU5ErkJggg==\" alt=\"3 x plus 15, minus 6\"></span>, which can be rewritten as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAWCAYAAAC2ew6NAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABFklEQVRIS+2U0RHDIAiGGc+BHMddsoqbUAxgDMFoem2vD353Xo0i/AIVlC0C0o+MgCljmf+UnMK9BhYZcUPewC36hl+ENRwxWQNgJFHlGzAnDO0CgZgxBcBAp2TpbZCuH41/i2qw8fYMh0RqOmdVKJB3WeIbm0M2Cx5TQjsVHFaWe+VsYAN6Nh5fEdo2s+e4ZrVTKo8npbc2w2Towbb0hbru7CkqrEzvhhV1+UPXWIOq9W5jHY6YyajCvnVQjF3sQKjXH0drDA43PBFqYQ2SFP7o9Yd9W7kv95t3Sm+Z6lGxsT1/ilOfoubpaUWxjfSdHOL9uazOZvTSo16MKpamOtRxFdk6cd7ZT3DpUYm3WCwWi8W/AfACI07qBV/XQkoAAAAASUVORK5CYII=\" alt=\"3 x plus 9\"></span>.<p>Choice A is incorrect and may result from rewriting the given expression as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAAAcCAYAAADLGVncAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB3UlEQVRoQ+2VgY3DIAxFGY+BGCe7ZJVs4guYH4gLwWm4U3X1l1DVKHb9H7br7oq2hbzztGxE+dG/FNFGi3cU1gc+iVYKXwALeux3DY78Hp2/foVoDeT8svebgBZh7B/5vFLlUQw787/rLr7huq589jnZP6eIffVzN0eTYRUYiaqAti1+aqEa/fYlsc8CAxckpyi9B+8gXBME1TowQj1RfiAUNsrXHYcJanmMSo0hLml4cUgGqvz9dUxTZwpD3K3Xi1ILLOXKNcwWQ9At9OHyZ8rlhV6ANC7jetIAOzoghNOOmfWnw+MYu4ZriY/iaeXvNUw2zIG1mSvCR5fl0dYY0gHLRqoOxvqYAQ3769QYnfxdYBACy0j2gR3vVu9LHeYH5wog1Nwxb+QHMAmnn/8CWFQ9XhiPniHeWxdLUQgGNYCk2OigeIUATNbQys/1DvzJwAilNQpljPUmPgJYngwVsPgMq4FfeA2UrXkKykJsBHnnH00DrGeoNTLvCDVoRvLULBi303KtQMTvUXIs8YPHnksxuptXAUNd8tIGcXck87WWPtcqfJXiymkVlX4ggc2wajPIkQHOkLauJwI0nFbHyWe3xC37fId8uo7LEmvIZDKZTCaTyWQymUyme3LuB5wDh5HkKEJkAAAAAElFTkSuQmCC\" alt=\"3 times, open parenthesis, x plus 5, minus 6, close parenthesis\"></span>. Choice B is incorrect and may result from incorrectly rewriting the expression as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAAAcCAYAAADLGVncAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB2UlEQVRoQ+2Wi63DIAxFGS8DMU52ySrZxC9gbsLHBL+Kpq3kI6EqlPhzbdO6HNpXWtxC606Utr4Wop3WxZHfPhQr0Ub+R8QCH415846Ww3N6/Blo8+SW9ei3B0XjUfRHvUqnQcTjI63nK8kdlMeQ1jGHx2fkHaPJesj+Ivu6NJss1iVirOTDovUKWRNjq5N6Ec7zKgCKVkxfECevEBQu9lIlZ4wtgsjtS2jHTSvsiF6OsaFgnw+NOwfG8krGLqwS4s68t6cVLNrK/PWYdfmz8AM7WmescnmuTlw6I6ER7Ky298V9InW4tugjeBxDJ3F8YSuswudIMBaBX5QSPLssjbFmZHWCpaCzDsZVUfuYK1jI9bLV+BwJBvBiPSLnvvAdOJMfrDsBQXGfJKQcXvEJweqCCHfYf4JtxeV7S3/pIhmNzxpOShJH778HBKvjanyGhFWjJAR7jWwrZI/pgoW9CX9eMS1DwWqHfKB9sR4HnAtia3/RAhrBesFLI6kt+AjEdTuSgXos8SyJCGMwDpH4e12XqQRDDEKB8vfYlr67R9Q+mksfxIO5QGfA17oETWLlyeB8EnAGdzGAUP0Z3ZUD0bC69rn15lXrnUhTYBiGYRiGYRiGYRjfh3N/hROLjf9IcY4AAAAASUVORK5CYII=\" alt=\"open parenthesis, 3 x plus 5, close parenthesis, minus 6\"></span>. Choice D is incorrect and may result from incorrectly rewriting the expression as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD0AAAAaCAYAAAAEy1RnAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABvElEQVRYR+2VYY7EIAiFPZ4H8ji9S6/Sm7AiosignTo22R9+SbOZVhHeA9c9Ba4DvPNwXAD51TQAFxzeQTh/j/UaACeERQUzb8T8mjM4PDQ/dhK4xscP+WdOWO7LT7Qu/v0aOAM4f0TfF4qZOnKQExUcYgl0aEpCFU5B6hrEejfD6jan/Gs8NqcYxorIAzkJ6ep1+A+1VjqUYmk3JrByR1L+I4N4o0wCu0EKg6QOuUk0rVHCUGfdd9IMFGfijiBV6kYSQSXJioaQOgVf4aMV5tZiwXRsZtWFRq2N4rX3jc6rQAnRIumqlVC5xISLPCr6gOJ25ztiCTsDz3Nj2uDcAi/i1n3igjU7JZ6IqbG7qXWr9zQG5aJ1gbczjcg2fFI0Hfq5lua4f+iTM0Zw0VIIpJdXg1zE86sDWVjB69j0D6WiV11kN0X3lNHtgE7JlukF1/s4Pu5NbscN+F6T1i3498cjMWxvdrG5kESi+BvRSZV9RoEsRJnJXCh9t93Wov7CRx7WRVYLqI920Grx0b5SsBSF12cRmFXzLOHC+ZkWVLu9Cmy9VS6/As3GGleK8y8IudlsNpvNZrP5vzj3B3kSODWax6K7AAAAAElFTkSuQmCC\" alt=\"3 times 5 x, minus 6\"></span>.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959628,"updateDate":1691007959628}$SATQ$::jsonb, 1691007959628, 1691007959628),
    ($SATQ$1dd13816$SATQ$, $SATQ$afeb4dfe-3156-4234-af28-242e9b1500f8$SATQ$::uuid, $SATQ$353461bb-f351-4bcf-a63b-1653f5d7e5f8$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="left parenthesis 5 x cubed minus 3 right parenthesis minus left parenthesis minus 4 x cubed plus 8 right parenthesis"><mo>(</mo><mrow><mn>5</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mrow><mn>3</mn></mrow><mo>)</mo><mo>-</mo><mo>(</mo><mo>-</mo><mrow><mn>4</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>8</mn></mrow><mo>)</mo></math></p>
<p style="text-align: left;">The given expression is equivalent to <math alttext="b x cubed minus 11"><mrow>
	<mrow>
		<mi>b</mi>
		<msup>
			<mi>x</mi>
			<mn>3</mn>
		</msup>
	</mrow>
	<mo>-</mo>
	<mn>11</mn>
</mrow>
</math>, where <math alttext="b"><mi>b</mi>
</math> is a constant. What is the value of <math alttext="b"><mi>b</mi>
</math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["9"]$SATQ$::jsonb, $SATQ$["9"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="9"><mn>9</mn>
</math>. The given expression can be rewritten as <math alttext="left parenthesis 5 x cubed minus 3 right parenthesis plus left parenthesis negative 1 right parenthesis left parenthesis minus 4 x cubed plus 8 right parenthesis"><mfenced><mrow><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn></mrow></mfenced><mo>+</mo><mfenced><mrow><mo>-</mo><mn>1</mn></mrow></mfenced><mfenced><mrow><mo>-</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced></math>. By applying the distributive property, this expression can be rewritten as <math alttext="5 x cubed minus 3 plus 4 x cubed plus left parenthesis negative 8 right parenthesis"><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn><mo>+</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mfenced><mrow><mo>-</mo><mn>8</mn></mrow></mfenced></math>, which is equivalent to&nbsp;<math alttext="left parenthesis 5 x cubed plus 4 x cubed right parenthesis plus left parenthesis negative 3 plus left parenthesis negative 8 right parenthesis right parenthesis"><mfenced><mrow><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup></mrow></mfenced><mo>+</mo><mfenced><mrow><mo>-</mo><mn>3</mn><mo>+</mo><mfenced><mrow><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfenced></math>. Adding like terms in this expression yields&nbsp;<math alttext="9 x cubed minus 11"><mn>9</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math>. Since it's given that&nbsp;<math alttext="left parenthesis 5 x cubed minus 3 right parenthesis minus left parenthesis minus 4 x cubed plus 8 right parenthesis"><mfenced><mrow><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><mo>-</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced></math> is equivalent to <math alttext="b x cubed minus 11"><mi>b</mi><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math>, it follows that <math alttext="9 x cubed minus 11"><mn>9</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math> is equivalent to <math alttext="b x cubed minus 11"><mi>b</mi><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math>. Therefore, the coefficients of <math alttext="x cubed"><msup><mi>x</mi><mn>3</mn></msup></math> in these two expressions must be equivalent, and the value of <math alttext="b"><mi>b</mi>
</math> must be <math alttext="9"><mn>9</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"1dd13816","external_id":"afeb4dfe-3156-4234-af28-242e9b1500f8","disclosed_item_id":null,"source":"qbank","vaultid":"353461bb-f351-4bcf-a63b-1653f5d7e5f8","uId":"e543fbaa-e0be-4f63-abfe-f1decb3f5fdc","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"M","score_band_range_cd":5,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"left parenthesis 5 x cubed minus 3 right parenthesis minus left parenthesis minus 4 x cubed plus 8 right parenthesis\"><mo>(</mo><mrow><mn>5</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mrow><mn>3</mn></mrow><mo>)</mo><mo>-</mo><mo>(</mo><mo>-</mo><mrow><mn>4</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>8</mn></mrow><mo>)</mo></math></p>\n<p style=\"text-align: left;\">The given expression is equivalent to <math alttext=\"b x cubed minus 11\"><mrow>\n\t<mrow>\n\t\t<mi>b</mi>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>-</mo>\n\t<mn>11</mn>\n</mrow>\n</math>, where <math alttext=\"b\"><mi>b</mi>\n</math> is a constant. What is the value of <math alttext=\"b\"><mi>b</mi>\n</math>?</p>","answerOptions":[],"keys":["9"],"correct_answer":["9"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"9\"><mn>9</mn>\n</math>. The given expression can be rewritten as <math alttext=\"left parenthesis 5 x cubed minus 3 right parenthesis plus left parenthesis negative 1 right parenthesis left parenthesis minus 4 x cubed plus 8 right parenthesis\"><mfenced><mrow><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn></mrow></mfenced><mo>+</mo><mfenced><mrow><mo>-</mo><mn>1</mn></mrow></mfenced><mfenced><mrow><mo>-</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced></math>. By applying the distributive property, this expression can be rewritten as <math alttext=\"5 x cubed minus 3 plus 4 x cubed plus left parenthesis negative 8 right parenthesis\"><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn><mo>+</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mfenced><mrow><mo>-</mo><mn>8</mn></mrow></mfenced></math>, which is equivalent to&nbsp;<math alttext=\"left parenthesis 5 x cubed plus 4 x cubed right parenthesis plus left parenthesis negative 3 plus left parenthesis negative 8 right parenthesis right parenthesis\"><mfenced><mrow><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup></mrow></mfenced><mo>+</mo><mfenced><mrow><mo>-</mo><mn>3</mn><mo>+</mo><mfenced><mrow><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfenced></math>. Adding like terms in this expression yields&nbsp;<math alttext=\"9 x cubed minus 11\"><mn>9</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math>. Since it's given that&nbsp;<math alttext=\"left parenthesis 5 x cubed minus 3 right parenthesis minus left parenthesis minus 4 x cubed plus 8 right parenthesis\"><mfenced><mrow><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><mo>-</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced></math> is equivalent to <math alttext=\"b x cubed minus 11\"><mi>b</mi><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math>, it follows that <math alttext=\"9 x cubed minus 11\"><mn>9</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math> is equivalent to <math alttext=\"b x cubed minus 11\"><mi>b</mi><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math>. Therefore, the coefficients of <math alttext=\"x cubed\"><msup><mi>x</mi><mn>3</mn></msup></math> in these two expressions must be equivalent, and the value of <math alttext=\"b\"><mi>b</mi>\n</math> must be <math alttext=\"9\"><mn>9</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959822,"pPcc":"SAT#P","questionId":"1dd13816","skill_cd":"P.A.","score_band_range_cd":5,"skill_desc":"Equivalent expressions","createDate":1691007959822,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"afeb4dfe-3156-4234-af28-242e9b1500f8","primary_class_cd":"P","uId":"e543fbaa-e0be-4f63-abfe-f1decb3f5fdc","difficulty":"M"},"raw_detail":{"keys":["9"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"9\"><mn>9</mn>\n</math>. The given expression can be rewritten as <math alttext=\"left parenthesis 5 x cubed minus 3 right parenthesis plus left parenthesis negative 1 right parenthesis left parenthesis minus 4 x cubed plus 8 right parenthesis\"><mfenced><mrow><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn></mrow></mfenced><mo>+</mo><mfenced><mrow><mo>-</mo><mn>1</mn></mrow></mfenced><mfenced><mrow><mo>-</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced></math>. By applying the distributive property, this expression can be rewritten as <math alttext=\"5 x cubed minus 3 plus 4 x cubed plus left parenthesis negative 8 right parenthesis\"><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn><mo>+</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mfenced><mrow><mo>-</mo><mn>8</mn></mrow></mfenced></math>, which is equivalent to&nbsp;<math alttext=\"left parenthesis 5 x cubed plus 4 x cubed right parenthesis plus left parenthesis negative 3 plus left parenthesis negative 8 right parenthesis right parenthesis\"><mfenced><mrow><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup></mrow></mfenced><mo>+</mo><mfenced><mrow><mo>-</mo><mn>3</mn><mo>+</mo><mfenced><mrow><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfenced></math>. Adding like terms in this expression yields&nbsp;<math alttext=\"9 x cubed minus 11\"><mn>9</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math>. Since it's given that&nbsp;<math alttext=\"left parenthesis 5 x cubed minus 3 right parenthesis minus left parenthesis minus 4 x cubed plus 8 right parenthesis\"><mfenced><mrow><mn>5</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><mo>-</mo><mn>4</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced></math> is equivalent to <math alttext=\"b x cubed minus 11\"><mi>b</mi><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math>, it follows that <math alttext=\"9 x cubed minus 11\"><mn>9</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math> is equivalent to <math alttext=\"b x cubed minus 11\"><mi>b</mi><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>11</mn></math>. Therefore, the coefficients of <math alttext=\"x cubed\"><msup><mi>x</mi><mn>3</mn></msup></math> in these two expressions must be equivalent, and the value of <math alttext=\"b\"><mi>b</mi>\n</math> must be <math alttext=\"9\"><mn>9</mn>\n</math>.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"left parenthesis 5 x cubed minus 3 right parenthesis minus left parenthesis minus 4 x cubed plus 8 right parenthesis\"><mo>(</mo><mrow><mn>5</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mrow><mn>3</mn></mrow><mo>)</mo><mo>-</mo><mo>(</mo><mo>-</mo><mrow><mn>4</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>8</mn></mrow><mo>)</mo></math></p>\n<p style=\"text-align: left;\">The given expression is equivalent to <math alttext=\"b x cubed minus 11\"><mrow>\n\t<mrow>\n\t\t<mi>b</mi>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>-</mo>\n\t<mn>11</mn>\n</mrow>\n</math>, where <math alttext=\"b\"><mi>b</mi>\n</math> is a constant. What is the value of <math alttext=\"b\"><mi>b</mi>\n</math>?</p>","externalid":"afeb4dfe-3156-4234-af28-242e9b1500f8","templateid":"b561d2f0-0723-4f1b-a53c-6784c2623b41","vaultid":"353461bb-f351-4bcf-a63b-1653f5d7e5f8","type":"spr","answerOptions":[],"correct_answer":["9"]},"createDate":1691007959822,"updateDate":1691007959822}$SATQ$::jsonb, 1691007959822, 1691007959822),
    ($SATQ$1e003284$SATQ$, $SATQ$a87d4ca6-6608-46d3-9f6b-60f4ad868594$SATQ$::uuid, $SATQ$a3af2c50-0dbb-41c4-bf65-75d9153fcc5b$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="x equals 49"><mi>x</mi><mo>=</mo><mrow><mn>49</mn></mrow></math></p>
<p style="text-align: center;"><math alttext="y equals StartRoot x EndRoot plus 9"><mi>y</mi><mo>=</mo><msqrt><mi>x</mi></msqrt><mo>+</mo><mrow><mn>9</mn></mrow></math></p>
<p style="text-align: left;">The graphs of the given equations intersect at the point&nbsp;<math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> in the <em>xy</em>-plane.&nbsp;What is the value of <math alttext="y"><mi>y</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"38c17dc5-60d1-4a43-a2c9-6af499e140e5","content":"<p><math alttext=\"16\"><mn>16</mn>\n</math></p>"},{"id":"453d3e5e-807d-43db-a22b-fc61f6bcdb52","content":"<p><math alttext=\"40\"><mn>40</mn>\n</math></p>"},{"id":"a0c7669a-791e-4df9-9d34-4da03911b5ea","content":"<p><math alttext=\"81\"><mn>81</mn>\n</math></p>"},{"id":"5a1ead6c-c1cd-403d-813c-ff39494e37ee","content":"<p><math alttext=\"130\"><mn>130</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["38c17dc5-60d1-4a43-a2c9-6af499e140e5"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It's given that the graphs of the given equations intersect at the point <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> in the <em>xy</em>-plane. It follows that&nbsp;<math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> represents a solution to the system consisting of the given equations. The first equation given is <math alttext="x equals 49"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>49</mn>
</mrow>
</math>. Substituting <math alttext="49"><mn>49</mn>
</math> for <math alttext="x"><mi>x</mi>
</math> in the second equation given, <math alttext="y equals StartRoot x EndRoot plus 9"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mrow>
		<msqrt>
			<mi>x</mi>
		</msqrt>
		<mo>+</mo>
		<mn>9</mn>
	</mrow>
</mrow>
</math>, yields&nbsp;<math alttext="y equals StartRoot 49 EndRoot plus 9"><mi>y</mi><mo>=</mo><msqrt><mn>49</mn></msqrt><mo>+</mo><mn>9</mn></math>, which is equivalent to&nbsp;<math alttext="y equals 7 plus 9"><mi>y</mi><mo>=</mo><mn>7</mn><mo>+</mo><mn>9</mn></math>, or&nbsp;<math alttext="y equals 16"><mi>y</mi><mo>=</mo><mn>16</mn></math>. It follows that the graphs of the given equations intersect at the point <math alttext="left parenthesis 49 comma 16 right parenthesis"><mfenced><mrow><mn>49</mn><mo>,</mo><mn>16</mn></mrow></mfenced></math>. Therefore, the value of <math alttext="y"><mi>y</mi>
</math> is <math alttext="16"><mn>16</mn>
</math>.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"1e003284","external_id":"a87d4ca6-6608-46d3-9f6b-60f4ad868594","disclosed_item_id":null,"source":"qbank","vaultid":"a3af2c50-0dbb-41c4-bf65-75d9153fcc5b","uId":"0a1b6fd4-dd0a-4c8b-a035-b159da5cefa7","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"x equals 49\"><mi>x</mi><mo>=</mo><mrow><mn>49</mn></mrow></math></p>\n<p style=\"text-align: center;\"><math alttext=\"y equals StartRoot x EndRoot plus 9\"><mi>y</mi><mo>=</mo><msqrt><mi>x</mi></msqrt><mo>+</mo><mrow><mn>9</mn></mrow></math></p>\n<p style=\"text-align: left;\">The graphs of the given equations intersect at the point&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> in the <em>xy</em>-plane.&nbsp;What is the value of <math alttext=\"y\"><mi>y</mi>\n</math>?</p>","answerOptions":[{"id":"38c17dc5-60d1-4a43-a2c9-6af499e140e5","content":"<p><math alttext=\"16\"><mn>16</mn>\n</math></p>"},{"id":"453d3e5e-807d-43db-a22b-fc61f6bcdb52","content":"<p><math alttext=\"40\"><mn>40</mn>\n</math></p>"},{"id":"a0c7669a-791e-4df9-9d34-4da03911b5ea","content":"<p><math alttext=\"81\"><mn>81</mn>\n</math></p>"},{"id":"5a1ead6c-c1cd-403d-813c-ff39494e37ee","content":"<p><math alttext=\"130\"><mn>130</mn>\n</math></p>"}],"keys":["38c17dc5-60d1-4a43-a2c9-6af499e140e5"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that the graphs of the given equations intersect at the point <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> in the <em>xy</em>-plane. It follows that&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> represents a solution to the system consisting of the given equations. The first equation given is <math alttext=\"x equals 49\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>49</mn>\n</mrow>\n</math>. Substituting <math alttext=\"49\"><mn>49</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> in the second equation given, <math alttext=\"y equals StartRoot x EndRoot plus 9\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<msqrt>\n\t\t\t<mi>x</mi>\n\t\t</msqrt>\n\t\t<mo>+</mo>\n\t\t<mn>9</mn>\n\t</mrow>\n</mrow>\n</math>, yields&nbsp;<math alttext=\"y equals StartRoot 49 EndRoot plus 9\"><mi>y</mi><mo>=</mo><msqrt><mn>49</mn></msqrt><mo>+</mo><mn>9</mn></math>, which is equivalent to&nbsp;<math alttext=\"y equals 7 plus 9\"><mi>y</mi><mo>=</mo><mn>7</mn><mo>+</mo><mn>9</mn></math>, or&nbsp;<math alttext=\"y equals 16\"><mi>y</mi><mo>=</mo><mn>16</mn></math>. It follows that the graphs of the given equations intersect at the point <math alttext=\"left parenthesis 49 comma 16 right parenthesis\"><mfenced><mrow><mn>49</mn><mo>,</mo><mn>16</mn></mrow></mfenced></math>. Therefore, the value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"16\"><mn>16</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959824,"pPcc":"SAT#P","questionId":"1e003284","skill_cd":"P.B.","score_band_range_cd":2,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1691007959824,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"a87d4ca6-6608-46d3-9f6b-60f4ad868594","primary_class_cd":"P","uId":"0a1b6fd4-dd0a-4c8b-a035-b159da5cefa7","difficulty":"E"},"raw_detail":{"keys":["38c17dc5-60d1-4a43-a2c9-6af499e140e5"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that the graphs of the given equations intersect at the point <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> in the <em>xy</em>-plane. It follows that&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> represents a solution to the system consisting of the given equations. The first equation given is <math alttext=\"x equals 49\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>49</mn>\n</mrow>\n</math>. Substituting <math alttext=\"49\"><mn>49</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> in the second equation given, <math alttext=\"y equals StartRoot x EndRoot plus 9\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<msqrt>\n\t\t\t<mi>x</mi>\n\t\t</msqrt>\n\t\t<mo>+</mo>\n\t\t<mn>9</mn>\n\t</mrow>\n</mrow>\n</math>, yields&nbsp;<math alttext=\"y equals StartRoot 49 EndRoot plus 9\"><mi>y</mi><mo>=</mo><msqrt><mn>49</mn></msqrt><mo>+</mo><mn>9</mn></math>, which is equivalent to&nbsp;<math alttext=\"y equals 7 plus 9\"><mi>y</mi><mo>=</mo><mn>7</mn><mo>+</mo><mn>9</mn></math>, or&nbsp;<math alttext=\"y equals 16\"><mi>y</mi><mo>=</mo><mn>16</mn></math>. It follows that the graphs of the given equations intersect at the point <math alttext=\"left parenthesis 49 comma 16 right parenthesis\"><mfenced><mrow><mn>49</mn><mo>,</mo><mn>16</mn></mrow></mfenced></math>. Therefore, the value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"16\"><mn>16</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"x equals 49\"><mi>x</mi><mo>=</mo><mrow><mn>49</mn></mrow></math></p>\n<p style=\"text-align: center;\"><math alttext=\"y equals StartRoot x EndRoot plus 9\"><mi>y</mi><mo>=</mo><msqrt><mi>x</mi></msqrt><mo>+</mo><mrow><mn>9</mn></mrow></math></p>\n<p style=\"text-align: left;\">The graphs of the given equations intersect at the point&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> in the <em>xy</em>-plane.&nbsp;What is the value of <math alttext=\"y\"><mi>y</mi>\n</math>?</p>","externalid":"a87d4ca6-6608-46d3-9f6b-60f4ad868594","templateid":"82f8a184-9b11-46ec-a64c-60e30d4ff131","vaultid":"a3af2c50-0dbb-41c4-bf65-75d9153fcc5b","type":"mcq","answerOptions":[{"id":"38c17dc5-60d1-4a43-a2c9-6af499e140e5","content":"<p><math alttext=\"16\"><mn>16</mn>\n</math></p>"},{"id":"453d3e5e-807d-43db-a22b-fc61f6bcdb52","content":"<p><math alttext=\"40\"><mn>40</mn>\n</math></p>"},{"id":"a0c7669a-791e-4df9-9d34-4da03911b5ea","content":"<p><math alttext=\"81\"><mn>81</mn>\n</math></p>"},{"id":"5a1ead6c-c1cd-403d-813c-ff39494e37ee","content":"<p><math alttext=\"130\"><mn>130</mn>\n</math></p>"}],"correct_answer":["A"]},"createDate":1691007959824,"updateDate":1691007959824}$SATQ$::jsonb, 1691007959824, 1691007959824),
    ($SATQ$1e7a1deb$SATQ$, $SATQ$f4365bf0-90a1-4025-b4b6-b2ba9e88b93a$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">If&nbsp;<math alttext="a equals 4 k plus 5 r"><mi>a</mi><mo>=</mo><mrow><mn>4</mn></mrow><mi>k</mi><mo>+</mo><mrow><mn>5</mn></mrow><mi>r</mi></math> and&nbsp;<math alttext="b equals 7 k minus 12 r plus 3"><mi>b</mi><mo>=</mo><mrow><mn>7</mn></mrow><mi>k</mi><mo>-</mo><mrow><mn>12</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>3</mn></mrow></math>, which expression is equivalent to&nbsp;<math alttext="a minus b"><mi>a</mi><mo>-</mo><mi>b</mi></math>?</p>$SATQ$, $SATQ$[{"id":"7c9d7f25-4ebb-4309-8611-dba2e0fc298c","content":"<p><math alttext=\"minus 3 k plus 17 r plus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>+</mo><mrow><mn>17</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"3e248f09-5e1e-492a-8e59-728713f596e6","content":"<p><math alttext=\"minus 3 k plus 17 r minus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>+</mo><mrow><mn>17</mn></mrow><mi>r</mi><mo>-</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"a0dbe84e-8917-4ef5-8ad8-61cc1d318b01","content":"<p><math alttext=\"minus 3 k minus 7 r minus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>-</mo><mrow><mn>7</mn></mrow><mi>r</mi><mo>-</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"788ccf93-4aa7-4ebb-b1af-31c0d78b7115","content":"<p><math alttext=\"minus 3 k minus 7 r plus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>-</mo><mrow><mn>7</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>3</mn></mrow></math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["3e248f09-5e1e-492a-8e59-728713f596e6"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. Substituting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4 k plus 5 r"><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi></math> for <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="a"><mi>a</mi></math> and <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="7 k minus 12 r plus 3"><mn>7</mn><mi>k</mi><mo>&#8722;</mo><mn>12</mn><mi>r</mi><mo>+</mo><mn>3</mn></math> for <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="b"><mi>b</mi></math> in the expression <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="a minus b"><mi>a</mi><mo>&#8722;</mo><mi>b</mi></math> yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis 4 k plus 5 r right parenthesis minus left parenthesis 7 k minus 12 r plus 3 right parenthesis"><mo>(</mo><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>)</mo><mo>&#8722;</mo><mo>(</mo><mn>7</mn><mi>k</mi><mo>&#8722;</mo><mn>12</mn><mi>r</mi><mo>+</mo><mn>3</mn><mo>)</mo></math>. This expression can be rewritten as <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis 4 k plus 5 r right parenthesis plus left parenthesis negative 1 right parenthesis left parenthesis 7 k minus 12 r plus 3 right parenthesis"><mo>(</mo><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>)</mo><mo>+</mo><mo>(</mo><mo>&#8722;</mo><mn>1</mn><mo>)</mo><mo>(</mo><mn>7</mn><mi>k</mi><mo>&#8722;</mo><mn>12</mn><mi>r</mi><mo>+</mo><mn>3</mn><mo>)</mo></math>. By applying the distributive property, this expression can be rewritten as <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="4 k plus 5 r minus 7 k plus 12 r minus 3"><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>&#8722;</mo><mn>7</mn><mi>k</mi><mo>+</mo><mn>12</mn><mi>r</mi><mo>&#8722;</mo><mn>3</mn></math>, which is equivalent to <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis 4 k minus 7 k right parenthesis plus left parenthesis 5 r plus 12 r right parenthesis minus 3"><mo>(</mo><mn>4</mn><mi>k</mi><mo>&#8722;</mo><mn>7</mn><mi>k</mi><mo>)</mo><mo>+</mo><mo>(</mo><mn>5</mn><mi>r</mi><mo>+</mo><mn>12</mn><mi>r</mi><mo>)</mo><mo>&#8722;</mo><mn>3</mn></math>, or&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="minus 3 k plus 17 r minus 3"><mo>&#8722;</mo><mn>3</mn><mi>k</mi><mo>+</mo><mn>17</mn><mi>r</mi><mo>&#8722;</mo><mn>3</mn></math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"1e7a1deb","external_id":"f4365bf0-90a1-4025-b4b6-b2ba9e88b93a","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"3bbcd4c7-e4d7-4514-823e-f85e38f6f042","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">If&nbsp;<math alttext=\"a equals 4 k plus 5 r\"><mi>a</mi><mo>=</mo><mrow><mn>4</mn></mrow><mi>k</mi><mo>+</mo><mrow><mn>5</mn></mrow><mi>r</mi></math> and&nbsp;<math alttext=\"b equals 7 k minus 12 r plus 3\"><mi>b</mi><mo>=</mo><mrow><mn>7</mn></mrow><mi>k</mi><mo>-</mo><mrow><mn>12</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>3</mn></mrow></math>, which expression is equivalent to&nbsp;<math alttext=\"a minus b\"><mi>a</mi><mo>-</mo><mi>b</mi></math>?</p>","answerOptions":[{"id":"7c9d7f25-4ebb-4309-8611-dba2e0fc298c","content":"<p><math alttext=\"minus 3 k plus 17 r plus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>+</mo><mrow><mn>17</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"3e248f09-5e1e-492a-8e59-728713f596e6","content":"<p><math alttext=\"minus 3 k plus 17 r minus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>+</mo><mrow><mn>17</mn></mrow><mi>r</mi><mo>-</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"a0dbe84e-8917-4ef5-8ad8-61cc1d318b01","content":"<p><math alttext=\"minus 3 k minus 7 r minus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>-</mo><mrow><mn>7</mn></mrow><mi>r</mi><mo>-</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"788ccf93-4aa7-4ebb-b1af-31c0d78b7115","content":"<p><math alttext=\"minus 3 k minus 7 r plus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>-</mo><mrow><mn>7</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>3</mn></mrow></math></p>"}],"keys":["3e248f09-5e1e-492a-8e59-728713f596e6"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 k plus 5 r\"><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7 k minus 12 r plus 3\"><mn>7</mn><mi>k</mi><mo>&#8722;</mo><mn>12</mn><mi>r</mi><mo>+</mo><mn>3</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"b\"><mi>b</mi></math> in the expression <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a minus b\"><mi>a</mi><mo>&#8722;</mo><mi>b</mi></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 4 k plus 5 r right parenthesis minus left parenthesis 7 k minus 12 r plus 3 right parenthesis\"><mo>(</mo><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>)</mo><mo>&#8722;</mo><mo>(</mo><mn>7</mn><mi>k</mi><mo>&#8722;</mo><mn>12</mn><mi>r</mi><mo>+</mo><mn>3</mn><mo>)</mo></math>. This expression can be rewritten as <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 4 k plus 5 r right parenthesis plus left parenthesis negative 1 right parenthesis left parenthesis 7 k minus 12 r plus 3 right parenthesis\"><mo>(</mo><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>)</mo><mo>+</mo><mo>(</mo><mo>&#8722;</mo><mn>1</mn><mo>)</mo><mo>(</mo><mn>7</mn><mi>k</mi><mo>&#8722;</mo><mn>12</mn><mi>r</mi><mo>+</mo><mn>3</mn><mo>)</mo></math>. By applying the distributive property, this expression can be rewritten as <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 k plus 5 r minus 7 k plus 12 r minus 3\"><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>&#8722;</mo><mn>7</mn><mi>k</mi><mo>+</mo><mn>12</mn><mi>r</mi><mo>&#8722;</mo><mn>3</mn></math>, which is equivalent to <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 4 k minus 7 k right parenthesis plus left parenthesis 5 r plus 12 r right parenthesis minus 3\"><mo>(</mo><mn>4</mn><mi>k</mi><mo>&#8722;</mo><mn>7</mn><mi>k</mi><mo>)</mo><mo>+</mo><mo>(</mo><mn>5</mn><mi>r</mi><mo>+</mo><mn>12</mn><mi>r</mi><mo>)</mo><mo>&#8722;</mo><mn>3</mn></math>, or&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 3 k plus 17 r minus 3\"><mo>&#8722;</mo><mn>3</mn><mi>k</mi><mo>+</mo><mn>17</mn><mi>r</mi><mo>&#8722;</mo><mn>3</mn></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1776362727993,"pPcc":"SAT#P","questionId":"1e7a1deb","skill_cd":"P.A.","score_band_range_cd":5,"skill_desc":"Equivalent expressions","createDate":1776362727993,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"f4365bf0-90a1-4025-b4b6-b2ba9e88b93a","primary_class_cd":"P","uId":"3bbcd4c7-e4d7-4514-823e-f85e38f6f042","difficulty":"M"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">If&nbsp;<math alttext=\"a equals 4 k plus 5 r\"><mi>a</mi><mo>=</mo><mrow><mn>4</mn></mrow><mi>k</mi><mo>+</mo><mrow><mn>5</mn></mrow><mi>r</mi></math> and&nbsp;<math alttext=\"b equals 7 k minus 12 r plus 3\"><mi>b</mi><mo>=</mo><mrow><mn>7</mn></mrow><mi>k</mi><mo>-</mo><mrow><mn>12</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>3</mn></mrow></math>, which expression is equivalent to&nbsp;<math alttext=\"a minus b\"><mi>a</mi><mo>-</mo><mi>b</mi></math>?</p>","keys":["3e248f09-5e1e-492a-8e59-728713f596e6"],"answerOptions":[{"id":"7c9d7f25-4ebb-4309-8611-dba2e0fc298c","content":"<p><math alttext=\"minus 3 k plus 17 r plus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>+</mo><mrow><mn>17</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"3e248f09-5e1e-492a-8e59-728713f596e6","content":"<p><math alttext=\"minus 3 k plus 17 r minus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>+</mo><mrow><mn>17</mn></mrow><mi>r</mi><mo>-</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"a0dbe84e-8917-4ef5-8ad8-61cc1d318b01","content":"<p><math alttext=\"minus 3 k minus 7 r minus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>-</mo><mrow><mn>7</mn></mrow><mi>r</mi><mo>-</mo><mrow><mn>3</mn></mrow></math></p>"},{"id":"788ccf93-4aa7-4ebb-b1af-31c0d78b7115","content":"<p><math alttext=\"minus 3 k minus 7 r plus 3\"><mo>-</mo><mrow><mn>3</mn></mrow><mi>k</mi><mo>-</mo><mrow><mn>7</mn></mrow><mi>r</mi><mo>+</mo><mrow><mn>3</mn></mrow></math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice B is correct. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 k plus 5 r\"><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7 k minus 12 r plus 3\"><mn>7</mn><mi>k</mi><mo>&#8722;</mo><mn>12</mn><mi>r</mi><mo>+</mo><mn>3</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"b\"><mi>b</mi></math> in the expression <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a minus b\"><mi>a</mi><mo>&#8722;</mo><mi>b</mi></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 4 k plus 5 r right parenthesis minus left parenthesis 7 k minus 12 r plus 3 right parenthesis\"><mo>(</mo><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>)</mo><mo>&#8722;</mo><mo>(</mo><mn>7</mn><mi>k</mi><mo>&#8722;</mo><mn>12</mn><mi>r</mi><mo>+</mo><mn>3</mn><mo>)</mo></math>. This expression can be rewritten as <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 4 k plus 5 r right parenthesis plus left parenthesis negative 1 right parenthesis left parenthesis 7 k minus 12 r plus 3 right parenthesis\"><mo>(</mo><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>)</mo><mo>+</mo><mo>(</mo><mo>&#8722;</mo><mn>1</mn><mo>)</mo><mo>(</mo><mn>7</mn><mi>k</mi><mo>&#8722;</mo><mn>12</mn><mi>r</mi><mo>+</mo><mn>3</mn><mo>)</mo></math>. By applying the distributive property, this expression can be rewritten as <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"4 k plus 5 r minus 7 k plus 12 r minus 3\"><mn>4</mn><mi>k</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>&#8722;</mo><mn>7</mn><mi>k</mi><mo>+</mo><mn>12</mn><mi>r</mi><mo>&#8722;</mo><mn>3</mn></math>, which is equivalent to <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 4 k minus 7 k right parenthesis plus left parenthesis 5 r plus 12 r right parenthesis minus 3\"><mo>(</mo><mn>4</mn><mi>k</mi><mo>&#8722;</mo><mn>7</mn><mi>k</mi><mo>)</mo><mo>+</mo><mo>(</mo><mn>5</mn><mi>r</mi><mo>+</mo><mn>12</mn><mi>r</mi><mo>)</mo><mo>&#8722;</mo><mn>3</mn></math>, or&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 3 k plus 17 r minus 3\"><mo>&#8722;</mo><mn>3</mn><mi>k</mi><mo>+</mo><mn>17</mn><mi>r</mi><mo>&#8722;</mo><mn>3</mn></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"f4365bf0-90a1-4025-b4b6-b2ba9e88b93a","correct_answer":["B"]},"createDate":1776362727993,"updateDate":1776362727993}$SATQ$::jsonb, 1776362727993, 1776362727993),
    ($SATQ$1e8d7183$SATQ$, $SATQ$be5faa6c-0169-41dd-90d9-1eb1a8bdeca1$SATQ$::uuid, $SATQ$1513a5ae-0710-4ef8-86ec-39acd60b4757$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">Which expression is equivalent to <math alttext="256 w squared minus 676"><mrow>
	<mrow>
		<mn>256</mn>
		<msup>
			<mi>w</mi>
			<mn>2</mn>
		</msup>
	</mrow>
	<mo>-</mo>
	<mn>676</mn>
</mrow>
</math>?</p>$SATQ$, $SATQ$[{"id":"629ce9df-6690-47ec-a320-1249626c6d84","content":"<p><math alttext=\"left parenthesis 16 w minus 26 right parenthesis left parenthesis 16 w minus 26 right parenthesis\"><mo>(</mo><mrow><mn>16</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>26</mn></mrow><mo>)</mo><mo>(</mo><mrow><mn>16</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>26</mn></mrow><mo>)</mo></math></p>"},{"id":"ae303d79-f8ae-44ab-8453-5dc1714e0b14","content":"<p><math alttext=\"left parenthesis 8 w minus 13 right parenthesis left parenthesis 8 w plus 13 right parenthesis\"><mrow>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>13</mn>\n\t\t</mrow>\n\t</mfenced>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>13</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"},{"id":"ddecb8e6-aeb5-4d92-b378-fb908b88f5bb","content":"<p><math alttext=\"left parenthesis 8 w minus 13 right parenthesis left parenthesis 8 w minus 13 right parenthesis\"><mo>(</mo><mrow><mn>8</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>13</mn></mrow><mo>)</mo><mo>(</mo><mrow><mn>8</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>13</mn></mrow><mo>)</mo></math></p>"},{"id":"2a0d796e-13e8-482d-8acf-8f46fbfc060e","content":"<p><math alttext=\"left parenthesis 16 w minus 26 right parenthesis left parenthesis 16 w plus 26 right parenthesis\"><mrow>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>26</mn>\n\t\t</mrow>\n\t</mfenced>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>26</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["2a0d796e-13e8-482d-8acf-8f46fbfc060e"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. The given expression follows the difference of two squares pattern, <math alttext="x squared minus y squared"><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><msup><mi>y</mi><mn>2</mn></msup></math>, which factors as <math alttext="left parenthesis x minus y right parenthesis left parenthesis x plus y right parenthesis"><mfenced><mrow><mi>x</mi><mo>-</mo><mi>y</mi></mrow></mfenced><mfenced><mrow><mi>x</mi><mo>+</mo><mi>y</mi></mrow></mfenced></math>. Therefore, the expression <math alttext="256 w squared minus 676"><mn>256</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>676</mn></math> can be written as&nbsp;<math alttext="left parenthesis 16 w right parenthesis squared minus 26 squared"><msup><mfenced><mrow><mn>16</mn><mi>w</mi></mrow></mfenced><mn>2</mn></msup><mo>-</mo><msup><mn>26</mn><mn>2</mn></msup></math>, or <math alttext="left parenthesis 16 w right parenthesis left parenthesis 16 w right parenthesis minus left parenthesis 26 right parenthesis left parenthesis 26 right parenthesis"><mfenced><mrow><mn>16</mn><mi>w</mi></mrow></mfenced><mfenced><mrow><mn>16</mn><mi>w</mi></mrow></mfenced><mo>-</mo><mfenced><mn>26</mn></mfenced><mfenced><mn>26</mn></mfenced></math>, which factors as&nbsp;<math alttext="left parenthesis 16 w minus 26 right parenthesis left parenthesis 16 w plus 26 right parenthesis"><mfenced><mrow><mn>16</mn><mi>w</mi><mo>-</mo><mn>26</mn></mrow></mfenced><mfenced><mrow><mn>16</mn><mi>w</mi><mo>+</mo><mn>26</mn></mrow></mfenced></math>.</p>
<p style="text-align: left;">Choice A is incorrect. This expression is equivalent to <math alttext="256 w squared minus 832 w plus 676"><mn>256</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>832</mn><mi>w</mi><mo>+</mo><mn>676</mn></math>.</p>
<p style="text-align: left;">Choice B is incorrect. This expression is equivalent to <math alttext="64 w squared minus 169"><mn>64</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>169</mn></math>.</p>
<p style="text-align: left;">Choice C is incorrect. This expression is equivalent to <math alttext="64 w squared minus 208 w plus 169"><mn>64</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>208</mn><mi>w</mi><mo>+</mo><mn>169</mn></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"1e8d7183","external_id":"be5faa6c-0169-41dd-90d9-1eb1a8bdeca1","disclosed_item_id":null,"source":"qbank","vaultid":"1513a5ae-0710-4ef8-86ec-39acd60b4757","uId":"ea2d85be-756b-43a4-931f-233d2270c78c","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">Which expression is equivalent to <math alttext=\"256 w squared minus 676\"><mrow>\n\t<mrow>\n\t\t<mn>256</mn>\n\t\t<msup>\n\t\t\t<mi>w</mi>\n\t\t\t<mn>2</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>-</mo>\n\t<mn>676</mn>\n</mrow>\n</math>?</p>","answerOptions":[{"id":"629ce9df-6690-47ec-a320-1249626c6d84","content":"<p><math alttext=\"left parenthesis 16 w minus 26 right parenthesis left parenthesis 16 w minus 26 right parenthesis\"><mo>(</mo><mrow><mn>16</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>26</mn></mrow><mo>)</mo><mo>(</mo><mrow><mn>16</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>26</mn></mrow><mo>)</mo></math></p>"},{"id":"ae303d79-f8ae-44ab-8453-5dc1714e0b14","content":"<p><math alttext=\"left parenthesis 8 w minus 13 right parenthesis left parenthesis 8 w plus 13 right parenthesis\"><mrow>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>13</mn>\n\t\t</mrow>\n\t</mfenced>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>13</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"},{"id":"ddecb8e6-aeb5-4d92-b378-fb908b88f5bb","content":"<p><math alttext=\"left parenthesis 8 w minus 13 right parenthesis left parenthesis 8 w minus 13 right parenthesis\"><mo>(</mo><mrow><mn>8</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>13</mn></mrow><mo>)</mo><mo>(</mo><mrow><mn>8</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>13</mn></mrow><mo>)</mo></math></p>"},{"id":"2a0d796e-13e8-482d-8acf-8f46fbfc060e","content":"<p><math alttext=\"left parenthesis 16 w minus 26 right parenthesis left parenthesis 16 w plus 26 right parenthesis\"><mrow>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>26</mn>\n\t\t</mrow>\n\t</mfenced>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>26</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"}],"keys":["2a0d796e-13e8-482d-8acf-8f46fbfc060e"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. The given expression follows the difference of two squares pattern, <math alttext=\"x squared minus y squared\"><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><msup><mi>y</mi><mn>2</mn></msup></math>, which factors as <math alttext=\"left parenthesis x minus y right parenthesis left parenthesis x plus y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>-</mo><mi>y</mi></mrow></mfenced><mfenced><mrow><mi>x</mi><mo>+</mo><mi>y</mi></mrow></mfenced></math>. Therefore, the expression <math alttext=\"256 w squared minus 676\"><mn>256</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>676</mn></math> can be written as&nbsp;<math alttext=\"left parenthesis 16 w right parenthesis squared minus 26 squared\"><msup><mfenced><mrow><mn>16</mn><mi>w</mi></mrow></mfenced><mn>2</mn></msup><mo>-</mo><msup><mn>26</mn><mn>2</mn></msup></math>, or <math alttext=\"left parenthesis 16 w right parenthesis left parenthesis 16 w right parenthesis minus left parenthesis 26 right parenthesis left parenthesis 26 right parenthesis\"><mfenced><mrow><mn>16</mn><mi>w</mi></mrow></mfenced><mfenced><mrow><mn>16</mn><mi>w</mi></mrow></mfenced><mo>-</mo><mfenced><mn>26</mn></mfenced><mfenced><mn>26</mn></mfenced></math>, which factors as&nbsp;<math alttext=\"left parenthesis 16 w minus 26 right parenthesis left parenthesis 16 w plus 26 right parenthesis\"><mfenced><mrow><mn>16</mn><mi>w</mi><mo>-</mo><mn>26</mn></mrow></mfenced><mfenced><mrow><mn>16</mn><mi>w</mi><mo>+</mo><mn>26</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This expression is equivalent to <math alttext=\"256 w squared minus 832 w plus 676\"><mn>256</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>832</mn><mi>w</mi><mo>+</mo><mn>676</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This expression is equivalent to <math alttext=\"64 w squared minus 169\"><mn>64</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>169</mn></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This expression is equivalent to <math alttext=\"64 w squared minus 208 w plus 169\"><mn>64</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>208</mn><mi>w</mi><mo>+</mo><mn>169</mn></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959821,"pPcc":"SAT#P","questionId":"1e8d7183","skill_cd":"P.A.","score_band_range_cd":2,"skill_desc":"Equivalent expressions","createDate":1691007959821,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"be5faa6c-0169-41dd-90d9-1eb1a8bdeca1","primary_class_cd":"P","uId":"ea2d85be-756b-43a4-931f-233d2270c78c","difficulty":"E"},"raw_detail":{"keys":["2a0d796e-13e8-482d-8acf-8f46fbfc060e"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. The given expression follows the difference of two squares pattern, <math alttext=\"x squared minus y squared\"><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><msup><mi>y</mi><mn>2</mn></msup></math>, which factors as <math alttext=\"left parenthesis x minus y right parenthesis left parenthesis x plus y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>-</mo><mi>y</mi></mrow></mfenced><mfenced><mrow><mi>x</mi><mo>+</mo><mi>y</mi></mrow></mfenced></math>. Therefore, the expression <math alttext=\"256 w squared minus 676\"><mn>256</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>676</mn></math> can be written as&nbsp;<math alttext=\"left parenthesis 16 w right parenthesis squared minus 26 squared\"><msup><mfenced><mrow><mn>16</mn><mi>w</mi></mrow></mfenced><mn>2</mn></msup><mo>-</mo><msup><mn>26</mn><mn>2</mn></msup></math>, or <math alttext=\"left parenthesis 16 w right parenthesis left parenthesis 16 w right parenthesis minus left parenthesis 26 right parenthesis left parenthesis 26 right parenthesis\"><mfenced><mrow><mn>16</mn><mi>w</mi></mrow></mfenced><mfenced><mrow><mn>16</mn><mi>w</mi></mrow></mfenced><mo>-</mo><mfenced><mn>26</mn></mfenced><mfenced><mn>26</mn></mfenced></math>, which factors as&nbsp;<math alttext=\"left parenthesis 16 w minus 26 right parenthesis left parenthesis 16 w plus 26 right parenthesis\"><mfenced><mrow><mn>16</mn><mi>w</mi><mo>-</mo><mn>26</mn></mrow></mfenced><mfenced><mrow><mn>16</mn><mi>w</mi><mo>+</mo><mn>26</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This expression is equivalent to <math alttext=\"256 w squared minus 832 w plus 676\"><mn>256</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>832</mn><mi>w</mi><mo>+</mo><mn>676</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This expression is equivalent to <math alttext=\"64 w squared minus 169\"><mn>64</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>169</mn></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This expression is equivalent to <math alttext=\"64 w squared minus 208 w plus 169\"><mn>64</mn><msup><mi>w</mi><mn>2</mn></msup><mo>-</mo><mn>208</mn><mi>w</mi><mo>+</mo><mn>169</mn></math>.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">Which expression is equivalent to <math alttext=\"256 w squared minus 676\"><mrow>\n\t<mrow>\n\t\t<mn>256</mn>\n\t\t<msup>\n\t\t\t<mi>w</mi>\n\t\t\t<mn>2</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>-</mo>\n\t<mn>676</mn>\n</mrow>\n</math>?</p>","externalid":"be5faa6c-0169-41dd-90d9-1eb1a8bdeca1","templateid":"e0608b40-d6f6-4927-894e-a45cf07bd7cd","vaultid":"1513a5ae-0710-4ef8-86ec-39acd60b4757","type":"mcq","answerOptions":[{"id":"629ce9df-6690-47ec-a320-1249626c6d84","content":"<p><math alttext=\"left parenthesis 16 w minus 26 right parenthesis left parenthesis 16 w minus 26 right parenthesis\"><mo>(</mo><mrow><mn>16</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>26</mn></mrow><mo>)</mo><mo>(</mo><mrow><mn>16</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>26</mn></mrow><mo>)</mo></math></p>"},{"id":"ae303d79-f8ae-44ab-8453-5dc1714e0b14","content":"<p><math alttext=\"left parenthesis 8 w minus 13 right parenthesis left parenthesis 8 w plus 13 right parenthesis\"><mrow>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>13</mn>\n\t\t</mrow>\n\t</mfenced>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>13</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"},{"id":"ddecb8e6-aeb5-4d92-b378-fb908b88f5bb","content":"<p><math alttext=\"left parenthesis 8 w minus 13 right parenthesis left parenthesis 8 w minus 13 right parenthesis\"><mo>(</mo><mrow><mn>8</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>13</mn></mrow><mo>)</mo><mo>(</mo><mrow><mn>8</mn></mrow><mi>w</mi><mo>-</mo><mrow><mn>13</mn></mrow><mo>)</mo></math></p>"},{"id":"2a0d796e-13e8-482d-8acf-8f46fbfc060e","content":"<p><math alttext=\"left parenthesis 16 w minus 26 right parenthesis left parenthesis 16 w plus 26 right parenthesis\"><mrow>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>26</mn>\n\t\t</mrow>\n\t</mfenced>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<mi>w</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>26</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"}],"correct_answer":["D"]},"createDate":1691007959821,"updateDate":1691007959821}$SATQ$::jsonb, 1691007959821, 1691007959821),
    ($SATQ$1ee962ec$SATQ$, $SATQ$1549b7a3-5fbf-46f8-8861-103e5d9edae0$SATQ$::uuid, $SATQ$5553d2b4-3bd2-4420-a0f3-0250256a68be$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="285.92875pt" version="1.1" viewBox="0 0 306.209061 285.92875" width="306.209061pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a parabola in the x y plane with the origin labeled O. The x axis is labeled Elapsed time, in hours. It ranges from 0 to 16 in increments of 1, with values marked every 2 grid lines. The y axis is labeled Ocean water level, in feet. It ranges from negative 16 to 0 in increments of 1, with values marked every 2 grid lines. Refer to long description.">
 <defs>
  <style type="text/css">
*{stroke-linecap:butt;stroke-linejoin:round;}
  </style>
 </defs>
 <g id="figure_1">
  <g id="patch_1">
   <path d="M 0 285.92875 
L 306.209061 285.92875 
L 306.209061 0 
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
     <!-- Elapsed time (hours) -->
     <defs>
      <path d="M 14.84375 64.0625 
Q 19.234375 64.0625 30.078125 64.453125 
Q 40.921875 64.84375 46.390625 64.84375 
Q 46.78125 62.015625 47.90625 57.375 
Q 49.03125 52.734375 49.21875 51.5625 
Q 48.734375 51.078125 47.453125 51.078125 
Q 46.1875 51.078125 46.09375 51.765625 
Q 44.625 57.125 41.984375 58.640625 
Q 39.359375 60.15625 34.765625 60.15625 
L 28.21875 60.15625 
Q 19.828125 60.15625 19.625 58.890625 
Q 19.140625 56.546875 19.140625 50.6875 
L 19.140625 35.0625 
Q 19.140625 34.46875 23.34375 34.46875 
L 28.515625 34.46875 
Q 31.25 34.46875 32.46875 34.46875 
Q 33.6875 34.46875 35.046875 34.859375 
Q 36.421875 35.25 36.8125 35.34375 
Q 37.203125 35.453125 37.84375 36.625 
Q 38.484375 37.796875 38.578125 38.328125 
Q 38.671875 38.875 39.265625 41.109375 
Q 39.359375 41.796875 40.71875 41.796875 
Q 41.890625 41.796875 42.390625 41.3125 
L 42.390625 22.859375 
Q 42 22.46875 40.828125 22.46875 
Q 39.546875 22.46875 39.265625 23.25 
Q 38.578125 25.875 38.078125 27.1875 
Q 37.59375 28.515625 37.34375 28.75 
Q 37.109375 29 36.53125 29.390625 
Q 35.25 30.171875 26.171875 30.171875 
Q 19.140625 30.171875 19.140625 29.296875 
L 19.140625 14.15625 
Q 19.140625 7.8125 20.015625 5.28125 
Q 20.3125 4.296875 26.65625 4.296875 
L 31.34375 4.296875 
Q 40.4375 4.296875 43.65625 5.953125 
Q 45.125 6.734375 46.921875 9.421875 
Q 48.734375 12.109375 49.8125 15.828125 
Q 50 16.40625 51.171875 16.40625 
Q 53.03125 16.40625 53.609375 15.828125 
Q 53.125 14.546875 52.09375 11.765625 
Q 51.078125 8.984375 50.484375 7.265625 
Q 49.90625 5.5625 49.21875 3.3125 
Q 48.53125 1.078125 48.34375 -0.390625 
Q 43.359375 -0.390625 32.609375 -0.1875 
Q 21.875 0 15.046875 0 
L 3.21875 -0.296875 
Q 2.9375 0 2.9375 1.265625 
Q 2.9375 2.546875 3.21875 2.546875 
Q 4.5 2.546875 6.984375 3.21875 
Q 9.46875 3.90625 9.96875 4.78125 
Q 10.640625 5.953125 10.640625 13.96875 
L 10.640625 50.875 
Q 10.640625 56.640625 9.96875 59.28125 
Q 9.671875 60.0625 7.078125 60.734375 
Q 4.5 61.421875 3.21875 61.421875 
Q 2.828125 61.421875 2.828125 62.59375 
Q 2.828125 63.875 3.21875 64.265625 
Q 8.296875 64.0625 14.84375 64.0625 
z
" id="CrimsonText-Regular-69"></path>
      <path d="M 8.5 11.328125 
L 8.5 53.609375 
Q 8.5 56.9375 7.90625 59.859375 
Q 7.421875 61.421875 2.9375 61.421875 
L 2.046875 61.421875 
Q 1.46875 61.421875 1.46875 62.5 
Q 1.46875 64.0625 2.046875 64.0625 
Q 4.984375 64.359375 7.46875 64.84375 
Q 9.96875 65.328125 11.375 65.8125 
Q 12.796875 66.3125 13.765625 66.75 
Q 14.75 67.1875 15.234375 67.484375 
L 15.625 67.78125 
L 15.828125 67.78125 
Q 16.21875 67.78125 16.609375 67.234375 
Q 17 66.703125 17.09375 66.21875 
Q 16.015625 63.09375 16.015625 57.71875 
L 16.015625 13.1875 
Q 16.015625 7.515625 16.796875 4.5 
Q 17 3.8125 19.34375 3.171875 
Q 21.6875 2.546875 22.65625 2.546875 
Q 22.953125 2.546875 23.046875 1.375 
Q 23.140625 0.203125 22.953125 -0.296875 
Q 13.1875 0.203125 12.5 0.203125 
Q 11.921875 0.203125 1.859375 -0.296875 
Q 1.46875 0.09375 1.46875 1.3125 
Q 1.46875 2.546875 1.859375 2.546875 
Q 3.03125 2.546875 5.328125 3.171875 
Q 7.625 3.8125 7.8125 4.5 
Q 8.5 7.328125 8.5 11.328125 
z
" id="CrimsonText-Regular-108"></path>
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
      <path d="M 26.265625 42.578125 
Q 35.640625 42.578125 40.90625 36.28125 
Q 46.1875 29.984375 46.1875 22.859375 
Q 46.1875 13.484375 39.640625 6.34375 
Q 33.109375 -0.78125 24.8125 -0.78125 
Q 23.34375 -0.78125 22.21875 -0.6875 
Q 21.09375 -0.59375 20.21875 -0.34375 
Q 19.34375 -0.09375 18.84375 0.09375 
Q 18.359375 0.296875 17.578125 0.640625 
Q 16.796875 0.984375 16.609375 1.078125 
Q 16.21875 0.59375 16.21875 -0.203125 
L 16.21875 -8.59375 
Q 16.21875 -14.265625 17 -17.28125 
Q 17.1875 -17.96875 19.53125 -18.59375 
Q 21.875 -19.234375 22.859375 -19.234375 
Q 23.140625 -19.234375 23.234375 -20.453125 
Q 23.34375 -21.6875 23.140625 -22.078125 
Q 13.375 -21.578125 12.703125 -21.578125 
Q 12.109375 -21.578125 2.046875 -22.078125 
Q 1.65625 -21.6875 1.65625 -20.453125 
Q 1.65625 -19.234375 2.046875 -19.234375 
Q 3.21875 -19.234375 5.515625 -18.59375 
Q 7.8125 -17.96875 8.015625 -17.28125 
Q 8.6875 -14.453125 8.6875 -10.453125 
L 8.6875 29.890625 
Q 8.6875 33.6875 7.328125 35.15625 
Q 6.34375 36.328125 4.921875 36.765625 
Q 3.515625 37.203125 2.578125 37.203125 
Q 1.65625 37.203125 1.65625 37.40625 
Q 1.65625 39.75 2.25 39.84375 
Q 12.59375 41.40625 15.71875 42.390625 
Q 15.828125 42.390625 16.015625 42.4375 
Q 16.21875 42.484375 16.21875 42.484375 
Q 16.5 42.484375 16.5 41.9375 
Q 16.5 41.40625 16.40625 40.625 
Q 16.3125 39.84375 16.3125 39.75 
L 16.3125 39.15625 
Q 17.671875 40.140625 20.84375 41.359375 
Q 24.03125 42.578125 26.265625 42.578125 
z
M 23.140625 37.796875 
Q 20.125 37.796875 18.171875 36.1875 
Q 16.21875 34.578125 16.21875 31.546875 
L 16.21875 9.578125 
Q 16.21875 6.9375 19.046875 5.125 
Q 21.875 3.328125 25.203125 3.328125 
Q 30.953125 3.328125 34.375 8.5 
Q 37.796875 13.671875 37.796875 20.125 
Q 37.796875 28.328125 33.453125 33.0625 
Q 29.109375 37.796875 23.140625 37.796875 
z
" id="CrimsonText-Regular-112"></path>
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
      <path id="CrimsonText-Regular-32"></path>
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
      <path d="M 13.28125 29.78125 
Q 13.28125 16.015625 18.203125 4.296875 
Q 23.140625 -7.421875 26.859375 -9.28125 
Q 27.046875 -9.375 27.046875 -9.765625 
Q 27.046875 -10.359375 26.609375 -11.078125 
Q 26.171875 -11.8125 25.6875 -11.8125 
Q 23.640625 -11.8125 20.515625 -8.484375 
Q 17.390625 -5.171875 14.3125 0.140625 
Q 11.234375 5.46875 9.078125 13.515625 
Q 6.9375 21.578125 6.9375 29.78125 
Q 6.9375 38.484375 8.9375 46.78125 
Q 10.9375 55.078125 13.8125 60.640625 
Q 16.703125 66.21875 19.921875 69.625 
Q 23.140625 73.046875 25.6875 73.046875 
Q 26.171875 73.046875 26.5625 72.171875 
Q 26.953125 71.296875 26.953125 70.703125 
Q 26.953125 70.40625 26.859375 70.40625 
Q 21.96875 68.0625 17.625 56 
Q 13.28125 43.953125 13.28125 29.78125 
z
" id="CrimsonText-Regular-40"></path>
      <path d="M 30.46875 42.78125 
Q 37.015625 42.78125 39.84375 38.09375 
Q 42.671875 33.40625 42.671875 23.640625 
L 42.671875 13.09375 
Q 42.671875 7.515625 43.453125 4.5 
Q 43.65625 3.8125 46 3.171875 
Q 48.34375 2.546875 49.3125 2.546875 
Q 49.609375 2.546875 49.703125 1.375 
Q 49.8125 0.203125 49.609375 -0.296875 
Q 39.84375 0.203125 39.15625 0.203125 
Q 38.875 0.203125 28.90625 -0.296875 
Q 28.515625 0.09375 28.515625 1.3125 
Q 28.515625 2.546875 28.90625 2.546875 
Q 30.078125 2.546875 32.171875 3.171875 
Q 34.28125 3.8125 34.46875 4.5 
Q 35.15625 7.328125 35.15625 11.328125 
L 35.15625 21.6875 
Q 35.15625 30.671875 32.65625 33.734375 
Q 30.171875 36.8125 25 36.8125 
Q 22.078125 36.8125 19.1875 34.515625 
Q 16.3125 32.234375 16.3125 30.46875 
L 16.3125 13.1875 
Q 16.3125 7.515625 17.09375 4.5 
Q 17.28125 3.8125 19.625 3.171875 
Q 21.96875 2.546875 22.953125 2.546875 
Q 23.25 2.546875 23.34375 1.375 
Q 23.4375 0.203125 23.25 -0.296875 
Q 13.484375 0.203125 12.796875 0.203125 
Q 12.203125 0.203125 2.15625 -0.296875 
Q 1.765625 0.09375 1.765625 1.3125 
Q 1.765625 2.546875 2.15625 2.546875 
Q 3.328125 2.546875 5.609375 3.171875 
Q 7.90625 3.8125 8.109375 4.5 
Q 8.796875 7.328125 8.796875 11.234375 
L 8.796875 53.609375 
Q 8.796875 56.9375 8.203125 59.859375 
Q 7.71875 61.421875 3.21875 61.421875 
L 2.34375 61.421875 
Q 1.765625 61.421875 1.765625 62.5 
Q 1.765625 64.0625 2.34375 64.0625 
Q 5.28125 64.359375 7.765625 64.84375 
Q 10.25 65.328125 11.671875 65.8125 
Q 13.09375 66.3125 14.0625 66.75 
Q 15.046875 67.1875 15.4375 67.484375 
L 15.921875 67.78125 
L 16.109375 67.78125 
Q 16.5 67.78125 16.890625 67.234375 
Q 17.28125 66.703125 17.390625 66.21875 
Q 16.3125 63.09375 16.3125 57.71875 
L 16.3125 36.328125 
Q 16.3125 35.9375 16.5 35.9375 
Q 16.609375 35.9375 16.796875 36.140625 
Q 18.953125 38.484375 22.90625 40.625 
Q 26.859375 42.78125 30.46875 42.78125 
z
" id="CrimsonText-Regular-104"></path>
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
      <path d="M 18.171875 29.78125 
Q 18.171875 43.953125 13.8125 56 
Q 9.46875 68.0625 4.59375 70.40625 
Q 4.5 70.40625 4.5 70.703125 
Q 4.5 71.296875 4.890625 72.171875 
Q 5.28125 73.046875 5.765625 73.046875 
Q 8.296875 73.046875 11.515625 69.625 
Q 14.75 66.21875 17.625 60.640625 
Q 20.515625 55.078125 22.515625 46.78125 
Q 24.515625 38.484375 24.515625 29.78125 
Q 24.515625 21.578125 22.359375 13.515625 
Q 20.21875 5.46875 17.140625 0.140625 
Q 14.0625 -5.171875 10.9375 -8.484375 
Q 7.8125 -11.8125 5.765625 -11.8125 
Q 5.28125 -11.8125 4.828125 -11.078125 
Q 4.390625 -10.359375 4.390625 -9.765625 
Q 4.390625 -9.375 4.59375 -9.28125 
Q 8.296875 -7.421875 13.234375 4.296875 
Q 18.171875 16.015625 18.171875 29.78125 
z
" id="CrimsonText-Regular-41"></path>
     </defs>
     <g transform="translate(100.300703 275.417031)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-69"></use>
      <use x="55.761719" xlink:href="#CrimsonText-Regular-108"></use>
      <use x="80.273438" xlink:href="#CrimsonText-Regular-97"></use>
      <use x="121.582031" xlink:href="#CrimsonText-Regular-112"></use>
      <use x="171.484375" xlink:href="#CrimsonText-Regular-115"></use>
      <use x="206.542969" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="248.535156" xlink:href="#CrimsonText-Regular-100"></use>
      <use x="297.070312" xlink:href="#CrimsonText-Regular-32"></use>
      <use x="319.433594" xlink:href="#CrimsonText-Regular-116"></use>
      <use x="350.097656" xlink:href="#CrimsonText-Regular-105"></use>
      <use x="376.367188" xlink:href="#CrimsonText-Regular-109"></use>
      <use x="454.492188" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="496.484375" xlink:href="#CrimsonText-Regular-32"></use>
      <use x="518.847656" xlink:href="#CrimsonText-Regular-40"></use>
      <use x="550.390625" xlink:href="#CrimsonText-Regular-104"></use>
      <use x="602.148438" xlink:href="#CrimsonText-Regular-111"></use>
      <use x="651.953125" xlink:href="#CrimsonText-Regular-117"></use>
      <use x="702.441406" xlink:href="#CrimsonText-Regular-114"></use>
      <use x="739.550781" xlink:href="#CrimsonText-Regular-115"></use>
      <use x="774.609375" xlink:href="#CrimsonText-Regular-41"></use>
     </g>
    </g>
   </g>
   <g id="matplotlib.axis_2">
    <g id="text_2">
     <!-- Ocean water level (feet) -->
     <defs>
      <path d="M 33.984375 61.03125 
Q 24.703125 61.03125 19.328125 52.921875 
Q 13.96875 44.828125 13.96875 34.1875 
Q 13.96875 26.375 16.5 19.4375 
Q 19.046875 12.5 24.40625 7.859375 
Q 29.78125 3.21875 37.015625 3.21875 
Q 43.265625 3.21875 47.953125 7.265625 
Q 52.640625 11.328125 54.828125 17.328125 
Q 57.03125 23.34375 57.03125 30.171875 
Q 57.03125 37.984375 54.484375 44.875 
Q 51.953125 51.765625 46.578125 56.390625 
Q 41.21875 61.03125 33.984375 61.03125 
z
M 22.5625 -0.984375 
Q 4.296875 18.359375 4.296875 32.03125 
Q 4.296875 45.703125 13.421875 55.421875 
Q 22.5625 65.140625 35.453125 65.140625 
Q 48.34375 65.140625 57.515625 55.421875 
Q 66.703125 45.703125 66.703125 32.03125 
Q 66.703125 18.359375 57.515625 8.6875 
Q 48.34375 -0.984375 35.453125 -0.984375 
Q 22.5625 -0.984375 4.296875 18.359375 
z
" id="CrimsonText-Regular-79"></path>
      <path d="M 22.5625 42.578125 
Q 33.296875 42.578125 37.40625 37.59375 
Q 37.40625 31.0625 33.796875 31.0625 
Q 32.125 31.0625 31.25 31.78125 
Q 30.375 32.515625 29 34.46875 
Q 25.984375 38.96875 21.78125 38.96875 
Q 17.78125 38.96875 14.5 35.15625 
Q 11.234375 31.34375 11.234375 23.828125 
Q 11.234375 16.015625 15.09375 10.84375 
Q 18.953125 5.671875 25.78125 5.671875 
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
Q 3.609375 29.390625 8.484375 35.984375 
Q 13.375 42.578125 22.5625 42.578125 
z
" id="CrimsonText-Regular-99"></path>
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
      <path d="M 60.84375 36.140625 
Q 60.84375 39.546875 54.390625 39.546875 
L 54 39.546875 
Q 53.609375 39.546875 53.609375 40.765625 
Q 53.609375 42 54 42.390625 
Q 55.46875 42.28125 57.265625 42.1875 
Q 59.078125 42.09375 60.59375 41.984375 
Q 62.109375 41.890625 63.875 41.890625 
Q 65.53125 41.890625 66.75 41.984375 
Q 67.96875 42.09375 69.53125 42.1875 
Q 71.09375 42.28125 72.5625 42.390625 
Q 72.75 41.796875 72.75 40.921875 
Q 72.75 39.546875 72.265625 39.546875 
Q 71 39.546875 68.84375 38.71875 
Q 66.703125 37.890625 66.015625 36.03125 
L 53.21875 1.078125 
Q 52.4375 -1.078125 50.484375 -1.078125 
Q 49.515625 -1.078125 49.3125 -0.6875 
L 37.3125 28.03125 
L 27.4375 1.078125 
Q 27.34375 0.78125 27.046875 0.34375 
Q 26.765625 -0.09375 26.125 -0.578125 
Q 25.484375 -1.078125 24.8125 -1.078125 
Q 23.828125 -1.078125 23.640625 -0.6875 
Q 21.296875 4.59375 18.3125 11.96875 
Q 15.328125 19.34375 12.6875 25.25 
Q 10.0625 31.15625 6.546875 37.40625 
Q 5.28125 39.546875 1.265625 39.546875 
Q 0.875 39.546875 0.875 40.828125 
Q 0.875 42 1.265625 42.390625 
Q 2.734375 42.28125 4.484375 42.1875 
Q 6.25 42.09375 7.71875 41.984375 
Q 9.1875 41.890625 10.9375 41.890625 
L 20.703125 42.390625 
Q 20.90625 42 20.84375 40.765625 
Q 20.796875 39.546875 20.515625 39.546875 
Q 15.625 39.546875 15.625 37.3125 
Q 15.625 37.015625 16.84375 34.375 
Q 18.0625 31.734375 21.09375 25.234375 
Q 24.125 18.75 27.25 11.71875 
Q 28.90625 16.5 30.953125 22.265625 
Q 33.015625 28.03125 33.84375 30.46875 
Q 34.671875 32.90625 34.671875 33.296875 
Q 34.671875 33.796875 34.234375 34.859375 
Q 33.796875 35.9375 33.296875 36.71875 
L 32.8125 37.59375 
Q 32.234375 38.484375 30.953125 39.0625 
Q 29.984375 39.546875 27.828125 39.546875 
Q 27.4375 39.546875 27.4375 40.765625 
Q 27.4375 42 27.828125 42.390625 
Q 29.296875 42.28125 31 42.1875 
Q 32.71875 42.09375 34.125 41.984375 
Q 35.546875 41.890625 37.3125 41.890625 
Q 38.96875 41.890625 40.375 41.984375 
Q 41.796875 42.09375 43.65625 42.1875 
Q 45.515625 42.28125 46.875 42.390625 
Q 47.078125 41.796875 47.078125 40.71875 
Q 47.078125 39.65625 46.78125 39.546875 
Q 42.09375 39.546875 42.09375 35.75 
Q 42.09375 33.6875 52.828125 11.71875 
Q 54.296875 16.21875 56.546875 22.5625 
Q 58.796875 28.90625 59.8125 31.984375 
Q 60.84375 35.0625 60.84375 36.140625 
z
" id="CrimsonText-Regular-119"></path>
      <path d="M 37.40625 36.421875 
Q 37.40625 39.546875 30.375 39.546875 
Q 29.984375 39.546875 29.984375 40.765625 
Q 29.984375 42 30.375 42.390625 
Q 31.453125 42.28125 34.375 42.078125 
Q 37.3125 41.890625 39.65625 41.890625 
L 49.421875 42.390625 
Q 49.609375 41.796875 49.609375 40.921875 
Q 49.609375 39.546875 48.921875 39.546875 
Q 47.5625 39.546875 45.3125 38.765625 
Q 43.0625 37.984375 42.28125 36.234375 
L 26.765625 1.171875 
Q 26.5625 0.484375 25.578125 -0.296875 
Q 24.609375 -1.078125 23.921875 -1.078125 
Q 23.25 -1.078125 23.046875 -0.6875 
Q 21.390625 2.9375 15.765625 16.109375 
Q 10.15625 29.296875 5.953125 37.59375 
Q 4.984375 39.546875 0.203125 39.546875 
Q -0.203125 39.546875 -0.203125 40.828125 
Q -0.203125 42 0.203125 42.390625 
Q 10.25 41.890625 10.359375 41.890625 
L 20.125 42.390625 
Q 20.3125 42 20.15625 40.765625 
Q 20.015625 39.546875 19.734375 39.546875 
Q 14.9375 39.546875 14.9375 37.890625 
Q 14.9375 37.703125 15.046875 37.5 
L 26.765625 11.03125 
L 36.625 33.5 
Q 37.40625 35.359375 37.40625 36.421875 
z
" id="CrimsonText-Regular-118"></path>
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
     </defs>
     <g transform="translate(17.367188 205.100859)rotate(-90)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-79"></use>
      <use x="71.09375" xlink:href="#CrimsonText-Regular-99"></use>
      <use x="110.644531" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="152.636719" xlink:href="#CrimsonText-Regular-97"></use>
      <use x="193.945312" xlink:href="#CrimsonText-Regular-110"></use>
      <use x="246.972656" xlink:href="#CrimsonText-Regular-32"></use>
      <use x="269.335938" xlink:href="#CrimsonText-Regular-119"></use>
      <use x="341.015625" xlink:href="#CrimsonText-Regular-97"></use>
      <use x="382.324219" xlink:href="#CrimsonText-Regular-116"></use>
      <use x="412.988281" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="454.980469" xlink:href="#CrimsonText-Regular-114"></use>
      <use x="492.089844" xlink:href="#CrimsonText-Regular-32"></use>
      <use x="514.453125" xlink:href="#CrimsonText-Regular-108"></use>
      <use x="538.964844" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="580.957031" xlink:href="#CrimsonText-Regular-118"></use>
      <use x="629.101562" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="671.09375" xlink:href="#CrimsonText-Regular-108"></use>
      <use x="695.605469" xlink:href="#CrimsonText-Regular-32"></use>
      <use x="717.96875" xlink:href="#CrimsonText-Regular-40"></use>
      <use x="749.511719" xlink:href="#CrimsonText-Regular-102"></use>
      <use x="778.90625" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="820.898438" xlink:href="#CrimsonText-Regular-101"></use>
      <use x="862.890625" xlink:href="#CrimsonText-Regular-116"></use>
      <use x="893.554688" xlink:href="#CrimsonText-Regular-41"></use>
     </g>
    </g>
   </g>
  </g>
  <g id="axes_2">
   <g id="patch_3">
    <path d="M 16.838751 268.02 
L 299.009061 268.02 
L 299.009061 7.2 
L 16.838751 7.2 
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
    <path clip-path="url(#p238c96a783)" d="M 73.204618 255.11539 
L 73.204618 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 86.319059 255.11539 
L 86.319059 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 99.4335 255.11539 
L 99.4335 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 112.547941 255.11539 
L 112.547941 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 125.662382 255.11539 
L 125.662382 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 138.776823 255.11539 
L 138.776823 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 151.891263 255.11539 
L 151.891263 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 165.005704 255.11539 
L 165.005704 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 178.120145 255.11539 
L 178.120145 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 191.234586 255.11539 
L 191.234586 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 204.349027 255.11539 
L 204.349027 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 217.463468 255.11539 
L 217.463468 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 230.577909 255.11539 
L 230.577909 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 243.69235 255.11539 
L 243.69235 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 256.80679 255.11539 
L 256.80679 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 269.921231 255.11539 
L 269.921231 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 249.869614 
L 275.167008 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 236.755173 
L 275.167008 236.755173 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 223.640732 
L 275.167008 223.640732 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 210.526291 
L 275.167008 210.526291 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 197.41185 
L 275.167008 197.41185 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 184.297409 
L 275.167008 184.297409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 171.182969 
L 275.167008 171.182969 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 158.068528 
L 275.167008 158.068528 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 144.954087 
L 275.167008 144.954087 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 131.839646 
L 275.167008 131.839646 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 118.725205 
L 275.167008 118.725205 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 105.610764 
L 275.167008 105.610764 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 92.496323 
L 275.167008 92.496323 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 79.381883 
L 275.167008 79.381883 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 66.267442 
L 275.167008 66.267442 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p238c96a783)" d="M 54.844401 53.153001 
L 275.167008 53.153001 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#p238c96a783)" d="M 54.844401 40.03856 
L 280.412784 40.03856 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 277.431707 -244.905739 
L 280.412784 -245.89019 
L 277.431707 -246.874641 
L 277.431707 -244.905739 
L 280.412784 -245.89019 
" id="md4e69817bb" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p238c96a783)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#md4e69817bb" y="285.92875"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#p238c96a783)" d="M 60.090177 255.11539 
L 60.090177 29.547007 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 61.145733 -252.807504 
L 60.090177 -256.381743 
L 59.034622 -252.807504 
L 61.145733 -252.807504 
L 60.090177 -256.381743 
" id="m150b7e3201" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p238c96a783)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m150b7e3201" y="285.92875"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#p238c96a783)" d="M 73.204618 43.903869 
L 73.204618 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 86.319059 43.903869 
L 86.319059 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 99.4335 43.903869 
L 99.4335 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 112.547941 43.903869 
L 112.547941 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 125.662382 43.903869 
L 125.662382 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 138.776823 43.903869 
L 138.776823 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 151.891263 43.903869 
L 151.891263 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 165.005704 43.903869 
L 165.005704 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 178.120145 43.903869 
L 178.120145 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 191.234586 43.903869 
L 191.234586 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 204.349027 43.903869 
L 204.349027 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 217.463468 43.903869 
L 217.463468 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 230.577909 43.903869 
L 230.577909 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 243.69235 43.903869 
L 243.69235 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 256.80679 43.903869 
L 256.80679 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 269.921231 43.903869 
L 269.921231 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#p238c96a783)" d="M 56.224868 249.869614 
L 63.955486 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 236.755173 
L 63.955486 236.755173 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 223.640732 
L 63.955486 223.640732 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 210.526291 
L 63.955486 210.526291 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 197.41185 
L 63.955486 197.41185 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 184.297409 
L 63.955486 184.297409 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 171.182969 
L 63.955486 171.182969 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 158.068528 
L 63.955486 158.068528 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 144.954087 
L 63.955486 144.954087 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 131.839646 
L 63.955486 131.839646 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 118.725205 
L 63.955486 118.725205 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 105.610764 
L 63.955486 105.610764 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 92.496323 
L 63.955486 92.496323 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 79.381883 
L 63.955486 79.381883 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 66.267442 
L 63.955486 66.267442 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p238c96a783)" d="M 56.224868 53.153001 
L 63.955486 53.153001 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#p238c96a783)" d="M 38.582494 256.164545 
L 38.582494 244.623837 
L 53.270668 244.623837 
L 53.270668 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#p238c96a783)" d="M 29.664675 249.082747 
L 29.664675 253.541657 
L 40.156227 253.541657 
L 40.156227 249.082747 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_3">
    <g clip-path="url(#p238c96a783)">
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
     <g transform="translate(31.272338 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_4">
    <g clip-path="url(#p238c96a783)">
     <!-- 16 -->
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
     <g transform="translate(38.566403 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_5">
    <g clip-path="url(#p238c96a783)">
     <!-- 16 -->
     <g transform="translate(38.566403 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#p238c96a783)" d="M 38.582494 229.935664 
L 38.582494 218.394956 
L 53.270668 218.394956 
L 53.270668 229.935664 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#p238c96a783)" d="M 29.664675 222.853866 
L 29.664675 227.312776 
L 40.156227 227.312776 
L 40.156227 222.853866 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_6">
    <g clip-path="url(#p238c96a783)">
     <!-- – -->
     <g transform="translate(31.272338 228.379911)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_7">
    <g clip-path="url(#p238c96a783)">
     <!-- 14 -->
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
     <g transform="translate(38.594528 228.379911)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_8">
    <g clip-path="url(#p238c96a783)">
     <!-- 14 -->
     <g transform="translate(38.594528 228.379911)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#p238c96a783)" d="M 38.582494 203.706782 
L 38.582494 192.166074 
L 53.270668 192.166074 
L 53.270668 203.706782 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#p238c96a783)" d="M 29.664675 196.624984 
L 29.664675 201.083894 
L 40.156227 201.083894 
L 40.156227 196.624984 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_9">
    <g clip-path="url(#p238c96a783)">
     <!-- – -->
     <g transform="translate(31.272338 202.151029)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_10">
    <g clip-path="url(#p238c96a783)">
     <!-- 12 -->
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
     <g transform="translate(38.566403 202.151029)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_11">
    <g clip-path="url(#p238c96a783)">
     <!-- 12 -->
     <g transform="translate(38.566403 202.151029)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#p238c96a783)" d="M 38.582494 177.4779 
L 38.582494 165.937192 
L 53.270668 165.937192 
L 53.270668 177.4779 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#p238c96a783)" d="M 29.664675 170.396102 
L 29.664675 174.855012 
L 40.156227 174.855012 
L 40.156227 170.396102 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_12">
    <g clip-path="url(#p238c96a783)">
     <!-- – -->
     <g transform="translate(31.272338 175.922147)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_13">
    <g clip-path="url(#p238c96a783)">
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
     <g transform="translate(38.566403 175.922147)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_14">
    <g clip-path="url(#p238c96a783)">
     <!-- 10 -->
     <g transform="translate(38.566403 175.922147)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#p238c96a783)" d="M 45.139715 151.249019 
L 45.139715 139.708311 
L 53.008379 139.708311 
L 53.008379 151.249019 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#p238c96a783)" d="M 37.008761 144.16722 
L 37.008761 148.62613 
L 47.500314 148.62613 
L 47.500314 144.16722 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_15">
    <g clip-path="url(#p238c96a783)">
     <!-- – -->
     <g transform="translate(37.829559 149.693265)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_16">
    <g clip-path="url(#p238c96a783)">
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
     <g transform="translate(45.656247 149.693265)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_17">
    <g clip-path="url(#p238c96a783)">
     <!-- 8 -->
     <g transform="translate(45.656247 149.693265)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#p238c96a783)" d="M 45.139715 125.020137 
L 45.139715 113.479429 
L 53.008379 113.479429 
L 53.008379 125.020137 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#p238c96a783)" d="M 37.008761 117.938339 
L 37.008761 122.397249 
L 47.500314 122.397249 
L 47.500314 117.938339 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_18">
    <g clip-path="url(#p238c96a783)">
     <!-- – -->
     <g transform="translate(37.829559 123.464384)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_19">
    <g clip-path="url(#p238c96a783)">
     <!-- 6 -->
     <g transform="translate(45.656247 123.464384)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_20">
    <g clip-path="url(#p238c96a783)">
     <!-- 6 -->
     <g transform="translate(45.656247 123.464384)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#p238c96a783)" d="M 45.139715 98.791255 
L 45.139715 87.250547 
L 53.008379 87.250547 
L 53.008379 98.791255 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_14">
    <path clip-path="url(#p238c96a783)" d="M 37.008761 91.709457 
L 37.008761 96.168367 
L 47.500314 96.168367 
L 47.500314 91.709457 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_21">
    <g clip-path="url(#p238c96a783)">
     <!-- – -->
     <g transform="translate(37.829559 97.235502)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_22">
    <g clip-path="url(#p238c96a783)">
     <!-- 4 -->
     <g transform="translate(45.684372 97.235502)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_23">
    <g clip-path="url(#p238c96a783)">
     <!-- 4 -->
     <g transform="translate(45.684372 97.235502)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_15">
    <path clip-path="url(#p238c96a783)" d="M 45.139715 72.562373 
L 45.139715 61.021665 
L 53.008379 61.021665 
L 53.008379 72.562373 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_16">
    <path clip-path="url(#p238c96a783)" d="M 37.008761 65.480575 
L 37.008761 69.939485 
L 47.500314 69.939485 
L 47.500314 65.480575 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_24">
    <g clip-path="url(#p238c96a783)">
     <!-- – -->
     <g transform="translate(37.829559 71.00662)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_25">
    <g clip-path="url(#p238c96a783)">
     <!-- 2 -->
     <g transform="translate(45.656247 71.00662)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_26">
    <g clip-path="url(#p238c96a783)">
     <!-- 2 -->
     <g transform="translate(45.656247 71.00662)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_17">
    <path clip-path="url(#p238c96a783)" d="M 81.59786 55.251311 
L 81.59786 43.710603 
L 89.466525 43.710603 
L 89.466525 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_27">
    <g clip-path="url(#p238c96a783)">
     <!-- 2 -->
     <g transform="translate(81.852104 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_28">
    <g clip-path="url(#p238c96a783)">
     <!-- 2 -->
     <g transform="translate(81.852104 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_18">
    <path clip-path="url(#p238c96a783)" d="M 107.826742 55.251311 
L 107.826742 43.710603 
L 115.695407 43.710603 
L 115.695407 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_29">
    <g clip-path="url(#p238c96a783)">
     <!-- 4 -->
     <g transform="translate(108.10911 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_30">
    <g clip-path="url(#p238c96a783)">
     <!-- 4 -->
     <g transform="translate(108.10911 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_19">
    <path clip-path="url(#p238c96a783)" d="M 134.055624 55.251311 
L 134.055624 43.710603 
L 141.924288 43.710603 
L 141.924288 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_31">
    <g clip-path="url(#p238c96a783)">
     <!-- 6 -->
     <g transform="translate(134.309867 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_32">
    <g clip-path="url(#p238c96a783)">
     <!-- 6 -->
     <g transform="translate(134.309867 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_20">
    <path clip-path="url(#p238c96a783)" d="M 160.284506 55.251311 
L 160.284506 43.710603 
L 168.15317 43.710603 
L 168.15317 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_33">
    <g clip-path="url(#p238c96a783)">
     <!-- 8 -->
     <g transform="translate(160.538749 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_34">
    <g clip-path="url(#p238c96a783)">
     <!-- 8 -->
     <g transform="translate(160.538749 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_21">
    <path clip-path="url(#p238c96a783)" d="M 182.316766 55.251311 
L 182.316766 43.710603 
L 197.00494 43.710603 
L 197.00494 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_35">
    <g clip-path="url(#p238c96a783)">
     <!-- 10 -->
     <g transform="translate(182.300675 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_36">
    <g clip-path="url(#p238c96a783)">
     <!-- 10 -->
     <g transform="translate(182.300675 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_22">
    <path clip-path="url(#p238c96a783)" d="M 208.545648 55.251311 
L 208.545648 43.710603 
L 223.233822 43.710603 
L 223.233822 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_37">
    <g clip-path="url(#p238c96a783)">
     <!-- 12 -->
     <g transform="translate(208.529557 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_38">
    <g clip-path="url(#p238c96a783)">
     <!-- 12 -->
     <g transform="translate(208.529557 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_23">
    <path clip-path="url(#p238c96a783)" d="M 234.77453 55.251311 
L 234.77453 43.710603 
L 249.462704 43.710603 
L 249.462704 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_39">
    <g clip-path="url(#p238c96a783)">
     <!-- 14 -->
     <g transform="translate(234.786563 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_40">
    <g clip-path="url(#p238c96a783)">
     <!-- 14 -->
     <g transform="translate(234.786563 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_24">
    <path clip-path="url(#p238c96a783)" d="M 261.003411 55.251311 
L 261.003411 43.710603 
L 275.691585 43.710603 
L 275.691585 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_41">
    <g clip-path="url(#p238c96a783)">
     <!-- 16 -->
     <g transform="translate(260.98732 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_42">
    <g clip-path="url(#p238c96a783)">
     <!-- 16 -->
     <g transform="translate(260.98732 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_43">
    <g clip-path="url(#p238c96a783)">
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
     <g transform="translate(48.438067 50.415671)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_44">
    <g clip-path="url(#p238c96a783)">
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
     <g transform="translate(56.581584 22.350767)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_45">
    <g clip-path="url(#p238c96a783)">
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
     <g transform="translate(282.69681 43.333872)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-120"></use>
     </g>
    </g>
   </g>
   <g id="line2d_1">
    <path clip-path="url(#p238c96a783)" d="M 60.090177 40.03856 
L 63.033699 62.705841 
L 65.977221 83.611334 
L 68.920743 102.75504 
L 71.443761 117.761693 
L 73.96678 131.473971 
L 76.489799 143.891874 
L 78.592314 153.251369 
L 80.69483 161.711993 
L 82.797346 169.273745 
L 84.899861 175.936627 
L 86.581874 180.619745 
L 88.263886 184.727586 
L 89.945898 188.260149 
L 91.627911 191.217435 
L 92.88942 193.057873 
L 94.15093 194.574718 
L 95.412439 195.76797 
L 96.673948 196.637627 
L 97.935458 197.183692 
L 99.196967 197.406162 
L 100.458476 197.305039 
L 101.719986 196.880323 
L 102.981495 196.132012 
L 104.243004 195.060109 
L 105.504514 193.664611 
L 106.766023 191.945521 
L 108.027532 189.902836 
L 109.709545 186.675889 
L 111.391557 182.873664 
L 113.07357 178.496162 
L 114.755582 173.543383 
L 116.858098 166.543425 
L 118.960613 158.644595 
L 121.063129 149.846895 
L 123.165644 140.150323 
L 125.688663 127.327928 
L 128.211682 113.211158 
L 130.734701 97.800014 
L 133.257719 81.094495 
L 136.201241 59.968778 
L 139.144763 37.081274 
L 139.144763 37.081274 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="p238c96a783">
   <rect height="260.82" width="282.17031" x="16.838751" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a parabola" class="sr-only"><ul>
<li>The parabola opens upward.</li>
<li>The parabola passes through the following points:<br>
<ul>
<li>(0 comma 0)</li>
<li>(3 comma negative 12)</li>
<li>(6 comma 0)</li>
</ul>
</li>
</ul></div></figure></p>
<p style="text-align: left;">Scientists recorded data about the ocean water levels at a certain location over a period of <math alttext="6"><mn>6</mn>
</math> hours. The graph shown models the data, where <math alttext="y equals 0"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math> represents sea level. Which table gives values of <math alttext="x"><mi>x</mi>
</math> and their corresponding values of <math alttext="y"><mi>y</mi>
</math> based on the model?</p>$SATQ$, $SATQ$[{"id":"2e1f9d90-8270-4eb9-9e6d-1db74dffc042","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"2e1f9d90-8270-4eb9-9e6d-1db74dffc042_option_1_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"2e1f9d90-8270-4eb9-9e6d-1db74dffc042_option_1_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 12\"><mo>-</mo><mn>12</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"6\"><mn>6</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"0ce2cd3e-5fec-449a-b79f-81a244fd7302","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"0ce2cd3e-5fec-449a-b79f-81a244fd7302_option_2_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"0ce2cd3e-5fec-449a-b79f-81a244fd7302_option_2_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"12\"><mn>12</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 6\"><mo>-</mo><mn>6</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"70bb5a93-10a0-415f-b061-97fa86866cd0","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"70bb5a93-10a0-415f-b061-97fa86866cd0_option_3_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"70bb5a93-10a0-415f-b061-97fa86866cd0_option_3_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 12\"><mo>-</mo><mn>12</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"6\"><mn>6</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"cf7a37b3-0e5e-46e3-aa2e-6e8a87ca28ca","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"cf7a37b3-0e5e-46e3-aa2e-6e8a87ca28ca_option_4_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"cf7a37b3-0e5e-46e3-aa2e-6e8a87ca28ca_option_4_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"12\"><mn>12</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"negative 6\"><mo>-</mo><mn>6</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["70bb5a93-10a0-415f-b061-97fa86866cd0"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. Each point&nbsp;<math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> on the graph represents an elapsed time <math alttext="x"><mi>x</mi>
</math>, in hours, and the corresponding ocean water level <math alttext="y"><mi>y</mi>
</math>, in feet, at a certain location based on the model. The graph shown passes through the points <math alttext="left parenthesis 0 comma 0 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, <math alttext="left parenthesis 3 comma negative 12 right parenthesis"><mfenced><mrow><mn>3</mn><mo>,</mo><mo>-</mo><mn>12</mn></mrow></mfenced></math>, and&nbsp;<math alttext="left parenthesis 6 comma 0 right parenthesis"><mfenced><mrow><mn>6</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Thus, the table in choice C gives the values of <math alttext="x"><mi>x</mi>
</math> and their corresponding values of <math alttext="y"><mi>y</mi>
</math> based on the model.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"1ee962ec","external_id":"1549b7a3-5fbf-46f8-8861-103e5d9edae0","disclosed_item_id":null,"source":"qbank","vaultid":"5553d2b4-3bd2-4420-a0f3-0250256a68be","uId":"196aef40-8a87-49e0-8538-f8bd2caea970","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"285.92875pt\" version=\"1.1\" viewBox=\"0 0 306.209061 285.92875\" width=\"306.209061pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a parabola in the x y plane with the origin labeled O. The x axis is labeled Elapsed time, in hours. It ranges from 0 to 16 in increments of 1, with values marked every 2 grid lines. The y axis is labeled Ocean water level, in feet. It ranges from negative 16 to 0 in increments of 1, with values marked every 2 grid lines. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 285.92875 \nL 306.209061 285.92875 \nL 306.209061 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 24.678906 260.46 \nL 296.838906 260.46 \nL 296.838906 10.98 \nL 24.678906 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\">\n    <g id=\"text_1\">\n     <!-- Elapsed time (hours) -->\n     <defs>\n      <path d=\"M 14.84375 64.0625 \nQ 19.234375 64.0625 30.078125 64.453125 \nQ 40.921875 64.84375 46.390625 64.84375 \nQ 46.78125 62.015625 47.90625 57.375 \nQ 49.03125 52.734375 49.21875 51.5625 \nQ 48.734375 51.078125 47.453125 51.078125 \nQ 46.1875 51.078125 46.09375 51.765625 \nQ 44.625 57.125 41.984375 58.640625 \nQ 39.359375 60.15625 34.765625 60.15625 \nL 28.21875 60.15625 \nQ 19.828125 60.15625 19.625 58.890625 \nQ 19.140625 56.546875 19.140625 50.6875 \nL 19.140625 35.0625 \nQ 19.140625 34.46875 23.34375 34.46875 \nL 28.515625 34.46875 \nQ 31.25 34.46875 32.46875 34.46875 \nQ 33.6875 34.46875 35.046875 34.859375 \nQ 36.421875 35.25 36.8125 35.34375 \nQ 37.203125 35.453125 37.84375 36.625 \nQ 38.484375 37.796875 38.578125 38.328125 \nQ 38.671875 38.875 39.265625 41.109375 \nQ 39.359375 41.796875 40.71875 41.796875 \nQ 41.890625 41.796875 42.390625 41.3125 \nL 42.390625 22.859375 \nQ 42 22.46875 40.828125 22.46875 \nQ 39.546875 22.46875 39.265625 23.25 \nQ 38.578125 25.875 38.078125 27.1875 \nQ 37.59375 28.515625 37.34375 28.75 \nQ 37.109375 29 36.53125 29.390625 \nQ 35.25 30.171875 26.171875 30.171875 \nQ 19.140625 30.171875 19.140625 29.296875 \nL 19.140625 14.15625 \nQ 19.140625 7.8125 20.015625 5.28125 \nQ 20.3125 4.296875 26.65625 4.296875 \nL 31.34375 4.296875 \nQ 40.4375 4.296875 43.65625 5.953125 \nQ 45.125 6.734375 46.921875 9.421875 \nQ 48.734375 12.109375 49.8125 15.828125 \nQ 50 16.40625 51.171875 16.40625 \nQ 53.03125 16.40625 53.609375 15.828125 \nQ 53.125 14.546875 52.09375 11.765625 \nQ 51.078125 8.984375 50.484375 7.265625 \nQ 49.90625 5.5625 49.21875 3.3125 \nQ 48.53125 1.078125 48.34375 -0.390625 \nQ 43.359375 -0.390625 32.609375 -0.1875 \nQ 21.875 0 15.046875 0 \nL 3.21875 -0.296875 \nQ 2.9375 0 2.9375 1.265625 \nQ 2.9375 2.546875 3.21875 2.546875 \nQ 4.5 2.546875 6.984375 3.21875 \nQ 9.46875 3.90625 9.96875 4.78125 \nQ 10.640625 5.953125 10.640625 13.96875 \nL 10.640625 50.875 \nQ 10.640625 56.640625 9.96875 59.28125 \nQ 9.671875 60.0625 7.078125 60.734375 \nQ 4.5 61.421875 3.21875 61.421875 \nQ 2.828125 61.421875 2.828125 62.59375 \nQ 2.828125 63.875 3.21875 64.265625 \nQ 8.296875 64.0625 14.84375 64.0625 \nz\n\" id=\"CrimsonText-Regular-69\"></path>\n      <path d=\"M 8.5 11.328125 \nL 8.5 53.609375 \nQ 8.5 56.9375 7.90625 59.859375 \nQ 7.421875 61.421875 2.9375 61.421875 \nL 2.046875 61.421875 \nQ 1.46875 61.421875 1.46875 62.5 \nQ 1.46875 64.0625 2.046875 64.0625 \nQ 4.984375 64.359375 7.46875 64.84375 \nQ 9.96875 65.328125 11.375 65.8125 \nQ 12.796875 66.3125 13.765625 66.75 \nQ 14.75 67.1875 15.234375 67.484375 \nL 15.625 67.78125 \nL 15.828125 67.78125 \nQ 16.21875 67.78125 16.609375 67.234375 \nQ 17 66.703125 17.09375 66.21875 \nQ 16.015625 63.09375 16.015625 57.71875 \nL 16.015625 13.1875 \nQ 16.015625 7.515625 16.796875 4.5 \nQ 17 3.8125 19.34375 3.171875 \nQ 21.6875 2.546875 22.65625 2.546875 \nQ 22.953125 2.546875 23.046875 1.375 \nQ 23.140625 0.203125 22.953125 -0.296875 \nQ 13.1875 0.203125 12.5 0.203125 \nQ 11.921875 0.203125 1.859375 -0.296875 \nQ 1.46875 0.09375 1.46875 1.3125 \nQ 1.46875 2.546875 1.859375 2.546875 \nQ 3.03125 2.546875 5.328125 3.171875 \nQ 7.625 3.8125 7.8125 4.5 \nQ 8.5 7.328125 8.5 11.328125 \nz\n\" id=\"CrimsonText-Regular-108\"></path>\n      <path d=\"M 12.015625 7.71875 \nQ 15.328125 4.890625 17.96875 4.890625 \nQ 20.609375 4.890625 23.046875 6.5 \nQ 25.484375 8.109375 25.484375 9.765625 \nL 25.484375 19.828125 \nQ 24.703125 19.4375 21.671875 18.453125 \nQ 18.65625 17.484375 16.9375 16.75 \nQ 15.234375 16.015625 13.625 14.296875 \nQ 12.015625 12.59375 12.015625 10.359375 \nQ 12.015625 7.71875 15.328125 4.890625 \nz\nM 22.859375 42.578125 \nQ 28.21875 42.578125 30.5625 39.984375 \nQ 32.90625 37.40625 32.90625 31.640625 \nL 32.90625 9.078125 \nQ 32.90625 7.03125 33.984375 5.65625 \nQ 35.0625 4.296875 36.921875 4.296875 \nQ 38.28125 4.296875 40.328125 5.671875 \nQ 40.71875 5.671875 40.71875 4.890625 \nQ 40.71875 3.609375 40.234375 2.828125 \nQ 36.234375 -0.59375 33.40625 -0.59375 \nQ 31.15625 -0.59375 29.09375 1.265625 \nQ 27.046875 3.125 26.265625 5.171875 \nQ 26.171875 5.171875 25.53125 4.53125 \nQ 24.90625 3.90625 23.828125 3.078125 \nQ 22.75 2.25 21.328125 1.359375 \nQ 19.921875 0.484375 18.015625 -0.09375 \nQ 16.109375 -0.6875 14.15625 -0.6875 \nQ 9.671875 -0.6875 6.734375 1.703125 \nQ 3.8125 4.109375 3.8125 8.890625 \nQ 3.8125 11.03125 4.875 12.9375 \nQ 5.953125 14.84375 7.421875 16.0625 \nQ 8.890625 17.28125 11.421875 18.546875 \nQ 13.96875 19.828125 15.765625 20.453125 \nQ 17.578125 21.09375 20.5 22.0625 \nQ 23.4375 23.046875 24.609375 23.53125 \nQ 25.484375 23.828125 25.484375 25 \nL 25.484375 32.328125 \nQ 25.484375 35.453125 23.53125 37.15625 \nQ 21.578125 38.875 18.84375 38.875 \nQ 15.921875 38.875 13.96875 36.859375 \nQ 12.015625 34.859375 12.015625 31.640625 \nQ 12.015625 28.21875 8.015625 28.21875 \nQ 5.28125 28.21875 4.203125 30.078125 \nQ 4.203125 34.28125 10.34375 38.421875 \nQ 16.5 42.578125 22.859375 42.578125 \nz\n\" id=\"CrimsonText-Regular-97\"></path>\n      <path d=\"M 26.265625 42.578125 \nQ 35.640625 42.578125 40.90625 36.28125 \nQ 46.1875 29.984375 46.1875 22.859375 \nQ 46.1875 13.484375 39.640625 6.34375 \nQ 33.109375 -0.78125 24.8125 -0.78125 \nQ 23.34375 -0.78125 22.21875 -0.6875 \nQ 21.09375 -0.59375 20.21875 -0.34375 \nQ 19.34375 -0.09375 18.84375 0.09375 \nQ 18.359375 0.296875 17.578125 0.640625 \nQ 16.796875 0.984375 16.609375 1.078125 \nQ 16.21875 0.59375 16.21875 -0.203125 \nL 16.21875 -8.59375 \nQ 16.21875 -14.265625 17 -17.28125 \nQ 17.1875 -17.96875 19.53125 -18.59375 \nQ 21.875 -19.234375 22.859375 -19.234375 \nQ 23.140625 -19.234375 23.234375 -20.453125 \nQ 23.34375 -21.6875 23.140625 -22.078125 \nQ 13.375 -21.578125 12.703125 -21.578125 \nQ 12.109375 -21.578125 2.046875 -22.078125 \nQ 1.65625 -21.6875 1.65625 -20.453125 \nQ 1.65625 -19.234375 2.046875 -19.234375 \nQ 3.21875 -19.234375 5.515625 -18.59375 \nQ 7.8125 -17.96875 8.015625 -17.28125 \nQ 8.6875 -14.453125 8.6875 -10.453125 \nL 8.6875 29.890625 \nQ 8.6875 33.6875 7.328125 35.15625 \nQ 6.34375 36.328125 4.921875 36.765625 \nQ 3.515625 37.203125 2.578125 37.203125 \nQ 1.65625 37.203125 1.65625 37.40625 \nQ 1.65625 39.75 2.25 39.84375 \nQ 12.59375 41.40625 15.71875 42.390625 \nQ 15.828125 42.390625 16.015625 42.4375 \nQ 16.21875 42.484375 16.21875 42.484375 \nQ 16.5 42.484375 16.5 41.9375 \nQ 16.5 41.40625 16.40625 40.625 \nQ 16.3125 39.84375 16.3125 39.75 \nL 16.3125 39.15625 \nQ 17.671875 40.140625 20.84375 41.359375 \nQ 24.03125 42.578125 26.265625 42.578125 \nz\nM 23.140625 37.796875 \nQ 20.125 37.796875 18.171875 36.1875 \nQ 16.21875 34.578125 16.21875 31.546875 \nL 16.21875 9.578125 \nQ 16.21875 6.9375 19.046875 5.125 \nQ 21.875 3.328125 25.203125 3.328125 \nQ 30.953125 3.328125 34.375 8.5 \nQ 37.796875 13.671875 37.796875 20.125 \nQ 37.796875 28.328125 33.453125 33.0625 \nQ 29.109375 37.796875 23.140625 37.796875 \nz\n\" id=\"CrimsonText-Regular-112\"></path>\n      <path d=\"M 18.65625 42.671875 \nQ 20.796875 42.671875 24.0625 42.140625 \nQ 27.34375 41.609375 28.609375 41.40625 \nQ 29.59375 36.921875 29.78125 31.453125 \nQ 29.78125 30.953125 28.515625 30.953125 \nQ 27.15625 30.953125 27.046875 31.640625 \nQ 26.5625 34.375 24.265625 36.8125 \nQ 21.96875 39.265625 19.046875 39.265625 \nQ 12.015625 39.265625 12.015625 33.5 \nQ 12.015625 32.03125 12.40625 30.90625 \nQ 12.796875 29.78125 13.921875 28.75 \nQ 15.046875 27.734375 15.625 27.296875 \nQ 16.21875 26.859375 18.21875 25.734375 \nQ 20.21875 24.609375 20.703125 24.3125 \nQ 21.09375 24.125 23 23 \nQ 24.90625 21.875 25.6875 21.390625 \nQ 26.46875 20.90625 27.984375 19.734375 \nQ 29.5 18.5625 30.171875 17.625 \nQ 30.859375 16.703125 31.484375 15.28125 \nQ 32.125 13.875 32.125 12.40625 \nQ 32.125 6.640625 27.625 2.78125 \nQ 23.140625 -1.078125 17.09375 -1.078125 \nQ 15.046875 -1.078125 13.328125 -0.828125 \nQ 11.625 -0.59375 9.28125 0 \nQ 6.9375 0.59375 5.671875 0.78125 \nQ 5.078125 2.34375 4.53125 5.65625 \nQ 4 8.984375 4 10.9375 \nQ 4.78125 11.53125 5.171875 11.53125 \nQ 6.640625 11.53125 6.734375 10.9375 \nQ 7.328125 8.015625 10.40625 5.21875 \nQ 13.484375 2.4375 17.09375 2.4375 \nQ 20.21875 2.4375 22.21875 4.140625 \nQ 24.21875 5.859375 24.21875 9.078125 \nQ 24.21875 10.75 23.578125 12.15625 \nQ 22.953125 13.578125 21.53125 14.703125 \nQ 20.125 15.828125 18.890625 16.546875 \nQ 17.671875 17.28125 15.421875 18.453125 \nQ 13.1875 19.625 12.109375 20.3125 \nQ 4.5 24.703125 4.5 30.765625 \nQ 4.5 36.03125 8.734375 39.34375 \nQ 12.984375 42.671875 18.65625 42.671875 \nz\n\" id=\"CrimsonText-Regular-115\"></path>\n      <path d=\"M 21.96875 38.96875 \nQ 16.890625 38.96875 14.203125 34.625 \nQ 11.53125 30.28125 11.53125 27.4375 \nQ 11.53125 26.765625 12.109375 26.765625 \nL 31.15625 26.765625 \nQ 31.640625 26.765625 31.640625 27.734375 \nQ 31.640625 30.859375 29 34.90625 \nQ 26.375 38.96875 21.96875 38.96875 \nz\nM 22.953125 42.578125 \nQ 27.4375 42.578125 30.859375 40.859375 \nQ 34.28125 39.15625 36.078125 36.46875 \nQ 37.890625 33.796875 38.71875 31 \nQ 39.546875 28.21875 39.546875 25.484375 \nQ 39.546875 23.53125 38.953125 23.09375 \nQ 38.375 22.65625 36.71875 22.65625 \nL 12.109375 22.65625 \nQ 11.328125 22.65625 11.328125 22.171875 \nQ 11.328125 16.015625 15.03125 10.84375 \nQ 18.75 5.671875 25.78125 5.671875 \nQ 27.828125 5.671875 29.6875 6.0625 \nQ 31.546875 6.453125 32.859375 6.984375 \nQ 34.1875 7.515625 35.109375 8.046875 \nQ 36.03125 8.59375 36.71875 9.078125 \nL 37.40625 9.578125 \nQ 37.984375 9.578125 37.984375 8.296875 \nQ 37.984375 7.515625 37.40625 6.546875 \nQ 35.453125 3.8125 31.640625 1.609375 \nQ 27.828125 -0.59375 23.34375 -0.59375 \nQ 15.234375 -0.59375 9.421875 5.515625 \nQ 3.609375 11.625 3.609375 20.40625 \nQ 3.609375 30.671875 9.125 36.625 \nQ 14.65625 42.578125 22.953125 42.578125 \nz\n\" id=\"CrimsonText-Regular-101\"></path>\n      <path d=\"M 24.21875 38.875 \nQ 18.5625 38.875 15.328125 33.796875 \nQ 12.109375 28.71875 12.109375 21.96875 \nQ 12.109375 14.84375 15.921875 9.609375 \nQ 19.734375 4.390625 26.46875 4.390625 \nQ 29.78125 4.390625 31.640625 5.90625 \nQ 33.5 7.421875 33.5 9.96875 \nL 33.5 33.203125 \nQ 33.5 35.25 31.296875 37.0625 \nQ 29.109375 38.875 24.21875 38.875 \nz\nM 25.484375 42.96875 \nQ 29.6875 42.96875 32.8125 41.3125 \nQ 33.5 41.3125 33.5 43.0625 \nL 33.5 53.609375 \nQ 33.5 56.9375 32.90625 59.859375 \nQ 32.421875 61.421875 27.9375 61.421875 \nL 27.046875 61.421875 \nQ 26.46875 61.421875 26.46875 62.5 \nQ 26.46875 64.0625 27.046875 64.0625 \nQ 29.984375 64.359375 32.46875 64.84375 \nQ 34.96875 65.328125 36.375 65.8125 \nQ 37.796875 66.3125 38.765625 66.75 \nQ 39.75 67.1875 40.234375 67.484375 \nL 40.625 67.78125 \nL 40.828125 67.78125 \nQ 41.21875 67.78125 41.609375 67.234375 \nQ 42 66.703125 42.09375 66.21875 \nQ 41.015625 63.09375 41.015625 57.71875 \nL 41.015625 13.765625 \nQ 41.015625 9.078125 41.609375 6.34375 \nQ 41.796875 5.671875 42.671875 5.28125 \nQ 43.5625 4.890625 44.484375 4.78125 \nQ 45.40625 4.6875 46.296875 4.6875 \nL 47.171875 4.59375 \nQ 47.46875 4.5 47.46875 3.421875 \nQ 47.46875 1.953125 46.875 1.953125 \nQ 45.40625 1.859375 43.59375 1.5625 \nQ 41.796875 1.265625 40.1875 0.921875 \nQ 38.578125 0.59375 37.203125 0.25 \nQ 35.84375 -0.09375 34.96875 -0.390625 \nL 34.078125 -0.59375 \nQ 33.5 -0.59375 33.5 1.078125 \nL 33.5 2.25 \nQ 33.5 2.828125 33.109375 2.640625 \nQ 27.640625 -0.390625 22.75 -0.390625 \nQ 14.65625 -0.390625 9.1875 5.375 \nQ 3.71875 11.140625 3.71875 19.140625 \nQ 3.71875 28.609375 10.40625 35.78125 \nQ 17.09375 42.96875 25.484375 42.96875 \nz\n\" id=\"CrimsonText-Regular-100\"></path>\n      <path id=\"CrimsonText-Regular-32\"></path>\n      <path d=\"M 7.8125 36.53125 \nL 2.15625 36.53125 \nQ 1.65625 36.53125 1.65625 38.578125 \nQ 1.65625 39.15625 1.765625 39.265625 \nQ 4.59375 40.53125 7.90625 44.4375 \nQ 8.984375 45.703125 10 47.3125 \nQ 11.03125 48.921875 11.71875 50.09375 \nQ 12.40625 51.265625 12.40625 51.375 \nQ 15.328125 51.375 15.328125 50.875 \nL 15.328125 41.21875 \nQ 17.875 41.21875 23.046875 41.15625 \nQ 28.21875 41.109375 28.515625 41.109375 \nQ 29.296875 41.109375 29.296875 40.234375 \nQ 29.296875 38.484375 28.328125 36.53125 \nL 15.328125 36.53125 \nL 15.328125 12.59375 \nQ 15.328125 8.6875 17.328125 6.34375 \nQ 19.34375 4 22.5625 4 \nQ 25.484375 4 28.609375 5.859375 \nQ 28.90625 6.0625 29.484375 5.03125 \nQ 30.078125 4 29.984375 3.90625 \nQ 28.515625 2.34375 25.484375 0.828125 \nQ 22.46875 -0.6875 19.234375 -0.6875 \nQ 14.359375 -0.6875 11.078125 2.53125 \nQ 7.8125 5.765625 7.8125 11.71875 \nz\n\" id=\"CrimsonText-Regular-116\"></path>\n      <path d=\"M 11.140625 53.03125 \nQ 8.296875 55.859375 8.296875 57.90625 \nQ 8.296875 59.96875 9.71875 61.375 \nQ 11.140625 62.796875 13.1875 62.796875 \nQ 15.234375 62.796875 16.640625 61.375 \nQ 18.0625 59.96875 18.0625 57.90625 \nQ 18.0625 55.859375 16.640625 54.4375 \nQ 15.234375 53.03125 13.1875 53.03125 \nQ 11.140625 53.03125 8.296875 55.859375 \nz\nM 17.671875 13.1875 \nQ 17.671875 7.515625 18.453125 4.5 \nQ 18.65625 3.8125 21 3.171875 \nQ 23.34375 2.546875 24.3125 2.546875 \nQ 24.609375 2.546875 24.703125 1.375 \nQ 24.8125 0.203125 24.609375 -0.296875 \nQ 14.84375 0.203125 14.15625 0.203125 \nQ 13.484375 0.203125 3.515625 -0.296875 \nQ 3.125 0.09375 3.125 1.3125 \nQ 3.125 2.546875 3.515625 2.546875 \nQ 4.6875 2.546875 6.984375 3.171875 \nQ 9.28125 3.8125 9.46875 4.5 \nQ 10.15625 7.328125 10.15625 11.328125 \nL 10.15625 29.78125 \nQ 10.15625 33.59375 8.796875 35.0625 \nQ 7.8125 36.234375 6.390625 36.671875 \nQ 4.984375 37.109375 4.046875 37.109375 \nQ 3.125 37.109375 3.125 37.3125 \nQ 3.125 39.65625 3.71875 39.75 \nQ 14.0625 41.3125 17.1875 42.28125 \nL 17.390625 42.390625 \nQ 17.578125 42.390625 17.671875 42.390625 \nQ 18.0625 42.390625 18.15625 41.546875 \nQ 18.265625 40.71875 18.171875 40.328125 \nQ 17.671875 36.421875 17.671875 33.296875 \nz\n\" id=\"CrimsonText-Regular-105\"></path>\n      <path d=\"M 31.25 42.78125 \nQ 35.15625 42.78125 37.734375 40.671875 \nQ 40.328125 38.578125 41.3125 35.84375 \nQ 48.640625 42.78125 56.453125 42.78125 \nQ 68.75 42.78125 68.75 24.03125 \nL 68.75 13.1875 \nQ 68.75 7.515625 69.53125 4.5 \nQ 69.734375 3.8125 72.078125 3.171875 \nQ 74.421875 2.546875 75.390625 2.546875 \nQ 75.6875 2.546875 75.78125 1.375 \nQ 75.875 0.203125 75.6875 -0.296875 \nQ 65.921875 0.203125 65.234375 0.203125 \nQ 64.65625 0.203125 54.59375 -0.296875 \nQ 54.203125 0.09375 54.203125 1.3125 \nQ 54.203125 2.546875 54.59375 2.546875 \nQ 55.765625 2.546875 58.0625 3.171875 \nQ 60.359375 3.8125 60.546875 4.5 \nQ 61.234375 7.328125 61.234375 10.75 \nL 61.234375 21.78125 \nQ 61.234375 36.8125 51.375 36.8125 \nQ 47.75 36.8125 45.109375 34.71875 \nQ 42.484375 32.625 42.484375 31.25 \nL 42.578125 30.859375 \nQ 42.578125 30.46875 42.578125 30.375 \nQ 42.96875 27.9375 42.96875 23.34375 \nL 42.96875 12.3125 \nQ 42.96875 7.515625 43.75 4.5 \nQ 43.953125 3.8125 46.296875 3.171875 \nQ 48.640625 2.546875 49.609375 2.546875 \nQ 49.90625 2.546875 50 1.375 \nQ 50.09375 0.203125 49.90625 -0.296875 \nQ 40.140625 0.203125 39.453125 0.203125 \nQ 38.875 0.203125 28.8125 -0.296875 \nQ 28.421875 0.09375 28.421875 1.3125 \nQ 28.421875 2.546875 28.8125 2.546875 \nQ 29.984375 2.546875 32.28125 3.171875 \nQ 34.578125 3.8125 34.765625 4.5 \nQ 35.453125 7.328125 35.453125 11.328125 \nL 35.453125 21.296875 \nQ 35.453125 36.8125 26.078125 36.8125 \nQ 23.140625 36.8125 20.15625 34.609375 \nQ 17.1875 32.421875 17.1875 30.375 \nL 17.1875 13.1875 \nQ 17.1875 7.515625 17.96875 4.5 \nQ 18.171875 3.8125 20.515625 3.171875 \nQ 22.859375 2.546875 23.828125 2.546875 \nQ 24.125 2.546875 24.21875 1.375 \nQ 24.3125 0.203125 24.125 -0.296875 \nQ 14.359375 0.203125 13.671875 0.203125 \nQ 13.09375 0.203125 3.03125 -0.296875 \nQ 2.640625 0.09375 2.640625 1.3125 \nQ 2.640625 2.546875 3.03125 2.546875 \nQ 4.203125 2.546875 6.5 3.171875 \nQ 8.796875 3.8125 8.984375 4.5 \nQ 9.671875 7.328125 9.671875 11.328125 \nL 9.671875 29.78125 \nQ 9.671875 33.59375 8.296875 35.0625 \nQ 7.328125 36.234375 5.90625 36.671875 \nQ 4.5 37.109375 3.5625 37.109375 \nQ 2.640625 37.109375 2.640625 37.3125 \nQ 2.640625 39.65625 3.21875 39.75 \nQ 13.578125 41.3125 16.703125 42.28125 \nQ 16.796875 42.28125 16.984375 42.328125 \nQ 17.1875 42.390625 17.1875 42.390625 \nQ 17.578125 42.390625 17.671875 41.546875 \nQ 17.78125 40.71875 17.671875 40.328125 \nQ 17.28125 37.59375 17.28125 36.421875 \nQ 17.28125 36.03125 17.484375 36.03125 \nQ 17.578125 36.03125 17.78125 36.234375 \nQ 20.015625 38.578125 23.875 40.671875 \nQ 27.734375 42.78125 31.25 42.78125 \nz\n\" id=\"CrimsonText-Regular-109\"></path>\n      <path d=\"M 13.28125 29.78125 \nQ 13.28125 16.015625 18.203125 4.296875 \nQ 23.140625 -7.421875 26.859375 -9.28125 \nQ 27.046875 -9.375 27.046875 -9.765625 \nQ 27.046875 -10.359375 26.609375 -11.078125 \nQ 26.171875 -11.8125 25.6875 -11.8125 \nQ 23.640625 -11.8125 20.515625 -8.484375 \nQ 17.390625 -5.171875 14.3125 0.140625 \nQ 11.234375 5.46875 9.078125 13.515625 \nQ 6.9375 21.578125 6.9375 29.78125 \nQ 6.9375 38.484375 8.9375 46.78125 \nQ 10.9375 55.078125 13.8125 60.640625 \nQ 16.703125 66.21875 19.921875 69.625 \nQ 23.140625 73.046875 25.6875 73.046875 \nQ 26.171875 73.046875 26.5625 72.171875 \nQ 26.953125 71.296875 26.953125 70.703125 \nQ 26.953125 70.40625 26.859375 70.40625 \nQ 21.96875 68.0625 17.625 56 \nQ 13.28125 43.953125 13.28125 29.78125 \nz\n\" id=\"CrimsonText-Regular-40\"></path>\n      <path d=\"M 30.46875 42.78125 \nQ 37.015625 42.78125 39.84375 38.09375 \nQ 42.671875 33.40625 42.671875 23.640625 \nL 42.671875 13.09375 \nQ 42.671875 7.515625 43.453125 4.5 \nQ 43.65625 3.8125 46 3.171875 \nQ 48.34375 2.546875 49.3125 2.546875 \nQ 49.609375 2.546875 49.703125 1.375 \nQ 49.8125 0.203125 49.609375 -0.296875 \nQ 39.84375 0.203125 39.15625 0.203125 \nQ 38.875 0.203125 28.90625 -0.296875 \nQ 28.515625 0.09375 28.515625 1.3125 \nQ 28.515625 2.546875 28.90625 2.546875 \nQ 30.078125 2.546875 32.171875 3.171875 \nQ 34.28125 3.8125 34.46875 4.5 \nQ 35.15625 7.328125 35.15625 11.328125 \nL 35.15625 21.6875 \nQ 35.15625 30.671875 32.65625 33.734375 \nQ 30.171875 36.8125 25 36.8125 \nQ 22.078125 36.8125 19.1875 34.515625 \nQ 16.3125 32.234375 16.3125 30.46875 \nL 16.3125 13.1875 \nQ 16.3125 7.515625 17.09375 4.5 \nQ 17.28125 3.8125 19.625 3.171875 \nQ 21.96875 2.546875 22.953125 2.546875 \nQ 23.25 2.546875 23.34375 1.375 \nQ 23.4375 0.203125 23.25 -0.296875 \nQ 13.484375 0.203125 12.796875 0.203125 \nQ 12.203125 0.203125 2.15625 -0.296875 \nQ 1.765625 0.09375 1.765625 1.3125 \nQ 1.765625 2.546875 2.15625 2.546875 \nQ 3.328125 2.546875 5.609375 3.171875 \nQ 7.90625 3.8125 8.109375 4.5 \nQ 8.796875 7.328125 8.796875 11.234375 \nL 8.796875 53.609375 \nQ 8.796875 56.9375 8.203125 59.859375 \nQ 7.71875 61.421875 3.21875 61.421875 \nL 2.34375 61.421875 \nQ 1.765625 61.421875 1.765625 62.5 \nQ 1.765625 64.0625 2.34375 64.0625 \nQ 5.28125 64.359375 7.765625 64.84375 \nQ 10.25 65.328125 11.671875 65.8125 \nQ 13.09375 66.3125 14.0625 66.75 \nQ 15.046875 67.1875 15.4375 67.484375 \nL 15.921875 67.78125 \nL 16.109375 67.78125 \nQ 16.5 67.78125 16.890625 67.234375 \nQ 17.28125 66.703125 17.390625 66.21875 \nQ 16.3125 63.09375 16.3125 57.71875 \nL 16.3125 36.328125 \nQ 16.3125 35.9375 16.5 35.9375 \nQ 16.609375 35.9375 16.796875 36.140625 \nQ 18.953125 38.484375 22.90625 40.625 \nQ 26.859375 42.78125 30.46875 42.78125 \nz\n\" id=\"CrimsonText-Regular-104\"></path>\n      <path d=\"M 23.734375 38.875 \nQ 18.5625 38.875 15.28125 34.125 \nQ 12.015625 29.390625 12.015625 22.5625 \nQ 12.015625 14.546875 16.15625 8.828125 \nQ 20.3125 3.125 25.875 3.125 \nQ 31.0625 3.125 34.375 8 \nQ 37.703125 12.890625 37.703125 19.734375 \nQ 37.703125 27.640625 33.5 33.25 \nQ 29.296875 38.875 23.734375 38.875 \nz\nM 24.8125 42.671875 \nQ 33.59375 42.671875 39.84375 36.328125 \nQ 46.09375 29.984375 46.09375 21.09375 \nQ 46.09375 12.109375 39.984375 5.703125 \nQ 33.890625 -0.6875 25 -0.6875 \nQ 16.109375 -0.6875 9.859375 5.703125 \nQ 3.609375 12.109375 3.609375 21.09375 \nQ 3.609375 30.171875 9.65625 36.421875 \nQ 15.71875 42.671875 24.8125 42.671875 \nz\n\" id=\"CrimsonText-Regular-111\"></path>\n      <path d=\"M 42.484375 33.296875 \nL 42.484375 13.765625 \nQ 42.484375 9.578125 43.171875 6.34375 \nQ 43.359375 5.671875 44.234375 5.28125 \nQ 45.125 4.890625 46.09375 4.78125 \nQ 47.078125 4.6875 48.046875 4.6875 \nL 48.921875 4.59375 \nQ 49.21875 4.5 49.21875 3.515625 \nQ 49.21875 3.21875 48.96875 2.578125 \nQ 48.734375 1.953125 48.4375 1.953125 \nQ 46.96875 1.859375 45.15625 1.5625 \nQ 43.359375 1.265625 41.796875 0.875 \nQ 40.234375 0.484375 38.859375 0.09375 \nQ 37.5 -0.296875 36.71875 -0.59375 \nL 35.84375 -0.78125 \nQ 35.0625 -0.78125 35.0625 0.78125 \nL 35.0625 5.765625 \nL 34.859375 6.25 \nQ 28.421875 -0.6875 22.078125 -0.6875 \nQ 18.453125 -0.6875 15.859375 1.125 \nQ 13.28125 2.9375 12.0625 5.90625 \nQ 10.84375 8.890625 10.34375 11.671875 \nQ 9.859375 14.453125 9.859375 17.484375 \nL 9.859375 29.78125 \nQ 9.859375 33.59375 8.5 35.0625 \nQ 7.515625 36.234375 6.09375 36.671875 \nQ 4.6875 37.109375 3.75 37.109375 \nQ 2.828125 37.109375 2.828125 37.3125 \nQ 2.828125 39.65625 3.421875 39.75 \nQ 13.765625 41.3125 16.890625 42.28125 \nQ 17 42.28125 17.1875 42.328125 \nQ 17.390625 42.390625 17.390625 42.390625 \nQ 17.78125 42.390625 17.875 41.546875 \nQ 17.96875 40.71875 17.875 40.328125 \nQ 17.28125 35.640625 17.28125 33.109375 \nL 17.28125 19.921875 \nQ 17.28125 12.40625 19.53125 8.84375 \nQ 21.78125 5.28125 26.859375 5.28125 \nQ 29.78125 5.28125 32.421875 7.5625 \nQ 35.0625 9.859375 35.0625 11.53125 \nL 35.0625 29.78125 \nQ 35.0625 33.59375 33.6875 35.0625 \nQ 32.71875 36.234375 31.296875 36.671875 \nQ 29.890625 37.109375 28.953125 37.109375 \nQ 28.03125 37.109375 28.03125 37.3125 \nQ 28.03125 39.65625 28.609375 39.75 \nQ 38.96875 41.3125 42.09375 42.28125 \nQ 42.1875 42.28125 42.375 42.328125 \nQ 42.578125 42.390625 42.578125 42.390625 \nQ 42.96875 42.390625 43.0625 41.546875 \nQ 43.171875 40.71875 43.0625 40.328125 \nQ 42.484375 35.640625 42.484375 33.296875 \nz\n\" id=\"CrimsonText-Regular-117\"></path>\n      <path d=\"M 28.609375 42.671875 \nQ 34.375 42.671875 36.234375 39.84375 \nQ 36.234375 36.421875 35.15625 34.859375 \nQ 34.078125 33.296875 32.515625 33.296875 \nQ 30.765625 33.296875 29.296875 34.953125 \nQ 27.828125 36.625 25.296875 36.625 \nQ 22.265625 36.625 20.015625 33.78125 \nQ 17.78125 30.953125 17.78125 27.828125 \nL 17.78125 13.1875 \nQ 17.78125 7.515625 18.5625 4.5 \nQ 18.75 3.8125 21.140625 3.171875 \nQ 23.53125 2.546875 24.515625 2.546875 \nQ 24.8125 2.546875 24.90625 1.375 \nQ 25 0.203125 24.8125 -0.296875 \nQ 15.046875 0.203125 14.265625 0.203125 \nQ 13.671875 0.203125 3.609375 -0.296875 \nQ 3.21875 0.09375 3.21875 1.3125 \nQ 3.21875 2.546875 3.609375 2.546875 \nQ 4.78125 2.546875 7.078125 3.171875 \nQ 9.375 3.8125 9.578125 4.5 \nQ 10.25 7.328125 10.25 11.328125 \nL 10.25 29.78125 \nQ 10.25 33.59375 8.890625 35.0625 \nQ 7.90625 36.234375 6.484375 36.671875 \nQ 5.078125 37.109375 4.140625 37.109375 \nQ 3.21875 37.109375 3.21875 37.3125 \nQ 3.21875 39.65625 3.8125 39.75 \nQ 14.15625 41.3125 17.28125 42.28125 \nQ 17.390625 42.28125 17.578125 42.328125 \nQ 17.78125 42.390625 17.78125 42.390625 \nQ 18.171875 42.390625 18.265625 41.546875 \nQ 18.359375 40.71875 18.265625 40.328125 \nL 17.671875 35.453125 \nQ 19.4375 38.09375 22.515625 40.375 \nQ 25.59375 42.671875 28.609375 42.671875 \nz\n\" id=\"CrimsonText-Regular-114\"></path>\n      <path d=\"M 18.171875 29.78125 \nQ 18.171875 43.953125 13.8125 56 \nQ 9.46875 68.0625 4.59375 70.40625 \nQ 4.5 70.40625 4.5 70.703125 \nQ 4.5 71.296875 4.890625 72.171875 \nQ 5.28125 73.046875 5.765625 73.046875 \nQ 8.296875 73.046875 11.515625 69.625 \nQ 14.75 66.21875 17.625 60.640625 \nQ 20.515625 55.078125 22.515625 46.78125 \nQ 24.515625 38.484375 24.515625 29.78125 \nQ 24.515625 21.578125 22.359375 13.515625 \nQ 20.21875 5.46875 17.140625 0.140625 \nQ 14.0625 -5.171875 10.9375 -8.484375 \nQ 7.8125 -11.8125 5.765625 -11.8125 \nQ 5.28125 -11.8125 4.828125 -11.078125 \nQ 4.390625 -10.359375 4.390625 -9.765625 \nQ 4.390625 -9.375 4.59375 -9.28125 \nQ 8.296875 -7.421875 13.234375 4.296875 \nQ 18.171875 16.015625 18.171875 29.78125 \nz\n\" id=\"CrimsonText-Regular-41\"></path>\n     </defs>\n     <g transform=\"translate(100.300703 275.417031)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-69\"></use>\n      <use x=\"55.761719\" xlink:href=\"#CrimsonText-Regular-108\"></use>\n      <use x=\"80.273438\" xlink:href=\"#CrimsonText-Regular-97\"></use>\n      <use x=\"121.582031\" xlink:href=\"#CrimsonText-Regular-112\"></use>\n      <use x=\"171.484375\" xlink:href=\"#CrimsonText-Regular-115\"></use>\n      <use x=\"206.542969\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"248.535156\" xlink:href=\"#CrimsonText-Regular-100\"></use>\n      <use x=\"297.070312\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"319.433594\" xlink:href=\"#CrimsonText-Regular-116\"></use>\n      <use x=\"350.097656\" xlink:href=\"#CrimsonText-Regular-105\"></use>\n      <use x=\"376.367188\" xlink:href=\"#CrimsonText-Regular-109\"></use>\n      <use x=\"454.492188\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"496.484375\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"518.847656\" xlink:href=\"#CrimsonText-Regular-40\"></use>\n      <use x=\"550.390625\" xlink:href=\"#CrimsonText-Regular-104\"></use>\n      <use x=\"602.148438\" xlink:href=\"#CrimsonText-Regular-111\"></use>\n      <use x=\"651.953125\" xlink:href=\"#CrimsonText-Regular-117\"></use>\n      <use x=\"702.441406\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"739.550781\" xlink:href=\"#CrimsonText-Regular-115\"></use>\n      <use x=\"774.609375\" xlink:href=\"#CrimsonText-Regular-41\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"matplotlib.axis_2\">\n    <g id=\"text_2\">\n     <!-- Ocean water level (feet) -->\n     <defs>\n      <path d=\"M 33.984375 61.03125 \nQ 24.703125 61.03125 19.328125 52.921875 \nQ 13.96875 44.828125 13.96875 34.1875 \nQ 13.96875 26.375 16.5 19.4375 \nQ 19.046875 12.5 24.40625 7.859375 \nQ 29.78125 3.21875 37.015625 3.21875 \nQ 43.265625 3.21875 47.953125 7.265625 \nQ 52.640625 11.328125 54.828125 17.328125 \nQ 57.03125 23.34375 57.03125 30.171875 \nQ 57.03125 37.984375 54.484375 44.875 \nQ 51.953125 51.765625 46.578125 56.390625 \nQ 41.21875 61.03125 33.984375 61.03125 \nz\nM 22.5625 -0.984375 \nQ 4.296875 18.359375 4.296875 32.03125 \nQ 4.296875 45.703125 13.421875 55.421875 \nQ 22.5625 65.140625 35.453125 65.140625 \nQ 48.34375 65.140625 57.515625 55.421875 \nQ 66.703125 45.703125 66.703125 32.03125 \nQ 66.703125 18.359375 57.515625 8.6875 \nQ 48.34375 -0.984375 35.453125 -0.984375 \nQ 22.5625 -0.984375 4.296875 18.359375 \nz\n\" id=\"CrimsonText-Regular-79\"></path>\n      <path d=\"M 22.5625 42.578125 \nQ 33.296875 42.578125 37.40625 37.59375 \nQ 37.40625 31.0625 33.796875 31.0625 \nQ 32.125 31.0625 31.25 31.78125 \nQ 30.375 32.515625 29 34.46875 \nQ 25.984375 38.96875 21.78125 38.96875 \nQ 17.78125 38.96875 14.5 35.15625 \nQ 11.234375 31.34375 11.234375 23.828125 \nQ 11.234375 16.015625 15.09375 10.84375 \nQ 18.953125 5.671875 25.78125 5.671875 \nQ 27.828125 5.671875 29.6875 6.0625 \nQ 31.546875 6.453125 32.859375 6.984375 \nQ 34.1875 7.515625 35.109375 8.046875 \nQ 36.03125 8.59375 36.71875 9.078125 \nL 37.40625 9.578125 \nQ 37.984375 9.578125 37.984375 8.296875 \nQ 37.984375 7.515625 37.40625 6.546875 \nQ 35.453125 3.8125 31.640625 1.609375 \nQ 27.828125 -0.59375 23.34375 -0.59375 \nQ 15.234375 -0.59375 9.421875 5.515625 \nQ 3.609375 11.625 3.609375 20.40625 \nQ 3.609375 29.390625 8.484375 35.984375 \nQ 13.375 42.578125 22.5625 42.578125 \nz\n\" id=\"CrimsonText-Regular-99\"></path>\n      <path d=\"M 31.453125 42.78125 \nQ 38.28125 42.78125 41.015625 37.890625 \nQ 43.75 33.015625 43.75 22.078125 \nL 43.75 13.1875 \nQ 43.75 7.515625 44.53125 4.5 \nQ 44.734375 3.8125 47.078125 3.171875 \nQ 49.421875 2.546875 50.390625 2.546875 \nQ 50.6875 2.546875 50.78125 1.375 \nQ 50.875 0.203125 50.6875 -0.296875 \nQ 40.921875 0.203125 40.234375 0.203125 \nQ 40.046875 0.203125 29.984375 -0.296875 \nQ 29.59375 0.09375 29.59375 1.3125 \nQ 29.59375 2.546875 29.984375 2.546875 \nQ 31.15625 2.546875 33.25 3.171875 \nQ 35.359375 3.8125 35.546875 4.5 \nQ 36.234375 7.328125 36.234375 11.328125 \nL 36.234375 21.09375 \nQ 36.234375 30.171875 33.890625 33.484375 \nQ 31.546875 36.8125 26.265625 36.8125 \nQ 23.140625 36.8125 20.265625 34.515625 \nQ 17.390625 32.234375 17.390625 30.375 \nL 17.390625 13.1875 \nQ 17.390625 7.515625 18.171875 4.5 \nQ 18.359375 3.8125 20.703125 3.171875 \nQ 23.046875 2.546875 24.03125 2.546875 \nQ 24.3125 2.546875 24.40625 1.375 \nQ 24.515625 0.203125 24.3125 -0.296875 \nQ 14.546875 0.203125 13.875 0.203125 \nQ 13.28125 0.203125 3.21875 -0.296875 \nQ 2.828125 0.09375 2.828125 1.3125 \nQ 2.828125 2.546875 3.21875 2.546875 \nQ 4.390625 2.546875 6.6875 3.171875 \nQ 8.984375 3.8125 9.1875 4.5 \nQ 9.859375 7.328125 9.859375 11.328125 \nL 9.859375 29.78125 \nQ 9.859375 33.59375 8.5 35.0625 \nQ 7.515625 36.234375 6.09375 36.671875 \nQ 4.6875 37.109375 3.75 37.109375 \nQ 2.828125 37.109375 2.828125 37.3125 \nQ 2.828125 39.65625 3.421875 39.75 \nQ 13.765625 41.3125 16.890625 42.28125 \nQ 17 42.28125 17.1875 42.328125 \nQ 17.390625 42.390625 17.390625 42.390625 \nQ 17.78125 42.390625 17.875 41.546875 \nQ 17.96875 40.71875 17.875 40.328125 \nQ 17.484375 37.59375 17.484375 36.421875 \nQ 17.484375 36.03125 17.671875 36.03125 \nQ 17.78125 36.03125 17.96875 36.234375 \nQ 20.21875 38.578125 24.078125 40.671875 \nQ 27.9375 42.78125 31.453125 42.78125 \nz\n\" id=\"CrimsonText-Regular-110\"></path>\n      <path d=\"M 60.84375 36.140625 \nQ 60.84375 39.546875 54.390625 39.546875 \nL 54 39.546875 \nQ 53.609375 39.546875 53.609375 40.765625 \nQ 53.609375 42 54 42.390625 \nQ 55.46875 42.28125 57.265625 42.1875 \nQ 59.078125 42.09375 60.59375 41.984375 \nQ 62.109375 41.890625 63.875 41.890625 \nQ 65.53125 41.890625 66.75 41.984375 \nQ 67.96875 42.09375 69.53125 42.1875 \nQ 71.09375 42.28125 72.5625 42.390625 \nQ 72.75 41.796875 72.75 40.921875 \nQ 72.75 39.546875 72.265625 39.546875 \nQ 71 39.546875 68.84375 38.71875 \nQ 66.703125 37.890625 66.015625 36.03125 \nL 53.21875 1.078125 \nQ 52.4375 -1.078125 50.484375 -1.078125 \nQ 49.515625 -1.078125 49.3125 -0.6875 \nL 37.3125 28.03125 \nL 27.4375 1.078125 \nQ 27.34375 0.78125 27.046875 0.34375 \nQ 26.765625 -0.09375 26.125 -0.578125 \nQ 25.484375 -1.078125 24.8125 -1.078125 \nQ 23.828125 -1.078125 23.640625 -0.6875 \nQ 21.296875 4.59375 18.3125 11.96875 \nQ 15.328125 19.34375 12.6875 25.25 \nQ 10.0625 31.15625 6.546875 37.40625 \nQ 5.28125 39.546875 1.265625 39.546875 \nQ 0.875 39.546875 0.875 40.828125 \nQ 0.875 42 1.265625 42.390625 \nQ 2.734375 42.28125 4.484375 42.1875 \nQ 6.25 42.09375 7.71875 41.984375 \nQ 9.1875 41.890625 10.9375 41.890625 \nL 20.703125 42.390625 \nQ 20.90625 42 20.84375 40.765625 \nQ 20.796875 39.546875 20.515625 39.546875 \nQ 15.625 39.546875 15.625 37.3125 \nQ 15.625 37.015625 16.84375 34.375 \nQ 18.0625 31.734375 21.09375 25.234375 \nQ 24.125 18.75 27.25 11.71875 \nQ 28.90625 16.5 30.953125 22.265625 \nQ 33.015625 28.03125 33.84375 30.46875 \nQ 34.671875 32.90625 34.671875 33.296875 \nQ 34.671875 33.796875 34.234375 34.859375 \nQ 33.796875 35.9375 33.296875 36.71875 \nL 32.8125 37.59375 \nQ 32.234375 38.484375 30.953125 39.0625 \nQ 29.984375 39.546875 27.828125 39.546875 \nQ 27.4375 39.546875 27.4375 40.765625 \nQ 27.4375 42 27.828125 42.390625 \nQ 29.296875 42.28125 31 42.1875 \nQ 32.71875 42.09375 34.125 41.984375 \nQ 35.546875 41.890625 37.3125 41.890625 \nQ 38.96875 41.890625 40.375 41.984375 \nQ 41.796875 42.09375 43.65625 42.1875 \nQ 45.515625 42.28125 46.875 42.390625 \nQ 47.078125 41.796875 47.078125 40.71875 \nQ 47.078125 39.65625 46.78125 39.546875 \nQ 42.09375 39.546875 42.09375 35.75 \nQ 42.09375 33.6875 52.828125 11.71875 \nQ 54.296875 16.21875 56.546875 22.5625 \nQ 58.796875 28.90625 59.8125 31.984375 \nQ 60.84375 35.0625 60.84375 36.140625 \nz\n\" id=\"CrimsonText-Regular-119\"></path>\n      <path d=\"M 37.40625 36.421875 \nQ 37.40625 39.546875 30.375 39.546875 \nQ 29.984375 39.546875 29.984375 40.765625 \nQ 29.984375 42 30.375 42.390625 \nQ 31.453125 42.28125 34.375 42.078125 \nQ 37.3125 41.890625 39.65625 41.890625 \nL 49.421875 42.390625 \nQ 49.609375 41.796875 49.609375 40.921875 \nQ 49.609375 39.546875 48.921875 39.546875 \nQ 47.5625 39.546875 45.3125 38.765625 \nQ 43.0625 37.984375 42.28125 36.234375 \nL 26.765625 1.171875 \nQ 26.5625 0.484375 25.578125 -0.296875 \nQ 24.609375 -1.078125 23.921875 -1.078125 \nQ 23.25 -1.078125 23.046875 -0.6875 \nQ 21.390625 2.9375 15.765625 16.109375 \nQ 10.15625 29.296875 5.953125 37.59375 \nQ 4.984375 39.546875 0.203125 39.546875 \nQ -0.203125 39.546875 -0.203125 40.828125 \nQ -0.203125 42 0.203125 42.390625 \nQ 10.25 41.890625 10.359375 41.890625 \nL 20.125 42.390625 \nQ 20.3125 42 20.15625 40.765625 \nQ 20.015625 39.546875 19.734375 39.546875 \nQ 14.9375 39.546875 14.9375 37.890625 \nQ 14.9375 37.703125 15.046875 37.5 \nL 26.765625 11.03125 \nL 36.625 33.5 \nQ 37.40625 35.359375 37.40625 36.421875 \nz\n\" id=\"CrimsonText-Regular-118\"></path>\n      <path d=\"M 29 67.875 \nQ 36.03125 67.875 38.28125 64.0625 \nQ 38.28125 57.90625 34.765625 57.90625 \nQ 33.5 57.90625 32.328125 59.421875 \nQ 31.15625 60.9375 29.640625 62.5 \nQ 28.125 64.0625 25.984375 64.0625 \nQ 21.6875 64.0625 19.34375 58.78125 \nQ 17 53.515625 17 46.390625 \nL 17 41.40625 \nQ 17 40.921875 17.484375 40.921875 \nL 28.328125 40.921875 \nQ 28.8125 40.921875 28.8125 40.234375 \nQ 28.8125 38.671875 27.640625 36.328125 \nL 17.578125 36.328125 \nQ 17 36.328125 17 35.75 \nL 17 13.1875 \nQ 17 7.90625 17.875 4.5 \nQ 18.0625 3.8125 20.265625 3.171875 \nQ 22.46875 2.546875 23.34375 2.546875 \nQ 23.640625 2.546875 23.734375 1.375 \nQ 23.828125 0.203125 23.640625 -0.296875 \nQ 13.875 0.203125 13.1875 0.203125 \nQ 12.890625 0.203125 2.9375 -0.296875 \nQ 2.734375 -0.09375 2.640625 0.640625 \nQ 2.546875 1.375 2.640625 1.953125 \nQ 2.734375 2.546875 2.9375 2.546875 \nQ 4.109375 2.546875 6.25 3.171875 \nQ 8.40625 3.8125 8.59375 4.5 \nQ 9.578125 8.296875 9.578125 13.1875 \nL 9.578125 35.640625 \nQ 9.578125 36.328125 9.078125 36.328125 \nL 3.90625 36.328125 \nQ 3.609375 36.328125 3.609375 36.921875 \nQ 3.609375 37.796875 5.171875 39.359375 \nQ 6.734375 40.921875 8.5 40.921875 \nL 9.078125 40.921875 \nQ 9.578125 40.921875 9.578125 41.5 \nL 9.578125 42.78125 \nQ 9.578125 53.03125 15.671875 60.453125 \nQ 21.78125 67.875 29 67.875 \nz\n\" id=\"CrimsonText-Regular-102\"></path>\n     </defs>\n     <g transform=\"translate(17.367188 205.100859)rotate(-90)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-79\"></use>\n      <use x=\"71.09375\" xlink:href=\"#CrimsonText-Regular-99\"></use>\n      <use x=\"110.644531\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"152.636719\" xlink:href=\"#CrimsonText-Regular-97\"></use>\n      <use x=\"193.945312\" xlink:href=\"#CrimsonText-Regular-110\"></use>\n      <use x=\"246.972656\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"269.335938\" xlink:href=\"#CrimsonText-Regular-119\"></use>\n      <use x=\"341.015625\" xlink:href=\"#CrimsonText-Regular-97\"></use>\n      <use x=\"382.324219\" xlink:href=\"#CrimsonText-Regular-116\"></use>\n      <use x=\"412.988281\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"454.980469\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"492.089844\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"514.453125\" xlink:href=\"#CrimsonText-Regular-108\"></use>\n      <use x=\"538.964844\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"580.957031\" xlink:href=\"#CrimsonText-Regular-118\"></use>\n      <use x=\"629.101562\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"671.09375\" xlink:href=\"#CrimsonText-Regular-108\"></use>\n      <use x=\"695.605469\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"717.96875\" xlink:href=\"#CrimsonText-Regular-40\"></use>\n      <use x=\"749.511719\" xlink:href=\"#CrimsonText-Regular-102\"></use>\n      <use x=\"778.90625\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"820.898438\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"862.890625\" xlink:href=\"#CrimsonText-Regular-116\"></use>\n      <use x=\"893.554688\" xlink:href=\"#CrimsonText-Regular-41\"></use>\n     </g>\n    </g>\n   </g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 16.838751 268.02 \nL 299.009061 268.02 \nL 299.009061 7.2 \nL 16.838751 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 73.204618 255.11539 \nL 73.204618 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 86.319059 255.11539 \nL 86.319059 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 99.4335 255.11539 \nL 99.4335 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 112.547941 255.11539 \nL 112.547941 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 125.662382 255.11539 \nL 125.662382 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 138.776823 255.11539 \nL 138.776823 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 151.891263 255.11539 \nL 151.891263 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 165.005704 255.11539 \nL 165.005704 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 178.120145 255.11539 \nL 178.120145 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 191.234586 255.11539 \nL 191.234586 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 204.349027 255.11539 \nL 204.349027 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 217.463468 255.11539 \nL 217.463468 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 230.577909 255.11539 \nL 230.577909 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 243.69235 255.11539 \nL 243.69235 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 256.80679 255.11539 \nL 256.80679 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 269.921231 255.11539 \nL 269.921231 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 249.869614 \nL 275.167008 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 236.755173 \nL 275.167008 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 223.640732 \nL 275.167008 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 210.526291 \nL 275.167008 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 197.41185 \nL 275.167008 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 184.297409 \nL 275.167008 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 171.182969 \nL 275.167008 171.182969 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 158.068528 \nL 275.167008 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 144.954087 \nL 275.167008 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 131.839646 \nL 275.167008 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 118.725205 \nL 275.167008 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 105.610764 \nL 275.167008 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 92.496323 \nL 275.167008 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 79.381883 \nL 275.167008 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 66.267442 \nL 275.167008 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 53.153001 \nL 275.167008 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 40.03856 \nL 280.412784 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 277.431707 -244.905739 \nL 280.412784 -245.89019 \nL 277.431707 -246.874641 \nL 277.431707 -244.905739 \nL 280.412784 -245.89019 \n\" id=\"md4e69817bb\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p238c96a783)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#md4e69817bb\" y=\"285.92875\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 60.090177 255.11539 \nL 60.090177 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 61.145733 -252.807504 \nL 60.090177 -256.381743 \nL 59.034622 -252.807504 \nL 61.145733 -252.807504 \nL 60.090177 -256.381743 \n\" id=\"m150b7e3201\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p238c96a783)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m150b7e3201\" y=\"285.92875\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 73.204618 43.903869 \nL 73.204618 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 86.319059 43.903869 \nL 86.319059 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 99.4335 43.903869 \nL 99.4335 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 112.547941 43.903869 \nL 112.547941 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 125.662382 43.903869 \nL 125.662382 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 138.776823 43.903869 \nL 138.776823 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 151.891263 43.903869 \nL 151.891263 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 165.005704 43.903869 \nL 165.005704 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 178.120145 43.903869 \nL 178.120145 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 191.234586 43.903869 \nL 191.234586 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 204.349027 43.903869 \nL 204.349027 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 217.463468 43.903869 \nL 217.463468 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 230.577909 43.903869 \nL 230.577909 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 243.69235 43.903869 \nL 243.69235 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 256.80679 43.903869 \nL 256.80679 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 269.921231 43.903869 \nL 269.921231 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 249.869614 \nL 63.955486 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 236.755173 \nL 63.955486 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 223.640732 \nL 63.955486 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 210.526291 \nL 63.955486 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 197.41185 \nL 63.955486 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 184.297409 \nL 63.955486 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 171.182969 \nL 63.955486 171.182969 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 158.068528 \nL 63.955486 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 144.954087 \nL 63.955486 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 131.839646 \nL 63.955486 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 118.725205 \nL 63.955486 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 105.610764 \nL 63.955486 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 92.496323 \nL 63.955486 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 79.381883 \nL 63.955486 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 66.267442 \nL 63.955486 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 53.153001 \nL 63.955486 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 38.582494 256.164545 \nL 38.582494 244.623837 \nL 53.270668 244.623837 \nL 53.270668 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 29.664675 249.082747 \nL 29.664675 253.541657 \nL 40.156227 253.541657 \nL 40.156227 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(31.272338 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 16 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(38.566403 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 16 -->\n     <g transform=\"translate(38.566403 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 38.582494 229.935664 \nL 38.582494 218.394956 \nL 53.270668 218.394956 \nL 53.270668 229.935664 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 29.664675 222.853866 \nL 29.664675 227.312776 \nL 40.156227 227.312776 \nL 40.156227 222.853866 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(31.272338 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 14 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(38.594528 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 14 -->\n     <g transform=\"translate(38.594528 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 38.582494 203.706782 \nL 38.582494 192.166074 \nL 53.270668 192.166074 \nL 53.270668 203.706782 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 29.664675 196.624984 \nL 29.664675 201.083894 \nL 40.156227 201.083894 \nL 40.156227 196.624984 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(31.272338 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 12 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(38.566403 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 12 -->\n     <g transform=\"translate(38.566403 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 38.582494 177.4779 \nL 38.582494 165.937192 \nL 53.270668 165.937192 \nL 53.270668 177.4779 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 29.664675 170.396102 \nL 29.664675 174.855012 \nL 40.156227 174.855012 \nL 40.156227 170.396102 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(31.272338 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(38.566403 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 10 -->\n     <g transform=\"translate(38.566403 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 45.139715 151.249019 \nL 45.139715 139.708311 \nL 53.008379 139.708311 \nL 53.008379 151.249019 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 37.008761 144.16722 \nL 37.008761 148.62613 \nL 47.500314 148.62613 \nL 47.500314 144.16722 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(37.829559 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(45.656247 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 8 -->\n     <g transform=\"translate(45.656247 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 45.139715 125.020137 \nL 45.139715 113.479429 \nL 53.008379 113.479429 \nL 53.008379 125.020137 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 37.008761 117.938339 \nL 37.008761 122.397249 \nL 47.500314 122.397249 \nL 47.500314 117.938339 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(37.829559 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 6 -->\n     <g transform=\"translate(45.656247 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 6 -->\n     <g transform=\"translate(45.656247 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 45.139715 98.791255 \nL 45.139715 87.250547 \nL 53.008379 87.250547 \nL 53.008379 98.791255 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 37.008761 91.709457 \nL 37.008761 96.168367 \nL 47.500314 96.168367 \nL 47.500314 91.709457 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(37.829559 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 4 -->\n     <g transform=\"translate(45.684372 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 4 -->\n     <g transform=\"translate(45.684372 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 45.139715 72.562373 \nL 45.139715 61.021665 \nL 53.008379 61.021665 \nL 53.008379 72.562373 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 37.008761 65.480575 \nL 37.008761 69.939485 \nL 47.500314 69.939485 \nL 47.500314 65.480575 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(37.829559 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 2 -->\n     <g transform=\"translate(45.656247 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 2 -->\n     <g transform=\"translate(45.656247 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 81.59786 55.251311 \nL 81.59786 43.710603 \nL 89.466525 43.710603 \nL 89.466525 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 2 -->\n     <g transform=\"translate(81.852104 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 2 -->\n     <g transform=\"translate(81.852104 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 107.826742 55.251311 \nL 107.826742 43.710603 \nL 115.695407 43.710603 \nL 115.695407 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 4 -->\n     <g transform=\"translate(108.10911 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 4 -->\n     <g transform=\"translate(108.10911 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 134.055624 55.251311 \nL 134.055624 43.710603 \nL 141.924288 43.710603 \nL 141.924288 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 6 -->\n     <g transform=\"translate(134.309867 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 6 -->\n     <g transform=\"translate(134.309867 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 160.284506 55.251311 \nL 160.284506 43.710603 \nL 168.15317 43.710603 \nL 168.15317 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 8 -->\n     <g transform=\"translate(160.538749 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 8 -->\n     <g transform=\"translate(160.538749 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 182.316766 55.251311 \nL 182.316766 43.710603 \nL 197.00494 43.710603 \nL 197.00494 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 10 -->\n     <g transform=\"translate(182.300675 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 10 -->\n     <g transform=\"translate(182.300675 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_22\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 208.545648 55.251311 \nL 208.545648 43.710603 \nL 223.233822 43.710603 \nL 223.233822 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 12 -->\n     <g transform=\"translate(208.529557 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 12 -->\n     <g transform=\"translate(208.529557 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_23\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 234.77453 55.251311 \nL 234.77453 43.710603 \nL 249.462704 43.710603 \nL 249.462704 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 14 -->\n     <g transform=\"translate(234.786563 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 14 -->\n     <g transform=\"translate(234.786563 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_24\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 261.003411 55.251311 \nL 261.003411 43.710603 \nL 275.691585 43.710603 \nL 275.691585 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 16 -->\n     <g transform=\"translate(260.98732 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 16 -->\n     <g transform=\"translate(260.98732 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(48.438067 50.415671)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_44\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(56.581584 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_45\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(282.69681 43.333872)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 60.090177 40.03856 \nL 63.033699 62.705841 \nL 65.977221 83.611334 \nL 68.920743 102.75504 \nL 71.443761 117.761693 \nL 73.96678 131.473971 \nL 76.489799 143.891874 \nL 78.592314 153.251369 \nL 80.69483 161.711993 \nL 82.797346 169.273745 \nL 84.899861 175.936627 \nL 86.581874 180.619745 \nL 88.263886 184.727586 \nL 89.945898 188.260149 \nL 91.627911 191.217435 \nL 92.88942 193.057873 \nL 94.15093 194.574718 \nL 95.412439 195.76797 \nL 96.673948 196.637627 \nL 97.935458 197.183692 \nL 99.196967 197.406162 \nL 100.458476 197.305039 \nL 101.719986 196.880323 \nL 102.981495 196.132012 \nL 104.243004 195.060109 \nL 105.504514 193.664611 \nL 106.766023 191.945521 \nL 108.027532 189.902836 \nL 109.709545 186.675889 \nL 111.391557 182.873664 \nL 113.07357 178.496162 \nL 114.755582 173.543383 \nL 116.858098 166.543425 \nL 118.960613 158.644595 \nL 121.063129 149.846895 \nL 123.165644 140.150323 \nL 125.688663 127.327928 \nL 128.211682 113.211158 \nL 130.734701 97.800014 \nL 133.257719 81.094495 \nL 136.201241 59.968778 \nL 139.144763 37.081274 \nL 139.144763 37.081274 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p238c96a783\">\n   <rect height=\"260.82\" width=\"282.17031\" x=\"16.838751\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a parabola\" class=\"sr-only\"><ul>\n<li>The parabola opens upward.</li>\n<li>The parabola passes through the following points:<br>\n<ul>\n<li>(0 comma 0)</li>\n<li>(3 comma negative 12)</li>\n<li>(6 comma 0)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">Scientists recorded data about the ocean water levels at a certain location over a period of <math alttext=\"6\"><mn>6</mn>\n</math> hours. The graph shown models the data, where <math alttext=\"y equals 0\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> represents sea level. Which table gives values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"y\"><mi>y</mi>\n</math> based on the model?</p>","answerOptions":[{"id":"2e1f9d90-8270-4eb9-9e6d-1db74dffc042","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"2e1f9d90-8270-4eb9-9e6d-1db74dffc042_option_1_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"2e1f9d90-8270-4eb9-9e6d-1db74dffc042_option_1_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 12\"><mo>-</mo><mn>12</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"6\"><mn>6</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"0ce2cd3e-5fec-449a-b79f-81a244fd7302","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"0ce2cd3e-5fec-449a-b79f-81a244fd7302_option_2_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"0ce2cd3e-5fec-449a-b79f-81a244fd7302_option_2_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"12\"><mn>12</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 6\"><mo>-</mo><mn>6</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"70bb5a93-10a0-415f-b061-97fa86866cd0","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"70bb5a93-10a0-415f-b061-97fa86866cd0_option_3_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"70bb5a93-10a0-415f-b061-97fa86866cd0_option_3_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 12\"><mo>-</mo><mn>12</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"6\"><mn>6</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"cf7a37b3-0e5e-46e3-aa2e-6e8a87ca28ca","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"cf7a37b3-0e5e-46e3-aa2e-6e8a87ca28ca_option_4_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"cf7a37b3-0e5e-46e3-aa2e-6e8a87ca28ca_option_4_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"12\"><mn>12</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"negative 6\"><mo>-</mo><mn>6</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"}],"keys":["70bb5a93-10a0-415f-b061-97fa86866cd0"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. Each point&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> on the graph represents an elapsed time <math alttext=\"x\"><mi>x</mi>\n</math>, in hours, and the corresponding ocean water level <math alttext=\"y\"><mi>y</mi>\n</math>, in feet, at a certain location based on the model. The graph shown passes through the points <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, <math alttext=\"left parenthesis 3 comma negative 12 right parenthesis\"><mfenced><mrow><mn>3</mn><mo>,</mo><mo>-</mo><mn>12</mn></mrow></mfenced></math>, and&nbsp;<math alttext=\"left parenthesis 6 comma 0 right parenthesis\"><mfenced><mrow><mn>6</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Thus, the table in choice C gives the values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"y\"><mi>y</mi>\n</math> based on the model.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959828,"pPcc":"SAT#P","questionId":"1ee962ec","skill_cd":"P.C.","score_band_range_cd":3,"skill_desc":"Nonlinear functions","createDate":1691007959828,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"1549b7a3-5fbf-46f8-8861-103e5d9edae0","primary_class_cd":"P","uId":"196aef40-8a87-49e0-8538-f8bd2caea970","difficulty":"E"},"raw_detail":{"keys":["70bb5a93-10a0-415f-b061-97fa86866cd0"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. Each point&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> on the graph represents an elapsed time <math alttext=\"x\"><mi>x</mi>\n</math>, in hours, and the corresponding ocean water level <math alttext=\"y\"><mi>y</mi>\n</math>, in feet, at a certain location based on the model. The graph shown passes through the points <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, <math alttext=\"left parenthesis 3 comma negative 12 right parenthesis\"><mfenced><mrow><mn>3</mn><mo>,</mo><mo>-</mo><mn>12</mn></mrow></mfenced></math>, and&nbsp;<math alttext=\"left parenthesis 6 comma 0 right parenthesis\"><mfenced><mrow><mn>6</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Thus, the table in choice C gives the values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"y\"><mi>y</mi>\n</math> based on the model.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"285.92875pt\" version=\"1.1\" viewBox=\"0 0 306.209061 285.92875\" width=\"306.209061pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a parabola in the x y plane with the origin labeled O. The x axis is labeled Elapsed time, in hours. It ranges from 0 to 16 in increments of 1, with values marked every 2 grid lines. The y axis is labeled Ocean water level, in feet. It ranges from negative 16 to 0 in increments of 1, with values marked every 2 grid lines. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 285.92875 \nL 306.209061 285.92875 \nL 306.209061 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 24.678906 260.46 \nL 296.838906 260.46 \nL 296.838906 10.98 \nL 24.678906 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\">\n    <g id=\"text_1\">\n     <!-- Elapsed time (hours) -->\n     <defs>\n      <path d=\"M 14.84375 64.0625 \nQ 19.234375 64.0625 30.078125 64.453125 \nQ 40.921875 64.84375 46.390625 64.84375 \nQ 46.78125 62.015625 47.90625 57.375 \nQ 49.03125 52.734375 49.21875 51.5625 \nQ 48.734375 51.078125 47.453125 51.078125 \nQ 46.1875 51.078125 46.09375 51.765625 \nQ 44.625 57.125 41.984375 58.640625 \nQ 39.359375 60.15625 34.765625 60.15625 \nL 28.21875 60.15625 \nQ 19.828125 60.15625 19.625 58.890625 \nQ 19.140625 56.546875 19.140625 50.6875 \nL 19.140625 35.0625 \nQ 19.140625 34.46875 23.34375 34.46875 \nL 28.515625 34.46875 \nQ 31.25 34.46875 32.46875 34.46875 \nQ 33.6875 34.46875 35.046875 34.859375 \nQ 36.421875 35.25 36.8125 35.34375 \nQ 37.203125 35.453125 37.84375 36.625 \nQ 38.484375 37.796875 38.578125 38.328125 \nQ 38.671875 38.875 39.265625 41.109375 \nQ 39.359375 41.796875 40.71875 41.796875 \nQ 41.890625 41.796875 42.390625 41.3125 \nL 42.390625 22.859375 \nQ 42 22.46875 40.828125 22.46875 \nQ 39.546875 22.46875 39.265625 23.25 \nQ 38.578125 25.875 38.078125 27.1875 \nQ 37.59375 28.515625 37.34375 28.75 \nQ 37.109375 29 36.53125 29.390625 \nQ 35.25 30.171875 26.171875 30.171875 \nQ 19.140625 30.171875 19.140625 29.296875 \nL 19.140625 14.15625 \nQ 19.140625 7.8125 20.015625 5.28125 \nQ 20.3125 4.296875 26.65625 4.296875 \nL 31.34375 4.296875 \nQ 40.4375 4.296875 43.65625 5.953125 \nQ 45.125 6.734375 46.921875 9.421875 \nQ 48.734375 12.109375 49.8125 15.828125 \nQ 50 16.40625 51.171875 16.40625 \nQ 53.03125 16.40625 53.609375 15.828125 \nQ 53.125 14.546875 52.09375 11.765625 \nQ 51.078125 8.984375 50.484375 7.265625 \nQ 49.90625 5.5625 49.21875 3.3125 \nQ 48.53125 1.078125 48.34375 -0.390625 \nQ 43.359375 -0.390625 32.609375 -0.1875 \nQ 21.875 0 15.046875 0 \nL 3.21875 -0.296875 \nQ 2.9375 0 2.9375 1.265625 \nQ 2.9375 2.546875 3.21875 2.546875 \nQ 4.5 2.546875 6.984375 3.21875 \nQ 9.46875 3.90625 9.96875 4.78125 \nQ 10.640625 5.953125 10.640625 13.96875 \nL 10.640625 50.875 \nQ 10.640625 56.640625 9.96875 59.28125 \nQ 9.671875 60.0625 7.078125 60.734375 \nQ 4.5 61.421875 3.21875 61.421875 \nQ 2.828125 61.421875 2.828125 62.59375 \nQ 2.828125 63.875 3.21875 64.265625 \nQ 8.296875 64.0625 14.84375 64.0625 \nz\n\" id=\"CrimsonText-Regular-69\"></path>\n      <path d=\"M 8.5 11.328125 \nL 8.5 53.609375 \nQ 8.5 56.9375 7.90625 59.859375 \nQ 7.421875 61.421875 2.9375 61.421875 \nL 2.046875 61.421875 \nQ 1.46875 61.421875 1.46875 62.5 \nQ 1.46875 64.0625 2.046875 64.0625 \nQ 4.984375 64.359375 7.46875 64.84375 \nQ 9.96875 65.328125 11.375 65.8125 \nQ 12.796875 66.3125 13.765625 66.75 \nQ 14.75 67.1875 15.234375 67.484375 \nL 15.625 67.78125 \nL 15.828125 67.78125 \nQ 16.21875 67.78125 16.609375 67.234375 \nQ 17 66.703125 17.09375 66.21875 \nQ 16.015625 63.09375 16.015625 57.71875 \nL 16.015625 13.1875 \nQ 16.015625 7.515625 16.796875 4.5 \nQ 17 3.8125 19.34375 3.171875 \nQ 21.6875 2.546875 22.65625 2.546875 \nQ 22.953125 2.546875 23.046875 1.375 \nQ 23.140625 0.203125 22.953125 -0.296875 \nQ 13.1875 0.203125 12.5 0.203125 \nQ 11.921875 0.203125 1.859375 -0.296875 \nQ 1.46875 0.09375 1.46875 1.3125 \nQ 1.46875 2.546875 1.859375 2.546875 \nQ 3.03125 2.546875 5.328125 3.171875 \nQ 7.625 3.8125 7.8125 4.5 \nQ 8.5 7.328125 8.5 11.328125 \nz\n\" id=\"CrimsonText-Regular-108\"></path>\n      <path d=\"M 12.015625 7.71875 \nQ 15.328125 4.890625 17.96875 4.890625 \nQ 20.609375 4.890625 23.046875 6.5 \nQ 25.484375 8.109375 25.484375 9.765625 \nL 25.484375 19.828125 \nQ 24.703125 19.4375 21.671875 18.453125 \nQ 18.65625 17.484375 16.9375 16.75 \nQ 15.234375 16.015625 13.625 14.296875 \nQ 12.015625 12.59375 12.015625 10.359375 \nQ 12.015625 7.71875 15.328125 4.890625 \nz\nM 22.859375 42.578125 \nQ 28.21875 42.578125 30.5625 39.984375 \nQ 32.90625 37.40625 32.90625 31.640625 \nL 32.90625 9.078125 \nQ 32.90625 7.03125 33.984375 5.65625 \nQ 35.0625 4.296875 36.921875 4.296875 \nQ 38.28125 4.296875 40.328125 5.671875 \nQ 40.71875 5.671875 40.71875 4.890625 \nQ 40.71875 3.609375 40.234375 2.828125 \nQ 36.234375 -0.59375 33.40625 -0.59375 \nQ 31.15625 -0.59375 29.09375 1.265625 \nQ 27.046875 3.125 26.265625 5.171875 \nQ 26.171875 5.171875 25.53125 4.53125 \nQ 24.90625 3.90625 23.828125 3.078125 \nQ 22.75 2.25 21.328125 1.359375 \nQ 19.921875 0.484375 18.015625 -0.09375 \nQ 16.109375 -0.6875 14.15625 -0.6875 \nQ 9.671875 -0.6875 6.734375 1.703125 \nQ 3.8125 4.109375 3.8125 8.890625 \nQ 3.8125 11.03125 4.875 12.9375 \nQ 5.953125 14.84375 7.421875 16.0625 \nQ 8.890625 17.28125 11.421875 18.546875 \nQ 13.96875 19.828125 15.765625 20.453125 \nQ 17.578125 21.09375 20.5 22.0625 \nQ 23.4375 23.046875 24.609375 23.53125 \nQ 25.484375 23.828125 25.484375 25 \nL 25.484375 32.328125 \nQ 25.484375 35.453125 23.53125 37.15625 \nQ 21.578125 38.875 18.84375 38.875 \nQ 15.921875 38.875 13.96875 36.859375 \nQ 12.015625 34.859375 12.015625 31.640625 \nQ 12.015625 28.21875 8.015625 28.21875 \nQ 5.28125 28.21875 4.203125 30.078125 \nQ 4.203125 34.28125 10.34375 38.421875 \nQ 16.5 42.578125 22.859375 42.578125 \nz\n\" id=\"CrimsonText-Regular-97\"></path>\n      <path d=\"M 26.265625 42.578125 \nQ 35.640625 42.578125 40.90625 36.28125 \nQ 46.1875 29.984375 46.1875 22.859375 \nQ 46.1875 13.484375 39.640625 6.34375 \nQ 33.109375 -0.78125 24.8125 -0.78125 \nQ 23.34375 -0.78125 22.21875 -0.6875 \nQ 21.09375 -0.59375 20.21875 -0.34375 \nQ 19.34375 -0.09375 18.84375 0.09375 \nQ 18.359375 0.296875 17.578125 0.640625 \nQ 16.796875 0.984375 16.609375 1.078125 \nQ 16.21875 0.59375 16.21875 -0.203125 \nL 16.21875 -8.59375 \nQ 16.21875 -14.265625 17 -17.28125 \nQ 17.1875 -17.96875 19.53125 -18.59375 \nQ 21.875 -19.234375 22.859375 -19.234375 \nQ 23.140625 -19.234375 23.234375 -20.453125 \nQ 23.34375 -21.6875 23.140625 -22.078125 \nQ 13.375 -21.578125 12.703125 -21.578125 \nQ 12.109375 -21.578125 2.046875 -22.078125 \nQ 1.65625 -21.6875 1.65625 -20.453125 \nQ 1.65625 -19.234375 2.046875 -19.234375 \nQ 3.21875 -19.234375 5.515625 -18.59375 \nQ 7.8125 -17.96875 8.015625 -17.28125 \nQ 8.6875 -14.453125 8.6875 -10.453125 \nL 8.6875 29.890625 \nQ 8.6875 33.6875 7.328125 35.15625 \nQ 6.34375 36.328125 4.921875 36.765625 \nQ 3.515625 37.203125 2.578125 37.203125 \nQ 1.65625 37.203125 1.65625 37.40625 \nQ 1.65625 39.75 2.25 39.84375 \nQ 12.59375 41.40625 15.71875 42.390625 \nQ 15.828125 42.390625 16.015625 42.4375 \nQ 16.21875 42.484375 16.21875 42.484375 \nQ 16.5 42.484375 16.5 41.9375 \nQ 16.5 41.40625 16.40625 40.625 \nQ 16.3125 39.84375 16.3125 39.75 \nL 16.3125 39.15625 \nQ 17.671875 40.140625 20.84375 41.359375 \nQ 24.03125 42.578125 26.265625 42.578125 \nz\nM 23.140625 37.796875 \nQ 20.125 37.796875 18.171875 36.1875 \nQ 16.21875 34.578125 16.21875 31.546875 \nL 16.21875 9.578125 \nQ 16.21875 6.9375 19.046875 5.125 \nQ 21.875 3.328125 25.203125 3.328125 \nQ 30.953125 3.328125 34.375 8.5 \nQ 37.796875 13.671875 37.796875 20.125 \nQ 37.796875 28.328125 33.453125 33.0625 \nQ 29.109375 37.796875 23.140625 37.796875 \nz\n\" id=\"CrimsonText-Regular-112\"></path>\n      <path d=\"M 18.65625 42.671875 \nQ 20.796875 42.671875 24.0625 42.140625 \nQ 27.34375 41.609375 28.609375 41.40625 \nQ 29.59375 36.921875 29.78125 31.453125 \nQ 29.78125 30.953125 28.515625 30.953125 \nQ 27.15625 30.953125 27.046875 31.640625 \nQ 26.5625 34.375 24.265625 36.8125 \nQ 21.96875 39.265625 19.046875 39.265625 \nQ 12.015625 39.265625 12.015625 33.5 \nQ 12.015625 32.03125 12.40625 30.90625 \nQ 12.796875 29.78125 13.921875 28.75 \nQ 15.046875 27.734375 15.625 27.296875 \nQ 16.21875 26.859375 18.21875 25.734375 \nQ 20.21875 24.609375 20.703125 24.3125 \nQ 21.09375 24.125 23 23 \nQ 24.90625 21.875 25.6875 21.390625 \nQ 26.46875 20.90625 27.984375 19.734375 \nQ 29.5 18.5625 30.171875 17.625 \nQ 30.859375 16.703125 31.484375 15.28125 \nQ 32.125 13.875 32.125 12.40625 \nQ 32.125 6.640625 27.625 2.78125 \nQ 23.140625 -1.078125 17.09375 -1.078125 \nQ 15.046875 -1.078125 13.328125 -0.828125 \nQ 11.625 -0.59375 9.28125 0 \nQ 6.9375 0.59375 5.671875 0.78125 \nQ 5.078125 2.34375 4.53125 5.65625 \nQ 4 8.984375 4 10.9375 \nQ 4.78125 11.53125 5.171875 11.53125 \nQ 6.640625 11.53125 6.734375 10.9375 \nQ 7.328125 8.015625 10.40625 5.21875 \nQ 13.484375 2.4375 17.09375 2.4375 \nQ 20.21875 2.4375 22.21875 4.140625 \nQ 24.21875 5.859375 24.21875 9.078125 \nQ 24.21875 10.75 23.578125 12.15625 \nQ 22.953125 13.578125 21.53125 14.703125 \nQ 20.125 15.828125 18.890625 16.546875 \nQ 17.671875 17.28125 15.421875 18.453125 \nQ 13.1875 19.625 12.109375 20.3125 \nQ 4.5 24.703125 4.5 30.765625 \nQ 4.5 36.03125 8.734375 39.34375 \nQ 12.984375 42.671875 18.65625 42.671875 \nz\n\" id=\"CrimsonText-Regular-115\"></path>\n      <path d=\"M 21.96875 38.96875 \nQ 16.890625 38.96875 14.203125 34.625 \nQ 11.53125 30.28125 11.53125 27.4375 \nQ 11.53125 26.765625 12.109375 26.765625 \nL 31.15625 26.765625 \nQ 31.640625 26.765625 31.640625 27.734375 \nQ 31.640625 30.859375 29 34.90625 \nQ 26.375 38.96875 21.96875 38.96875 \nz\nM 22.953125 42.578125 \nQ 27.4375 42.578125 30.859375 40.859375 \nQ 34.28125 39.15625 36.078125 36.46875 \nQ 37.890625 33.796875 38.71875 31 \nQ 39.546875 28.21875 39.546875 25.484375 \nQ 39.546875 23.53125 38.953125 23.09375 \nQ 38.375 22.65625 36.71875 22.65625 \nL 12.109375 22.65625 \nQ 11.328125 22.65625 11.328125 22.171875 \nQ 11.328125 16.015625 15.03125 10.84375 \nQ 18.75 5.671875 25.78125 5.671875 \nQ 27.828125 5.671875 29.6875 6.0625 \nQ 31.546875 6.453125 32.859375 6.984375 \nQ 34.1875 7.515625 35.109375 8.046875 \nQ 36.03125 8.59375 36.71875 9.078125 \nL 37.40625 9.578125 \nQ 37.984375 9.578125 37.984375 8.296875 \nQ 37.984375 7.515625 37.40625 6.546875 \nQ 35.453125 3.8125 31.640625 1.609375 \nQ 27.828125 -0.59375 23.34375 -0.59375 \nQ 15.234375 -0.59375 9.421875 5.515625 \nQ 3.609375 11.625 3.609375 20.40625 \nQ 3.609375 30.671875 9.125 36.625 \nQ 14.65625 42.578125 22.953125 42.578125 \nz\n\" id=\"CrimsonText-Regular-101\"></path>\n      <path d=\"M 24.21875 38.875 \nQ 18.5625 38.875 15.328125 33.796875 \nQ 12.109375 28.71875 12.109375 21.96875 \nQ 12.109375 14.84375 15.921875 9.609375 \nQ 19.734375 4.390625 26.46875 4.390625 \nQ 29.78125 4.390625 31.640625 5.90625 \nQ 33.5 7.421875 33.5 9.96875 \nL 33.5 33.203125 \nQ 33.5 35.25 31.296875 37.0625 \nQ 29.109375 38.875 24.21875 38.875 \nz\nM 25.484375 42.96875 \nQ 29.6875 42.96875 32.8125 41.3125 \nQ 33.5 41.3125 33.5 43.0625 \nL 33.5 53.609375 \nQ 33.5 56.9375 32.90625 59.859375 \nQ 32.421875 61.421875 27.9375 61.421875 \nL 27.046875 61.421875 \nQ 26.46875 61.421875 26.46875 62.5 \nQ 26.46875 64.0625 27.046875 64.0625 \nQ 29.984375 64.359375 32.46875 64.84375 \nQ 34.96875 65.328125 36.375 65.8125 \nQ 37.796875 66.3125 38.765625 66.75 \nQ 39.75 67.1875 40.234375 67.484375 \nL 40.625 67.78125 \nL 40.828125 67.78125 \nQ 41.21875 67.78125 41.609375 67.234375 \nQ 42 66.703125 42.09375 66.21875 \nQ 41.015625 63.09375 41.015625 57.71875 \nL 41.015625 13.765625 \nQ 41.015625 9.078125 41.609375 6.34375 \nQ 41.796875 5.671875 42.671875 5.28125 \nQ 43.5625 4.890625 44.484375 4.78125 \nQ 45.40625 4.6875 46.296875 4.6875 \nL 47.171875 4.59375 \nQ 47.46875 4.5 47.46875 3.421875 \nQ 47.46875 1.953125 46.875 1.953125 \nQ 45.40625 1.859375 43.59375 1.5625 \nQ 41.796875 1.265625 40.1875 0.921875 \nQ 38.578125 0.59375 37.203125 0.25 \nQ 35.84375 -0.09375 34.96875 -0.390625 \nL 34.078125 -0.59375 \nQ 33.5 -0.59375 33.5 1.078125 \nL 33.5 2.25 \nQ 33.5 2.828125 33.109375 2.640625 \nQ 27.640625 -0.390625 22.75 -0.390625 \nQ 14.65625 -0.390625 9.1875 5.375 \nQ 3.71875 11.140625 3.71875 19.140625 \nQ 3.71875 28.609375 10.40625 35.78125 \nQ 17.09375 42.96875 25.484375 42.96875 \nz\n\" id=\"CrimsonText-Regular-100\"></path>\n      <path id=\"CrimsonText-Regular-32\"></path>\n      <path d=\"M 7.8125 36.53125 \nL 2.15625 36.53125 \nQ 1.65625 36.53125 1.65625 38.578125 \nQ 1.65625 39.15625 1.765625 39.265625 \nQ 4.59375 40.53125 7.90625 44.4375 \nQ 8.984375 45.703125 10 47.3125 \nQ 11.03125 48.921875 11.71875 50.09375 \nQ 12.40625 51.265625 12.40625 51.375 \nQ 15.328125 51.375 15.328125 50.875 \nL 15.328125 41.21875 \nQ 17.875 41.21875 23.046875 41.15625 \nQ 28.21875 41.109375 28.515625 41.109375 \nQ 29.296875 41.109375 29.296875 40.234375 \nQ 29.296875 38.484375 28.328125 36.53125 \nL 15.328125 36.53125 \nL 15.328125 12.59375 \nQ 15.328125 8.6875 17.328125 6.34375 \nQ 19.34375 4 22.5625 4 \nQ 25.484375 4 28.609375 5.859375 \nQ 28.90625 6.0625 29.484375 5.03125 \nQ 30.078125 4 29.984375 3.90625 \nQ 28.515625 2.34375 25.484375 0.828125 \nQ 22.46875 -0.6875 19.234375 -0.6875 \nQ 14.359375 -0.6875 11.078125 2.53125 \nQ 7.8125 5.765625 7.8125 11.71875 \nz\n\" id=\"CrimsonText-Regular-116\"></path>\n      <path d=\"M 11.140625 53.03125 \nQ 8.296875 55.859375 8.296875 57.90625 \nQ 8.296875 59.96875 9.71875 61.375 \nQ 11.140625 62.796875 13.1875 62.796875 \nQ 15.234375 62.796875 16.640625 61.375 \nQ 18.0625 59.96875 18.0625 57.90625 \nQ 18.0625 55.859375 16.640625 54.4375 \nQ 15.234375 53.03125 13.1875 53.03125 \nQ 11.140625 53.03125 8.296875 55.859375 \nz\nM 17.671875 13.1875 \nQ 17.671875 7.515625 18.453125 4.5 \nQ 18.65625 3.8125 21 3.171875 \nQ 23.34375 2.546875 24.3125 2.546875 \nQ 24.609375 2.546875 24.703125 1.375 \nQ 24.8125 0.203125 24.609375 -0.296875 \nQ 14.84375 0.203125 14.15625 0.203125 \nQ 13.484375 0.203125 3.515625 -0.296875 \nQ 3.125 0.09375 3.125 1.3125 \nQ 3.125 2.546875 3.515625 2.546875 \nQ 4.6875 2.546875 6.984375 3.171875 \nQ 9.28125 3.8125 9.46875 4.5 \nQ 10.15625 7.328125 10.15625 11.328125 \nL 10.15625 29.78125 \nQ 10.15625 33.59375 8.796875 35.0625 \nQ 7.8125 36.234375 6.390625 36.671875 \nQ 4.984375 37.109375 4.046875 37.109375 \nQ 3.125 37.109375 3.125 37.3125 \nQ 3.125 39.65625 3.71875 39.75 \nQ 14.0625 41.3125 17.1875 42.28125 \nL 17.390625 42.390625 \nQ 17.578125 42.390625 17.671875 42.390625 \nQ 18.0625 42.390625 18.15625 41.546875 \nQ 18.265625 40.71875 18.171875 40.328125 \nQ 17.671875 36.421875 17.671875 33.296875 \nz\n\" id=\"CrimsonText-Regular-105\"></path>\n      <path d=\"M 31.25 42.78125 \nQ 35.15625 42.78125 37.734375 40.671875 \nQ 40.328125 38.578125 41.3125 35.84375 \nQ 48.640625 42.78125 56.453125 42.78125 \nQ 68.75 42.78125 68.75 24.03125 \nL 68.75 13.1875 \nQ 68.75 7.515625 69.53125 4.5 \nQ 69.734375 3.8125 72.078125 3.171875 \nQ 74.421875 2.546875 75.390625 2.546875 \nQ 75.6875 2.546875 75.78125 1.375 \nQ 75.875 0.203125 75.6875 -0.296875 \nQ 65.921875 0.203125 65.234375 0.203125 \nQ 64.65625 0.203125 54.59375 -0.296875 \nQ 54.203125 0.09375 54.203125 1.3125 \nQ 54.203125 2.546875 54.59375 2.546875 \nQ 55.765625 2.546875 58.0625 3.171875 \nQ 60.359375 3.8125 60.546875 4.5 \nQ 61.234375 7.328125 61.234375 10.75 \nL 61.234375 21.78125 \nQ 61.234375 36.8125 51.375 36.8125 \nQ 47.75 36.8125 45.109375 34.71875 \nQ 42.484375 32.625 42.484375 31.25 \nL 42.578125 30.859375 \nQ 42.578125 30.46875 42.578125 30.375 \nQ 42.96875 27.9375 42.96875 23.34375 \nL 42.96875 12.3125 \nQ 42.96875 7.515625 43.75 4.5 \nQ 43.953125 3.8125 46.296875 3.171875 \nQ 48.640625 2.546875 49.609375 2.546875 \nQ 49.90625 2.546875 50 1.375 \nQ 50.09375 0.203125 49.90625 -0.296875 \nQ 40.140625 0.203125 39.453125 0.203125 \nQ 38.875 0.203125 28.8125 -0.296875 \nQ 28.421875 0.09375 28.421875 1.3125 \nQ 28.421875 2.546875 28.8125 2.546875 \nQ 29.984375 2.546875 32.28125 3.171875 \nQ 34.578125 3.8125 34.765625 4.5 \nQ 35.453125 7.328125 35.453125 11.328125 \nL 35.453125 21.296875 \nQ 35.453125 36.8125 26.078125 36.8125 \nQ 23.140625 36.8125 20.15625 34.609375 \nQ 17.1875 32.421875 17.1875 30.375 \nL 17.1875 13.1875 \nQ 17.1875 7.515625 17.96875 4.5 \nQ 18.171875 3.8125 20.515625 3.171875 \nQ 22.859375 2.546875 23.828125 2.546875 \nQ 24.125 2.546875 24.21875 1.375 \nQ 24.3125 0.203125 24.125 -0.296875 \nQ 14.359375 0.203125 13.671875 0.203125 \nQ 13.09375 0.203125 3.03125 -0.296875 \nQ 2.640625 0.09375 2.640625 1.3125 \nQ 2.640625 2.546875 3.03125 2.546875 \nQ 4.203125 2.546875 6.5 3.171875 \nQ 8.796875 3.8125 8.984375 4.5 \nQ 9.671875 7.328125 9.671875 11.328125 \nL 9.671875 29.78125 \nQ 9.671875 33.59375 8.296875 35.0625 \nQ 7.328125 36.234375 5.90625 36.671875 \nQ 4.5 37.109375 3.5625 37.109375 \nQ 2.640625 37.109375 2.640625 37.3125 \nQ 2.640625 39.65625 3.21875 39.75 \nQ 13.578125 41.3125 16.703125 42.28125 \nQ 16.796875 42.28125 16.984375 42.328125 \nQ 17.1875 42.390625 17.1875 42.390625 \nQ 17.578125 42.390625 17.671875 41.546875 \nQ 17.78125 40.71875 17.671875 40.328125 \nQ 17.28125 37.59375 17.28125 36.421875 \nQ 17.28125 36.03125 17.484375 36.03125 \nQ 17.578125 36.03125 17.78125 36.234375 \nQ 20.015625 38.578125 23.875 40.671875 \nQ 27.734375 42.78125 31.25 42.78125 \nz\n\" id=\"CrimsonText-Regular-109\"></path>\n      <path d=\"M 13.28125 29.78125 \nQ 13.28125 16.015625 18.203125 4.296875 \nQ 23.140625 -7.421875 26.859375 -9.28125 \nQ 27.046875 -9.375 27.046875 -9.765625 \nQ 27.046875 -10.359375 26.609375 -11.078125 \nQ 26.171875 -11.8125 25.6875 -11.8125 \nQ 23.640625 -11.8125 20.515625 -8.484375 \nQ 17.390625 -5.171875 14.3125 0.140625 \nQ 11.234375 5.46875 9.078125 13.515625 \nQ 6.9375 21.578125 6.9375 29.78125 \nQ 6.9375 38.484375 8.9375 46.78125 \nQ 10.9375 55.078125 13.8125 60.640625 \nQ 16.703125 66.21875 19.921875 69.625 \nQ 23.140625 73.046875 25.6875 73.046875 \nQ 26.171875 73.046875 26.5625 72.171875 \nQ 26.953125 71.296875 26.953125 70.703125 \nQ 26.953125 70.40625 26.859375 70.40625 \nQ 21.96875 68.0625 17.625 56 \nQ 13.28125 43.953125 13.28125 29.78125 \nz\n\" id=\"CrimsonText-Regular-40\"></path>\n      <path d=\"M 30.46875 42.78125 \nQ 37.015625 42.78125 39.84375 38.09375 \nQ 42.671875 33.40625 42.671875 23.640625 \nL 42.671875 13.09375 \nQ 42.671875 7.515625 43.453125 4.5 \nQ 43.65625 3.8125 46 3.171875 \nQ 48.34375 2.546875 49.3125 2.546875 \nQ 49.609375 2.546875 49.703125 1.375 \nQ 49.8125 0.203125 49.609375 -0.296875 \nQ 39.84375 0.203125 39.15625 0.203125 \nQ 38.875 0.203125 28.90625 -0.296875 \nQ 28.515625 0.09375 28.515625 1.3125 \nQ 28.515625 2.546875 28.90625 2.546875 \nQ 30.078125 2.546875 32.171875 3.171875 \nQ 34.28125 3.8125 34.46875 4.5 \nQ 35.15625 7.328125 35.15625 11.328125 \nL 35.15625 21.6875 \nQ 35.15625 30.671875 32.65625 33.734375 \nQ 30.171875 36.8125 25 36.8125 \nQ 22.078125 36.8125 19.1875 34.515625 \nQ 16.3125 32.234375 16.3125 30.46875 \nL 16.3125 13.1875 \nQ 16.3125 7.515625 17.09375 4.5 \nQ 17.28125 3.8125 19.625 3.171875 \nQ 21.96875 2.546875 22.953125 2.546875 \nQ 23.25 2.546875 23.34375 1.375 \nQ 23.4375 0.203125 23.25 -0.296875 \nQ 13.484375 0.203125 12.796875 0.203125 \nQ 12.203125 0.203125 2.15625 -0.296875 \nQ 1.765625 0.09375 1.765625 1.3125 \nQ 1.765625 2.546875 2.15625 2.546875 \nQ 3.328125 2.546875 5.609375 3.171875 \nQ 7.90625 3.8125 8.109375 4.5 \nQ 8.796875 7.328125 8.796875 11.234375 \nL 8.796875 53.609375 \nQ 8.796875 56.9375 8.203125 59.859375 \nQ 7.71875 61.421875 3.21875 61.421875 \nL 2.34375 61.421875 \nQ 1.765625 61.421875 1.765625 62.5 \nQ 1.765625 64.0625 2.34375 64.0625 \nQ 5.28125 64.359375 7.765625 64.84375 \nQ 10.25 65.328125 11.671875 65.8125 \nQ 13.09375 66.3125 14.0625 66.75 \nQ 15.046875 67.1875 15.4375 67.484375 \nL 15.921875 67.78125 \nL 16.109375 67.78125 \nQ 16.5 67.78125 16.890625 67.234375 \nQ 17.28125 66.703125 17.390625 66.21875 \nQ 16.3125 63.09375 16.3125 57.71875 \nL 16.3125 36.328125 \nQ 16.3125 35.9375 16.5 35.9375 \nQ 16.609375 35.9375 16.796875 36.140625 \nQ 18.953125 38.484375 22.90625 40.625 \nQ 26.859375 42.78125 30.46875 42.78125 \nz\n\" id=\"CrimsonText-Regular-104\"></path>\n      <path d=\"M 23.734375 38.875 \nQ 18.5625 38.875 15.28125 34.125 \nQ 12.015625 29.390625 12.015625 22.5625 \nQ 12.015625 14.546875 16.15625 8.828125 \nQ 20.3125 3.125 25.875 3.125 \nQ 31.0625 3.125 34.375 8 \nQ 37.703125 12.890625 37.703125 19.734375 \nQ 37.703125 27.640625 33.5 33.25 \nQ 29.296875 38.875 23.734375 38.875 \nz\nM 24.8125 42.671875 \nQ 33.59375 42.671875 39.84375 36.328125 \nQ 46.09375 29.984375 46.09375 21.09375 \nQ 46.09375 12.109375 39.984375 5.703125 \nQ 33.890625 -0.6875 25 -0.6875 \nQ 16.109375 -0.6875 9.859375 5.703125 \nQ 3.609375 12.109375 3.609375 21.09375 \nQ 3.609375 30.171875 9.65625 36.421875 \nQ 15.71875 42.671875 24.8125 42.671875 \nz\n\" id=\"CrimsonText-Regular-111\"></path>\n      <path d=\"M 42.484375 33.296875 \nL 42.484375 13.765625 \nQ 42.484375 9.578125 43.171875 6.34375 \nQ 43.359375 5.671875 44.234375 5.28125 \nQ 45.125 4.890625 46.09375 4.78125 \nQ 47.078125 4.6875 48.046875 4.6875 \nL 48.921875 4.59375 \nQ 49.21875 4.5 49.21875 3.515625 \nQ 49.21875 3.21875 48.96875 2.578125 \nQ 48.734375 1.953125 48.4375 1.953125 \nQ 46.96875 1.859375 45.15625 1.5625 \nQ 43.359375 1.265625 41.796875 0.875 \nQ 40.234375 0.484375 38.859375 0.09375 \nQ 37.5 -0.296875 36.71875 -0.59375 \nL 35.84375 -0.78125 \nQ 35.0625 -0.78125 35.0625 0.78125 \nL 35.0625 5.765625 \nL 34.859375 6.25 \nQ 28.421875 -0.6875 22.078125 -0.6875 \nQ 18.453125 -0.6875 15.859375 1.125 \nQ 13.28125 2.9375 12.0625 5.90625 \nQ 10.84375 8.890625 10.34375 11.671875 \nQ 9.859375 14.453125 9.859375 17.484375 \nL 9.859375 29.78125 \nQ 9.859375 33.59375 8.5 35.0625 \nQ 7.515625 36.234375 6.09375 36.671875 \nQ 4.6875 37.109375 3.75 37.109375 \nQ 2.828125 37.109375 2.828125 37.3125 \nQ 2.828125 39.65625 3.421875 39.75 \nQ 13.765625 41.3125 16.890625 42.28125 \nQ 17 42.28125 17.1875 42.328125 \nQ 17.390625 42.390625 17.390625 42.390625 \nQ 17.78125 42.390625 17.875 41.546875 \nQ 17.96875 40.71875 17.875 40.328125 \nQ 17.28125 35.640625 17.28125 33.109375 \nL 17.28125 19.921875 \nQ 17.28125 12.40625 19.53125 8.84375 \nQ 21.78125 5.28125 26.859375 5.28125 \nQ 29.78125 5.28125 32.421875 7.5625 \nQ 35.0625 9.859375 35.0625 11.53125 \nL 35.0625 29.78125 \nQ 35.0625 33.59375 33.6875 35.0625 \nQ 32.71875 36.234375 31.296875 36.671875 \nQ 29.890625 37.109375 28.953125 37.109375 \nQ 28.03125 37.109375 28.03125 37.3125 \nQ 28.03125 39.65625 28.609375 39.75 \nQ 38.96875 41.3125 42.09375 42.28125 \nQ 42.1875 42.28125 42.375 42.328125 \nQ 42.578125 42.390625 42.578125 42.390625 \nQ 42.96875 42.390625 43.0625 41.546875 \nQ 43.171875 40.71875 43.0625 40.328125 \nQ 42.484375 35.640625 42.484375 33.296875 \nz\n\" id=\"CrimsonText-Regular-117\"></path>\n      <path d=\"M 28.609375 42.671875 \nQ 34.375 42.671875 36.234375 39.84375 \nQ 36.234375 36.421875 35.15625 34.859375 \nQ 34.078125 33.296875 32.515625 33.296875 \nQ 30.765625 33.296875 29.296875 34.953125 \nQ 27.828125 36.625 25.296875 36.625 \nQ 22.265625 36.625 20.015625 33.78125 \nQ 17.78125 30.953125 17.78125 27.828125 \nL 17.78125 13.1875 \nQ 17.78125 7.515625 18.5625 4.5 \nQ 18.75 3.8125 21.140625 3.171875 \nQ 23.53125 2.546875 24.515625 2.546875 \nQ 24.8125 2.546875 24.90625 1.375 \nQ 25 0.203125 24.8125 -0.296875 \nQ 15.046875 0.203125 14.265625 0.203125 \nQ 13.671875 0.203125 3.609375 -0.296875 \nQ 3.21875 0.09375 3.21875 1.3125 \nQ 3.21875 2.546875 3.609375 2.546875 \nQ 4.78125 2.546875 7.078125 3.171875 \nQ 9.375 3.8125 9.578125 4.5 \nQ 10.25 7.328125 10.25 11.328125 \nL 10.25 29.78125 \nQ 10.25 33.59375 8.890625 35.0625 \nQ 7.90625 36.234375 6.484375 36.671875 \nQ 5.078125 37.109375 4.140625 37.109375 \nQ 3.21875 37.109375 3.21875 37.3125 \nQ 3.21875 39.65625 3.8125 39.75 \nQ 14.15625 41.3125 17.28125 42.28125 \nQ 17.390625 42.28125 17.578125 42.328125 \nQ 17.78125 42.390625 17.78125 42.390625 \nQ 18.171875 42.390625 18.265625 41.546875 \nQ 18.359375 40.71875 18.265625 40.328125 \nL 17.671875 35.453125 \nQ 19.4375 38.09375 22.515625 40.375 \nQ 25.59375 42.671875 28.609375 42.671875 \nz\n\" id=\"CrimsonText-Regular-114\"></path>\n      <path d=\"M 18.171875 29.78125 \nQ 18.171875 43.953125 13.8125 56 \nQ 9.46875 68.0625 4.59375 70.40625 \nQ 4.5 70.40625 4.5 70.703125 \nQ 4.5 71.296875 4.890625 72.171875 \nQ 5.28125 73.046875 5.765625 73.046875 \nQ 8.296875 73.046875 11.515625 69.625 \nQ 14.75 66.21875 17.625 60.640625 \nQ 20.515625 55.078125 22.515625 46.78125 \nQ 24.515625 38.484375 24.515625 29.78125 \nQ 24.515625 21.578125 22.359375 13.515625 \nQ 20.21875 5.46875 17.140625 0.140625 \nQ 14.0625 -5.171875 10.9375 -8.484375 \nQ 7.8125 -11.8125 5.765625 -11.8125 \nQ 5.28125 -11.8125 4.828125 -11.078125 \nQ 4.390625 -10.359375 4.390625 -9.765625 \nQ 4.390625 -9.375 4.59375 -9.28125 \nQ 8.296875 -7.421875 13.234375 4.296875 \nQ 18.171875 16.015625 18.171875 29.78125 \nz\n\" id=\"CrimsonText-Regular-41\"></path>\n     </defs>\n     <g transform=\"translate(100.300703 275.417031)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-69\"></use>\n      <use x=\"55.761719\" xlink:href=\"#CrimsonText-Regular-108\"></use>\n      <use x=\"80.273438\" xlink:href=\"#CrimsonText-Regular-97\"></use>\n      <use x=\"121.582031\" xlink:href=\"#CrimsonText-Regular-112\"></use>\n      <use x=\"171.484375\" xlink:href=\"#CrimsonText-Regular-115\"></use>\n      <use x=\"206.542969\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"248.535156\" xlink:href=\"#CrimsonText-Regular-100\"></use>\n      <use x=\"297.070312\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"319.433594\" xlink:href=\"#CrimsonText-Regular-116\"></use>\n      <use x=\"350.097656\" xlink:href=\"#CrimsonText-Regular-105\"></use>\n      <use x=\"376.367188\" xlink:href=\"#CrimsonText-Regular-109\"></use>\n      <use x=\"454.492188\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"496.484375\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"518.847656\" xlink:href=\"#CrimsonText-Regular-40\"></use>\n      <use x=\"550.390625\" xlink:href=\"#CrimsonText-Regular-104\"></use>\n      <use x=\"602.148438\" xlink:href=\"#CrimsonText-Regular-111\"></use>\n      <use x=\"651.953125\" xlink:href=\"#CrimsonText-Regular-117\"></use>\n      <use x=\"702.441406\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"739.550781\" xlink:href=\"#CrimsonText-Regular-115\"></use>\n      <use x=\"774.609375\" xlink:href=\"#CrimsonText-Regular-41\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"matplotlib.axis_2\">\n    <g id=\"text_2\">\n     <!-- Ocean water level (feet) -->\n     <defs>\n      <path d=\"M 33.984375 61.03125 \nQ 24.703125 61.03125 19.328125 52.921875 \nQ 13.96875 44.828125 13.96875 34.1875 \nQ 13.96875 26.375 16.5 19.4375 \nQ 19.046875 12.5 24.40625 7.859375 \nQ 29.78125 3.21875 37.015625 3.21875 \nQ 43.265625 3.21875 47.953125 7.265625 \nQ 52.640625 11.328125 54.828125 17.328125 \nQ 57.03125 23.34375 57.03125 30.171875 \nQ 57.03125 37.984375 54.484375 44.875 \nQ 51.953125 51.765625 46.578125 56.390625 \nQ 41.21875 61.03125 33.984375 61.03125 \nz\nM 22.5625 -0.984375 \nQ 4.296875 18.359375 4.296875 32.03125 \nQ 4.296875 45.703125 13.421875 55.421875 \nQ 22.5625 65.140625 35.453125 65.140625 \nQ 48.34375 65.140625 57.515625 55.421875 \nQ 66.703125 45.703125 66.703125 32.03125 \nQ 66.703125 18.359375 57.515625 8.6875 \nQ 48.34375 -0.984375 35.453125 -0.984375 \nQ 22.5625 -0.984375 4.296875 18.359375 \nz\n\" id=\"CrimsonText-Regular-79\"></path>\n      <path d=\"M 22.5625 42.578125 \nQ 33.296875 42.578125 37.40625 37.59375 \nQ 37.40625 31.0625 33.796875 31.0625 \nQ 32.125 31.0625 31.25 31.78125 \nQ 30.375 32.515625 29 34.46875 \nQ 25.984375 38.96875 21.78125 38.96875 \nQ 17.78125 38.96875 14.5 35.15625 \nQ 11.234375 31.34375 11.234375 23.828125 \nQ 11.234375 16.015625 15.09375 10.84375 \nQ 18.953125 5.671875 25.78125 5.671875 \nQ 27.828125 5.671875 29.6875 6.0625 \nQ 31.546875 6.453125 32.859375 6.984375 \nQ 34.1875 7.515625 35.109375 8.046875 \nQ 36.03125 8.59375 36.71875 9.078125 \nL 37.40625 9.578125 \nQ 37.984375 9.578125 37.984375 8.296875 \nQ 37.984375 7.515625 37.40625 6.546875 \nQ 35.453125 3.8125 31.640625 1.609375 \nQ 27.828125 -0.59375 23.34375 -0.59375 \nQ 15.234375 -0.59375 9.421875 5.515625 \nQ 3.609375 11.625 3.609375 20.40625 \nQ 3.609375 29.390625 8.484375 35.984375 \nQ 13.375 42.578125 22.5625 42.578125 \nz\n\" id=\"CrimsonText-Regular-99\"></path>\n      <path d=\"M 31.453125 42.78125 \nQ 38.28125 42.78125 41.015625 37.890625 \nQ 43.75 33.015625 43.75 22.078125 \nL 43.75 13.1875 \nQ 43.75 7.515625 44.53125 4.5 \nQ 44.734375 3.8125 47.078125 3.171875 \nQ 49.421875 2.546875 50.390625 2.546875 \nQ 50.6875 2.546875 50.78125 1.375 \nQ 50.875 0.203125 50.6875 -0.296875 \nQ 40.921875 0.203125 40.234375 0.203125 \nQ 40.046875 0.203125 29.984375 -0.296875 \nQ 29.59375 0.09375 29.59375 1.3125 \nQ 29.59375 2.546875 29.984375 2.546875 \nQ 31.15625 2.546875 33.25 3.171875 \nQ 35.359375 3.8125 35.546875 4.5 \nQ 36.234375 7.328125 36.234375 11.328125 \nL 36.234375 21.09375 \nQ 36.234375 30.171875 33.890625 33.484375 \nQ 31.546875 36.8125 26.265625 36.8125 \nQ 23.140625 36.8125 20.265625 34.515625 \nQ 17.390625 32.234375 17.390625 30.375 \nL 17.390625 13.1875 \nQ 17.390625 7.515625 18.171875 4.5 \nQ 18.359375 3.8125 20.703125 3.171875 \nQ 23.046875 2.546875 24.03125 2.546875 \nQ 24.3125 2.546875 24.40625 1.375 \nQ 24.515625 0.203125 24.3125 -0.296875 \nQ 14.546875 0.203125 13.875 0.203125 \nQ 13.28125 0.203125 3.21875 -0.296875 \nQ 2.828125 0.09375 2.828125 1.3125 \nQ 2.828125 2.546875 3.21875 2.546875 \nQ 4.390625 2.546875 6.6875 3.171875 \nQ 8.984375 3.8125 9.1875 4.5 \nQ 9.859375 7.328125 9.859375 11.328125 \nL 9.859375 29.78125 \nQ 9.859375 33.59375 8.5 35.0625 \nQ 7.515625 36.234375 6.09375 36.671875 \nQ 4.6875 37.109375 3.75 37.109375 \nQ 2.828125 37.109375 2.828125 37.3125 \nQ 2.828125 39.65625 3.421875 39.75 \nQ 13.765625 41.3125 16.890625 42.28125 \nQ 17 42.28125 17.1875 42.328125 \nQ 17.390625 42.390625 17.390625 42.390625 \nQ 17.78125 42.390625 17.875 41.546875 \nQ 17.96875 40.71875 17.875 40.328125 \nQ 17.484375 37.59375 17.484375 36.421875 \nQ 17.484375 36.03125 17.671875 36.03125 \nQ 17.78125 36.03125 17.96875 36.234375 \nQ 20.21875 38.578125 24.078125 40.671875 \nQ 27.9375 42.78125 31.453125 42.78125 \nz\n\" id=\"CrimsonText-Regular-110\"></path>\n      <path d=\"M 60.84375 36.140625 \nQ 60.84375 39.546875 54.390625 39.546875 \nL 54 39.546875 \nQ 53.609375 39.546875 53.609375 40.765625 \nQ 53.609375 42 54 42.390625 \nQ 55.46875 42.28125 57.265625 42.1875 \nQ 59.078125 42.09375 60.59375 41.984375 \nQ 62.109375 41.890625 63.875 41.890625 \nQ 65.53125 41.890625 66.75 41.984375 \nQ 67.96875 42.09375 69.53125 42.1875 \nQ 71.09375 42.28125 72.5625 42.390625 \nQ 72.75 41.796875 72.75 40.921875 \nQ 72.75 39.546875 72.265625 39.546875 \nQ 71 39.546875 68.84375 38.71875 \nQ 66.703125 37.890625 66.015625 36.03125 \nL 53.21875 1.078125 \nQ 52.4375 -1.078125 50.484375 -1.078125 \nQ 49.515625 -1.078125 49.3125 -0.6875 \nL 37.3125 28.03125 \nL 27.4375 1.078125 \nQ 27.34375 0.78125 27.046875 0.34375 \nQ 26.765625 -0.09375 26.125 -0.578125 \nQ 25.484375 -1.078125 24.8125 -1.078125 \nQ 23.828125 -1.078125 23.640625 -0.6875 \nQ 21.296875 4.59375 18.3125 11.96875 \nQ 15.328125 19.34375 12.6875 25.25 \nQ 10.0625 31.15625 6.546875 37.40625 \nQ 5.28125 39.546875 1.265625 39.546875 \nQ 0.875 39.546875 0.875 40.828125 \nQ 0.875 42 1.265625 42.390625 \nQ 2.734375 42.28125 4.484375 42.1875 \nQ 6.25 42.09375 7.71875 41.984375 \nQ 9.1875 41.890625 10.9375 41.890625 \nL 20.703125 42.390625 \nQ 20.90625 42 20.84375 40.765625 \nQ 20.796875 39.546875 20.515625 39.546875 \nQ 15.625 39.546875 15.625 37.3125 \nQ 15.625 37.015625 16.84375 34.375 \nQ 18.0625 31.734375 21.09375 25.234375 \nQ 24.125 18.75 27.25 11.71875 \nQ 28.90625 16.5 30.953125 22.265625 \nQ 33.015625 28.03125 33.84375 30.46875 \nQ 34.671875 32.90625 34.671875 33.296875 \nQ 34.671875 33.796875 34.234375 34.859375 \nQ 33.796875 35.9375 33.296875 36.71875 \nL 32.8125 37.59375 \nQ 32.234375 38.484375 30.953125 39.0625 \nQ 29.984375 39.546875 27.828125 39.546875 \nQ 27.4375 39.546875 27.4375 40.765625 \nQ 27.4375 42 27.828125 42.390625 \nQ 29.296875 42.28125 31 42.1875 \nQ 32.71875 42.09375 34.125 41.984375 \nQ 35.546875 41.890625 37.3125 41.890625 \nQ 38.96875 41.890625 40.375 41.984375 \nQ 41.796875 42.09375 43.65625 42.1875 \nQ 45.515625 42.28125 46.875 42.390625 \nQ 47.078125 41.796875 47.078125 40.71875 \nQ 47.078125 39.65625 46.78125 39.546875 \nQ 42.09375 39.546875 42.09375 35.75 \nQ 42.09375 33.6875 52.828125 11.71875 \nQ 54.296875 16.21875 56.546875 22.5625 \nQ 58.796875 28.90625 59.8125 31.984375 \nQ 60.84375 35.0625 60.84375 36.140625 \nz\n\" id=\"CrimsonText-Regular-119\"></path>\n      <path d=\"M 37.40625 36.421875 \nQ 37.40625 39.546875 30.375 39.546875 \nQ 29.984375 39.546875 29.984375 40.765625 \nQ 29.984375 42 30.375 42.390625 \nQ 31.453125 42.28125 34.375 42.078125 \nQ 37.3125 41.890625 39.65625 41.890625 \nL 49.421875 42.390625 \nQ 49.609375 41.796875 49.609375 40.921875 \nQ 49.609375 39.546875 48.921875 39.546875 \nQ 47.5625 39.546875 45.3125 38.765625 \nQ 43.0625 37.984375 42.28125 36.234375 \nL 26.765625 1.171875 \nQ 26.5625 0.484375 25.578125 -0.296875 \nQ 24.609375 -1.078125 23.921875 -1.078125 \nQ 23.25 -1.078125 23.046875 -0.6875 \nQ 21.390625 2.9375 15.765625 16.109375 \nQ 10.15625 29.296875 5.953125 37.59375 \nQ 4.984375 39.546875 0.203125 39.546875 \nQ -0.203125 39.546875 -0.203125 40.828125 \nQ -0.203125 42 0.203125 42.390625 \nQ 10.25 41.890625 10.359375 41.890625 \nL 20.125 42.390625 \nQ 20.3125 42 20.15625 40.765625 \nQ 20.015625 39.546875 19.734375 39.546875 \nQ 14.9375 39.546875 14.9375 37.890625 \nQ 14.9375 37.703125 15.046875 37.5 \nL 26.765625 11.03125 \nL 36.625 33.5 \nQ 37.40625 35.359375 37.40625 36.421875 \nz\n\" id=\"CrimsonText-Regular-118\"></path>\n      <path d=\"M 29 67.875 \nQ 36.03125 67.875 38.28125 64.0625 \nQ 38.28125 57.90625 34.765625 57.90625 \nQ 33.5 57.90625 32.328125 59.421875 \nQ 31.15625 60.9375 29.640625 62.5 \nQ 28.125 64.0625 25.984375 64.0625 \nQ 21.6875 64.0625 19.34375 58.78125 \nQ 17 53.515625 17 46.390625 \nL 17 41.40625 \nQ 17 40.921875 17.484375 40.921875 \nL 28.328125 40.921875 \nQ 28.8125 40.921875 28.8125 40.234375 \nQ 28.8125 38.671875 27.640625 36.328125 \nL 17.578125 36.328125 \nQ 17 36.328125 17 35.75 \nL 17 13.1875 \nQ 17 7.90625 17.875 4.5 \nQ 18.0625 3.8125 20.265625 3.171875 \nQ 22.46875 2.546875 23.34375 2.546875 \nQ 23.640625 2.546875 23.734375 1.375 \nQ 23.828125 0.203125 23.640625 -0.296875 \nQ 13.875 0.203125 13.1875 0.203125 \nQ 12.890625 0.203125 2.9375 -0.296875 \nQ 2.734375 -0.09375 2.640625 0.640625 \nQ 2.546875 1.375 2.640625 1.953125 \nQ 2.734375 2.546875 2.9375 2.546875 \nQ 4.109375 2.546875 6.25 3.171875 \nQ 8.40625 3.8125 8.59375 4.5 \nQ 9.578125 8.296875 9.578125 13.1875 \nL 9.578125 35.640625 \nQ 9.578125 36.328125 9.078125 36.328125 \nL 3.90625 36.328125 \nQ 3.609375 36.328125 3.609375 36.921875 \nQ 3.609375 37.796875 5.171875 39.359375 \nQ 6.734375 40.921875 8.5 40.921875 \nL 9.078125 40.921875 \nQ 9.578125 40.921875 9.578125 41.5 \nL 9.578125 42.78125 \nQ 9.578125 53.03125 15.671875 60.453125 \nQ 21.78125 67.875 29 67.875 \nz\n\" id=\"CrimsonText-Regular-102\"></path>\n     </defs>\n     <g transform=\"translate(17.367188 205.100859)rotate(-90)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-79\"></use>\n      <use x=\"71.09375\" xlink:href=\"#CrimsonText-Regular-99\"></use>\n      <use x=\"110.644531\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"152.636719\" xlink:href=\"#CrimsonText-Regular-97\"></use>\n      <use x=\"193.945312\" xlink:href=\"#CrimsonText-Regular-110\"></use>\n      <use x=\"246.972656\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"269.335938\" xlink:href=\"#CrimsonText-Regular-119\"></use>\n      <use x=\"341.015625\" xlink:href=\"#CrimsonText-Regular-97\"></use>\n      <use x=\"382.324219\" xlink:href=\"#CrimsonText-Regular-116\"></use>\n      <use x=\"412.988281\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"454.980469\" xlink:href=\"#CrimsonText-Regular-114\"></use>\n      <use x=\"492.089844\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"514.453125\" xlink:href=\"#CrimsonText-Regular-108\"></use>\n      <use x=\"538.964844\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"580.957031\" xlink:href=\"#CrimsonText-Regular-118\"></use>\n      <use x=\"629.101562\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"671.09375\" xlink:href=\"#CrimsonText-Regular-108\"></use>\n      <use x=\"695.605469\" xlink:href=\"#CrimsonText-Regular-32\"></use>\n      <use x=\"717.96875\" xlink:href=\"#CrimsonText-Regular-40\"></use>\n      <use x=\"749.511719\" xlink:href=\"#CrimsonText-Regular-102\"></use>\n      <use x=\"778.90625\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"820.898438\" xlink:href=\"#CrimsonText-Regular-101\"></use>\n      <use x=\"862.890625\" xlink:href=\"#CrimsonText-Regular-116\"></use>\n      <use x=\"893.554688\" xlink:href=\"#CrimsonText-Regular-41\"></use>\n     </g>\n    </g>\n   </g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 16.838751 268.02 \nL 299.009061 268.02 \nL 299.009061 7.2 \nL 16.838751 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 73.204618 255.11539 \nL 73.204618 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 86.319059 255.11539 \nL 86.319059 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 99.4335 255.11539 \nL 99.4335 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 112.547941 255.11539 \nL 112.547941 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 125.662382 255.11539 \nL 125.662382 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 138.776823 255.11539 \nL 138.776823 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 151.891263 255.11539 \nL 151.891263 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 165.005704 255.11539 \nL 165.005704 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 178.120145 255.11539 \nL 178.120145 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 191.234586 255.11539 \nL 191.234586 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 204.349027 255.11539 \nL 204.349027 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 217.463468 255.11539 \nL 217.463468 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 230.577909 255.11539 \nL 230.577909 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 243.69235 255.11539 \nL 243.69235 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 256.80679 255.11539 \nL 256.80679 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 269.921231 255.11539 \nL 269.921231 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 249.869614 \nL 275.167008 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 236.755173 \nL 275.167008 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 223.640732 \nL 275.167008 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 210.526291 \nL 275.167008 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 197.41185 \nL 275.167008 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 184.297409 \nL 275.167008 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 171.182969 \nL 275.167008 171.182969 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 158.068528 \nL 275.167008 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 144.954087 \nL 275.167008 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 131.839646 \nL 275.167008 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 118.725205 \nL 275.167008 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 105.610764 \nL 275.167008 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 92.496323 \nL 275.167008 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 79.381883 \nL 275.167008 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 66.267442 \nL 275.167008 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 53.153001 \nL 275.167008 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 54.844401 40.03856 \nL 280.412784 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 277.431707 -244.905739 \nL 280.412784 -245.89019 \nL 277.431707 -246.874641 \nL 277.431707 -244.905739 \nL 280.412784 -245.89019 \n\" id=\"md4e69817bb\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p238c96a783)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#md4e69817bb\" y=\"285.92875\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 60.090177 255.11539 \nL 60.090177 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 61.145733 -252.807504 \nL 60.090177 -256.381743 \nL 59.034622 -252.807504 \nL 61.145733 -252.807504 \nL 60.090177 -256.381743 \n\" id=\"m150b7e3201\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p238c96a783)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m150b7e3201\" y=\"285.92875\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 73.204618 43.903869 \nL 73.204618 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 86.319059 43.903869 \nL 86.319059 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 99.4335 43.903869 \nL 99.4335 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 112.547941 43.903869 \nL 112.547941 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 125.662382 43.903869 \nL 125.662382 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 138.776823 43.903869 \nL 138.776823 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 151.891263 43.903869 \nL 151.891263 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 165.005704 43.903869 \nL 165.005704 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 178.120145 43.903869 \nL 178.120145 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 191.234586 43.903869 \nL 191.234586 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 204.349027 43.903869 \nL 204.349027 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 217.463468 43.903869 \nL 217.463468 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 230.577909 43.903869 \nL 230.577909 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 243.69235 43.903869 \nL 243.69235 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 256.80679 43.903869 \nL 256.80679 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 269.921231 43.903869 \nL 269.921231 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 249.869614 \nL 63.955486 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 236.755173 \nL 63.955486 236.755173 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 223.640732 \nL 63.955486 223.640732 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 210.526291 \nL 63.955486 210.526291 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 197.41185 \nL 63.955486 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 184.297409 \nL 63.955486 184.297409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 171.182969 \nL 63.955486 171.182969 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 158.068528 \nL 63.955486 158.068528 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 144.954087 \nL 63.955486 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 131.839646 \nL 63.955486 131.839646 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 118.725205 \nL 63.955486 118.725205 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 105.610764 \nL 63.955486 105.610764 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 92.496323 \nL 63.955486 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 79.381883 \nL 63.955486 79.381883 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 66.267442 \nL 63.955486 66.267442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 56.224868 53.153001 \nL 63.955486 53.153001 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 38.582494 256.164545 \nL 38.582494 244.623837 \nL 53.270668 244.623837 \nL 53.270668 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 29.664675 249.082747 \nL 29.664675 253.541657 \nL 40.156227 253.541657 \nL 40.156227 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(31.272338 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 16 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(38.566403 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 16 -->\n     <g transform=\"translate(38.566403 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 38.582494 229.935664 \nL 38.582494 218.394956 \nL 53.270668 218.394956 \nL 53.270668 229.935664 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 29.664675 222.853866 \nL 29.664675 227.312776 \nL 40.156227 227.312776 \nL 40.156227 222.853866 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(31.272338 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 14 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(38.594528 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 14 -->\n     <g transform=\"translate(38.594528 228.379911)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 38.582494 203.706782 \nL 38.582494 192.166074 \nL 53.270668 192.166074 \nL 53.270668 203.706782 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 29.664675 196.624984 \nL 29.664675 201.083894 \nL 40.156227 201.083894 \nL 40.156227 196.624984 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(31.272338 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 12 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(38.566403 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 12 -->\n     <g transform=\"translate(38.566403 202.151029)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 38.582494 177.4779 \nL 38.582494 165.937192 \nL 53.270668 165.937192 \nL 53.270668 177.4779 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 29.664675 170.396102 \nL 29.664675 174.855012 \nL 40.156227 174.855012 \nL 40.156227 170.396102 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(31.272338 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(38.566403 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 10 -->\n     <g transform=\"translate(38.566403 175.922147)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 45.139715 151.249019 \nL 45.139715 139.708311 \nL 53.008379 139.708311 \nL 53.008379 151.249019 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 37.008761 144.16722 \nL 37.008761 148.62613 \nL 47.500314 148.62613 \nL 47.500314 144.16722 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(37.829559 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(45.656247 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 8 -->\n     <g transform=\"translate(45.656247 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 45.139715 125.020137 \nL 45.139715 113.479429 \nL 53.008379 113.479429 \nL 53.008379 125.020137 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 37.008761 117.938339 \nL 37.008761 122.397249 \nL 47.500314 122.397249 \nL 47.500314 117.938339 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(37.829559 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 6 -->\n     <g transform=\"translate(45.656247 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 6 -->\n     <g transform=\"translate(45.656247 123.464384)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 45.139715 98.791255 \nL 45.139715 87.250547 \nL 53.008379 87.250547 \nL 53.008379 98.791255 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 37.008761 91.709457 \nL 37.008761 96.168367 \nL 47.500314 96.168367 \nL 47.500314 91.709457 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(37.829559 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 4 -->\n     <g transform=\"translate(45.684372 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 4 -->\n     <g transform=\"translate(45.684372 97.235502)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 45.139715 72.562373 \nL 45.139715 61.021665 \nL 53.008379 61.021665 \nL 53.008379 72.562373 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 37.008761 65.480575 \nL 37.008761 69.939485 \nL 47.500314 69.939485 \nL 47.500314 65.480575 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- – -->\n     <g transform=\"translate(37.829559 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 2 -->\n     <g transform=\"translate(45.656247 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 2 -->\n     <g transform=\"translate(45.656247 71.00662)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 81.59786 55.251311 \nL 81.59786 43.710603 \nL 89.466525 43.710603 \nL 89.466525 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 2 -->\n     <g transform=\"translate(81.852104 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 2 -->\n     <g transform=\"translate(81.852104 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 107.826742 55.251311 \nL 107.826742 43.710603 \nL 115.695407 43.710603 \nL 115.695407 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 4 -->\n     <g transform=\"translate(108.10911 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 4 -->\n     <g transform=\"translate(108.10911 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 134.055624 55.251311 \nL 134.055624 43.710603 \nL 141.924288 43.710603 \nL 141.924288 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 6 -->\n     <g transform=\"translate(134.309867 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 6 -->\n     <g transform=\"translate(134.309867 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 160.284506 55.251311 \nL 160.284506 43.710603 \nL 168.15317 43.710603 \nL 168.15317 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 8 -->\n     <g transform=\"translate(160.538749 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 8 -->\n     <g transform=\"translate(160.538749 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 182.316766 55.251311 \nL 182.316766 43.710603 \nL 197.00494 43.710603 \nL 197.00494 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 10 -->\n     <g transform=\"translate(182.300675 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 10 -->\n     <g transform=\"translate(182.300675 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_22\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 208.545648 55.251311 \nL 208.545648 43.710603 \nL 223.233822 43.710603 \nL 223.233822 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 12 -->\n     <g transform=\"translate(208.529557 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 12 -->\n     <g transform=\"translate(208.529557 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_23\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 234.77453 55.251311 \nL 234.77453 43.710603 \nL 249.462704 43.710603 \nL 249.462704 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 14 -->\n     <g transform=\"translate(234.786563 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 14 -->\n     <g transform=\"translate(234.786563 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_24\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 261.003411 55.251311 \nL 261.003411 43.710603 \nL 275.691585 43.710603 \nL 275.691585 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 16 -->\n     <g transform=\"translate(260.98732 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- 16 -->\n     <g transform=\"translate(260.98732 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(48.438067 50.415671)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_44\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(56.581584 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_45\">\n    <g clip-path=\"url(#p238c96a783)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(282.69681 43.333872)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#p238c96a783)\" d=\"M 60.090177 40.03856 \nL 63.033699 62.705841 \nL 65.977221 83.611334 \nL 68.920743 102.75504 \nL 71.443761 117.761693 \nL 73.96678 131.473971 \nL 76.489799 143.891874 \nL 78.592314 153.251369 \nL 80.69483 161.711993 \nL 82.797346 169.273745 \nL 84.899861 175.936627 \nL 86.581874 180.619745 \nL 88.263886 184.727586 \nL 89.945898 188.260149 \nL 91.627911 191.217435 \nL 92.88942 193.057873 \nL 94.15093 194.574718 \nL 95.412439 195.76797 \nL 96.673948 196.637627 \nL 97.935458 197.183692 \nL 99.196967 197.406162 \nL 100.458476 197.305039 \nL 101.719986 196.880323 \nL 102.981495 196.132012 \nL 104.243004 195.060109 \nL 105.504514 193.664611 \nL 106.766023 191.945521 \nL 108.027532 189.902836 \nL 109.709545 186.675889 \nL 111.391557 182.873664 \nL 113.07357 178.496162 \nL 114.755582 173.543383 \nL 116.858098 166.543425 \nL 118.960613 158.644595 \nL 121.063129 149.846895 \nL 123.165644 140.150323 \nL 125.688663 127.327928 \nL 128.211682 113.211158 \nL 130.734701 97.800014 \nL 133.257719 81.094495 \nL 136.201241 59.968778 \nL 139.144763 37.081274 \nL 139.144763 37.081274 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p238c96a783\">\n   <rect height=\"260.82\" width=\"282.17031\" x=\"16.838751\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a parabola\" class=\"sr-only\"><ul>\n<li>The parabola opens upward.</li>\n<li>The parabola passes through the following points:<br>\n<ul>\n<li>(0 comma 0)</li>\n<li>(3 comma negative 12)</li>\n<li>(6 comma 0)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">Scientists recorded data about the ocean water levels at a certain location over a period of <math alttext=\"6\"><mn>6</mn>\n</math> hours. The graph shown models the data, where <math alttext=\"y equals 0\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> represents sea level. Which table gives values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"y\"><mi>y</mi>\n</math> based on the model?</p>","externalid":"1549b7a3-5fbf-46f8-8861-103e5d9edae0","templateid":"2ad409ac-8014-4bf1-ac8c-6ac02da3d922","vaultid":"5553d2b4-3bd2-4420-a0f3-0250256a68be","type":"mcq","answerOptions":[{"id":"2e1f9d90-8270-4eb9-9e6d-1db74dffc042","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"2e1f9d90-8270-4eb9-9e6d-1db74dffc042_option_1_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"2e1f9d90-8270-4eb9-9e6d-1db74dffc042_option_1_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 12\"><mo>-</mo><mn>12</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"6\"><mn>6</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"0ce2cd3e-5fec-449a-b79f-81a244fd7302","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"0ce2cd3e-5fec-449a-b79f-81a244fd7302_option_2_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"0ce2cd3e-5fec-449a-b79f-81a244fd7302_option_2_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"12\"><mn>12</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 6\"><mo>-</mo><mn>6</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"70bb5a93-10a0-415f-b061-97fa86866cd0","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"70bb5a93-10a0-415f-b061-97fa86866cd0_option_3_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"70bb5a93-10a0-415f-b061-97fa86866cd0_option_3_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"negative 12\"><mo>-</mo><mn>12</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"6\"><mn>6</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"},{"id":"cf7a37b3-0e5e-46e3-aa2e-6e8a87ca28ca","content":"<figure class=\"table left-justified\" role=\"presentation\" aria-label=\"contains table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"text-align: center; width: 46.3494px;\" scope=\"col\" id=\"cf7a37b3-0e5e-46e3-aa2e-6e8a87ca28ca_option_4_tableColumn_1\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"text-align: center; width: 54.7727px;\" scope=\"col\" id=\"cf7a37b3-0e5e-46e3-aa2e-6e8a87ca28ca_option_4_tableColumn_2\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"12\"><mn>12</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\" text-align: center;\"><math alttext=\"negative 6\"><mo>-</mo><mn>6</mn>\n</math></td>\n<td style=\" text-align: center;\"><math alttext=\"0\"><mn>0</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>"}],"correct_answer":["C"]},"createDate":1691007959828,"updateDate":1691007959828}$SATQ$::jsonb, 1691007959828, 1691007959828),
    ($SATQ$1f353a9e$SATQ$, $SATQ$baa55cdd-6e64-416a-8f18-d484e43741e8$SATQ$::uuid, $SATQ$5b92e92f-8663-46f8-b1d7-3414d54639d6$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="f left parenthesis t right parenthesis equals 8,000 left parenthesis 0.65 right parenthesis Superscript t"><mi>f</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>8,000</mn><msup><mfenced><mn>0.65</mn></mfenced><mi>t</mi></msup></math></p>
<p style="text-align: left;">The given function <math alttext="f"><mi>f</mi>
</math> models the number of coupons a company sent to their customers at the end of each year, where <math alttext="t"><mi>t</mi>
</math> represents the number of years since the end of <math alttext="1998"><mn>1998</mn></math>, and <math alttext="0 less than or equals t less than or equals 5"><mn>0</mn><mo>&#8804;</mo><mi>t</mi><mo>&#8804;</mo><mn>5</mn></math>. If <math alttext="y equals f left parenthesis t right parenthesis"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> is graphed in the <em>ty</em>-plane, which of the following is the best interpretation of the <em>y</em>-intercept of the graph in this context?</p>$SATQ$, $SATQ$[{"id":"f4523e06-e5c7-417e-88fa-64f246d337a9","content":"<p style=\"text-align: left;\">The minimum estimated number of coupons the company sent to their customers during the <math alttext=\"5\"><mn>5</mn>\n</math> years was <math alttext=\"1,428\"><mn>1,428</mn>\n</math>.</p>"},{"id":"dc200c01-7252-4c61-86a4-52e1a9b51da3","content":"<p style=\"text-align: left;\">The minimum estimated number of coupons the company sent to their customers during the <math alttext=\"5\"><mn>5</mn>\n</math> years was <math alttext=\"8,000\"><mn>8,000</mn>\n</math>.</p>"},{"id":"7ee60ee7-4345-4bef-813f-4978ca44e9ac","content":"<p style=\"text-align: left;\">The estimated number of coupons the company sent to their customers at the end of&nbsp;<math alttext=\"1998\"><mn>1998</mn></math> was <math alttext=\"1,428\"><mn>1,428</mn>\n</math>.</p>"},{"id":"3d8e7123-89ee-42f5-a732-c592ba504034","content":"<p style=\"text-align: left;\">The estimated number of coupons the company sent to their customers at the end of&nbsp;<math alttext=\"1998\"><mn>1998</mn></math> was <math alttext=\"8,000\"><mn>8,000</mn>\n</math>.</p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["3d8e7123-89ee-42f5-a732-c592ba504034"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice D is correct. The <em>y</em>-intercept of a graph in the <em>ty</em>-plane is the point where <math alttext="t equals 0"><mrow>
	<mi>t</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>. For the given function <math alttext="f"><mi>f</mi></math>, the<em>&nbsp;y</em>-intercept of the graph of <math alttext="y equals f left parenthesis t right parenthesis"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> in the <em>ty</em>-plane can be found by substituting <math alttext="0"><mn>0</mn>
</math> for <math alttext="t"><mi>t</mi>
</math> in the equation <math alttext="y equals 8,000 left parenthesis 0 period 65 right parenthesis Superscript t"><mi>y</mi><mo>=</mo><mn>8,000</mn><msup><mfenced><mrow><mn>0</mn><mo>.</mo><mn>65</mn></mrow></mfenced><mi>t</mi></msup></math>, which gives <math alttext="y equals 8,000 left parenthesis 0 period 65 right parenthesis Superscript 0"><mi>y</mi><mo>=</mo><mn>8,000</mn><msup><mfenced><mrow><mn>0</mn><mo>.</mo><mn>65</mn></mrow></mfenced><mn>0</mn></msup></math>. This is equivalent to <math alttext="y equals 8,000 left parenthesis 1 right parenthesis"><mi>y</mi><mo>=</mo><mn>8,000</mn><mfenced><mn>1</mn></mfenced></math>, or <math alttext="y equals 8,000"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mn>8,000</mn>
</mrow>
</math>. Therefore, the <em>y</em>-intercept of the graph of <math alttext="y equals f left parenthesis t right parenthesis"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> is <math alttext="left parenthesis 0 comma 8,000 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>8,000</mn></mrow></mfenced></math>. It&rsquo;s given that the function&nbsp;<math alttext="f"><mi>f</mi></math> models the number of coupons a company sent to their customers at the end of each year. Therefore,&nbsp;<math alttext="f left parenthesis t right parenthesis"><mi>f</mi><mfenced><mi>t</mi></mfenced></math> represents the estimated number of coupons the company sent to their customers at the end of each year. It's also given that&nbsp;<math alttext="t"><mi>t</mi>
</math> represents the number of years since the end of <math alttext="1998"><mn>1998</mn></math>. Therefore, <math alttext="t equals 0"><mrow>
	<mi>t</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math> represents <math alttext="0"><mn>0</mn>
</math> years since the end of <math alttext="1998"><mn>1998</mn></math>, or the end of <math alttext="1998"><mn>1998</mn></math>. Thus, the best interpretation of the <em>y</em>-intercept of the graph of&nbsp;<math alttext="y equals f left parenthesis t right parenthesis"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> is&nbsp;that the estimated number of coupons the company sent to their customers at the end of <math alttext="1998"><mn>1998</mn></math> was <math alttext="8,000"><mn>8,000</mn>
</math>.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.&nbsp;</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.&nbsp;</p>
<p>Choice C is incorrect and may result from conceptual or calculation errors.&nbsp;</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"1f353a9e","external_id":"baa55cdd-6e64-416a-8f18-d484e43741e8","disclosed_item_id":null,"source":"qbank","vaultid":"5b92e92f-8663-46f8-b1d7-3414d54639d6","uId":"6f817f7a-a5b8-43e7-91e5-f6232f3e2886","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"f left parenthesis t right parenthesis equals 8,000 left parenthesis 0.65 right parenthesis Superscript t\"><mi>f</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>8,000</mn><msup><mfenced><mn>0.65</mn></mfenced><mi>t</mi></msup></math></p>\n<p style=\"text-align: left;\">The given function <math alttext=\"f\"><mi>f</mi>\n</math> models the number of coupons a company sent to their customers at the end of each year, where <math alttext=\"t\"><mi>t</mi>\n</math> represents the number of years since the end of <math alttext=\"1998\"><mn>1998</mn></math>, and <math alttext=\"0 less than or equals t less than or equals 5\"><mn>0</mn><mo>&#8804;</mo><mi>t</mi><mo>&#8804;</mo><mn>5</mn></math>. If <math alttext=\"y equals f left parenthesis t right parenthesis\"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> is graphed in the <em>ty</em>-plane, which of the following is the best interpretation of the <em>y</em>-intercept of the graph in this context?</p>","answerOptions":[{"id":"f4523e06-e5c7-417e-88fa-64f246d337a9","content":"<p style=\"text-align: left;\">The minimum estimated number of coupons the company sent to their customers during the <math alttext=\"5\"><mn>5</mn>\n</math> years was <math alttext=\"1,428\"><mn>1,428</mn>\n</math>.</p>"},{"id":"dc200c01-7252-4c61-86a4-52e1a9b51da3","content":"<p style=\"text-align: left;\">The minimum estimated number of coupons the company sent to their customers during the <math alttext=\"5\"><mn>5</mn>\n</math> years was <math alttext=\"8,000\"><mn>8,000</mn>\n</math>.</p>"},{"id":"7ee60ee7-4345-4bef-813f-4978ca44e9ac","content":"<p style=\"text-align: left;\">The estimated number of coupons the company sent to their customers at the end of&nbsp;<math alttext=\"1998\"><mn>1998</mn></math> was <math alttext=\"1,428\"><mn>1,428</mn>\n</math>.</p>"},{"id":"3d8e7123-89ee-42f5-a732-c592ba504034","content":"<p style=\"text-align: left;\">The estimated number of coupons the company sent to their customers at the end of&nbsp;<math alttext=\"1998\"><mn>1998</mn></math> was <math alttext=\"8,000\"><mn>8,000</mn>\n</math>.</p>"}],"keys":["3d8e7123-89ee-42f5-a732-c592ba504034"],"correct_answer":["D"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. The <em>y</em>-intercept of a graph in the <em>ty</em>-plane is the point where <math alttext=\"t equals 0\"><mrow>\n\t<mi>t</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. For the given function <math alttext=\"f\"><mi>f</mi></math>, the<em>&nbsp;y</em>-intercept of the graph of <math alttext=\"y equals f left parenthesis t right parenthesis\"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> in the <em>ty</em>-plane can be found by substituting <math alttext=\"0\"><mn>0</mn>\n</math> for <math alttext=\"t\"><mi>t</mi>\n</math> in the equation <math alttext=\"y equals 8,000 left parenthesis 0 period 65 right parenthesis Superscript t\"><mi>y</mi><mo>=</mo><mn>8,000</mn><msup><mfenced><mrow><mn>0</mn><mo>.</mo><mn>65</mn></mrow></mfenced><mi>t</mi></msup></math>, which gives <math alttext=\"y equals 8,000 left parenthesis 0 period 65 right parenthesis Superscript 0\"><mi>y</mi><mo>=</mo><mn>8,000</mn><msup><mfenced><mrow><mn>0</mn><mo>.</mo><mn>65</mn></mrow></mfenced><mn>0</mn></msup></math>. This is equivalent to <math alttext=\"y equals 8,000 left parenthesis 1 right parenthesis\"><mi>y</mi><mo>=</mo><mn>8,000</mn><mfenced><mn>1</mn></mfenced></math>, or <math alttext=\"y equals 8,000\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mn>8,000</mn>\n</mrow>\n</math>. Therefore, the <em>y</em>-intercept of the graph of <math alttext=\"y equals f left parenthesis t right parenthesis\"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> is <math alttext=\"left parenthesis 0 comma 8,000 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>8,000</mn></mrow></mfenced></math>. It&rsquo;s given that the function&nbsp;<math alttext=\"f\"><mi>f</mi></math> models the number of coupons a company sent to their customers at the end of each year. Therefore,&nbsp;<math alttext=\"f left parenthesis t right parenthesis\"><mi>f</mi><mfenced><mi>t</mi></mfenced></math> represents the estimated number of coupons the company sent to their customers at the end of each year. It's also given that&nbsp;<math alttext=\"t\"><mi>t</mi>\n</math> represents the number of years since the end of <math alttext=\"1998\"><mn>1998</mn></math>. Therefore, <math alttext=\"t equals 0\"><mrow>\n\t<mi>t</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> represents <math alttext=\"0\"><mn>0</mn>\n</math> years since the end of <math alttext=\"1998\"><mn>1998</mn></math>, or the end of <math alttext=\"1998\"><mn>1998</mn></math>. Thus, the best interpretation of the <em>y</em>-intercept of the graph of&nbsp;<math alttext=\"y equals f left parenthesis t right parenthesis\"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> is&nbsp;that the estimated number of coupons the company sent to their customers at the end of <math alttext=\"1998\"><mn>1998</mn></math> was <math alttext=\"8,000\"><mn>8,000</mn>\n</math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.&nbsp;</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.&nbsp;</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.&nbsp;</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959826,"pPcc":"SAT#P","questionId":"1f353a9e","skill_cd":"P.C.","score_band_range_cd":6,"skill_desc":"Nonlinear functions","createDate":1691007959826,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"baa55cdd-6e64-416a-8f18-d484e43741e8","primary_class_cd":"P","uId":"6f817f7a-a5b8-43e7-91e5-f6232f3e2886","difficulty":"H"},"raw_detail":{"keys":["3d8e7123-89ee-42f5-a732-c592ba504034"],"rationale":"<p style=\"text-align: left;\">Choice D is correct. The <em>y</em>-intercept of a graph in the <em>ty</em>-plane is the point where <math alttext=\"t equals 0\"><mrow>\n\t<mi>t</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. For the given function <math alttext=\"f\"><mi>f</mi></math>, the<em>&nbsp;y</em>-intercept of the graph of <math alttext=\"y equals f left parenthesis t right parenthesis\"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> in the <em>ty</em>-plane can be found by substituting <math alttext=\"0\"><mn>0</mn>\n</math> for <math alttext=\"t\"><mi>t</mi>\n</math> in the equation <math alttext=\"y equals 8,000 left parenthesis 0 period 65 right parenthesis Superscript t\"><mi>y</mi><mo>=</mo><mn>8,000</mn><msup><mfenced><mrow><mn>0</mn><mo>.</mo><mn>65</mn></mrow></mfenced><mi>t</mi></msup></math>, which gives <math alttext=\"y equals 8,000 left parenthesis 0 period 65 right parenthesis Superscript 0\"><mi>y</mi><mo>=</mo><mn>8,000</mn><msup><mfenced><mrow><mn>0</mn><mo>.</mo><mn>65</mn></mrow></mfenced><mn>0</mn></msup></math>. This is equivalent to <math alttext=\"y equals 8,000 left parenthesis 1 right parenthesis\"><mi>y</mi><mo>=</mo><mn>8,000</mn><mfenced><mn>1</mn></mfenced></math>, or <math alttext=\"y equals 8,000\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mn>8,000</mn>\n</mrow>\n</math>. Therefore, the <em>y</em>-intercept of the graph of <math alttext=\"y equals f left parenthesis t right parenthesis\"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> is <math alttext=\"left parenthesis 0 comma 8,000 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>8,000</mn></mrow></mfenced></math>. It&rsquo;s given that the function&nbsp;<math alttext=\"f\"><mi>f</mi></math> models the number of coupons a company sent to their customers at the end of each year. Therefore,&nbsp;<math alttext=\"f left parenthesis t right parenthesis\"><mi>f</mi><mfenced><mi>t</mi></mfenced></math> represents the estimated number of coupons the company sent to their customers at the end of each year. It's also given that&nbsp;<math alttext=\"t\"><mi>t</mi>\n</math> represents the number of years since the end of <math alttext=\"1998\"><mn>1998</mn></math>. Therefore, <math alttext=\"t equals 0\"><mrow>\n\t<mi>t</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> represents <math alttext=\"0\"><mn>0</mn>\n</math> years since the end of <math alttext=\"1998\"><mn>1998</mn></math>, or the end of <math alttext=\"1998\"><mn>1998</mn></math>. Thus, the best interpretation of the <em>y</em>-intercept of the graph of&nbsp;<math alttext=\"y equals f left parenthesis t right parenthesis\"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> is&nbsp;that the estimated number of coupons the company sent to their customers at the end of <math alttext=\"1998\"><mn>1998</mn></math> was <math alttext=\"8,000\"><mn>8,000</mn>\n</math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.&nbsp;</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.&nbsp;</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.&nbsp;</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"f left parenthesis t right parenthesis equals 8,000 left parenthesis 0.65 right parenthesis Superscript t\"><mi>f</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>8,000</mn><msup><mfenced><mn>0.65</mn></mfenced><mi>t</mi></msup></math></p>\n<p style=\"text-align: left;\">The given function <math alttext=\"f\"><mi>f</mi>\n</math> models the number of coupons a company sent to their customers at the end of each year, where <math alttext=\"t\"><mi>t</mi>\n</math> represents the number of years since the end of <math alttext=\"1998\"><mn>1998</mn></math>, and <math alttext=\"0 less than or equals t less than or equals 5\"><mn>0</mn><mo>&#8804;</mo><mi>t</mi><mo>&#8804;</mo><mn>5</mn></math>. If <math alttext=\"y equals f left parenthesis t right parenthesis\"><mi>y</mi><mo>=</mo><mi>f</mi><mfenced><mi>t</mi></mfenced></math> is graphed in the <em>ty</em>-plane, which of the following is the best interpretation of the <em>y</em>-intercept of the graph in this context?</p>","externalid":"baa55cdd-6e64-416a-8f18-d484e43741e8","templateid":"269ca9a1-1231-4426-9b98-3b8fa91498da","vaultid":"5b92e92f-8663-46f8-b1d7-3414d54639d6","type":"mcq","answerOptions":[{"id":"f4523e06-e5c7-417e-88fa-64f246d337a9","content":"<p style=\"text-align: left;\">The minimum estimated number of coupons the company sent to their customers during the <math alttext=\"5\"><mn>5</mn>\n</math> years was <math alttext=\"1,428\"><mn>1,428</mn>\n</math>.</p>"},{"id":"dc200c01-7252-4c61-86a4-52e1a9b51da3","content":"<p style=\"text-align: left;\">The minimum estimated number of coupons the company sent to their customers during the <math alttext=\"5\"><mn>5</mn>\n</math> years was <math alttext=\"8,000\"><mn>8,000</mn>\n</math>.</p>"},{"id":"7ee60ee7-4345-4bef-813f-4978ca44e9ac","content":"<p style=\"text-align: left;\">The estimated number of coupons the company sent to their customers at the end of&nbsp;<math alttext=\"1998\"><mn>1998</mn></math> was <math alttext=\"1,428\"><mn>1,428</mn>\n</math>.</p>"},{"id":"3d8e7123-89ee-42f5-a732-c592ba504034","content":"<p style=\"text-align: left;\">The estimated number of coupons the company sent to their customers at the end of&nbsp;<math alttext=\"1998\"><mn>1998</mn></math> was <math alttext=\"8,000\"><mn>8,000</mn>\n</math>.</p>"}],"correct_answer":["D"]},"createDate":1691007959826,"updateDate":1691007959826}$SATQ$::jsonb, 1691007959826, 1691007959826),
    ($SATQ$1fe10d97$SATQ$, $SATQ$fb591f40-b171-470c-ab62-48c9c0ee004b$SATQ$::uuid, $SATQ$0b929342-6798-4cd1-bacf-a2367b84c4d5$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="p left parenthesis t right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript t"><mi>p</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mi>t</mi></msup></math></p>
<p>The given function <math alttext="p"><mi>p</mi>
</math> models the population of Lowell&nbsp;<math alttext="t"><mi>t</mi>
</math> years after a census. Which of the following functions best models the population of Lowell&nbsp;<math alttext="m"><mi>m</mi>
</math> months after the census?</p>$SATQ$, $SATQ$[{"id":"4222e9b2-c25d-422d-974f-28e6c710ea44","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals StartFraction 90,000 Over 12 EndFraction left parenthesis 1.06 right parenthesis Superscript m\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mfrac><mn>90,000</mn><mn>12</mn></mfrac><msup><mfenced><mn>1.06</mn></mfenced><mi>m</mi></msup></math></p>"},{"id":"f4c30427-0a5a-4f34-88a2-0d97e5a5dc0f","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis StartFraction 1.06 Over 12 EndFraction right parenthesis Superscript m\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mfrac><mn>1.06</mn><mn>12</mn></mfrac></mfenced><mi>m</mi></msup></math></p>"},{"id":"85a8c800-239f-4b6e-adc6-77d553103793","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis StartFraction 1.06 Over 12 EndFraction right parenthesis Superscript StartFraction m Over 12 EndFraction\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mfrac><mn>1.06</mn><mn>12</mn></mfrac></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math></p>"},{"id":"38f1c9b6-69fc-4336-b943-13f286faa7b5","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript StartFraction m Over 12 EndFraction\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math></p>"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, $SATQ$["38f1c9b6-69fc-4336-b943-13f286faa7b5"]$SATQ$::jsonb, $SATQ$<p>Choice D is correct. It&rsquo;s given that the function <math alttext="p"><mi>p</mi>
</math> models the population of Lowell <math alttext="t"><mi>t</mi>
</math> years after a census. Since there are <math alttext="12"><mn>12</mn>
</math> months in a year, <math alttext="m"><mi>m</mi>
</math> months after the census is equivalent to&nbsp;<math alttext="StartFraction m Over 12 EndFraction"><mfrac><mi>m</mi><mn>12</mn></mfrac></math> years after the census. Substituting <math alttext="StartFraction m Over 12 EndFraction"><mfrac><mi>m</mi><mn>12</mn></mfrac></math> for <math alttext="t"><mi>t</mi>
</math> in the equation&nbsp;<math alttext="p left parenthesis t right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript t"><mi>p</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mi>t</mi></msup></math> yields <math alttext="p left parenthesis StartFraction m Over 12 EndFraction right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript StartFraction m Over 12 EndFraction"><mi>p</mi><mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math>. Therefore, the function <math alttext="r"><mi>r</mi>
</math> that best models the population of Lowell <math alttext="m"><mi>m</mi>
</math> months after the census is <math alttext="r left parenthesis m right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript StartFraction m Over 12 EndFraction"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math>.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"1fe10d97","external_id":"fb591f40-b171-470c-ab62-48c9c0ee004b","disclosed_item_id":null,"source":"qbank","vaultid":"0b929342-6798-4cd1-bacf-a2367b84c4d5","uId":"de014676-64eb-4582-889b-bd3f3cf97a59","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"p left parenthesis t right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript t\"><mi>p</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mi>t</mi></msup></math></p>\n<p>The given function <math alttext=\"p\"><mi>p</mi>\n</math> models the population of Lowell&nbsp;<math alttext=\"t\"><mi>t</mi>\n</math> years after a census. Which of the following functions best models the population of Lowell&nbsp;<math alttext=\"m\"><mi>m</mi>\n</math> months after the census?</p>","answerOptions":[{"id":"4222e9b2-c25d-422d-974f-28e6c710ea44","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals StartFraction 90,000 Over 12 EndFraction left parenthesis 1.06 right parenthesis Superscript m\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mfrac><mn>90,000</mn><mn>12</mn></mfrac><msup><mfenced><mn>1.06</mn></mfenced><mi>m</mi></msup></math></p>"},{"id":"f4c30427-0a5a-4f34-88a2-0d97e5a5dc0f","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis StartFraction 1.06 Over 12 EndFraction right parenthesis Superscript m\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mfrac><mn>1.06</mn><mn>12</mn></mfrac></mfenced><mi>m</mi></msup></math></p>"},{"id":"85a8c800-239f-4b6e-adc6-77d553103793","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis StartFraction 1.06 Over 12 EndFraction right parenthesis Superscript StartFraction m Over 12 EndFraction\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mfrac><mn>1.06</mn><mn>12</mn></mfrac></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math></p>"},{"id":"38f1c9b6-69fc-4336-b943-13f286faa7b5","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript StartFraction m Over 12 EndFraction\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math></p>"}],"keys":["38f1c9b6-69fc-4336-b943-13f286faa7b5"],"correct_answer":["D"],"rationale":"<p>Choice D is correct. It&rsquo;s given that the function <math alttext=\"p\"><mi>p</mi>\n</math> models the population of Lowell <math alttext=\"t\"><mi>t</mi>\n</math> years after a census. Since there are <math alttext=\"12\"><mn>12</mn>\n</math> months in a year, <math alttext=\"m\"><mi>m</mi>\n</math> months after the census is equivalent to&nbsp;<math alttext=\"StartFraction m Over 12 EndFraction\"><mfrac><mi>m</mi><mn>12</mn></mfrac></math> years after the census. Substituting <math alttext=\"StartFraction m Over 12 EndFraction\"><mfrac><mi>m</mi><mn>12</mn></mfrac></math> for <math alttext=\"t\"><mi>t</mi>\n</math> in the equation&nbsp;<math alttext=\"p left parenthesis t right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript t\"><mi>p</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mi>t</mi></msup></math> yields <math alttext=\"p left parenthesis StartFraction m Over 12 EndFraction right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript StartFraction m Over 12 EndFraction\"><mi>p</mi><mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math>. Therefore, the function <math alttext=\"r\"><mi>r</mi>\n</math> that best models the population of Lowell <math alttext=\"m\"><mi>m</mi>\n</math> months after the census is <math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript StartFraction m Over 12 EndFraction\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959828,"pPcc":"SAT#P","questionId":"1fe10d97","skill_cd":"P.C.","score_band_range_cd":6,"skill_desc":"Nonlinear functions","createDate":1691007959828,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"fb591f40-b171-470c-ab62-48c9c0ee004b","primary_class_cd":"P","uId":"de014676-64eb-4582-889b-bd3f3cf97a59","difficulty":"H"},"raw_detail":{"keys":["38f1c9b6-69fc-4336-b943-13f286faa7b5"],"rationale":"<p>Choice D is correct. It&rsquo;s given that the function <math alttext=\"p\"><mi>p</mi>\n</math> models the population of Lowell <math alttext=\"t\"><mi>t</mi>\n</math> years after a census. Since there are <math alttext=\"12\"><mn>12</mn>\n</math> months in a year, <math alttext=\"m\"><mi>m</mi>\n</math> months after the census is equivalent to&nbsp;<math alttext=\"StartFraction m Over 12 EndFraction\"><mfrac><mi>m</mi><mn>12</mn></mfrac></math> years after the census. Substituting <math alttext=\"StartFraction m Over 12 EndFraction\"><mfrac><mi>m</mi><mn>12</mn></mfrac></math> for <math alttext=\"t\"><mi>t</mi>\n</math> in the equation&nbsp;<math alttext=\"p left parenthesis t right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript t\"><mi>p</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mi>t</mi></msup></math> yields <math alttext=\"p left parenthesis StartFraction m Over 12 EndFraction right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript StartFraction m Over 12 EndFraction\"><mi>p</mi><mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math>. Therefore, the function <math alttext=\"r\"><mi>r</mi>\n</math> that best models the population of Lowell <math alttext=\"m\"><mi>m</mi>\n</math> months after the census is <math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript StartFraction m Over 12 EndFraction\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice C is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"p left parenthesis t right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript t\"><mi>p</mi><mfenced><mi>t</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mi>t</mi></msup></math></p>\n<p>The given function <math alttext=\"p\"><mi>p</mi>\n</math> models the population of Lowell&nbsp;<math alttext=\"t\"><mi>t</mi>\n</math> years after a census. Which of the following functions best models the population of Lowell&nbsp;<math alttext=\"m\"><mi>m</mi>\n</math> months after the census?</p>","externalid":"fb591f40-b171-470c-ab62-48c9c0ee004b","templateid":"9b1ff54e-9ccb-4528-87eb-6132c76bcd1f","vaultid":"0b929342-6798-4cd1-bacf-a2367b84c4d5","type":"mcq","answerOptions":[{"id":"4222e9b2-c25d-422d-974f-28e6c710ea44","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals StartFraction 90,000 Over 12 EndFraction left parenthesis 1.06 right parenthesis Superscript m\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mfrac><mn>90,000</mn><mn>12</mn></mfrac><msup><mfenced><mn>1.06</mn></mfenced><mi>m</mi></msup></math></p>"},{"id":"f4c30427-0a5a-4f34-88a2-0d97e5a5dc0f","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis StartFraction 1.06 Over 12 EndFraction right parenthesis Superscript m\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mfrac><mn>1.06</mn><mn>12</mn></mfrac></mfenced><mi>m</mi></msup></math></p>"},{"id":"85a8c800-239f-4b6e-adc6-77d553103793","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis StartFraction 1.06 Over 12 EndFraction right parenthesis Superscript StartFraction m Over 12 EndFraction\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mfrac><mn>1.06</mn><mn>12</mn></mfrac></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math></p>"},{"id":"38f1c9b6-69fc-4336-b943-13f286faa7b5","content":"<p><math alttext=\"r left parenthesis m right parenthesis equals 90,000 left parenthesis 1.06 right parenthesis Superscript StartFraction m Over 12 EndFraction\"><mi>r</mi><mfenced><mi>m</mi></mfenced><mo>=</mo><mn>90,000</mn><msup><mfenced><mn>1.06</mn></mfenced><mfrac><mi>m</mi><mn>12</mn></mfrac></msup></math></p>"}],"correct_answer":["D"]},"createDate":1691007959828,"updateDate":1691007959828}$SATQ$::jsonb, 1691007959828, 1691007959828),
    ($SATQ$1fe32f7d$SATQ$, $SATQ$cc8d5c5d-bc43-4311-981f-7eb0259aaf7a$SATQ$::uuid, $SATQ$22e53df4-eace-4df0-a8b2-ca87fb390ea6$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$H$SATQ$, 7, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="minus x squared plus b x minus 676 equals 0"><mrow>
	<mrow>
		<mrow>
			<mo>-</mo>
			<msup>
				<mi>x</mi>
				<mn>2</mn>
			</msup>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mi>b</mi>
			<mi>x</mi>
		</mrow>
		<mo>-</mo>
		<mn>676</mn>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math></p>
<p>In the given equation, <math alttext="b"><mi>b</mi>
</math> is a positive integer. The equation has no real solution. What is the greatest possible value of <math alttext="b"><mi>b</mi>
</math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["51"]$SATQ$::jsonb, $SATQ$["51"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="51"><mn>51</mn>
</math>. A quadratic equation of the form <math alttext="a x squared plus b x plus c equals 0"><mrow>
	<mrow>
		<mrow>
			<mi>a</mi>
			<msup>
				<mi>x</mi>
				<mn>2</mn>
			</msup>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mi>b</mi>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mi>c</mi>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>, where <math alttext="a"><mi>a</mi>
</math>, <math alttext="b"><mi>b</mi>
</math>, and <math alttext="c"><mi>c</mi>
</math> are constants, has no real solution if and only if its discriminant, <math alttext="minus 4 a c plus b squared"><mrow>
	<mrow>
		<mo>-</mo>
		<mn>4</mn>
		<mi>a</mi>
		<mi>c</mi>
	</mrow>
	<mo>+</mo>
	<msup>
		<mi>b</mi>
		<mn>2</mn>
	</msup>
</mrow>
</math>, is negative. In the given equation, <math alttext="a equals negative 1"><mrow>
	<mi>a</mi>
	<mo>=</mo>
	<mo>-</mo><mn>1</mn>
</mrow>
</math> and <math alttext="c equals negative 676"><mrow>
	<mi>c</mi>
	<mo>=</mo>
	<mo>-</mo><mn>676</mn>
</mrow>
</math>. Substituting <math alttext="negative 1"><mo>-</mo><mn>1</mn>
</math> for <math alttext="a"><mi>a</mi>
</math> and <math alttext="negative 676"><mo>-</mo><mn>676</mn>
</math> for <math alttext="c"><mi>c</mi>
</math> in this expression yields a discriminant of <math alttext="b squared minus 4 left parenthesis negative 1 right parenthesis left parenthesis negative 676 right parenthesis"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mrow><mo>-</mo><mn>1</mn></mrow></mfenced><mfenced><mrow><mo>-</mo><mn>676</mn></mrow></mfenced></math>, or <math alttext="b squared minus 2,704"><mrow>
	<msup>
		<mi>b</mi>
		<mn>2</mn>
	</msup>
	<mo>-</mo>
	<mn>2,704</mn>
</mrow>
</math>. Since this value must be negative,&nbsp;<math alttext="b squared minus 2,704 less than 0"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>2,704</mn><mo>&lt;</mo><mn>0</mn></math>, or <math alttext="b squared less than 2,704"><msup><mi>b</mi><mn>2</mn></msup><mo>&lt;</mo><mn>2,704</mn></math>. Taking the positive square root of each side of this inequality yields&nbsp;<math alttext="b less than 52"><mi>b</mi><mo>&lt;</mo><mn>52</mn></math>. Since <math alttext="b"><mi>b</mi>
</math> is a positive integer, and the greatest integer less than <math alttext="52"><mn>52</mn>
</math> is <math alttext="51"><mn>51</mn>
</math>, the greatest possible value of <math alttext="b"><mi>b</mi>
</math> is <math alttext="51"><mn>51</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"1fe32f7d","external_id":"cc8d5c5d-bc43-4311-981f-7eb0259aaf7a","disclosed_item_id":null,"source":"qbank","vaultid":"22e53df4-eace-4df0-a8b2-ca87fb390ea6","uId":"3e002877-af71-4528-b329-5f1152832fe9","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"H","score_band_range_cd":7,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"minus x squared plus b x minus 676 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mi>b</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>676</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math></p>\n<p>In the given equation, <math alttext=\"b\"><mi>b</mi>\n</math> is a positive integer. The equation has no real solution. What is the greatest possible value of <math alttext=\"b\"><mi>b</mi>\n</math>?</p>","answerOptions":[],"keys":["51"],"correct_answer":["51"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"51\"><mn>51</mn>\n</math>. A quadratic equation of the form <math alttext=\"a x squared plus b x plus c equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>a</mi>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mi>b</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>c</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, where <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, and <math alttext=\"c\"><mi>c</mi>\n</math> are constants, has no real solution if and only if its discriminant, <math alttext=\"minus 4 a c plus b squared\"><mrow>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mn>4</mn>\n\t\t<mi>a</mi>\n\t\t<mi>c</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<msup>\n\t\t<mi>b</mi>\n\t\t<mn>2</mn>\n\t</msup>\n</mrow>\n</math>, is negative. In the given equation, <math alttext=\"a equals negative 1\"><mrow>\n\t<mi>a</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>1</mn>\n</mrow>\n</math> and <math alttext=\"c equals negative 676\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>676</mn>\n</mrow>\n</math>. Substituting <math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math> and <math alttext=\"negative 676\"><mo>-</mo><mn>676</mn>\n</math> for <math alttext=\"c\"><mi>c</mi>\n</math> in this expression yields a discriminant of <math alttext=\"b squared minus 4 left parenthesis negative 1 right parenthesis left parenthesis negative 676 right parenthesis\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mrow><mo>-</mo><mn>1</mn></mrow></mfenced><mfenced><mrow><mo>-</mo><mn>676</mn></mrow></mfenced></math>, or <math alttext=\"b squared minus 2,704\"><mrow>\n\t<msup>\n\t\t<mi>b</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<mo>-</mo>\n\t<mn>2,704</mn>\n</mrow>\n</math>. Since this value must be negative,&nbsp;<math alttext=\"b squared minus 2,704 less than 0\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>2,704</mn><mo>&lt;</mo><mn>0</mn></math>, or <math alttext=\"b squared less than 2,704\"><msup><mi>b</mi><mn>2</mn></msup><mo>&lt;</mo><mn>2,704</mn></math>. Taking the positive square root of each side of this inequality yields&nbsp;<math alttext=\"b less than 52\"><mi>b</mi><mo>&lt;</mo><mn>52</mn></math>. Since <math alttext=\"b\"><mi>b</mi>\n</math> is a positive integer, and the greatest integer less than <math alttext=\"52\"><mn>52</mn>\n</math> is <math alttext=\"51\"><mn>51</mn>\n</math>, the greatest possible value of <math alttext=\"b\"><mi>b</mi>\n</math> is <math alttext=\"51\"><mn>51</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959824,"pPcc":"SAT#P","questionId":"1fe32f7d","skill_cd":"P.B.","score_band_range_cd":7,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1691007959824,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"cc8d5c5d-bc43-4311-981f-7eb0259aaf7a","primary_class_cd":"P","uId":"3e002877-af71-4528-b329-5f1152832fe9","difficulty":"H"},"raw_detail":{"keys":["51"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"51\"><mn>51</mn>\n</math>. A quadratic equation of the form <math alttext=\"a x squared plus b x plus c equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>a</mi>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mi>b</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>c</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, where <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, and <math alttext=\"c\"><mi>c</mi>\n</math> are constants, has no real solution if and only if its discriminant, <math alttext=\"minus 4 a c plus b squared\"><mrow>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mn>4</mn>\n\t\t<mi>a</mi>\n\t\t<mi>c</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<msup>\n\t\t<mi>b</mi>\n\t\t<mn>2</mn>\n\t</msup>\n</mrow>\n</math>, is negative. In the given equation, <math alttext=\"a equals negative 1\"><mrow>\n\t<mi>a</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>1</mn>\n</mrow>\n</math> and <math alttext=\"c equals negative 676\"><mrow>\n\t<mi>c</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>676</mn>\n</mrow>\n</math>. Substituting <math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math> for <math alttext=\"a\"><mi>a</mi>\n</math> and <math alttext=\"negative 676\"><mo>-</mo><mn>676</mn>\n</math> for <math alttext=\"c\"><mi>c</mi>\n</math> in this expression yields a discriminant of <math alttext=\"b squared minus 4 left parenthesis negative 1 right parenthesis left parenthesis negative 676 right parenthesis\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>4</mn><mfenced><mrow><mo>-</mo><mn>1</mn></mrow></mfenced><mfenced><mrow><mo>-</mo><mn>676</mn></mrow></mfenced></math>, or <math alttext=\"b squared minus 2,704\"><mrow>\n\t<msup>\n\t\t<mi>b</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<mo>-</mo>\n\t<mn>2,704</mn>\n</mrow>\n</math>. Since this value must be negative,&nbsp;<math alttext=\"b squared minus 2,704 less than 0\"><msup><mi>b</mi><mn>2</mn></msup><mo>-</mo><mn>2,704</mn><mo>&lt;</mo><mn>0</mn></math>, or <math alttext=\"b squared less than 2,704\"><msup><mi>b</mi><mn>2</mn></msup><mo>&lt;</mo><mn>2,704</mn></math>. Taking the positive square root of each side of this inequality yields&nbsp;<math alttext=\"b less than 52\"><mi>b</mi><mo>&lt;</mo><mn>52</mn></math>. Since <math alttext=\"b\"><mi>b</mi>\n</math> is a positive integer, and the greatest integer less than <math alttext=\"52\"><mn>52</mn>\n</math> is <math alttext=\"51\"><mn>51</mn>\n</math>, the greatest possible value of <math alttext=\"b\"><mi>b</mi>\n</math> is <math alttext=\"51\"><mn>51</mn>\n</math>.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"minus x squared plus b x minus 676 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mi>b</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>676</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math></p>\n<p>In the given equation, <math alttext=\"b\"><mi>b</mi>\n</math> is a positive integer. The equation has no real solution. What is the greatest possible value of <math alttext=\"b\"><mi>b</mi>\n</math>?</p>","externalid":"cc8d5c5d-bc43-4311-981f-7eb0259aaf7a","templateid":"cf4b95a2-69f2-4e42-8783-9ed609fc20eb","vaultid":"22e53df4-eace-4df0-a8b2-ca87fb390ea6","type":"spr","answerOptions":[],"correct_answer":["51"]},"createDate":1691007959824,"updateDate":1691007959824}$SATQ$::jsonb, 1691007959824, 1691007959824),
    ($SATQ$20291f47$SATQ$, $SATQ$7c3cceff-5961-4825-a23b-44ce88420238$SATQ$::uuid, $SATQ$69b67b80-5e3f-41ca-84c4-62510bbb1c47$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">Which expression is equivalent to&nbsp;<math alttext="StartFraction y plus 12 Over x minus 8 EndFraction plus StartFraction y left parenthesis x minus 8 right parenthesis Over x squared y minus 8 x y EndFraction"><mfrac><mrow><mi>y</mi><mo>+</mo><mrow><mn>12</mn></mrow></mrow><mrow><mi>x</mi><mo>-</mo><mrow><mn>8</mn></mrow></mrow></mfrac><mo>+</mo><mfrac><mrow><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>8</mn></mrow></mrow></mfenced></mrow><mrow><msup><mi>x</mi><mn>2</mn></msup><mi>y</mi><mo>-</mo><mrow><mn>8</mn></mrow><mi>x</mi><mi>y</mi></mrow></mfrac></math>?</p>$SATQ$, $SATQ$[{"id":"aef09784-f4ac-46cf-9031-48f6cc7cf275","content":"<p><math alttext=\"StartFraction x y plus y plus 4 Over x cubed y minus 16 x squared y plus 64 x y EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mi>y</mi>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>4</mn>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>3</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>64</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"d4bcd558-edd4-4080-aaba-6832f4d39c9e","content":"<p><math alttext=\"StartFraction x y plus 9 y plus 12 Over x squared y minus 8 x y plus x minus 8 EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>9</mn>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>12</mn>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mi>x</mi>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>8</mn>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"e22b07c9-1be7-48c6-a594-a7cbe6d43e3b","content":"<p><math alttext=\"StartFraction x y squared plus 13 x y minus 8 y Over x squared y minus 8 x y EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>y</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>13</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"57cefa8f-b548-43fc-861c-b6e50454de57","content":"<p><math alttext=\"StartFraction x y squared plus 13 x y minus 8 y Over x cubed y minus 16 x squared y plus 64 x y EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>y</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>13</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>3</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>64</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["e22b07c9-1be7-48c6-a594-a7cbe6d43e3b"]$SATQ$::jsonb, $SATQ$<p>Choice C is correct. Factoring the denominator in the second term of the given expression gives <math alttext="StartFraction y plus 12 Over x minus 8 EndFraction plus StartFraction y left parenthesis x minus 8 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction"><mfrac><mrow><mi>y</mi><mo>+</mo><mn>12</mn></mrow><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfrac><mo>+</mo><mfrac><mrow><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac></math>. This expression can be rewritten with common denominators by multiplying the first term by <math alttext="StartFraction x y Over x y EndFraction"><mfrac><mrow><mi>x</mi><mi>y</mi></mrow><mrow><mi>x</mi><mi>y</mi></mrow></mfrac></math>, giving&nbsp;<math alttext="StartFraction x y left parenthesis y plus 12 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction plus StartFraction y left parenthesis x minus 8 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction"><mfrac><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>y</mi><mo>+</mo><mn>12</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac><mo>+</mo><mfrac><mrow><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac></math>. Adding these two terms yields <math alttext="StartFraction x y left parenthesis y plus 12 right parenthesis plus y left parenthesis x minus 8 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction"><mfrac><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>y</mi><mo>+</mo><mn>12</mn></mrow></mfenced><mo>+</mo><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac></math>. Using the distributive property to rewrite this expression gives <math alttext="StartFraction x y squared plus 12 x y plus x y minus 8 y Over x squared y minus 8 x y EndFraction"><mfrac><mrow><mi>x</mi><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><mi>x</mi><mi>y</mi><mo>+</mo><mi>x</mi><mi>y</mi><mo>-</mo><mn>8</mn><mi>y</mi></mrow><mrow><msup><mi>x</mi><mn>2</mn></msup><mi>y</mi><mo>-</mo><mn>8</mn><mi>x</mi><mi>y</mi></mrow></mfrac></math>. Combining the like terms in the numerator of this expression gives <math alttext="StartFraction x y squared plus 13 x y minus 8 y Over x squared y minus 8 x y EndFraction"><mfrac><mrow><mi>x</mi><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>13</mn><mi>x</mi><mi>y</mi><mo>-</mo><mn>8</mn><mi>y</mi></mrow><mrow><msup><mi>x</mi><mn>2</mn></msup><mi>y</mi><mo>-</mo><mn>8</mn><mi>x</mi><mi>y</mi></mrow></mfrac></math>.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"20291f47","external_id":"7c3cceff-5961-4825-a23b-44ce88420238","disclosed_item_id":null,"source":"qbank","vaultid":"69b67b80-5e3f-41ca-84c4-62510bbb1c47","uId":"b510c444-9f16-4a2b-8b9c-a98cb0c0b332","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">Which expression is equivalent to&nbsp;<math alttext=\"StartFraction y plus 12 Over x minus 8 EndFraction plus StartFraction y left parenthesis x minus 8 right parenthesis Over x squared y minus 8 x y EndFraction\"><mfrac><mrow><mi>y</mi><mo>+</mo><mrow><mn>12</mn></mrow></mrow><mrow><mi>x</mi><mo>-</mo><mrow><mn>8</mn></mrow></mrow></mfrac><mo>+</mo><mfrac><mrow><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>8</mn></mrow></mrow></mfenced></mrow><mrow><msup><mi>x</mi><mn>2</mn></msup><mi>y</mi><mo>-</mo><mrow><mn>8</mn></mrow><mi>x</mi><mi>y</mi></mrow></mfrac></math>?</p>","answerOptions":[{"id":"aef09784-f4ac-46cf-9031-48f6cc7cf275","content":"<p><math alttext=\"StartFraction x y plus y plus 4 Over x cubed y minus 16 x squared y plus 64 x y EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mi>y</mi>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>4</mn>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>3</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>64</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"d4bcd558-edd4-4080-aaba-6832f4d39c9e","content":"<p><math alttext=\"StartFraction x y plus 9 y plus 12 Over x squared y minus 8 x y plus x minus 8 EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>9</mn>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>12</mn>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mi>x</mi>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>8</mn>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"e22b07c9-1be7-48c6-a594-a7cbe6d43e3b","content":"<p><math alttext=\"StartFraction x y squared plus 13 x y minus 8 y Over x squared y minus 8 x y EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>y</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>13</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"57cefa8f-b548-43fc-861c-b6e50454de57","content":"<p><math alttext=\"StartFraction x y squared plus 13 x y minus 8 y Over x cubed y minus 16 x squared y plus 64 x y EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>y</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>13</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>3</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>64</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"}],"keys":["e22b07c9-1be7-48c6-a594-a7cbe6d43e3b"],"correct_answer":["C"],"rationale":"<p>Choice C is correct. Factoring the denominator in the second term of the given expression gives <math alttext=\"StartFraction y plus 12 Over x minus 8 EndFraction plus StartFraction y left parenthesis x minus 8 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction\"><mfrac><mrow><mi>y</mi><mo>+</mo><mn>12</mn></mrow><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfrac><mo>+</mo><mfrac><mrow><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac></math>. This expression can be rewritten with common denominators by multiplying the first term by <math alttext=\"StartFraction x y Over x y EndFraction\"><mfrac><mrow><mi>x</mi><mi>y</mi></mrow><mrow><mi>x</mi><mi>y</mi></mrow></mfrac></math>, giving&nbsp;<math alttext=\"StartFraction x y left parenthesis y plus 12 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction plus StartFraction y left parenthesis x minus 8 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction\"><mfrac><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>y</mi><mo>+</mo><mn>12</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac><mo>+</mo><mfrac><mrow><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac></math>. Adding these two terms yields <math alttext=\"StartFraction x y left parenthesis y plus 12 right parenthesis plus y left parenthesis x minus 8 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction\"><mfrac><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>y</mi><mo>+</mo><mn>12</mn></mrow></mfenced><mo>+</mo><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac></math>. Using the distributive property to rewrite this expression gives <math alttext=\"StartFraction x y squared plus 12 x y plus x y minus 8 y Over x squared y minus 8 x y EndFraction\"><mfrac><mrow><mi>x</mi><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><mi>x</mi><mi>y</mi><mo>+</mo><mi>x</mi><mi>y</mi><mo>-</mo><mn>8</mn><mi>y</mi></mrow><mrow><msup><mi>x</mi><mn>2</mn></msup><mi>y</mi><mo>-</mo><mn>8</mn><mi>x</mi><mi>y</mi></mrow></mfrac></math>. Combining the like terms in the numerator of this expression gives <math alttext=\"StartFraction x y squared plus 13 x y minus 8 y Over x squared y minus 8 x y EndFraction\"><mfrac><mrow><mi>x</mi><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>13</mn><mi>x</mi><mi>y</mi><mo>-</mo><mn>8</mn><mi>y</mi></mrow><mrow><msup><mi>x</mi><mn>2</mn></msup><mi>y</mi><mo>-</mo><mn>8</mn><mi>x</mi><mi>y</mi></mrow></mfrac></math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959821,"pPcc":"SAT#P","questionId":"20291f47","skill_cd":"P.A.","score_band_range_cd":7,"skill_desc":"Equivalent expressions","createDate":1691007959821,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"7c3cceff-5961-4825-a23b-44ce88420238","primary_class_cd":"P","uId":"b510c444-9f16-4a2b-8b9c-a98cb0c0b332","difficulty":"H"},"raw_detail":{"keys":["e22b07c9-1be7-48c6-a594-a7cbe6d43e3b"],"rationale":"<p>Choice C is correct. Factoring the denominator in the second term of the given expression gives <math alttext=\"StartFraction y plus 12 Over x minus 8 EndFraction plus StartFraction y left parenthesis x minus 8 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction\"><mfrac><mrow><mi>y</mi><mo>+</mo><mn>12</mn></mrow><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfrac><mo>+</mo><mfrac><mrow><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac></math>. This expression can be rewritten with common denominators by multiplying the first term by <math alttext=\"StartFraction x y Over x y EndFraction\"><mfrac><mrow><mi>x</mi><mi>y</mi></mrow><mrow><mi>x</mi><mi>y</mi></mrow></mfrac></math>, giving&nbsp;<math alttext=\"StartFraction x y left parenthesis y plus 12 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction plus StartFraction y left parenthesis x minus 8 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction\"><mfrac><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>y</mi><mo>+</mo><mn>12</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac><mo>+</mo><mfrac><mrow><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac></math>. Adding these two terms yields <math alttext=\"StartFraction x y left parenthesis y plus 12 right parenthesis plus y left parenthesis x minus 8 right parenthesis Over x y left parenthesis x minus 8 right parenthesis EndFraction\"><mfrac><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>y</mi><mo>+</mo><mn>12</mn></mrow></mfenced><mo>+</mo><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow><mrow><mi>x</mi><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>8</mn></mrow></mfenced></mrow></mfrac></math>. Using the distributive property to rewrite this expression gives <math alttext=\"StartFraction x y squared plus 12 x y plus x y minus 8 y Over x squared y minus 8 x y EndFraction\"><mfrac><mrow><mi>x</mi><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><mi>x</mi><mi>y</mi><mo>+</mo><mi>x</mi><mi>y</mi><mo>-</mo><mn>8</mn><mi>y</mi></mrow><mrow><msup><mi>x</mi><mn>2</mn></msup><mi>y</mi><mo>-</mo><mn>8</mn><mi>x</mi><mi>y</mi></mrow></mfrac></math>. Combining the like terms in the numerator of this expression gives <math alttext=\"StartFraction x y squared plus 13 x y minus 8 y Over x squared y minus 8 x y EndFraction\"><mfrac><mrow><mi>x</mi><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>13</mn><mi>x</mi><mi>y</mi><mo>-</mo><mn>8</mn><mi>y</mi></mrow><mrow><msup><mi>x</mi><mn>2</mn></msup><mi>y</mi><mo>-</mo><mn>8</mn><mi>x</mi><mi>y</mi></mrow></mfrac></math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">Which expression is equivalent to&nbsp;<math alttext=\"StartFraction y plus 12 Over x minus 8 EndFraction plus StartFraction y left parenthesis x minus 8 right parenthesis Over x squared y minus 8 x y EndFraction\"><mfrac><mrow><mi>y</mi><mo>+</mo><mrow><mn>12</mn></mrow></mrow><mrow><mi>x</mi><mo>-</mo><mrow><mn>8</mn></mrow></mrow></mfrac><mo>+</mo><mfrac><mrow><mi>y</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>8</mn></mrow></mrow></mfenced></mrow><mrow><msup><mi>x</mi><mn>2</mn></msup><mi>y</mi><mo>-</mo><mrow><mn>8</mn></mrow><mi>x</mi><mi>y</mi></mrow></mfrac></math>?</p>","externalid":"7c3cceff-5961-4825-a23b-44ce88420238","templateid":"00059c7a-e24c-4d2b-a045-4092ad19bdd3","vaultid":"69b67b80-5e3f-41ca-84c4-62510bbb1c47","type":"mcq","answerOptions":[{"id":"aef09784-f4ac-46cf-9031-48f6cc7cf275","content":"<p><math alttext=\"StartFraction x y plus y plus 4 Over x cubed y minus 16 x squared y plus 64 x y EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mi>y</mi>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>4</mn>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>3</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>64</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"d4bcd558-edd4-4080-aaba-6832f4d39c9e","content":"<p><math alttext=\"StartFraction x y plus 9 y plus 12 Over x squared y minus 8 x y plus x minus 8 EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>9</mn>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>12</mn>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mi>x</mi>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>8</mn>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"e22b07c9-1be7-48c6-a594-a7cbe6d43e3b","content":"<p><math alttext=\"StartFraction x y squared plus 13 x y minus 8 y Over x squared y minus 8 x y EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>y</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>13</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"57cefa8f-b548-43fc-861c-b6e50454de57","content":"<p><math alttext=\"StartFraction x y squared plus 13 x y minus 8 y Over x cubed y minus 16 x squared y plus 64 x y EndFraction\"><mrow>\n\t<mfrac>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>y</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>13</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>8</mn>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t\t<mrow>\n\t\t\t<mrow>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>3</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>16</mn>\n\t\t\t\t<msup>\n\t\t\t\t\t<mi>x</mi>\n\t\t\t\t\t<mn>2</mn>\n\t\t\t\t</msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t\t<mo>+</mo>\n\t\t\t<mrow>\n\t\t\t\t<mn>64</mn>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mi>y</mi>\n\t\t\t</mrow>\n\t\t</mrow>\n\t</mfrac>\n</mrow>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959821,"updateDate":1691007959821}$SATQ$::jsonb, 1691007959821, 1691007959821),
    ($SATQ$203774bc$SATQ$, $SATQ$a8304c28-11ca-4f4b-b7bf-4379eab3e67e$SATQ$::uuid, $SATQ$ca58e82b-c151-4d6f-87a4-c75271afaca4$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">The product of two positive integers is <math alttext="546"><mn>546</mn>
</math>. If the first integer is <math alttext="11"><mn>11</mn>
</math> greater than twice the second integer, what is the smaller of the two integers?</p>$SATQ$, $SATQ$[{"id":"28a6fc94-8e76-45bf-a852-065b8b067d58","content":"<p><math alttext=\"7\"><mn>7</mn>\n</math></p>"},{"id":"baceb884-8af0-4f51-a43a-94ff3f1b4cd4","content":"<p><math alttext=\"14\"><mn>14</mn>\n</math></p>"},{"id":"e0b58db1-a7b1-458e-a39e-26894c03ea70","content":"<p><math alttext=\"39\"><mn>39</mn>\n</math></p>"},{"id":"c9cac37d-18fe-4ac7-a381-9a48f69bf51c","content":"<p><math alttext=\"78\"><mn>78</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["baceb884-8af0-4f51-a43a-94ff3f1b4cd4"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. Let <math alttext="x"><mi>x</mi>
</math> be the first integer and let <math alttext="y"><mi>y</mi>
</math> be the second integer. If the first integer is <math alttext="11"><mn>11</mn>
</math> greater than twice the second integer, then <math alttext="x equals 2 y plus 11"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mn>2</mn>
			<mi>y</mi>
		</mrow>
		<mo>+</mo>
		<mn>11</mn>
	</mrow>
</mrow>
</math>. If the product of the two integers is <math alttext="546"><mn>546</mn>
</math>, then <math alttext="x y equals 546"><mi>x</mi><mi>y</mi><mo>=</mo><mn>546</mn></math>. Substituting <math alttext="2 y plus 11"><mrow>
	<mrow>
		<mn>2</mn>
		<mi>y</mi>
	</mrow>
	<mo>+</mo>
	<mn>11</mn>
</mrow>
</math> for <math alttext="x"><mi>x</mi>
</math> in this equation results in <math alttext="left parenthesis 2 y plus 11 right parenthesis y equals 546"><mfenced><mrow><mn>2</mn><mi>y</mi><mo>+</mo><mn>11</mn></mrow></mfenced><mi>y</mi><mo>=</mo><mn>546</mn></math>. Distributing the <math alttext="y"><mi>y</mi>
</math> to both terms in the parentheses results in <math alttext="2 y squared plus 11 y equals 546"><mrow>
	<mrow>
		<mrow>
			<mn>2</mn>
			<msup>
				<mi>y</mi>
				<mn>2</mn>
			</msup>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>11</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>546</mn>
</mrow>
</math>. Subtracting <math alttext="546"><mn>546</mn>
</math> from both sides of this equation results in <math alttext="2 y squared plus 11 y minus 546 equals 0"><mrow>
	<mrow>
		<mrow>
			<mn>2</mn>
			<msup>
				<mi>y</mi>
				<mn>2</mn>
			</msup>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>11</mn>
			<mi>y</mi>
		</mrow>
		<mo>-</mo>
		<mn>546</mn>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>. The left-hand side of this equation can be factored by finding two values whose product is <math alttext="2 left parenthesis negative 546 right parenthesis"><mn>2</mn><mfenced><mrow><mo>-</mo><mn>546</mn></mrow></mfenced></math>, or <math alttext="negative 1,092"><mo>-</mo><mn>1,092</mn>
</math>, and whose sum is <math alttext="11"><mn>11</mn>
</math>. The two values whose product is <math alttext="negative 1,092"><mo>-</mo><mn>1,092</mn>
</math> and whose sum is <math alttext="11"><mn>11</mn>
</math> are <math alttext="39"><mn>39</mn>
</math> and <math alttext="negative 28"><mo>-</mo><mn>28</mn>
</math>. Thus, the equation <math alttext="2 y squared plus 11 y minus 546 equals 0"><mrow>
	<mrow>
		<mrow>
			<mn>2</mn>
			<msup>
				<mi>y</mi>
				<mn>2</mn>
			</msup>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>11</mn>
			<mi>y</mi>
		</mrow>
		<mo>-</mo>
		<mn>546</mn>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math> can be rewritten as <math alttext="2 y squared plus 28 y minus 39 y minus 546 equals 0"><mn>2</mn><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>28</mn><mi>y</mi><mo>-</mo><mn>39</mn><mi>y</mi><mo>-</mo><mn>546</mn><mo>=</mo><mn>0</mn></math>, which is equivalent to <math alttext="2 y left parenthesis y minus 14 right parenthesis plus 39 left parenthesis y minus 14 right parenthesis equals 0"><mn>2</mn><mi>y</mi><mfenced><mrow><mi>y</mi><mo>-</mo><mn>14</mn></mrow></mfenced><mo>+</mo><mn>39</mn><mfenced><mrow><mi>y</mi><mo>-</mo><mn>14</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>, or <math alttext="left parenthesis 2 y plus 39 right parenthesis left parenthesis y minus 14 right parenthesis equals 0"><mfenced><mrow><mn>2</mn><mi>y</mi><mo>+</mo><mn>39</mn></mrow></mfenced><mfenced><mrow><mi>y</mi><mo>-</mo><mn>14</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>. By the zero product property, it follows that <math alttext="2 y plus 39 equals 0"><mrow>
	<mrow>
		<mrow>
			<mn>2</mn>
			<mi>y</mi>
		</mrow>
		<mo>+</mo>
		<mn>39</mn>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math> and <math alttext="y minus 14 equals 0"><mrow>
	<mrow>
		<mi>y</mi>
		<mo>-</mo>
		<mn>14</mn>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>. Subtracting <math alttext="39"><mn>39</mn>
</math> from both sides of the equation <math alttext="2 y plus 39 equals 0"><mrow>
	<mrow>
		<mrow>
			<mn>2</mn>
			<mi>y</mi>
		</mrow>
		<mo>+</mo>
		<mn>39</mn>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math> yields <math alttext="2 y equals negative 39"><mrow>
	<mrow>
		<mn>2</mn>
		<mi>y</mi>
	</mrow>
	<mo>=</mo>
	<mo>-</mo><mn>39</mn>
</mrow>
</math>. Dividing both sides of this equation by <math alttext="2"><mn>2</mn>
</math> yields <math alttext="y equals negative StartFraction 39 Over 2 EndFraction"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mrow>
		<mo>-</mo>
		<mfrac>
			<mn>39</mn>
			<mn>2</mn>
		</mfrac>
	</mrow>
</mrow>
</math>. Since <math alttext="y"><mi>y</mi>
</math> is a positive integer, the value of <math alttext="y"><mi>y</mi>
</math> is not <math alttext="negative StartFraction 39 Over 2 EndFraction"><mrow>
	<mo>-</mo>
	<mfrac>
		<mn>39</mn>
		<mn>2</mn>
	</mfrac>
</mrow>
</math>. Adding <math alttext="14"><mn>14</mn>
</math> to both sides of the equation <math alttext="y minus 14 equals 0"><mrow>
	<mrow>
		<mi>y</mi>
		<mo>-</mo>
		<mn>14</mn>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math> yields <math alttext="y equals 14"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mn>14</mn>
</mrow>
</math>. Substituting <math alttext="14"><mn>14</mn>
</math> for <math alttext="y"><mi>y</mi>
</math> in the equation <math alttext="x y equals 546"><mi>x</mi><mi>y</mi><mo>=</mo><mn>546</mn></math> yields <math alttext="x left parenthesis 14 right parenthesis equals 546"><mi>x</mi><mfenced><mn>14</mn></mfenced><mo>=</mo><mn>546</mn></math>. Dividing both sides of this equation by <math alttext="14"><mn>14</mn>
</math> results in <math alttext="x equals 39"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>39</mn>
</mrow>
</math>. Therefore, the two integers are <math alttext="14"><mn>14</mn>
</math> and <math alttext="39"><mn>39</mn>
</math>, so the smaller of the two integers is <math alttext="14"><mn>14</mn>
</math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect. This is the larger of the two integers.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"203774bc","external_id":"a8304c28-11ca-4f4b-b7bf-4379eab3e67e","disclosed_item_id":null,"source":"qbank","vaultid":"ca58e82b-c151-4d6f-87a4-c75271afaca4","uId":"5bd1a41a-9b67-4dd6-b71a-537ed462b6f8","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">The product of two positive integers is <math alttext=\"546\"><mn>546</mn>\n</math>. If the first integer is <math alttext=\"11\"><mn>11</mn>\n</math> greater than twice the second integer, what is the smaller of the two integers?</p>","answerOptions":[{"id":"28a6fc94-8e76-45bf-a852-065b8b067d58","content":"<p><math alttext=\"7\"><mn>7</mn>\n</math></p>"},{"id":"baceb884-8af0-4f51-a43a-94ff3f1b4cd4","content":"<p><math alttext=\"14\"><mn>14</mn>\n</math></p>"},{"id":"e0b58db1-a7b1-458e-a39e-26894c03ea70","content":"<p><math alttext=\"39\"><mn>39</mn>\n</math></p>"},{"id":"c9cac37d-18fe-4ac7-a381-9a48f69bf51c","content":"<p><math alttext=\"78\"><mn>78</mn>\n</math></p>"}],"keys":["baceb884-8af0-4f51-a43a-94ff3f1b4cd4"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. Let <math alttext=\"x\"><mi>x</mi>\n</math> be the first integer and let <math alttext=\"y\"><mi>y</mi>\n</math> be the second integer. If the first integer is <math alttext=\"11\"><mn>11</mn>\n</math> greater than twice the second integer, then <math alttext=\"x equals 2 y plus 11\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>11</mn>\n\t</mrow>\n</mrow>\n</math>. If the product of the two integers is <math alttext=\"546\"><mn>546</mn>\n</math>, then <math alttext=\"x y equals 546\"><mi>x</mi><mi>y</mi><mo>=</mo><mn>546</mn></math>. Substituting <math alttext=\"2 y plus 11\"><mrow>\n\t<mrow>\n\t\t<mn>2</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>11</mn>\n</mrow>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> in this equation results in <math alttext=\"left parenthesis 2 y plus 11 right parenthesis y equals 546\"><mfenced><mrow><mn>2</mn><mi>y</mi><mo>+</mo><mn>11</mn></mrow></mfenced><mi>y</mi><mo>=</mo><mn>546</mn></math>. Distributing the <math alttext=\"y\"><mi>y</mi>\n</math> to both terms in the parentheses results in <math alttext=\"2 y squared plus 11 y equals 546\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>546</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"546\"><mn>546</mn>\n</math> from both sides of this equation results in <math alttext=\"2 y squared plus 11 y minus 546 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>546</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. The left-hand side of this equation can be factored by finding two values whose product is <math alttext=\"2 left parenthesis negative 546 right parenthesis\"><mn>2</mn><mfenced><mrow><mo>-</mo><mn>546</mn></mrow></mfenced></math>, or <math alttext=\"negative 1,092\"><mo>-</mo><mn>1,092</mn>\n</math>, and whose sum is <math alttext=\"11\"><mn>11</mn>\n</math>. The two values whose product is <math alttext=\"negative 1,092\"><mo>-</mo><mn>1,092</mn>\n</math> and whose sum is <math alttext=\"11\"><mn>11</mn>\n</math> are <math alttext=\"39\"><mn>39</mn>\n</math> and <math alttext=\"negative 28\"><mo>-</mo><mn>28</mn>\n</math>. Thus, the equation <math alttext=\"2 y squared plus 11 y minus 546 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>546</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> can be rewritten as <math alttext=\"2 y squared plus 28 y minus 39 y minus 546 equals 0\"><mn>2</mn><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>28</mn><mi>y</mi><mo>-</mo><mn>39</mn><mi>y</mi><mo>-</mo><mn>546</mn><mo>=</mo><mn>0</mn></math>, which is equivalent to <math alttext=\"2 y left parenthesis y minus 14 right parenthesis plus 39 left parenthesis y minus 14 right parenthesis equals 0\"><mn>2</mn><mi>y</mi><mfenced><mrow><mi>y</mi><mo>-</mo><mn>14</mn></mrow></mfenced><mo>+</mo><mn>39</mn><mfenced><mrow><mi>y</mi><mo>-</mo><mn>14</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>, or <math alttext=\"left parenthesis 2 y plus 39 right parenthesis left parenthesis y minus 14 right parenthesis equals 0\"><mfenced><mrow><mn>2</mn><mi>y</mi><mo>+</mo><mn>39</mn></mrow></mfenced><mfenced><mrow><mi>y</mi><mo>-</mo><mn>14</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>. By the zero product property, it follows that <math alttext=\"2 y plus 39 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>39</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> and <math alttext=\"y minus 14 equals 0\"><mrow>\n\t<mrow>\n\t\t<mi>y</mi>\n\t\t<mo>-</mo>\n\t\t<mn>14</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"39\"><mn>39</mn>\n</math> from both sides of the equation <math alttext=\"2 y plus 39 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>39</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> yields <math alttext=\"2 y equals negative 39\"><mrow>\n\t<mrow>\n\t\t<mn>2</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>39</mn>\n</mrow>\n</math>. Dividing both sides of this equation by <math alttext=\"2\"><mn>2</mn>\n</math> yields <math alttext=\"y equals negative StartFraction 39 Over 2 EndFraction\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mfrac>\n\t\t\t<mn>39</mn>\n\t\t\t<mn>2</mn>\n\t\t</mfrac>\n\t</mrow>\n</mrow>\n</math>. Since <math alttext=\"y\"><mi>y</mi>\n</math> is a positive integer, the value of <math alttext=\"y\"><mi>y</mi>\n</math> is not <math alttext=\"negative StartFraction 39 Over 2 EndFraction\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>39</mn>\n\t\t<mn>2</mn>\n\t</mfrac>\n</mrow>\n</math>. Adding <math alttext=\"14\"><mn>14</mn>\n</math> to both sides of the equation <math alttext=\"y minus 14 equals 0\"><mrow>\n\t<mrow>\n\t\t<mi>y</mi>\n\t\t<mo>-</mo>\n\t\t<mn>14</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> yields <math alttext=\"y equals 14\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mn>14</mn>\n</mrow>\n</math>. Substituting <math alttext=\"14\"><mn>14</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the equation <math alttext=\"x y equals 546\"><mi>x</mi><mi>y</mi><mo>=</mo><mn>546</mn></math> yields <math alttext=\"x left parenthesis 14 right parenthesis equals 546\"><mi>x</mi><mfenced><mn>14</mn></mfenced><mo>=</mo><mn>546</mn></math>. Dividing both sides of this equation by <math alttext=\"14\"><mn>14</mn>\n</math> results in <math alttext=\"x equals 39\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>39</mn>\n</mrow>\n</math>. Therefore, the two integers are <math alttext=\"14\"><mn>14</mn>\n</math> and <math alttext=\"39\"><mn>39</mn>\n</math>, so the smaller of the two integers is <math alttext=\"14\"><mn>14</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This is the larger of the two integers.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959825,"pPcc":"SAT#P","questionId":"203774bc","skill_cd":"P.C.","score_band_range_cd":5,"skill_desc":"Nonlinear functions","createDate":1691007959825,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"a8304c28-11ca-4f4b-b7bf-4379eab3e67e","primary_class_cd":"P","uId":"5bd1a41a-9b67-4dd6-b71a-537ed462b6f8","difficulty":"M"},"raw_detail":{"keys":["baceb884-8af0-4f51-a43a-94ff3f1b4cd4"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. Let <math alttext=\"x\"><mi>x</mi>\n</math> be the first integer and let <math alttext=\"y\"><mi>y</mi>\n</math> be the second integer. If the first integer is <math alttext=\"11\"><mn>11</mn>\n</math> greater than twice the second integer, then <math alttext=\"x equals 2 y plus 11\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>11</mn>\n\t</mrow>\n</mrow>\n</math>. If the product of the two integers is <math alttext=\"546\"><mn>546</mn>\n</math>, then <math alttext=\"x y equals 546\"><mi>x</mi><mi>y</mi><mo>=</mo><mn>546</mn></math>. Substituting <math alttext=\"2 y plus 11\"><mrow>\n\t<mrow>\n\t\t<mn>2</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>11</mn>\n</mrow>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> in this equation results in <math alttext=\"left parenthesis 2 y plus 11 right parenthesis y equals 546\"><mfenced><mrow><mn>2</mn><mi>y</mi><mo>+</mo><mn>11</mn></mrow></mfenced><mi>y</mi><mo>=</mo><mn>546</mn></math>. Distributing the <math alttext=\"y\"><mi>y</mi>\n</math> to both terms in the parentheses results in <math alttext=\"2 y squared plus 11 y equals 546\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>546</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"546\"><mn>546</mn>\n</math> from both sides of this equation results in <math alttext=\"2 y squared plus 11 y minus 546 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>546</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. The left-hand side of this equation can be factored by finding two values whose product is <math alttext=\"2 left parenthesis negative 546 right parenthesis\"><mn>2</mn><mfenced><mrow><mo>-</mo><mn>546</mn></mrow></mfenced></math>, or <math alttext=\"negative 1,092\"><mo>-</mo><mn>1,092</mn>\n</math>, and whose sum is <math alttext=\"11\"><mn>11</mn>\n</math>. The two values whose product is <math alttext=\"negative 1,092\"><mo>-</mo><mn>1,092</mn>\n</math> and whose sum is <math alttext=\"11\"><mn>11</mn>\n</math> are <math alttext=\"39\"><mn>39</mn>\n</math> and <math alttext=\"negative 28\"><mo>-</mo><mn>28</mn>\n</math>. Thus, the equation <math alttext=\"2 y squared plus 11 y minus 546 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<msup>\n\t\t\t\t<mi>y</mi>\n\t\t\t\t<mn>2</mn>\n\t\t\t</msup>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>11</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>546</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> can be rewritten as <math alttext=\"2 y squared plus 28 y minus 39 y minus 546 equals 0\"><mn>2</mn><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>28</mn><mi>y</mi><mo>-</mo><mn>39</mn><mi>y</mi><mo>-</mo><mn>546</mn><mo>=</mo><mn>0</mn></math>, which is equivalent to <math alttext=\"2 y left parenthesis y minus 14 right parenthesis plus 39 left parenthesis y minus 14 right parenthesis equals 0\"><mn>2</mn><mi>y</mi><mfenced><mrow><mi>y</mi><mo>-</mo><mn>14</mn></mrow></mfenced><mo>+</mo><mn>39</mn><mfenced><mrow><mi>y</mi><mo>-</mo><mn>14</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>, or <math alttext=\"left parenthesis 2 y plus 39 right parenthesis left parenthesis y minus 14 right parenthesis equals 0\"><mfenced><mrow><mn>2</mn><mi>y</mi><mo>+</mo><mn>39</mn></mrow></mfenced><mfenced><mrow><mi>y</mi><mo>-</mo><mn>14</mn></mrow></mfenced><mo>=</mo><mn>0</mn></math>. By the zero product property, it follows that <math alttext=\"2 y plus 39 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>39</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> and <math alttext=\"y minus 14 equals 0\"><mrow>\n\t<mrow>\n\t\t<mi>y</mi>\n\t\t<mo>-</mo>\n\t\t<mn>14</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"39\"><mn>39</mn>\n</math> from both sides of the equation <math alttext=\"2 y plus 39 equals 0\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>39</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> yields <math alttext=\"2 y equals negative 39\"><mrow>\n\t<mrow>\n\t\t<mn>2</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>39</mn>\n</mrow>\n</math>. Dividing both sides of this equation by <math alttext=\"2\"><mn>2</mn>\n</math> yields <math alttext=\"y equals negative StartFraction 39 Over 2 EndFraction\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mfrac>\n\t\t\t<mn>39</mn>\n\t\t\t<mn>2</mn>\n\t\t</mfrac>\n\t</mrow>\n</mrow>\n</math>. Since <math alttext=\"y\"><mi>y</mi>\n</math> is a positive integer, the value of <math alttext=\"y\"><mi>y</mi>\n</math> is not <math alttext=\"negative StartFraction 39 Over 2 EndFraction\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>39</mn>\n\t\t<mn>2</mn>\n\t</mfrac>\n</mrow>\n</math>. Adding <math alttext=\"14\"><mn>14</mn>\n</math> to both sides of the equation <math alttext=\"y minus 14 equals 0\"><mrow>\n\t<mrow>\n\t\t<mi>y</mi>\n\t\t<mo>-</mo>\n\t\t<mn>14</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math> yields <math alttext=\"y equals 14\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mn>14</mn>\n</mrow>\n</math>. Substituting <math alttext=\"14\"><mn>14</mn>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in the equation <math alttext=\"x y equals 546\"><mi>x</mi><mi>y</mi><mo>=</mo><mn>546</mn></math> yields <math alttext=\"x left parenthesis 14 right parenthesis equals 546\"><mi>x</mi><mfenced><mn>14</mn></mfenced><mo>=</mo><mn>546</mn></math>. Dividing both sides of this equation by <math alttext=\"14\"><mn>14</mn>\n</math> results in <math alttext=\"x equals 39\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>39</mn>\n</mrow>\n</math>. Therefore, the two integers are <math alttext=\"14\"><mn>14</mn>\n</math> and <math alttext=\"39\"><mn>39</mn>\n</math>, so the smaller of the two integers is <math alttext=\"14\"><mn>14</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This is the larger of the two integers.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">The product of two positive integers is <math alttext=\"546\"><mn>546</mn>\n</math>. If the first integer is <math alttext=\"11\"><mn>11</mn>\n</math> greater than twice the second integer, what is the smaller of the two integers?</p>","externalid":"a8304c28-11ca-4f4b-b7bf-4379eab3e67e","templateid":"143ba3dc-949e-4fe0-a22d-e253d33f8338","vaultid":"ca58e82b-c151-4d6f-87a4-c75271afaca4","type":"mcq","answerOptions":[{"id":"28a6fc94-8e76-45bf-a852-065b8b067d58","content":"<p><math alttext=\"7\"><mn>7</mn>\n</math></p>"},{"id":"baceb884-8af0-4f51-a43a-94ff3f1b4cd4","content":"<p><math alttext=\"14\"><mn>14</mn>\n</math></p>"},{"id":"e0b58db1-a7b1-458e-a39e-26894c03ea70","content":"<p><math alttext=\"39\"><mn>39</mn>\n</math></p>"},{"id":"c9cac37d-18fe-4ac7-a381-9a48f69bf51c","content":"<p><math alttext=\"78\"><mn>78</mn>\n</math></p>"}],"correct_answer":["B"]},"createDate":1691007959825,"updateDate":1691007959825}$SATQ$::jsonb, 1691007959825, 1691007959825),
    ($SATQ$20722644$SATQ$, $SATQ$3412b211-d5f8-400a-988e-f1dd95e0d2e3$SATQ$::uuid, $SATQ$14d14665-5410-4878-9fa8-fe7551e9fe9e$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p>The function <math alttext="f"><mi>f</mi>
</math> is defined by <math alttext="f left parenthesis x right parenthesis equals x cubed plus 9"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>9</mn></mrow></math>. What is the value of <math alttext="f left parenthesis 2 right parenthesis"><mi>f</mi><mfenced><mrow><mn>2</mn></mrow></mfenced></math>?</p>$SATQ$, $SATQ$[{"id":"9efb1570-f8b7-4cf2-b370-800d81f21206","content":"<p><math alttext=\"14\"><mn>14</mn>\n</math></p>"},{"id":"eba0e0e8-f64b-43ad-9bb4-2810d376983c","content":"<p><math alttext=\"15\"><mn>15</mn>\n</math></p>"},{"id":"4633fc31-5513-4cf5-89f8-675d4fce71c6","content":"<p><math alttext=\"17\"><mn>17</mn>\n</math></p>"},{"id":"df71eba6-6bc5-4855-ae4e-4301c39725d4","content":"<p><math alttext=\"18\"><mn>18</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["4633fc31-5513-4cf5-89f8-675d4fce71c6"]$SATQ$::jsonb, $SATQ$<p>Choice C is correct. It's given that <math alttext="f left parenthesis x right parenthesis equals x cubed plus 9"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>. Substituting <math alttext="2"><mn>2</mn>
</math> for <math alttext="x"><mi>x</mi>
</math> in this equation yields <math alttext="f left parenthesis 2 right parenthesis equals left parenthesis 2 right parenthesis cubed plus 9"><mi>f</mi><mfenced><mn>2</mn></mfenced><mo>=</mo><msup><mfenced><mn>2</mn></mfenced><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>. This is equivalent to <math alttext="f left parenthesis 2 right parenthesis equals 8 plus 9"><mi>f</mi><mfenced><mn>2</mn></mfenced><mo>=</mo><mn>8</mn><mo>+</mo><mn>9</mn></math>, or&nbsp;<math alttext="f left parenthesis 2 right parenthesis equals 17"><mi>f</mi><mfenced><mn>2</mn></mfenced><mo>=</mo><mn>17</mn></math>.</p>
<p>Choice A is incorrect. This is the value of <math alttext="2 plus 3 plus 9"><mn>2</mn><mo>+</mo><mn>3</mn><mo>+</mo><mn>9</mn></math>, not <math alttext="2 cubed plus 9"><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>.</p>
<p>Choice B is incorrect. This is the value of <math alttext="2 left parenthesis 3 right parenthesis plus 9"><mn>2</mn><mfenced><mn>3</mn></mfenced><mo>+</mo><mn>9</mn></math>, not <math alttext="2 cubed plus 9"><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>.</p>
<p>Choice D is incorrect. This is the value of <math alttext="3 squared plus 9"><msup><mn>3</mn><mn>2</mn></msup><mo>+</mo><mn>9</mn></math>, not <math alttext="2 cubed plus 9"><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"20722644","external_id":"3412b211-d5f8-400a-988e-f1dd95e0d2e3","disclosed_item_id":null,"source":"qbank","vaultid":"14d14665-5410-4878-9fa8-fe7551e9fe9e","uId":"7bbf43d9-8717-47cf-ae08-2e806e855603","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p>The function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by <math alttext=\"f left parenthesis x right parenthesis equals x cubed plus 9\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>9</mn></mrow></math>. What is the value of <math alttext=\"f left parenthesis 2 right parenthesis\"><mi>f</mi><mfenced><mrow><mn>2</mn></mrow></mfenced></math>?</p>","answerOptions":[{"id":"9efb1570-f8b7-4cf2-b370-800d81f21206","content":"<p><math alttext=\"14\"><mn>14</mn>\n</math></p>"},{"id":"eba0e0e8-f64b-43ad-9bb4-2810d376983c","content":"<p><math alttext=\"15\"><mn>15</mn>\n</math></p>"},{"id":"4633fc31-5513-4cf5-89f8-675d4fce71c6","content":"<p><math alttext=\"17\"><mn>17</mn>\n</math></p>"},{"id":"df71eba6-6bc5-4855-ae4e-4301c39725d4","content":"<p><math alttext=\"18\"><mn>18</mn>\n</math></p>"}],"keys":["4633fc31-5513-4cf5-89f8-675d4fce71c6"],"correct_answer":["C"],"rationale":"<p>Choice C is correct. It's given that <math alttext=\"f left parenthesis x right parenthesis equals x cubed plus 9\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>. Substituting <math alttext=\"2\"><mn>2</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> in this equation yields <math alttext=\"f left parenthesis 2 right parenthesis equals left parenthesis 2 right parenthesis cubed plus 9\"><mi>f</mi><mfenced><mn>2</mn></mfenced><mo>=</mo><msup><mfenced><mn>2</mn></mfenced><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>. This is equivalent to <math alttext=\"f left parenthesis 2 right parenthesis equals 8 plus 9\"><mi>f</mi><mfenced><mn>2</mn></mfenced><mo>=</mo><mn>8</mn><mo>+</mo><mn>9</mn></math>, or&nbsp;<math alttext=\"f left parenthesis 2 right parenthesis equals 17\"><mi>f</mi><mfenced><mn>2</mn></mfenced><mo>=</mo><mn>17</mn></math>.</p>\n<p>Choice A is incorrect. This is the value of <math alttext=\"2 plus 3 plus 9\"><mn>2</mn><mo>+</mo><mn>3</mn><mo>+</mo><mn>9</mn></math>, not <math alttext=\"2 cubed plus 9\"><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>.</p>\n<p>Choice B is incorrect. This is the value of <math alttext=\"2 left parenthesis 3 right parenthesis plus 9\"><mn>2</mn><mfenced><mn>3</mn></mfenced><mo>+</mo><mn>9</mn></math>, not <math alttext=\"2 cubed plus 9\"><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>.</p>\n<p>Choice D is incorrect. This is the value of <math alttext=\"3 squared plus 9\"><msup><mn>3</mn><mn>2</mn></msup><mo>+</mo><mn>9</mn></math>, not <math alttext=\"2 cubed plus 9\"><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959828,"pPcc":"SAT#P","questionId":"20722644","skill_cd":"P.C.","score_band_range_cd":2,"skill_desc":"Nonlinear functions","createDate":1691007959828,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"3412b211-d5f8-400a-988e-f1dd95e0d2e3","primary_class_cd":"P","uId":"7bbf43d9-8717-47cf-ae08-2e806e855603","difficulty":"E"},"raw_detail":{"keys":["4633fc31-5513-4cf5-89f8-675d4fce71c6"],"rationale":"<p>Choice C is correct. It's given that <math alttext=\"f left parenthesis x right parenthesis equals x cubed plus 9\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>. Substituting <math alttext=\"2\"><mn>2</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> in this equation yields <math alttext=\"f left parenthesis 2 right parenthesis equals left parenthesis 2 right parenthesis cubed plus 9\"><mi>f</mi><mfenced><mn>2</mn></mfenced><mo>=</mo><msup><mfenced><mn>2</mn></mfenced><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>. This is equivalent to <math alttext=\"f left parenthesis 2 right parenthesis equals 8 plus 9\"><mi>f</mi><mfenced><mn>2</mn></mfenced><mo>=</mo><mn>8</mn><mo>+</mo><mn>9</mn></math>, or&nbsp;<math alttext=\"f left parenthesis 2 right parenthesis equals 17\"><mi>f</mi><mfenced><mn>2</mn></mfenced><mo>=</mo><mn>17</mn></math>.</p>\n<p>Choice A is incorrect. This is the value of <math alttext=\"2 plus 3 plus 9\"><mn>2</mn><mo>+</mo><mn>3</mn><mo>+</mo><mn>9</mn></math>, not <math alttext=\"2 cubed plus 9\"><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>.</p>\n<p>Choice B is incorrect. This is the value of <math alttext=\"2 left parenthesis 3 right parenthesis plus 9\"><mn>2</mn><mfenced><mn>3</mn></mfenced><mo>+</mo><mn>9</mn></math>, not <math alttext=\"2 cubed plus 9\"><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>.</p>\n<p>Choice D is incorrect. This is the value of <math alttext=\"3 squared plus 9\"><msup><mn>3</mn><mn>2</mn></msup><mo>+</mo><mn>9</mn></math>, not <math alttext=\"2 cubed plus 9\"><msup><mn>2</mn><mn>3</mn></msup><mo>+</mo><mn>9</mn></math>.</p>","origin":"manifold","stem":"<p>The function <math alttext=\"f\"><mi>f</mi>\n</math> is defined by <math alttext=\"f left parenthesis x right parenthesis equals x cubed plus 9\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>9</mn></mrow></math>. What is the value of <math alttext=\"f left parenthesis 2 right parenthesis\"><mi>f</mi><mfenced><mrow><mn>2</mn></mrow></mfenced></math>?</p>","externalid":"3412b211-d5f8-400a-988e-f1dd95e0d2e3","templateid":"be49b2e5-3dc4-428f-a46f-c19c7c9db4f0","vaultid":"14d14665-5410-4878-9fa8-fe7551e9fe9e","type":"mcq","answerOptions":[{"id":"9efb1570-f8b7-4cf2-b370-800d81f21206","content":"<p><math alttext=\"14\"><mn>14</mn>\n</math></p>"},{"id":"eba0e0e8-f64b-43ad-9bb4-2810d376983c","content":"<p><math alttext=\"15\"><mn>15</mn>\n</math></p>"},{"id":"4633fc31-5513-4cf5-89f8-675d4fce71c6","content":"<p><math alttext=\"17\"><mn>17</mn>\n</math></p>"},{"id":"df71eba6-6bc5-4855-ae4e-4301c39725d4","content":"<p><math alttext=\"18\"><mn>18</mn>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959828,"updateDate":1691007959828}$SATQ$::jsonb, 1691007959828, 1691007959828),
    ($SATQ$22fd3e1f$SATQ$, NULL, NULL, $SATQ$09413-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, $SATQ$<div class="stimulus_reference " xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1"><p class="standalone_statement style:1 "><span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_004_6bce8d85.png" alt="f of x equals, x cubed minus, 9 x, and, g of x equals, x squared minus, 2 x minus 3 "></span></span></p></div>
$SATQ$, $SATQ$<p class="stem_paragraph ">Which of the following expressions is equivalent to <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_005_1df32618.png" alt="the fraction f of x over g of x"></span></span>, for <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_006_31860cb1.png" alt="x is greater than 3"></span></span>&nbsp;?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_000_8e619375.png\" alt=\"the fraction with numerator 1, and denominator x plus 1, end fraction\"></span></span></p>\n"},{"id":"b","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_001_69df49d0.png\" alt=\"the fraction with numerator x plus 3, and denominator x plus 1, end fraction\"></span></span></p>\n"},{"id":"c","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_002_d9a0f309.png\" alt=\"the fraction with numerator x times, open parenthesis, x minus 3, close parenthesis, and denominator x plus 1, end fraction\"></span></span></p>\n"},{"id":"d","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_003_10ee6038.png\" alt=\"the fraction with numerator x times, open parenthesis, x plus 3, close parenthesis, and denominator x plus 1, end fraction\"></span></span></p>\n"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice D is correct. Since <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_007_881acbfc.png" alt="x cubed, minus 9 x, equals, x times, open parenthesis, x plus 3, close parenthesis, times, open parenthesis, x minus 3, close parenthesis"></span> and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_008_ad373589.png" alt="x squared, minus 2 x, minus 3, equals, open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x minus 3, close parenthesis"></span>, the fraction<span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_009_1df32618.png" alt="f of x, over g of x"></span> can be written as <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_010_7cac4db2.png" alt="the fraction with numerator x times, open parenthesis, x plus 3, close parenthesis, times, open parenthesis, x minus 3, close parenthesis, and denominator, open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x minus 3, close parenthesis, end fraction"></span>. It is given that <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_011_fcb1e8a9.png" alt="x is greater than 3"></span>, so the common factor <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_012_329d650b.png" alt="x minus 3"></span> is not equal to 0. Therefore, the fraction can be further simplified to <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_013_10ee6038.png" alt="the fraction with numerator x times, open parenthesis, x plus 3, close parenthesis, and denominator x plus 1, end fraction"></span>.<p>Choice A is incorrect. The expression <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_014_8e619375.png" alt="the fraction 1 over, x plus 1, end fraction"></span> is not equivalent to <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_015_1df32618.png" alt="the fraction f of x, over g of x"></span> because at <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_016_3f34714f.png" alt="x equals 0"></span>, <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_017_8e619375.png" alt="the fraction 1 over, x plus 1, end fraction"></span> as a value of 1 and <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_018_1df32618.png" alt="the fraction f of x, over g of x"></span> has a value of 0.</p><p>Choice B is incorrect and results from omitting the factor <span class="italic">x</span> in the factorization of <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_019_175381e2.png" alt="f of x"></span>. Choice C is incorrect and may result from incorrectly factoring <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_020_bdcd07d7.png" alt="g of x"></span> as <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_021_5f9b1832.png" alt="open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x plus 3, close parenthesis"></span> instead of <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_022_a00d59a5.png" alt="open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x minus 3, close parenthesis"></span>.</p><p>&nbsp;</p></p>
$SATQ$, false, 23, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"22fd3e1f","external_id":null,"disclosed_item_id":"09413-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_004_6bce8d85.png\" alt=\"f of x equals, x cubed minus, 9 x, and, g of x equals, x squared minus, 2 x minus 3 \"></span></span></p></div>\n","stem":"<p class=\"stem_paragraph \">Which of the following expressions is equivalent to <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_005_1df32618.png\" alt=\"the fraction f of x over g of x\"></span></span>, for <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_006_31860cb1.png\" alt=\"x is greater than 3\"></span></span>&nbsp;?</p>\n","answerOptions":[{"id":"a","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_000_8e619375.png\" alt=\"the fraction with numerator 1, and denominator x plus 1, end fraction\"></span></span></p>\n"},{"id":"b","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_001_69df49d0.png\" alt=\"the fraction with numerator x plus 3, and denominator x plus 1, end fraction\"></span></span></p>\n"},{"id":"c","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_002_d9a0f309.png\" alt=\"the fraction with numerator x times, open parenthesis, x minus 3, close parenthesis, and denominator x plus 1, end fraction\"></span></span></p>\n"},{"id":"d","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_003_10ee6038.png\" alt=\"the fraction with numerator x times, open parenthesis, x plus 3, close parenthesis, and denominator x plus 1, end fraction\"></span></span></p>\n"}],"keys":null,"correct_answer":["D"],"rationale":"<p>Choice D is correct. Since <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_007_881acbfc.png\" alt=\"x cubed, minus 9 x, equals, x times, open parenthesis, x plus 3, close parenthesis, times, open parenthesis, x minus 3, close parenthesis\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_008_ad373589.png\" alt=\"x squared, minus 2 x, minus 3, equals, open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x minus 3, close parenthesis\"></span>, the fraction<span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_009_1df32618.png\" alt=\"f of x, over g of x\"></span> can be written as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_010_7cac4db2.png\" alt=\"the fraction with numerator x times, open parenthesis, x plus 3, close parenthesis, times, open parenthesis, x minus 3, close parenthesis, and denominator, open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x minus 3, close parenthesis, end fraction\"></span>. It is given that <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_011_fcb1e8a9.png\" alt=\"x is greater than 3\"></span>, so the common factor <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_012_329d650b.png\" alt=\"x minus 3\"></span> is not equal to 0. Therefore, the fraction can be further simplified to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_013_10ee6038.png\" alt=\"the fraction with numerator x times, open parenthesis, x plus 3, close parenthesis, and denominator x plus 1, end fraction\"></span>.<p>Choice A is incorrect. The expression <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_014_8e619375.png\" alt=\"the fraction 1 over, x plus 1, end fraction\"></span> is not equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_015_1df32618.png\" alt=\"the fraction f of x, over g of x\"></span> because at <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_016_3f34714f.png\" alt=\"x equals 0\"></span>, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_017_8e619375.png\" alt=\"the fraction 1 over, x plus 1, end fraction\"></span> as a value of 1 and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_018_1df32618.png\" alt=\"the fraction f of x, over g of x\"></span> has a value of 0.</p><p>Choice B is incorrect and results from omitting the factor <span class=\"italic\">x</span> in the factorization of <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_019_175381e2.png\" alt=\"f of x\"></span>. Choice C is incorrect and may result from incorrectly factoring <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_020_bdcd07d7.png\" alt=\"g of x\"></span> as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_021_5f9b1832.png\" alt=\"open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x plus 3, close parenthesis\"></span> instead of <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/22fd3e1f/img_022_a00d59a5.png\" alt=\"open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x minus 3, close parenthesis\"></span>.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":23,"raw_list":{"updateDate":1691007959637,"pPcc":"SAT#P","questionId":"22fd3e1f","skill_cd":"P.A.","score_band_range_cd":6,"skill_desc":"Equivalent expressions","createDate":1691007959637,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"09413-DC","external_id":null,"primary_class_cd":"P","uId":"626c66ad-8ea0-4df4-9dbd-ea8aff9020fe","difficulty":"H"},"raw_detail":{"item_id":"09413-DC","section":"Math","body":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAH8AAAA0CAYAAACjIue8AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAaPUZr5AAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAEO0lEQVR4Xu2aC5KkIAxAPZ4H6uP0Xfoq3oQ1iUGMBEE+ulN5VdQyDpKQH8ziZKRZvrNb/9nax/2cg77x13G/z8HhGAifnzm/Brd83TzN7ruks8i5xX3nya32foXBSW/L/tu41XSfDMczpeN7YpmfAWcsdLHN3/UJOe/3mdy8ehL6uWD5DeYYDZX/9nv+8TzxjgCvwjs+yJBlIWffLZtvKf8QuK0yH+cKHM4B9pYt7hbykBRSUzZx3kaGv0srHSgJzhUQ7fNghasmlR3wOxnZOF4sWGYF0OOwdSU7dAZXn9ItKwYlyLnMy+e5tnkcOpiBYkELgoCMF1nw9h4HBe2D2jj9feimmgw6IEc2GXtrwXpqyHV+rm0ex637+oLKx7NTcx7gI1wph4AWPLXkyG4Nl30ZkGrwDdbvFqiokh0p57MxoKu/38f5ObJT3K08VFH2RNn1OK6xVr8hyBIlSTkfkMaQaO/fNX7IlexekFxuq3x09HmNT+mXDe1XKefpf65RuYMF6sFBTm5vgBzZo4jZ8E36qWB0XpQlGCP3LFowPU/NgePEybeWXNmt4WolbSF1eEq/Ingxq25J5aQDfcneFkWLjUd4LHBqKJHdA3RmkOVS/tP6ZUOKXZfksPT7xYUG2H4vI5zGtlt4ieyeUABwC3V5h35ZlJQkDJTC8g37XsusNxqwR25ZVsb+no3ho73xXm8YhmEYhmEYhmEYhmEYxv8K3UPw/0xe30cYfwT6Kia4Obtxz2AIpFE1wlu97dFQ0NnBBRTdnln236b0urX19WwNlvmV3PnI4g1G5zvzVlXI30CuXW5PXEMfvxHomGRU7svL5uPlf/sitr3jg48vtoPlyAAgx0sdOgUA3ssHe2gJcv8dRQ+DaGce+m5hzJkiFtAclMUBKMsYTEqG2xcDkSazB6NPlHSKyKNx7laNFFeyNSf1ImavHNu0wvuwJMnkS3xIm+HZpjyNOSst91Ltqx3t4MfvQzfVZNABV7LpZzlXv8yUzs61TStuzY8viQilKN5LiOY8wC96K0WxsqMFTy05skfA9pJBOkK/MMhjSaLC0SmVkntKyvk8Frpayenl/BzZKXj90E21lFHZ8TH5ebap1wHwsnLtIJ3M0PPdWSnnA7SX6SVVe7/Fwq9k98RnXcLgI/UrKv3SyQxNsivM54KYE/ayowslJ7c3QI7sXpBT06V8tH5UhXKdj045OtUfAMU5ABZ72h6CswEaQ8kAHCfmqyVXdg/YqSnH99SP55bJKJP2ElQscAz+vE4slUWBwThfsrdxpFA86mDOlKFKKZHdGt4qk47vrF8sQTkgiuzsJ1q70D6/czUAwtLvFxfZGk5Bg2NbLjxfdg/2Uh5roNMY/aTfoEmfFZOKUvxdYfkGY7XMeqMRGMWHUn4doRT515ns5yoMFmMQsdIxonQahmEYhmEYhmEYbZimf6CikJCE5c2kAAAAAElFTkSuQmCC\" alt=\"f of x equals, x cubed minus, 9 x, and, g of x equals, x squared minus, 2 x minus 3 \"></span></span></p></div>\n","prompt":"<p class=\"stem_paragraph \">Which of the following expressions is equivalent to <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACcAAAAyCAYAAADfuMIdAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACEElEQVRYR+1X7a3DIAxkPAbKONklq7CJH7ZrQs1HwMlr+4OTkCIK5uw7KLinAGEH7zzsAeDVVQVAgN072I7+uMcAcMA2QEwwO/4SkjF+UvN77OHgx+bAx5XwexRwbG8xzEjEohavLhcCk2E5t1iLuUUek5eybBAIu38jPQOKa5ybgLK1guBvOnsarySjPuUza9UJbFwMmrWMJEtTGlvmCWmqbmUD3NoYEH0VOpL2gqfqUXXqG6aV3DB6kvbIsWRltXPcIqfl0biShX3W9tQ9WTuSInrHAfsMybUXZ3LGDdGTVIBjtJ84Ke7v2gLHWQ7iK0kFegGZJ4SYaL16tcSGwEGvS55Lm4hl8+R3Xb1bfhuRVGCRBz05XTUiRdnPZdU6aDVSJS1eW1j4INCcv9IWfgPraWiB5Q/cfCOZwdefhj187WmY/qTjJzbMUl+lUFKdPV0elGR8oXj3mflpqO9hYmKf3Sh4TGlsHnuSfvxpSAFV9ly10/y94Kl6Tz8NJXMdUJ57UpEeuX97GmoSAu4/g13Jwj5re8okqyYhYO+U7wOdBILHIrn24kxuckOIrPmiaYNUdmEhf+ZNql5LVutBnAz9msgSlQvpBSSxtMuJaL16tcSGkCqFC8W2HWU1Ebm0iVhF+iIpGjvptxZ6FbDIg540VU2fca3sc/AGuK5Ey7vD0JJS6xBbWFhYWFj4JJz7AwsgPTP9YT8mAAAAAElFTkSuQmCC\" alt=\"the fraction f of x over g of x\"></span></span>, for <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB0AAAASCAYAAACnxdXaAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAJufgqOgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAu0lEQVRIS+2Taw7EIAiEPR4H4jjcxat4k1mQ2prW9dFks3/8kqY1lQEGDb8EkWEvfwiSYN9rmAhp5LHsgiSgwIjwRF7AtV4iCWnQetXQdFzHAQlC4ezCN6glHJvCo/8tvNhbp7UdkecEy8x069e9rtuZqSUj0opItPd5+yKP7W52aqwOe6bTwmOmxmXDWOTNTB9J64OUk3fsnT29d9dyXNFtVZ1nq6rH8sSEZu+p4QW6e6/v6Gaz+QMhfABAuf9kWFCkuAAAAABJRU5ErkJggg==\" alt=\"x is greater than 3\"></span></span>&nbsp;?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAsCAYAAAD8WEF4AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA4ElEQVRYR+2XUQ7EEBRFLc+CLMdebMVO7vRR1WnS0gxq0nsSifrwTm4RVA+cUdDWY/2cFzgjkvPLequDqLSpZWOiGtY7mH9IVgAo2wfK9oKyvaAsIWQssntnbYSQV8Cnew3p1mUcisWbPd3l1yht4ZGLhrHw3D4XqZVt+nQ/Fo0pXIsKd5IVmt1/t3S9ha6c8DFZrJLSVUv1OPpNKibdq3Ym30xWiOvULFPeS2p4snm3ltdq4hHZ/fkX0j1ZBkeGy6YJkmA+ZsoCQ2U30d06xXLaWl2f7h1+TpYQQsgbUeoDrNWnHOvrgdUAAAAASUVORK5CYII=\" alt=\"the fraction with numerator 1, and denominator x plus 1, end fraction\"></span></span></p>\n"},"b":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAsCAYAAAD8WEF4AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABVUlEQVRYR+2Xi63DIAxFGY+BGIddsko2cTEGQnmPxHxbqT4SCkXEXGyHYvVJDqPAPULTYE/A/vdBQg0cQALhMPsFg1veuIdxKsLQH+C0oIs5ACdYrUA7tWGIj9+5ts7EZZC8cb97jtj/iGKVezEM8SkXPa1+FIr0iuXar5K8G8LGCVGrWBKJEWvf4Bsxt7BbC08Uh9279iQkrVVZh0X51T7RmwbIUCpcIeIbGBHbfXzRi5Sn3rvM8HDERtvlHHIOP4qelIdBYMuOWWLjMZUdjblz8DeLJDT/dxk5Ayskm34tancbFARhI29f5pc1QRB+ArzVdRWKu+m6bc2i5fKd119DYlOxuKgUv+7INH9IbLkotz5q8SwS5w+nQfLuwlJ8mtgdpfg0sQjl6bpSfJrYHaX4FLH5+ee9W0mDku1io4FVpXjOkNgkdHEpHhn2rCAIgvCLKPUC66mO8ByGlogAAAAASUVORK5CYII=\" alt=\"the fraction with numerator x plus 3, and denominator x plus 1, end fraction\"></span></span></p>\n"},"c":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD4AAAAyCAYAAAAEA2g/AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB4UlEQVRoQ+2YgZGEIAxFKY+CLMdebMVOckIIcBgUOGFxL2/G2dVZID/54IJ6AthX0ErDugO4Rx8BYIdVK1i2AXEAbLBMIJoYFs+2KNDHKO52CmBbQOn1qH8n8Wjx5cjx2GqbZB8f7jpXt7vl91WDOnp3t0NA0SHZtrqcePO8V2wmiCELiQMd9ntMqm463ZrdaDObzBPMNmYXBzxn+q6de/QYJDytbvMihw1Ddq2to45yHd+1e5pc/7nCFOGr5ywW2+kqo1ftngIFGyfx0+1PwmlOma81VrpqR5AzzNerixMV48eqiK8InJ/nRYLmVi6wXLsecHZH4Y3jBzvlLc3Z+K7d03CvtOY/MdgZCrPVYyzLdV7SrhXqO3UZJvp3dXNFucTPPxc0DniuXmr30nat+FdXlOw40ebe0DS/ffBRBv2ATPXswDaQunat+D7tWHhR4gnjgOpqt8AtLp+Ac4QgCIJZDP7DJQiCIExB047r7XC7sFdCu8B0Z8URDjYmEm4PG5LdkH12s1srFR729Pj7aYSnAkq3qDUVN9Dvp7K6r3rFcfJXCB9xnDylcAPO6/Lj3K+oeFh1y4+fXi88fr/aqmesnvJq4RRMy3Hya4V70Z2Pk4mpKi4IgiAIgiAIQieU+gH3MtCBit47TAAAAABJRU5ErkJggg==\" alt=\"the fraction with numerator x times, open parenthesis, x minus 3, close parenthesis, and denominator x plus 1, end fraction\"></span></span></p>\n"},"d":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD4AAAAyCAYAAAAEA2g/AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB8ElEQVRoQ+2YgbGDIAyGGY+BHMddXMVNUkMIUgwKtFi85rvzXvVMyJ8EfGC+AawzWGNhXgH8o58AsMJsDUzLDXEALDANIJq5LZ5lMmC3UfztEMAygbHzVv9O4qnFpy3H91Ybk7398dexut1bfp0tmM27v70FEr0n21VXEo/Pe8WGQXwrqzQ3z/1Rh72/w9VNp1tzN7rMJvOEsk3ZpQGPmb6y848OlAiXYOFpdZsXuTQQ19aRo5zjK7scrcJz/nOFKSJUz7dY3E5nGT2zy1ErnARjJ8k2HwnnOYU/a1rpzI5hofjz7LpKRBirIr4iaH4eFwmeW7nAcnY5aiseI7U7+Wv81O7tlG9pqY2v7CQ+ES590pr/iSFnJMxVL2klRHJeYidRIpx9p+9Qot+rmyvKKRwEB00DHquXtnupnUSRcD9enOw40XiPkK/ybnOE4KMMhgG9oBg3sAukzq6V4NONRVeaLOyA6mq3IC0uv0DqCEVRFFwM/uFSFEVRhqBpx/V0pF3YIynZhjL7wcZAwt1hQ7Ibcs8udmulwvc9Pb0/jPBUQOkWtabiCL8/VKuHqnc8Th5S+B3HyUMKR2he9ztOHlL4vuqWHz89Xnj8fXVVz7R6yqOFczC9jpNjhhEeRHc+TmaGqriiKIqiKIqiKJ0w5gUtfhOQVk3+UAAAAABJRU5ErkJggg==\" alt=\"the fraction with numerator x times, open parenthesis, x plus 3, close parenthesis, and denominator x plus 1, end fraction\"></span></span></p>\n"}},"correct_choice":"d","rationale":"<p>Choice D is correct. Since <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKIAAAAeCAYAAACv+sUVAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACoUlEQVR4Xu2XC7KDIAxFXZ4LcjnupVvpTigQokABI1BapvfMOPXxLDmG8Olyh+e+Kv3hrk09lDL3AIxDPbag+GxRbo+/LkT13NW6rGp/fndCKvVU+7ooPRxZj5lcb0Ev9r+rotJvvv3AwDIln5lcb/PvK+JjW9SqM+n+/AnsrrXues0JB3gmVzG0Rfc/I4bnz9+ZvSm+tRuYgtIf2Ryltr2ZXKuwgTqtiCR9ynKxdztHdOYbuwHl6CwoylFigE275zaTaxVdOtHQjH3fOmwCW5buD2ISrV+9ixedl8r9cY78Z3hFifMWr4A9XSW0uFpsFUcDT5VNlewXRq7jGoqzxWu/8nNNzVzFoXd/j1nrJynEFDwG8WLg/xDo7VqLxNU1ceOZEDqzhQ+RrLuiTmuRFqLEj+FnzW3p4r58ruIkk6e54+cTf09Krn+/+Hq71iJxdU3EMVMy2+UnSC3lhpT8KL9SnNzgGmr87hYi5aU0ka4L0TAil3dcXRPBRWFua1Y8Tqq5LV2xlE2Kf7g9PELJVj8ppTilwZX41eYo5ohV8JvJ1TWdxEUxCorLl45v5d8lJX49EpiLw+ed3Hfv5o9drwYzRWrXoP4ofm/XFq5cXRNxLqWZKh0InRFDyVF+V3HMAKa2shq/lkJMna9tm9lyXd56urYgcbXQgyRtZ4rODP3ns/BAxMmKHUb5SeLYZ6IE1vpJCpH7jp+hYgonq4nt57Knq4QW1yMZLESdjZkpBpsMTzKOP8pPGife8lr8RIXo4vkFRTGiorN9hXF7ukqodj3E/ELgzpzsCKgY+fJdxvjdjWOTa5M9ys/1aWPRpbsP+jerTrDCOGZyBRXQdtNvNanlGPhoC/aZyRUAAAAAAAAAAAAAAAAAAAAAAAAAYBKW5QUZvMD3S1Yk/wAAAABJRU5ErkJggg==\" alt=\"x cubed, minus 9 x, equals, x times, open parenthesis, x plus 3, close parenthesis, times, open parenthesis, x minus 3, close parenthesis\"></span> and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALEAAAAeCAYAAABjY//+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACxUlEQVR4Xu2YAbKDIAxEPZ4H6nG8S6/Sm/CBEPWnBBED1pl9M07VWlySTdBOZ3DvlwsftL3c27mwD8AzcJ/FzdPslg8ZNxp6Xpw/hJEbkPG8C+czuMyTe/mOlE598SStRaJp/a/ToR/w7V7oxk1Q7O43BVPS8yStp0Enbuf9mtzss5AOfwItn0/SegqqhgttXcDLRNjl7Y7AhYT5j7T16T60NN+3gmmmzC3Vd2k9ysP1x4o4sR4G3oIVK81/jDQyBU5qsDfyZ5n/PZaN5Ciu8fudtju01uZBaq2mR2K1l4YYwEFdIFeYXFzWhRSStL/PFc6siBRP6m6qiUXntdRaw5k8SK2RWAHiOYOqggymma0XVDD/A1rSl06Zsa4QPqLp1GVozG+9rXOrNfHWfOh61cRxPLqntdZWtDxkX/BkQKhyt4v2lbxt/TqlDNaRPmtK47OWsFvapLmygfe0zk3+7gi+XjfxZlxrra1o42tFthkntXXrpbQW6hzfyRmhj4KWN+FVNGMEWuZ2h4kDv5AH1cT8TBJ2W5ZRDlLYLW2loLOBc/ev0WehIbDeqyEOGiVjjJgb/1438abvbq2MloeSPqqyQS9UkrX6lMAERurTl7K2BPHznZa4s3NjHUdGYPj6sonp/tZar5DLw15rOkVsLVxxeEcoKOWlabS+Hv/GhHnm5tgyN3MTh/nu3kMstV4hlwepNcLLeBAdDeUjQ9/0h4NSMnBPfTy2NAPpsu028V4i+K1zszaxNK2l1hp47Jo8SK3r5FgQDTaoytIzjxbYQG99vHTuE7ZPVji2Qi7TV+ZmaWL6TnQ7Q6011ObhS+sqbOf0dbAktifb0pTbgqYx+tYx13vXm+MsMTExUWNjXzJxyEPW3IO11uRB0woGQ8Vr18VaWU0jHhv2PEkrAAAAAAAAAAAAAAAAAAAAAAAAAAAA4FFM0x8ReJ4iLP/bygAAAABJRU5ErkJggg==\" alt=\"x squared, minus 2 x, minus 3, equals, open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x minus 3, close parenthesis\"></span>, the fraction<span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACcAAAAyCAYAAADfuMIdAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACEElEQVRYR+1X7a3DIAxkPAbKONklq7CJH7ZrQs1HwMlr+4OTkCIK5uw7KLinAGEH7zzsAeDVVQVAgN072I7+uMcAcMA2QEwwO/4SkjF+UvN77OHgx+bAx5XwexRwbG8xzEjEohavLhcCk2E5t1iLuUUek5eybBAIu38jPQOKa5ybgLK1guBvOnsarySjPuUza9UJbFwMmrWMJEtTGlvmCWmqbmUD3NoYEH0VOpL2gqfqUXXqG6aV3DB6kvbIsWRltXPcIqfl0biShX3W9tQ9WTuSInrHAfsMybUXZ3LGDdGTVIBjtJ84Ke7v2gLHWQ7iK0kFegGZJ4SYaL16tcSGwEGvS55Lm4hl8+R3Xb1bfhuRVGCRBz05XTUiRdnPZdU6aDVSJS1eW1j4INCcv9IWfgPraWiB5Q/cfCOZwdefhj187WmY/qTjJzbMUl+lUFKdPV0elGR8oXj3mflpqO9hYmKf3Sh4TGlsHnuSfvxpSAFV9ly10/y94Kl6Tz8NJXMdUJ57UpEeuX97GmoSAu4/g13Jwj5re8okqyYhYO+U7wOdBILHIrn24kxuckOIrPmiaYNUdmEhf+ZNql5LVutBnAz9msgSlQvpBSSxtMuJaL16tcSGkCqFC8W2HWU1Ebm0iVhF+iIpGjvptxZ6FbDIg540VU2fca3sc/AGuK5Ey7vD0JJS6xBbWFhYWFj4JJz7AwsgPTP9YT8mAAAAAElFTkSuQmCC\" alt=\"f of x, over g of x\"></span> can be written as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGkAAAAyCAYAAABfy/UOAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADgUlEQVR4Xu2ZAZKDIAxFPZ4H6nF6l15lb8IaQhRjglFjLTN5M85WtpAP+USXHTxIf+80DmN6/6VUmh4hpb/0Hof0+ug6etLqRkqf9PqBSRMtPT1pdeXzGtI4RSm3P0H6vNIwvievriffk1Y3sHS8Jj9815mw2NOPcm2dKJWSnrS68vce0zCNXm6/Ak56WezsRGny0F5p60mrKyDCywFYny0PfbZDihN5GeM7x1OrhStazWQXsFqJzkAnYMCtK/b6laYNliRJ0MS5E+uHsrfWs1i0liYbfNFyuagG0gbe66fB+1nRxq8T4631LBatpcnO7LSydettqk0caPXTOJoknDC4Xu5jSRJwRutRjmgtTXaorsLHI1u01Y+gpMDH1rWXtDlWQ19PWkvTMbBGbx9qVF81YVo/DVqIvYlKSGUEx8P43lqvsKe1NNlZtqmcZZicVB72+klcSZL0apvbqpcCT61XsGg1g4PhxLLT2BYFpMEt/SQsSaKx+XdwoddO5Enx1GrhilYTtGAkGgNuncbLiLWfhClJJV692PVCwz2AYzG3Omq1cEXrLrP4KttzwDKhmhw4CznW7yzzmDkWXjyx4FbJmT1pdQe3sJ8LzzIvCitrNT1pDYIgCIJfBh5ecf3WFQTBc+BJ7u/8ncH/OKzpSasbp44wbqSlpyetrpw6CLyZ5ahnPfmetLqBpWN9evtNtEWXSslTWvNJ+hQer+2uub3s5TOvafRy+1Wk0+Oa/PtK2xNaMUHVgW3WLCSKaXUFRHg5gE7aLePhgSi6U00S2zmeWi1gfLaby67hmm/b5Rhw64rsHlZj0VHtB6Q1SYsb8ftqkvJ4GNNb61koSXzX3PYCoQ3MF9v6bwBrkgj6vp6kJTHeWs+ija+Z6DLaxIHZoWXLawtZ80SSgDNaj1KXZ2l+jySJ6jF81B6ItMjwsXVpSdtP0qLvaa3EHIvFaem7BNVXTRjWdvvDkBZib6IEfb+dJIzvrfUKUsmrtZYmP2By0iIt29vuDvckwQtG9VLgqfUK0ms41+qKNDiKwAXJDmVbW8M7STwpnlot0Nh8PmiK9a7RDOQCLyO0cDRZFGpzqGeS8He8pPhptUDxamPUpoB7QNLqTg6chZRJVy6ZhZaF8KSVJHCrmLwva53HzLHw4ibUtLqDW/hmNxiQ3MvpSWsQBEEQBEEQBEEQBEEQrBiGf0bwTYiU42JHAAAAAElFTkSuQmCC\" alt=\"the fraction with numerator x times, open parenthesis, x plus 3, close parenthesis, times, open parenthesis, x minus 3, close parenthesis, and denominator, open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x minus 3, close parenthesis, end fraction\"></span>. It is given that <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAWCAYAAABKbiVHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA3klEQVRIS+2UURLFEAxFLS8Lshx7sRU7yQsRRSmeGV/OTIeqxnUT1GmsVkhNfACNQ98/DwvRaJEFoNX7gpDC6SzoDOgMAjWafopDFMehAYVAauIQE1SDoc/PZN5JWzkLKne6iohRpDAOMRJclDsD1I4t3BH1uUZyJ1r6su+DFVEsws8t01YgefXdl3WTrNRTWq+3Vl3xs/ybrm6qHvvmj9tOzXiax5sHuU6CO4M0rYqQ+HWNsAFZjBQ4ChhdRit1IaRjnF0fuQH+vbnD7vnfJMUN6/FTO3W5XC6X8yj1A0eGTbJsBPy5AAAAAElFTkSuQmCC\" alt=\"x is greater than 3\"></span>, so the common factor <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAYCAYAAACWTY9zAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAThJREFUeNpjYBgYkATEJ4H4PRD/AeI3QLwWiLUYBhgUAXENEPsAsTUQRwHxZSD+AMSyDIMMKALxf6ijUYAKEP8G4iY08elA/BmITWjsMAGow0qwSYIc8QmIhaH8OiD+CcQuOAwTIQKz4XEMMxCzArESEK8E4pdALINNoSQQfwXibiBOAeK/QByGx+D/ROAQPPrfIKl7DMRG+IK0FYh/QHNLNoHgdyECi+HRrw/EpkDsB8QboUnGGZfiBKgPDg9ABjgAxNewSThD09QxIP4HxHp0dlgX1H4UYARN+FOhCfYBEG+lo6OYgPgEtDxDKSpAOWINVAEIJEKj1I4GjjgJLa9coQVsJBDvhaZrX5giCSC+B41fdrSsfB0ardQGs4H4KhB/gzrmGbRKsmQYBaNgFIyCUTAKRgFRAADw9krPVF9/nQAAAABJRU5ErkJggg==\" alt=\"x minus 3\"></span> is not equal to 0. Therefore, the fraction can be further simplified to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD4AAAAyCAYAAAAEA2g/AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB8ElEQVRoQ+2YgbGDIAyGGY+BHMddXMVNUkMIUgwKtFi85rvzXvVMyJ8EfGC+AawzWGNhXgH8o58AsMJsDUzLDXEALDANIJq5LZ5lMmC3UfztEMAygbHzVv9O4qnFpy3H91Ybk7398dexut1bfp0tmM27v70FEr0n21VXEo/Pe8WGQXwrqzQ3z/1Rh72/w9VNp1tzN7rMJvOEsk3ZpQGPmb6y848OlAiXYOFpdZsXuTQQ19aRo5zjK7scrcJz/nOFKSJUz7dY3E5nGT2zy1ErnARjJ8k2HwnnOYU/a1rpzI5hofjz7LpKRBirIr4iaH4eFwmeW7nAcnY5aiseI7U7+Wv81O7tlG9pqY2v7CQ+ES590pr/iSFnJMxVL2klRHJeYidRIpx9p+9Qot+rmyvKKRwEB00DHquXtnupnUSRcD9enOw40XiPkK/ybnOE4KMMhgG9oBg3sAukzq6V4NONRVeaLOyA6mq3IC0uv0DqCEVRFFwM/uFSFEVRhqBpx/V0pF3YIynZhjL7wcZAwt1hQ7Ibcs8udmulwvc9Pb0/jPBUQOkWtabiCL8/VKuHqnc8Th5S+B3HyUMKR2he9ztOHlL4vuqWHz89Xnj8fXVVz7R6yqOFczC9jpNjhhEeRHc+TmaGqriiKIqiKIqiKJ0w5gUtfhOQVk3+UAAAAABJRU5ErkJggg==\" alt=\"the fraction with numerator x times, open parenthesis, x plus 3, close parenthesis, and denominator x plus 1, end fraction\"></span>.<p>Choice A is incorrect. The expression <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAsCAYAAAD8WEF4AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA4ElEQVRYR+2XUQ7EEBRFLc+CLMdebMVO7vRR1WnS0gxq0nsSifrwTm4RVA+cUdDWY/2cFzgjkvPLequDqLSpZWOiGtY7mH9IVgAo2wfK9oKyvaAsIWQssntnbYSQV8Cnew3p1mUcisWbPd3l1yht4ZGLhrHw3D4XqZVt+nQ/Fo0pXIsKd5IVmt1/t3S9ha6c8DFZrJLSVUv1OPpNKibdq3Ym30xWiOvULFPeS2p4snm3ltdq4hHZ/fkX0j1ZBkeGy6YJkmA+ZsoCQ2U30d06xXLaWl2f7h1+TpYQQsgbUeoDrNWnHOvrgdUAAAAASUVORK5CYII=\" alt=\"the fraction 1 over, x plus 1, end fraction\"></span> is not equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACcAAAAyCAYAAADfuMIdAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACEElEQVRYR+1X7a3DIAxkPAbKONklq7CJH7ZrQs1HwMlr+4OTkCIK5uw7KLinAGEH7zzsAeDVVQVAgN072I7+uMcAcMA2QEwwO/4SkjF+UvN77OHgx+bAx5XwexRwbG8xzEjEohavLhcCk2E5t1iLuUUek5eybBAIu38jPQOKa5ybgLK1guBvOnsarySjPuUza9UJbFwMmrWMJEtTGlvmCWmqbmUD3NoYEH0VOpL2gqfqUXXqG6aV3DB6kvbIsWRltXPcIqfl0biShX3W9tQ9WTuSInrHAfsMybUXZ3LGDdGTVIBjtJ84Ke7v2gLHWQ7iK0kFegGZJ4SYaL16tcSGwEGvS55Lm4hl8+R3Xb1bfhuRVGCRBz05XTUiRdnPZdU6aDVSJS1eW1j4INCcv9IWfgPraWiB5Q/cfCOZwdefhj187WmY/qTjJzbMUl+lUFKdPV0elGR8oXj3mflpqO9hYmKf3Sh4TGlsHnuSfvxpSAFV9ly10/y94Kl6Tz8NJXMdUJ57UpEeuX97GmoSAu4/g13Jwj5re8okqyYhYO+U7wOdBILHIrn24kxuckOIrPmiaYNUdmEhf+ZNql5LVutBnAz9msgSlQvpBSSxtMuJaL16tcSGkCqFC8W2HWU1Ebm0iVhF+iIpGjvptxZ6FbDIg540VU2fca3sc/AGuK5Ey7vD0JJS6xBbWFhYWFj4JJz7AwsgPTP9YT8mAAAAAElFTkSuQmCC\" alt=\"the fraction f of x, over g of x\"></span> because at <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAYCAYAAACWTY9zAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAThJREFUeNrt1c0rRFEYx/EbRXkphaIkjVlbyFqKPQvN2tTsFPEHWCg1Za2Jv8HLypKU4R+glDB2miVS3vme+qnp9jAnue7m/OpTd565p3vufZ65E0XppR9buMMtNtEXpZw2XOIUU+KOz9GS5sYW8IZsTS2r2lz8ZPfFC5Zj9RLuMWJcoMNDk7FuH0dG3dX2rDspqeed+ryEJ0x8c+cfHqaNdVWsG/UN3FgX6sUDVlHQo8390JIxD93GumcUjXpRD8LMCh7xitk6s9LlofmvNjajFhx6DPG/tXJcOz7GO4bqbOy3rXTDXzbqZWv4hzX4a/olXWM3odfFokYlU1MbVG0+/qqo6u3boFperRhNYGPtqOAEk+KOL9D6dVIPrnAQG9RGnKmtSWQAO+qSs62/qZCQkJCQkBCPfALAdFxK2TM+cAAAAABJRU5ErkJggg==\" alt=\"x equals 0\"></span>, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAsCAYAAAD8WEF4AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA4ElEQVRYR+2XUQ7EEBRFLc+CLMdebMVO7vRR1WnS0gxq0nsSifrwTm4RVA+cUdDWY/2cFzgjkvPLequDqLSpZWOiGtY7mH9IVgAo2wfK9oKyvaAsIWQssntnbYSQV8Cnew3p1mUcisWbPd3l1yht4ZGLhrHw3D4XqZVt+nQ/Fo0pXIsKd5IVmt1/t3S9ha6c8DFZrJLSVUv1OPpNKibdq3Ym30xWiOvULFPeS2p4snm3ltdq4hHZ/fkX0j1ZBkeGy6YJkmA+ZsoCQ2U30d06xXLaWl2f7h1+TpYQQsgbUeoDrNWnHOvrgdUAAAAASUVORK5CYII=\" alt=\"the fraction 1 over, x plus 1, end fraction\"></span> as a value of 1 and <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACcAAAAyCAYAAADfuMIdAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAZpE86XgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACEElEQVRYR+1X7a3DIAxkPAbKONklq7CJH7ZrQs1HwMlr+4OTkCIK5uw7KLinAGEH7zzsAeDVVQVAgN072I7+uMcAcMA2QEwwO/4SkjF+UvN77OHgx+bAx5XwexRwbG8xzEjEohavLhcCk2E5t1iLuUUek5eybBAIu38jPQOKa5ybgLK1guBvOnsarySjPuUza9UJbFwMmrWMJEtTGlvmCWmqbmUD3NoYEH0VOpL2gqfqUXXqG6aV3DB6kvbIsWRltXPcIqfl0biShX3W9tQ9WTuSInrHAfsMybUXZ3LGDdGTVIBjtJ84Ke7v2gLHWQ7iK0kFegGZJ4SYaL16tcSGwEGvS55Lm4hl8+R3Xb1bfhuRVGCRBz05XTUiRdnPZdU6aDVSJS1eW1j4INCcv9IWfgPraWiB5Q/cfCOZwdefhj187WmY/qTjJzbMUl+lUFKdPV0elGR8oXj3mflpqO9hYmKf3Sh4TGlsHnuSfvxpSAFV9ly10/y94Kl6Tz8NJXMdUJ57UpEeuX97GmoSAu4/g13Jwj5re8okqyYhYO+U7wOdBILHIrn24kxuckOIrPmiaYNUdmEhf+ZNql5LVutBnAz9msgSlQvpBSSxtMuJaL16tcSGkCqFC8W2HWU1Ebm0iVhF+iIpGjvptxZ6FbDIg540VU2fca3sc/AGuK5Ey7vD0JJS6xBbWFhYWFj4JJz7AwsgPTP9YT8mAAAAAElFTkSuQmCC\" alt=\"the fraction f of x, over g of x\"></span> has a value of 0.</p><p>Choice B is incorrect and results from omitting the factor <span class=\"italic\">x</span> in the factorization of <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAaCAYAAACgoey0AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABHUlEQVRIS+2U0Q3EIAiGHc+BHMddXMVNOIGjsRSo3tM9+CVNLhbk54dr+hXoFXLKUDvA98gEoEPNCUqL45YAaFAWigpb8aIUf9KT6zjhxFYS5HEL/l4FWrndYXIVHf58j1LvXIgtLqOHPeuWLCd1zuW95pugHejeKBet9ALwnVZN8cpGOlNzdd3iJcCE6ZkEsF3PJZE8EUSuGMvkLhmMOfbA5mg7r66pK3v5POFEZHNUmG18ujTjFtaWaaLCCM/V33jf6sBmJPpL8FyxsC+MCxv3RzYLGKPnx4L5PBwVxumPyJvNgk6WPCnGIuyuLdGvNguz3VfRKU/e667d+a7YLJiWvYA7cOuWCpJqfyksvI+E5nJgU+jhcDj8Gyl9ABUB6G+g05PDAAAAAElFTkSuQmCC\" alt=\"f of x\"></span>. Choice C is incorrect and may result from incorrectly factoring <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB0AAAAaCAYAAABLlle3AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAANvpXuIwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABN0lEQVRIS+1U2xHEIAi0PAuyHHuxFTvhBMQHqEnu5v6yM84kHMKybM59A8gRvPMQM0ANLQGQIXoHIZ3zLgGQINxoKHiav0QKDnypUF9vAVIA52OZ+4vGLGso3J9d/knmHD24crO+PgJNq+8KG3zEg6wocZgMpdVsMaalo5jao1GpNaxMZPkeY7Ug51hDcG4nQ2osjGMMRYmKLU/ZTXNyYZuWplkbbSItTHUiy9EnODWVXHzc7XxuqooLON6bnJoieI97Z0/3dXEB76YXkb1rcgjOxaZ7Uty01hN5x2LNWAtXmjUMu6dpd/LqP4hmhBpgqWwBfVEIN9cTgfW0hnCbDAuUE5KdHjFK3BouVmDIUu5eesKJsZHpBnDn05T6G92xHcHGuWBesPNG/6E8tnNo+OLFixd/gnMfBvsx2drEaXgAAAAASUVORK5CYII=\" alt=\"g of x\"></span> as <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFYAAAAcCAYAAAD7lUj9AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABy0lEQVRoQ+2WgbGDIAxAGc+BHMddXMVN8iEhGiKh9OqXes2781oVyWsSsEEC2wJTmGDZAPKlIQBssEwB5tX2eIwrwArzF4gyLZ8nuYZ1DjDFO/n0K4B1hjAtsSdK4ce40rKaY97HdICVqNoyG+WaHONHPs7dWd0StmWCEK/k01vBSscPqwPxvnAb4UpJPYpJzpXkKld8sMj0B9B+0zcfJimOTYeZWNWhd7tS/HIMd6d2Llxp0Dn7WCW1Z1Dl2i+N3sQeVafxZmJxPoo5ylXDidUrR7qWJwIdlLqrLZp4V5bH24k9kjnalbHmLwpvySb2TsjLwfrxkndlefwniU3c4Sq3rtoz3Ynl/SV9tV4YLJe+tg5L/nViD7/RrsweS8Up/Hi/sCajvar/7w3Lv5JjeHw7sRR/tKukth1IV7yQhGo/7Gj9epfUuDyx6SUnXkwjXSW1v1za9XwhQg/Sj8BOiNHpTpurE6sTebcrz63HUCHL1XEqul5iHJAFafK+TrgysXRPL7d7XTmeLKYsZDpP1FwRHIwPZ1FRjX3yLH8lrcSmrqgm/GbXfU6MRYcuhuWKUHv3Vfs/qXWJ5kmujuM4juM4juM4juP8OiH8AQ/ibTlU4LsuAAAAAElFTkSuQmCC\" alt=\"open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x plus 3, close parenthesis\"></span> instead of <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFYAAAAcCAYAAAD7lUj9AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABzklEQVRoQ+2WgZGEIAxFKY+CLMdebMVOcpAQhUiUU2ZZZ/NmGBURPj8BdDmwzuCdh3kFSFVDAFhh9g6mRdfxGq0AC0xfIJQ50/MmrW6ZHPjwJj1+BbBM4PwccqIU/BqttKym4PuYDNCMqi2zUVqjxnBJ5Zid1S1hnT24UJMePwpGOly0DMT3mbYRWsnUPZikuWKu0IofFk4/gPabtv7QpNA2FtVYkaE9tbZA44tVk7JTai60UqOj+xglsWdQ5M4PjVZj96hTe9VY7I/G7K31LmysXDnFIaadaNIgyq5roa3GMtxeN3Y3s7fWu2j9F4HXxEa2TEjLQZt8zghjI3e0/pd866rNr9lY3l/irXZgsDHx9qxoRl8bu+sbrZXZxhLjFPp4v9A6o72q/feGxV+JY7j9ubE0fm+tT6htB7lWrIiCahPbU7+eJTW6GxsPuexg6qn1CbVfLqn1WBGgD2kSmAki7TV6GyuN7Km1Be5bzocCWa6OQ9DlEuPJskDqvC0TehpL7+Ry66e1BR4vD2YeyPgcqWlFsDF+nIRm0dg6T+J7cmZszIqq4R/WuvWJY1GRiaNpRSi9+0X7LrUskbxJq2EYhmEYhmEYhmEYv45zf8FrKjlfgf26AAAAAElFTkSuQmCC\" alt=\"open parenthesis, x plus 1, close parenthesis, times, open parenthesis, x minus 3, close parenthesis\"></span>.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959637,"updateDate":1691007959637}$SATQ$::jsonb, 1691007959637, 1691007959637),
    ($SATQ$24016dee$SATQ$, $SATQ$74b2dded-7f3f-4e1c-ba2e-dada922f008c$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p>Which expression is equivalent to <math alttext="left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis"><mfenced><mrow><mrow><mn>8</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>8</mn></mrow></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mrow><mn>2</mn></mrow></mrow></mfenced></math>?</p>$SATQ$, $SATQ$[{"id":"93d487ce-69dd-4b64-a90f-c11f7b0e66c5","content":"<p><math alttext=\"8 x cubed plus 6\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>6</mn>\n</mrow>\n</math></p>"},{"id":"5f11335f-99dd-4c38-87dd-7eed9bb6634e","content":"<p><math alttext=\"7 x cubed plus 10\"><mrow>\n\t<mrow>\n\t\t<mn>7</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>10</mn>\n</mrow>\n</math></p>"},{"id":"8626ef18-5724-4b25-a58d-35231be638d5","content":"<p><math alttext=\"8 x cubed plus 10\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>10</mn>\n</mrow>\n</math></p>"},{"id":"e9387a00-a070-4f9d-bc9c-4190f89e3fcd","content":"<p><math alttext=\"7 x cubed plus 6\"><mrow>\n\t<mrow>\n\t\t<mn>7</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>6</mn>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["5f11335f-99dd-4c38-87dd-7eed9bb6634e"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. The given expression is equivalent to <math alttext="8 x cubed plus 8 minus x cubed minus left parenthesis negative 2 right parenthesis"><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn><mo>-</mo><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced></math>, or &nbsp;<math alttext="8 x cubed plus 8 minus x cubed plus 2"><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn><mo>-</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>2</mn></math>. Combining like terms in this expression yields&nbsp;<math alttext="7 x cubed plus 10"><mn>7</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>10</mn></math>.</p>
<p style="text-align: left;">Choice A is incorrect. This expression is equivalent to <math alttext="left parenthesis 8 x cubed plus 8 right parenthesis minus 2"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mn>2</mn></math>, not <math alttext="left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>2</mn></mrow></mfenced></math>.</p>
<p style="text-align: left;">Choice C is incorrect. This expression is equivalent to <math alttext="left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis negative 2 right parenthesis"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced></math>, not <math alttext="left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>2</mn></mrow></mfenced></math>.</p>
<p style="text-align: left;">Choice D is incorrect. This expression is equivalent to <math alttext="left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed plus 2 right parenthesis"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>2</mn></mrow></mfenced></math>, not <math alttext="left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>2</mn></mrow></mfenced></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"24016dee","external_id":"74b2dded-7f3f-4e1c-ba2e-dada922f008c","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"bcd12dc8-4b83-436c-9406-b5d6a7ebaf14","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p>Which expression is equivalent to <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>8</mn></mrow></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mrow><mn>2</mn></mrow></mrow></mfenced></math>?</p>","answerOptions":[{"id":"93d487ce-69dd-4b64-a90f-c11f7b0e66c5","content":"<p><math alttext=\"8 x cubed plus 6\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>6</mn>\n</mrow>\n</math></p>"},{"id":"5f11335f-99dd-4c38-87dd-7eed9bb6634e","content":"<p><math alttext=\"7 x cubed plus 10\"><mrow>\n\t<mrow>\n\t\t<mn>7</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>10</mn>\n</mrow>\n</math></p>"},{"id":"8626ef18-5724-4b25-a58d-35231be638d5","content":"<p><math alttext=\"8 x cubed plus 10\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>10</mn>\n</mrow>\n</math></p>"},{"id":"e9387a00-a070-4f9d-bc9c-4190f89e3fcd","content":"<p><math alttext=\"7 x cubed plus 6\"><mrow>\n\t<mrow>\n\t\t<mn>7</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>6</mn>\n</mrow>\n</math></p>"}],"keys":["5f11335f-99dd-4c38-87dd-7eed9bb6634e"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. The given expression is equivalent to <math alttext=\"8 x cubed plus 8 minus x cubed minus left parenthesis negative 2 right parenthesis\"><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn><mo>-</mo><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced></math>, or &nbsp;<math alttext=\"8 x cubed plus 8 minus x cubed plus 2\"><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn><mo>-</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>2</mn></math>. Combining like terms in this expression yields&nbsp;<math alttext=\"7 x cubed plus 10\"><mn>7</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>10</mn></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This expression is equivalent to <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus 2\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mn>2</mn></math>, not <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>2</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This expression is equivalent to <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis negative 2 right parenthesis\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced></math>, not <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>2</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This expression is equivalent to <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed plus 2 right parenthesis\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>2</mn></mrow></mfenced></math>, not <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>2</mn></mrow></mfenced></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357395,"pPcc":"SAT#P","questionId":"24016dee","skill_cd":"P.A.","score_band_range_cd":4,"skill_desc":"Equivalent expressions","createDate":1730147357395,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"74b2dded-7f3f-4e1c-ba2e-dada922f008c","primary_class_cd":"P","uId":"bcd12dc8-4b83-436c-9406-b5d6a7ebaf14","difficulty":"M"},"raw_detail":{"answerOptions":[{"content":"<p><math alttext=\"8 x cubed plus 6\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>6</mn>\n</mrow>\n</math></p>","id":"93d487ce-69dd-4b64-a90f-c11f7b0e66c5"},{"content":"<p><math alttext=\"7 x cubed plus 10\"><mrow>\n\t<mrow>\n\t\t<mn>7</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>10</mn>\n</mrow>\n</math></p>","id":"5f11335f-99dd-4c38-87dd-7eed9bb6634e"},{"content":"<p><math alttext=\"8 x cubed plus 10\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>10</mn>\n</mrow>\n</math></p>","id":"8626ef18-5724-4b25-a58d-35231be638d5"},{"content":"<p><math alttext=\"7 x cubed plus 6\"><mrow>\n\t<mrow>\n\t\t<mn>7</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>3</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>6</mn>\n</mrow>\n</math></p>","id":"e9387a00-a070-4f9d-bc9c-4190f89e3fcd"}],"externalid":"74b2dded-7f3f-4e1c-ba2e-dada922f008c","keys":["5f11335f-99dd-4c38-87dd-7eed9bb6634e"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. The given expression is equivalent to <math alttext=\"8 x cubed plus 8 minus x cubed minus left parenthesis negative 2 right parenthesis\"><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn><mo>-</mo><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced></math>, or &nbsp;<math alttext=\"8 x cubed plus 8 minus x cubed plus 2\"><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn><mo>-</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>2</mn></math>. Combining like terms in this expression yields&nbsp;<math alttext=\"7 x cubed plus 10\"><mn>7</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>10</mn></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This expression is equivalent to <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus 2\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mn>2</mn></math>, not <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>2</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This expression is equivalent to <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis negative 2 right parenthesis\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced></math>, not <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>2</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This expression is equivalent to <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed plus 2 right parenthesis\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>2</mn></mrow></mfenced></math>, not <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis\"><mfenced><mrow><mn>8</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>8</mn></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>2</mn></mrow></mfenced></math>.</p>","stem":"<p>Which expression is equivalent to <math alttext=\"left parenthesis 8 x cubed plus 8 right parenthesis minus left parenthesis x cubed minus 2 right parenthesis\"><mfenced><mrow><mrow><mn>8</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mrow><mn>8</mn></mrow></mrow></mfenced><mo>-</mo><mfenced><mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mrow><mn>2</mn></mrow></mrow></mfenced></math>?</p>","type":"mcq","correct_answer":["B"]},"createDate":1730147357395,"updateDate":1730147357395}$SATQ$::jsonb, 1730147357395, 1730147357395),
    ($SATQ$252a3b3a$SATQ$, $SATQ$30c5bb08-3642-4126-a066-371cb194f2d1$SATQ$::uuid, $SATQ$d89fe7c8-0a4e-4d66-b108-3ec2d7242330$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="275.22pt" version="1.1" viewBox="0 0 287.764248 275.22" width="287.764248pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a curve in the x y plane with the origin labeled O. The x axis ranges from negative 8 to 8 in increments of 1. The y axis ranges from negative 100 to 100 in increments of 20. Refer to long description.">
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
    <g id="ytick_9"></g>
    <g id="ytick_10"></g>
   </g>
   <g id="LineCollection_1">
    <path clip-path="url(#pb6322f2469)" d="M 37.782876 255.11539 
L 37.782876 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 50.897317 255.11539 
L 50.897317 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 64.011758 255.11539 
L 64.011758 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 77.126199 255.11539 
L 77.126199 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 90.24064 255.11539 
L 90.24064 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 103.35508 255.11539 
L 103.35508 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 116.469521 255.11539 
L 116.469521 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 129.583962 255.11539 
L 129.583962 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 155.812844 255.11539 
L 155.812844 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 168.927285 255.11539 
L 168.927285 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 182.041726 255.11539 
L 182.041726 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 195.156167 255.11539 
L 195.156167 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 208.270607 255.11539 
L 208.270607 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 221.385048 255.11539 
L 221.385048 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 234.499489 255.11539 
L 234.499489 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 247.61393 255.11539 
L 247.61393 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 249.869614 
L 252.859706 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 228.886508 
L 252.859706 228.886508 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 207.903403 
L 252.859706 207.903403 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 186.920298 
L 252.859706 186.920298 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 165.937192 
L 252.859706 165.937192 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 123.970981 
L 252.859706 123.970981 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 102.987876 
L 252.859706 102.987876 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 82.004771 
L 252.859706 82.004771 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 61.021665 
L 252.859706 61.021665 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 40.03856 
L 252.859706 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#pb6322f2469)" d="M 32.5371 144.954087 
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
" id="m3f1d07b608" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#pb6322f2469)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m3f1d07b608" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#pb6322f2469)" d="M 142.698403 255.11539 
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
" id="m53fd734fbb" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#pb6322f2469)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m53fd734fbb" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#pb6322f2469)" d="M 37.782876 148.819396 
L 37.782876 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 50.897317 148.819396 
L 50.897317 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 64.011758 148.819396 
L 64.011758 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 77.126199 148.819396 
L 77.126199 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 90.24064 148.819396 
L 90.24064 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 103.35508 148.819396 
L 103.35508 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 116.469521 148.819396 
L 116.469521 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 129.583962 148.819396 
L 129.583962 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 155.812844 148.819396 
L 155.812844 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 168.927285 148.819396 
L 168.927285 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 182.041726 148.819396 
L 182.041726 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 195.156167 148.819396 
L 195.156167 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 208.270607 148.819396 
L 208.270607 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 221.385048 148.819396 
L 221.385048 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 234.499489 148.819396 
L 234.499489 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 247.61393 148.819396 
L 247.61393 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#pb6322f2469)" d="M 138.833094 249.869614 
L 146.563712 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 138.833094 228.886508 
L 146.563712 228.886508 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 138.833094 207.903403 
L 146.563712 207.903403 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 138.833094 186.920298 
L 146.563712 186.920298 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 138.833094 165.937192 
L 146.563712 165.937192 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 138.833094 123.970981 
L 146.563712 123.970981 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 138.833094 102.987876 
L 146.563712 102.987876 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 138.833094 82.004771 
L 146.563712 82.004771 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 138.833094 61.021665 
L 146.563712 61.021665 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pb6322f2469)" d="M 138.833094 40.03856 
L 146.563712 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#pb6322f2469)" d="M 113.584344 256.164545 
L 113.584344 244.623837 
L 135.616605 244.623837 
L 135.616605 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#pb6322f2469)" d="M 104.928813 249.082747 
L 104.928813 253.541657 
L 115.420366 253.541657 
L 115.420366 249.082747 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_1">
    <g clip-path="url(#pb6322f2469)">
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
     <g transform="translate(106.011899 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_2">
    <g clip-path="url(#pb6322f2469)">
     <!-- 100 -->
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
     <g transform="translate(114.084785 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.53125" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_3">
    <g clip-path="url(#pb6322f2469)">
     <!-- 100 -->
     <g transform="translate(114.084785 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.53125" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#pb6322f2469)" d="M 121.19072 235.18144 
L 121.19072 223.640732 
L 135.878894 223.640732 
L 135.878894 235.18144 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#pb6322f2469)" d="M 112.2729 228.099642 
L 112.2729 232.558552 
L 122.764453 232.558552 
L 122.764453 228.099642 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_4">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(113.880564 233.625687)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_5">
    <g clip-path="url(#pb6322f2469)">
     <!-- 80 -->
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
     <g transform="translate(121.174629 233.625687)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_6">
    <g clip-path="url(#pb6322f2469)">
     <!-- 80 -->
     <g transform="translate(121.174629 233.625687)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#pb6322f2469)" d="M 121.19072 214.198335 
L 121.19072 202.657627 
L 135.878894 202.657627 
L 135.878894 214.198335 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#pb6322f2469)" d="M 112.2729 207.116537 
L 112.2729 211.575447 
L 122.764453 211.575447 
L 122.764453 207.116537 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_7">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(113.880564 212.642582)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_8">
    <g clip-path="url(#pb6322f2469)">
     <!-- 60 -->
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
     <g transform="translate(121.174629 212.642582)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_9">
    <g clip-path="url(#pb6322f2469)">
     <!-- 60 -->
     <g transform="translate(121.174629 212.642582)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#pb6322f2469)" d="M 121.19072 193.215229 
L 121.19072 181.674521 
L 135.878894 181.674521 
L 135.878894 193.215229 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#pb6322f2469)" d="M 112.2729 186.133431 
L 112.2729 190.592341 
L 122.764453 190.592341 
L 122.764453 186.133431 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_10">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(113.880564 191.659476)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_11">
    <g clip-path="url(#pb6322f2469)">
     <!-- 40 -->
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
     <g transform="translate(121.202754 191.659476)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
      <use x="47.070312" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_12">
    <g clip-path="url(#pb6322f2469)">
     <!-- 40 -->
     <g transform="translate(121.202754 191.659476)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
      <use x="47.070312" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#pb6322f2469)" d="M 121.19072 172.232124 
L 121.19072 160.691416 
L 135.878894 160.691416 
L 135.878894 172.232124 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#pb6322f2469)" d="M 112.2729 165.150326 
L 112.2729 169.609236 
L 122.764453 169.609236 
L 122.764453 165.150326 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_13">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(113.880564 170.676371)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_14">
    <g clip-path="url(#pb6322f2469)">
     <!-- 20 -->
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
     <g transform="translate(121.174629 170.676371)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_15">
    <g clip-path="url(#pb6322f2469)">
     <!-- 20 -->
     <g transform="translate(121.174629 170.676371)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#pb6322f2469)" d="M 121.19072 130.265913 
L 121.19072 118.725205 
L 135.878894 118.725205 
L 135.878894 130.265913 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_16">
    <g clip-path="url(#pb6322f2469)">
     <!-- 20 -->
     <g transform="translate(121.174629 128.71016)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_17">
    <g clip-path="url(#pb6322f2469)">
     <!-- 20 -->
     <g transform="translate(121.174629 128.71016)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#pb6322f2469)" d="M 121.19072 109.282808 
L 121.19072 97.7421 
L 135.878894 97.7421 
L 135.878894 109.282808 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_18">
    <g clip-path="url(#pb6322f2469)">
     <!-- 40 -->
     <g transform="translate(121.202754 107.727055)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
      <use x="47.070312" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_19">
    <g clip-path="url(#pb6322f2469)">
     <!-- 40 -->
     <g transform="translate(121.202754 107.727055)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
      <use x="47.070312" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#pb6322f2469)" d="M 121.19072 88.299702 
L 121.19072 76.758994 
L 135.878894 76.758994 
L 135.878894 88.299702 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_20">
    <g clip-path="url(#pb6322f2469)">
     <!-- 60 -->
     <g transform="translate(121.174629 86.743949)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_21">
    <g clip-path="url(#pb6322f2469)">
     <!-- 60 -->
     <g transform="translate(121.174629 86.743949)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_14">
    <path clip-path="url(#pb6322f2469)" d="M 121.19072 67.316597 
L 121.19072 55.775889 
L 135.878894 55.775889 
L 135.878894 67.316597 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_22">
    <g clip-path="url(#pb6322f2469)">
     <!-- 80 -->
     <g transform="translate(121.174629 65.760844)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_23">
    <g clip-path="url(#pb6322f2469)">
     <!-- 80 -->
     <g transform="translate(121.174629 65.760844)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_15">
    <path clip-path="url(#pb6322f2469)" d="M 113.584344 46.333492 
L 113.584344 34.792784 
L 135.616605 34.792784 
L 135.616605 46.333492 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_24">
    <g clip-path="url(#pb6322f2469)">
     <!-- 100 -->
     <g transform="translate(114.084785 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.53125" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_25">
    <g clip-path="url(#pb6322f2469)">
     <!-- 100 -->
     <g transform="translate(114.084785 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
      <use x="94.53125" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_16">
    <path clip-path="url(#pb6322f2469)" d="M 19.422659 153.347329 
L 19.422659 157.54395 
L 124.862763 157.54395 
L 124.862763 153.347329 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_17">
    <path clip-path="url(#pb6322f2469)" d="M 33.061677 160.166838 
L 33.061677 148.62613 
L 40.930342 148.62613 
L 40.930342 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_26">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(26.01381 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_27">
    <g clip-path="url(#pb6322f2469)">
     <!-- 8 -->
     <g transform="translate(33.315921 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_28">
    <g clip-path="url(#pb6322f2469)">
     <!-- 8 -->
     <g transform="translate(33.315921 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_18">
    <path clip-path="url(#pb6322f2469)" d="M 46.176118 160.166838 
L 46.176118 148.62613 
L 54.044783 148.62613 
L 54.044783 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_29">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(39.128251 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_30">
    <g clip-path="url(#pb6322f2469)">
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
     <g transform="translate(46.444424 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="text_31">
    <g clip-path="url(#pb6322f2469)">
     <!-- 7 -->
     <g transform="translate(46.444424 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_19">
    <path clip-path="url(#pb6322f2469)" d="M 59.290559 160.166838 
L 59.290559 148.62613 
L 67.159224 148.62613 
L 67.159224 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_32">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(52.242692 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_33">
    <g clip-path="url(#pb6322f2469)">
     <!-- 6 -->
     <g transform="translate(59.544802 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_34">
    <g clip-path="url(#pb6322f2469)">
     <!-- 6 -->
     <g transform="translate(59.544802 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_20">
    <path clip-path="url(#pb6322f2469)" d="M 72.405 160.166838 
L 72.405 148.62613 
L 80.273665 148.62613 
L 80.273665 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_35">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(65.357133 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_36">
    <g clip-path="url(#pb6322f2469)">
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
     <g transform="translate(72.645181 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_37">
    <g clip-path="url(#pb6322f2469)">
     <!-- 5 -->
     <g transform="translate(72.645181 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_21">
    <path clip-path="url(#pb6322f2469)" d="M 85.519441 160.166838 
L 85.519441 148.62613 
L 93.388105 148.62613 
L 93.388105 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_38">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(78.471573 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_39">
    <g clip-path="url(#pb6322f2469)">
     <!-- 4 -->
     <g transform="translate(85.801809 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_40">
    <g clip-path="url(#pb6322f2469)">
     <!-- 4 -->
     <g transform="translate(85.801809 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_22">
    <path clip-path="url(#pb6322f2469)" d="M 98.633882 160.166838 
L 98.633882 148.62613 
L 106.502546 148.62613 
L 106.502546 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_41">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(91.586014 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_42">
    <g clip-path="url(#pb6322f2469)">
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
     <g transform="translate(98.874062 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="text_43">
    <g clip-path="url(#pb6322f2469)">
     <!-- 3 -->
     <g transform="translate(98.874062 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_23">
    <path clip-path="url(#pb6322f2469)" d="M 111.748323 160.166838 
L 111.748323 148.62613 
L 119.616987 148.62613 
L 119.616987 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_44">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(104.700455 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_45">
    <g clip-path="url(#pb6322f2469)">
     <!-- 2 -->
     <g transform="translate(112.002566 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_46">
    <g clip-path="url(#pb6322f2469)">
     <!-- 2 -->
     <g transform="translate(112.002566 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_24">
    <path clip-path="url(#pb6322f2469)" d="M 124.862763 160.166838 
L 124.862763 148.62613 
L 132.731428 148.62613 
L 132.731428 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_47">
    <g clip-path="url(#pb6322f2469)">
     <!-- – -->
     <g transform="translate(117.814896 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_48">
    <g clip-path="url(#pb6322f2469)">
     <!-- 1 -->
     <g transform="translate(125.117007 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_49">
    <g clip-path="url(#pb6322f2469)">
     <!-- 1 -->
     <g transform="translate(125.117007 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_25">
    <path clip-path="url(#pb6322f2469)" d="M 151.091645 160.166838 
L 151.091645 148.62613 
L 158.96031 148.62613 
L 158.96031 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_50">
    <g clip-path="url(#pb6322f2469)">
     <!-- 1 -->
     <g transform="translate(151.345888 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_51">
    <g clip-path="url(#pb6322f2469)">
     <!-- 1 -->
     <g transform="translate(151.345888 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_26">
    <path clip-path="url(#pb6322f2469)" d="M 164.206086 160.166838 
L 164.206086 148.62613 
L 172.074751 148.62613 
L 172.074751 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_52">
    <g clip-path="url(#pb6322f2469)">
     <!-- 2 -->
     <g transform="translate(164.460329 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_53">
    <g clip-path="url(#pb6322f2469)">
     <!-- 2 -->
     <g transform="translate(164.460329 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_27">
    <path clip-path="url(#pb6322f2469)" d="M 177.320527 160.166838 
L 177.320527 148.62613 
L 185.189191 148.62613 
L 185.189191 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_54">
    <g clip-path="url(#pb6322f2469)">
     <!-- 3 -->
     <g transform="translate(177.560708 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="text_55">
    <g clip-path="url(#pb6322f2469)">
     <!-- 3 -->
     <g transform="translate(177.560708 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_28">
    <path clip-path="url(#pb6322f2469)" d="M 190.434968 160.166838 
L 190.434968 148.62613 
L 198.303632 148.62613 
L 198.303632 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_56">
    <g clip-path="url(#pb6322f2469)">
     <!-- 4 -->
     <g transform="translate(190.717336 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_57">
    <g clip-path="url(#pb6322f2469)">
     <!-- 4 -->
     <g transform="translate(190.717336 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_29">
    <path clip-path="url(#pb6322f2469)" d="M 203.549409 160.166838 
L 203.549409 148.62613 
L 211.418073 148.62613 
L 211.418073 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_58">
    <g clip-path="url(#pb6322f2469)">
     <!-- 5 -->
     <g transform="translate(203.789589 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_59">
    <g clip-path="url(#pb6322f2469)">
     <!-- 5 -->
     <g transform="translate(203.789589 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_30">
    <path clip-path="url(#pb6322f2469)" d="M 216.66385 160.166838 
L 216.66385 148.62613 
L 224.532514 148.62613 
L 224.532514 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_60">
    <g clip-path="url(#pb6322f2469)">
     <!-- 6 -->
     <g transform="translate(216.918093 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_61">
    <g clip-path="url(#pb6322f2469)">
     <!-- 6 -->
     <g transform="translate(216.918093 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_31">
    <path clip-path="url(#pb6322f2469)" d="M 229.77829 160.166838 
L 229.77829 148.62613 
L 237.646955 148.62613 
L 237.646955 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_62">
    <g clip-path="url(#pb6322f2469)">
     <!-- 7 -->
     <g transform="translate(230.046596 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="text_63">
    <g clip-path="url(#pb6322f2469)">
     <!-- 7 -->
     <g transform="translate(230.046596 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_32">
    <path clip-path="url(#pb6322f2469)" d="M 242.892731 160.166838 
L 242.892731 148.62613 
L 250.761396 148.62613 
L 250.761396 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_64">
    <g clip-path="url(#pb6322f2469)">
     <!-- 8 -->
     <g transform="translate(243.146974 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_65">
    <g clip-path="url(#pb6322f2469)">
     <!-- 8 -->
     <g transform="translate(243.146974 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_66">
    <g clip-path="url(#pb6322f2469)">
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
   <g id="text_67">
    <g clip-path="url(#pb6322f2469)">
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
   <g id="text_68">
    <g clip-path="url(#pb6322f2469)">
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
    <path clip-path="url(#pb6322f2469)" d="M 37.782876 235.601102 
L 39.885392 223.480655 
L 41.987907 212.507212 
L 44.090423 202.615825 
L 46.192938 193.743211 
L 48.295454 185.82775 
L 50.39797 178.809485 
L 52.500485 172.630123 
L 54.603001 167.233033 
L 56.705516 162.563249 
L 58.387529 159.315206 
L 60.069541 156.471969 
L 61.751554 154.007694 
L 63.433566 151.897219 
L 65.115579 150.116063 
L 66.797591 148.640428 
L 68.479603 147.447195 
L 70.161616 146.513928 
L 71.843628 145.818871 
L 73.525641 145.340951 
L 75.207653 145.059774 
L 77.310169 144.955012 
L 79.412684 145.089912 
L 81.5152 145.429137 
L 84.038219 146.058619 
L 86.98174 147.030488 
L 90.766268 148.531495 
L 103.381362 153.776236 
L 106.745387 154.844798 
L 109.688909 155.564209 
L 112.63243 156.04849 
L 115.155449 156.256745 
L 117.678468 156.260735 
L 120.201486 156.051424 
L 122.724505 155.623225 
L 125.247524 154.974001 
L 127.770543 154.105062 
L 130.293561 153.021169 
L 133.237083 151.496096 
L 136.180605 149.708734 
L 139.54463 147.377691 
L 143.329158 144.445913 
L 147.954692 140.539486 
L 160.149282 130.018952 
L 163.513307 127.520423 
L 166.036326 125.89973 
L 168.559345 124.559165 
L 170.66186 123.699577 
L 172.764376 123.113349 
L 174.446388 122.867014 
L 176.128401 122.840739 
L 177.810413 123.055692 
L 179.492426 123.533725 
L 181.174438 124.29737 
L 182.85645 125.369841 
L 184.538463 126.775033 
L 186.220475 128.537522 
L 187.902488 130.682566 
L 189.5845 133.236104 
L 191.266513 136.224757 
L 192.948525 139.675826 
L 194.630538 143.617295 
L 196.31255 148.077828 
L 197.994563 153.086771 
L 200.097078 160.16496 
L 202.199594 168.207152 
L 204.302109 177.275153 
L 206.404625 187.432434 
L 208.50714 198.74413 
L 210.609656 211.277038 
L 212.712172 225.09962 
L 214.814687 240.282 
L 216.4967 253.455144 
L 216.4967 253.455144 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="pb6322f2469">
   <rect height="260.82" width="268.898496" x="7.2" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a curve" class="sr-only"><ul>
<li>In quadrant 3:
<ul>
<li>The curve rises sharply to touch the x axis at point (negative 5 comma 0).</li>
<li>The curve falls gradually to a relative minimum at point (negative 2 comma negative 11).</li>
<li>The curve rises gradually to cross both axes at the origin.</li>
</ul>
</li>
<li>In quadrant 1:
<ul>
<li>The curve rises gradually to a relative maximum at point (2.5 comma 21).</li>
<li>The curve falls sharply to cross the x axis at point (4 comma 0).</li>
</ul>
</li>
<li>In quadrant 4 the curve falls sharply.</li>
</ul></div></figure></p>
<p style="text-align: left;">Which of the following could be the equation of the graph shown in the <em>xy</em>-plane?</p>$SATQ$, $SATQ$[{"id":"56612885-a8a2-4415-a697-cb0912f32303","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 4 right parenthesis left parenthesis x plus 5 right parenthesis\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>5</mn></mrow></mrow></mfenced></math></p>"},{"id":"90bf6fbb-ade4-4747-bd5f-621d7d6f6502","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 4 right parenthesis left parenthesis x plus 5 right parenthesis squared\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>4</mn></mrow></mrow></mfenced><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mn>2</mn></msup></math></p>"},{"id":"b326be18-0286-4dea-a57a-9099caa960e4","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 5 right parenthesis left parenthesis x plus 4 right parenthesis\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced></math></p>"},{"id":"779013b1-ba63-4754-b11f-010bba051780","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 5 right parenthesis squared left parenthesis x plus 4 right parenthesis\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mn>2</mn></msup><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced></math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["90bf6fbb-ade4-4747-bd5f-621d7d6f6502"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice B is correct. Each of the given choices is an equation of the form&nbsp;<math alttext="y equals minus one tenth x left parenthesis x minus a right parenthesis Superscript m Baseline left parenthesis x plus b right parenthesis Superscript n"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>a</mi></mrow></mfenced><mi>m</mi></msup><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mi>n</mi></msup></math>, where <math alttext="a"><mi>a</mi>
</math>, <math alttext="b"><mi>b</mi>
</math>, <math alttext="m"><mi>m</mi>
</math>, and <math alttext="n"><mi>n</mi>
</math> are positive constants. In the <em>xy</em>-plane, the graph of an equation of this form has <em>x</em>-intercepts at <math alttext="x equals 0"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>, <math alttext="x equals a"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mi>a</mi>
</mrow>
</math>, and <math alttext="x equals negative b"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mrow>
		<mo>-</mo>
		<mi>b</mi>
	</mrow>
</mrow>
</math>. The graph shown has <em>x</em>-intercepts at <math alttext="x equals 0"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>, <math alttext="x equals 4"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>4</mn>
</mrow>
</math>, and <math alttext="x equals negative 5"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mo>-</mo><mn>5</mn>
</mrow>
</math>. Therefore, <math alttext="a equals 4"><mrow>
	<mi>a</mi>
	<mo>=</mo>
	<mn>4</mn>
</mrow>
</math> and <math alttext="b equals 5"><mrow>
	<mi>b</mi>
	<mo>=</mo>
	<mn>5</mn>
</mrow>
</math>. Of the given choices, only choices A and B have <math alttext="a equals 4"><mrow>
	<mi>a</mi>
	<mo>=</mo>
	<mn>4</mn>
</mrow>
</math> and <math alttext="b equals 5"><mrow>
	<mi>b</mi>
	<mo>=</mo>
	<mn>5</mn>
</mrow>
</math>. For an equation in the form <math alttext="y equals minus one tenth x left parenthesis x minus a right parenthesis Superscript m Baseline left parenthesis x plus b right parenthesis Superscript n"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>a</mi></mrow></mfenced><mi>m</mi></msup><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mi>n</mi></msup></math>, if all values of <math alttext="x"><mi>x</mi>
</math> that are less than <math alttext="negative b"><mrow>
	<mo>-</mo>
	<mi>b</mi>
</mrow>
</math> or greater than <math alttext="a"><mi>a</mi>
</math> correspond to negative <em>y</em>-values, then the sum of all the exponents of the factors on the right-hand side of the equation is even. In the graph shown, all values of <math alttext="x"><mi>x</mi>
</math> less than <math alttext="negative 5"><mo>-</mo><mn>5</mn>
</math> or greater than <math alttext="4"><mn>4</mn>
</math> correspond to negative <em>y</em>-values. Therefore, the sum of all the exponents of the factors on the right-hand side of the equation&nbsp;<math alttext="y equals minus one tenth x left parenthesis x minus 4 right parenthesis Superscript m Baseline left parenthesis x plus 5 right parenthesis Superscript n"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>4</mn></mrow></mfenced><mi>m</mi></msup><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mn>5</mn></mrow></mfenced><mi>n</mi></msup></math> must be even. For choice A, the sum of these exponents is <math alttext="1 plus 1 plus 1"><mn>1</mn><mo>+</mo><mn>1</mn><mo>+</mo><mn>1</mn></math>, or <math alttext="3"><mn>3</mn>
</math>, which is odd. For choice B, the sum of these exponents is&nbsp;<math alttext="1 plus 1 plus 2"><mn>1</mn><mo>+</mo><mn>1</mn><mo>+</mo><mn>2</mn></math>, or <math alttext="4"><mn>4</mn>
</math>, which is even. Therefore,&nbsp;<math alttext="y equals minus one tenth x left parenthesis x minus 4 right parenthesis left parenthesis x plus 5 right parenthesis squared"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>4</mn></mrow></mfenced><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mn>5</mn></mrow></mfenced><mn>2</mn></msup></math> could be the equation of the graph shown.</p>
<p style="text-align: left;">Choice A is incorrect. For the graph of this equation, all values of <math alttext="x"><mi>x</mi>
</math> less than <math alttext="negative 5"><mo>-</mo><mn>5</mn>
</math> correspond to positive, not negative, <em>y</em>-values.</p>
<p style="text-align: left;">Choice C is incorrect. The graph of this equation has <em>x</em>-intercepts at <math alttext="x equals negative 4"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mo>-</mo><mn>4</mn>
</mrow>
</math>, <math alttext="x equals 0"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>, and <math alttext="x equals 5"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>5</mn>
</mrow>
</math>, rather than <em>x</em>-intercepts at <math alttext="x equals negative 5"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mo>-</mo><mn>5</mn>
</mrow>
</math>, <math alttext="x equals 0"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>, and <math alttext="x equals 4"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>4</mn>
</mrow>
</math>.</p>
<p style="text-align: left;">Choice D is incorrect. The graph of this equation has <em>x</em>-intercepts at <math alttext="x equals negative 4"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mo>-</mo><mn>4</mn>
</mrow>
</math>, <math alttext="x equals 0"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>, and <math alttext="x equals 5"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>5</mn>
</mrow>
</math>, rather than <em>x</em>-intercepts at <math alttext="x equals negative 5"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mo>-</mo><mn>5</mn>
</mrow>
</math>, <math alttext="x equals 0"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>, and <math alttext="x equals 4"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>4</mn>
</mrow>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"252a3b3a","external_id":"30c5bb08-3642-4126-a066-371cb194f2d1","disclosed_item_id":null,"source":"qbank","vaultid":"d89fe7c8-0a4e-4d66-b108-3ec2d7242330","uId":"2b76569b-ce88-4efe-97ac-8140d8ed9884","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 287.764248 275.22\" width=\"287.764248pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a curve in the x y plane with the origin labeled O. The x axis ranges from negative 8 to 8 in increments of 1. The y axis ranges from negative 100 to 100 in increments of 20. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M -0 275.22 \nL 287.764248 275.22 \nL 287.764248 0 \nL -0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 8.404248 260.46 \nL 280.564248 260.46 \nL 280.564248 10.98 \nL 8.404248 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 276.098496 268.02 \nL 276.098496 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n    <g id=\"ytick_9\"></g>\n    <g id=\"ytick_10\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 37.782876 255.11539 \nL 37.782876 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 50.897317 255.11539 \nL 50.897317 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 64.011758 255.11539 \nL 64.011758 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 77.126199 255.11539 \nL 77.126199 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 90.24064 255.11539 \nL 90.24064 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 103.35508 255.11539 \nL 103.35508 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 116.469521 255.11539 \nL 116.469521 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 129.583962 255.11539 \nL 129.583962 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 155.812844 255.11539 \nL 155.812844 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 168.927285 255.11539 \nL 168.927285 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 182.041726 255.11539 \nL 182.041726 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 195.156167 255.11539 \nL 195.156167 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 208.270607 255.11539 \nL 208.270607 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 221.385048 255.11539 \nL 221.385048 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 234.499489 255.11539 \nL 234.499489 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 247.61393 255.11539 \nL 247.61393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 249.869614 \nL 252.859706 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 228.886508 \nL 252.859706 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 207.903403 \nL 252.859706 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 186.920298 \nL 252.859706 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 165.937192 \nL 252.859706 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 123.970981 \nL 252.859706 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 102.987876 \nL 252.859706 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 82.004771 \nL 252.859706 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 61.021665 \nL 252.859706 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 40.03856 \nL 252.859706 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 144.954087 \nL 258.105483 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 255.26462 -129.281463 \nL 258.105483 -130.265913 \nL 255.26462 -131.250364 \nL 255.26462 -129.281463 \nL 258.105483 -130.265913 \n\" id=\"m3f1d07b608\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pb6322f2469)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m3f1d07b608\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 142.698403 255.11539 \nL 142.698403 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 143.704311 -242.098754 \nL 142.698403 -245.672993 \nL 141.692495 -242.098754 \nL 143.704311 -242.098754 \nL 142.698403 -245.672993 \n\" id=\"m53fd734fbb\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pb6322f2469)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m53fd734fbb\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 37.782876 148.819396 \nL 37.782876 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 50.897317 148.819396 \nL 50.897317 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 64.011758 148.819396 \nL 64.011758 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 77.126199 148.819396 \nL 77.126199 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 90.24064 148.819396 \nL 90.24064 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 103.35508 148.819396 \nL 103.35508 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 116.469521 148.819396 \nL 116.469521 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 129.583962 148.819396 \nL 129.583962 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 155.812844 148.819396 \nL 155.812844 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 168.927285 148.819396 \nL 168.927285 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 182.041726 148.819396 \nL 182.041726 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 195.156167 148.819396 \nL 195.156167 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 208.270607 148.819396 \nL 208.270607 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 221.385048 148.819396 \nL 221.385048 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 234.499489 148.819396 \nL 234.499489 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 247.61393 148.819396 \nL 247.61393 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 249.869614 \nL 146.563712 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 228.886508 \nL 146.563712 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 207.903403 \nL 146.563712 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 186.920298 \nL 146.563712 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 165.937192 \nL 146.563712 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 123.970981 \nL 146.563712 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 102.987876 \nL 146.563712 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 82.004771 \nL 146.563712 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 61.021665 \nL 146.563712 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 40.03856 \nL 146.563712 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 113.584344 256.164545 \nL 113.584344 244.623837 \nL 135.616605 244.623837 \nL 135.616605 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 104.928813 249.082747 \nL 104.928813 253.541657 \nL 115.420366 253.541657 \nL 115.420366 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(106.011899 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 100 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(114.084785 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 100 -->\n     <g transform=\"translate(114.084785 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 235.18144 \nL 121.19072 223.640732 \nL 135.878894 223.640732 \nL 135.878894 235.18144 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 112.2729 228.099642 \nL 112.2729 232.558552 \nL 122.764453 232.558552 \nL 122.764453 228.099642 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(113.880564 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 80 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(121.174629 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 80 -->\n     <g transform=\"translate(121.174629 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 214.198335 \nL 121.19072 202.657627 \nL 135.878894 202.657627 \nL 135.878894 214.198335 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 112.2729 207.116537 \nL 112.2729 211.575447 \nL 122.764453 211.575447 \nL 122.764453 207.116537 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(113.880564 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 60 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(121.174629 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 60 -->\n     <g transform=\"translate(121.174629 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 193.215229 \nL 121.19072 181.674521 \nL 135.878894 181.674521 \nL 135.878894 193.215229 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 112.2729 186.133431 \nL 112.2729 190.592341 \nL 122.764453 190.592341 \nL 122.764453 186.133431 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(113.880564 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 40 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(121.202754 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 40 -->\n     <g transform=\"translate(121.202754 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 172.232124 \nL 121.19072 160.691416 \nL 135.878894 160.691416 \nL 135.878894 172.232124 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 112.2729 165.150326 \nL 112.2729 169.609236 \nL 122.764453 169.609236 \nL 122.764453 165.150326 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(113.880564 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 20 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(121.174629 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 20 -->\n     <g transform=\"translate(121.174629 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 130.265913 \nL 121.19072 118.725205 \nL 135.878894 118.725205 \nL 135.878894 130.265913 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 20 -->\n     <g transform=\"translate(121.174629 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 20 -->\n     <g transform=\"translate(121.174629 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 109.282808 \nL 121.19072 97.7421 \nL 135.878894 97.7421 \nL 135.878894 109.282808 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 40 -->\n     <g transform=\"translate(121.202754 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 40 -->\n     <g transform=\"translate(121.202754 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 88.299702 \nL 121.19072 76.758994 \nL 135.878894 76.758994 \nL 135.878894 88.299702 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 60 -->\n     <g transform=\"translate(121.174629 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 60 -->\n     <g transform=\"translate(121.174629 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 67.316597 \nL 121.19072 55.775889 \nL 135.878894 55.775889 \nL 135.878894 67.316597 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 80 -->\n     <g transform=\"translate(121.174629 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 80 -->\n     <g transform=\"translate(121.174629 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 113.584344 46.333492 \nL 113.584344 34.792784 \nL 135.616605 34.792784 \nL 135.616605 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 100 -->\n     <g transform=\"translate(114.084785 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 100 -->\n     <g transform=\"translate(114.084785 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 19.422659 153.347329 \nL 19.422659 157.54395 \nL 124.862763 157.54395 \nL 124.862763 153.347329 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 33.061677 160.166838 \nL 33.061677 148.62613 \nL 40.930342 148.62613 \nL 40.930342 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(26.01381 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 46.176118 160.166838 \nL 46.176118 148.62613 \nL 54.044783 148.62613 \nL 54.044783 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(39.128251 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 7 -->\n     <defs>\n      <path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n     </defs>\n     <g transform=\"translate(46.444424 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 7 -->\n     <g transform=\"translate(46.444424 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 59.290559 160.166838 \nL 59.290559 148.62613 \nL 67.159224 148.62613 \nL 67.159224 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(52.242692 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 72.405 160.166838 \nL 72.405 148.62613 \nL 80.273665 148.62613 \nL 80.273665 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(65.357133 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 5 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n     </defs>\n     <g transform=\"translate(72.645181 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 5 -->\n     <g transform=\"translate(72.645181 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 85.519441 160.166838 \nL 85.519441 148.62613 \nL 93.388105 148.62613 \nL 93.388105 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(78.471573 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_22\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 98.633882 160.166838 \nL 98.633882 148.62613 \nL 106.502546 148.62613 \nL 106.502546 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(91.586014 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 3 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(98.874062 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 3 -->\n     <g transform=\"translate(98.874062 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_23\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 111.748323 160.166838 \nL 111.748323 148.62613 \nL 119.616987 148.62613 \nL 119.616987 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_44\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(104.700455 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_45\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_46\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_24\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 124.862763 160.166838 \nL 124.862763 148.62613 \nL 132.731428 148.62613 \nL 132.731428 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_47\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(117.814896 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_48\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 1 -->\n     <g transform=\"translate(125.117007 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_49\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 1 -->\n     <g transform=\"translate(125.117007 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_25\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 151.091645 160.166838 \nL 151.091645 148.62613 \nL 158.96031 148.62613 \nL 158.96031 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_50\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 1 -->\n     <g transform=\"translate(151.345888 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_51\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 1 -->\n     <g transform=\"translate(151.345888 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_26\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 164.206086 160.166838 \nL 164.206086 148.62613 \nL 172.074751 148.62613 \nL 172.074751 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_52\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_53\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_27\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 177.320527 160.166838 \nL 177.320527 148.62613 \nL 185.189191 148.62613 \nL 185.189191 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_54\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 3 -->\n     <g transform=\"translate(177.560708 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_55\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 3 -->\n     <g transform=\"translate(177.560708 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_28\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 190.434968 160.166838 \nL 190.434968 148.62613 \nL 198.303632 148.62613 \nL 198.303632 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_56\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_57\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_29\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 203.549409 160.166838 \nL 203.549409 148.62613 \nL 211.418073 148.62613 \nL 211.418073 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_58\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 5 -->\n     <g transform=\"translate(203.789589 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_59\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 5 -->\n     <g transform=\"translate(203.789589 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_30\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 216.66385 160.166838 \nL 216.66385 148.62613 \nL 224.532514 148.62613 \nL 224.532514 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_60\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_61\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_31\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 229.77829 160.166838 \nL 229.77829 148.62613 \nL 237.646955 148.62613 \nL 237.646955 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_62\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 7 -->\n     <g transform=\"translate(230.046596 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_63\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 7 -->\n     <g transform=\"translate(230.046596 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_32\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 242.892731 160.166838 \nL 242.892731 148.62613 \nL 250.761396 148.62613 \nL 250.761396 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_64\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_65\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_66\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(131.046292 155.331197)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_67\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(139.189809 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_68\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(260.389509 148.249399)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 37.782876 235.601102 \nL 39.885392 223.480655 \nL 41.987907 212.507212 \nL 44.090423 202.615825 \nL 46.192938 193.743211 \nL 48.295454 185.82775 \nL 50.39797 178.809485 \nL 52.500485 172.630123 \nL 54.603001 167.233033 \nL 56.705516 162.563249 \nL 58.387529 159.315206 \nL 60.069541 156.471969 \nL 61.751554 154.007694 \nL 63.433566 151.897219 \nL 65.115579 150.116063 \nL 66.797591 148.640428 \nL 68.479603 147.447195 \nL 70.161616 146.513928 \nL 71.843628 145.818871 \nL 73.525641 145.340951 \nL 75.207653 145.059774 \nL 77.310169 144.955012 \nL 79.412684 145.089912 \nL 81.5152 145.429137 \nL 84.038219 146.058619 \nL 86.98174 147.030488 \nL 90.766268 148.531495 \nL 103.381362 153.776236 \nL 106.745387 154.844798 \nL 109.688909 155.564209 \nL 112.63243 156.04849 \nL 115.155449 156.256745 \nL 117.678468 156.260735 \nL 120.201486 156.051424 \nL 122.724505 155.623225 \nL 125.247524 154.974001 \nL 127.770543 154.105062 \nL 130.293561 153.021169 \nL 133.237083 151.496096 \nL 136.180605 149.708734 \nL 139.54463 147.377691 \nL 143.329158 144.445913 \nL 147.954692 140.539486 \nL 160.149282 130.018952 \nL 163.513307 127.520423 \nL 166.036326 125.89973 \nL 168.559345 124.559165 \nL 170.66186 123.699577 \nL 172.764376 123.113349 \nL 174.446388 122.867014 \nL 176.128401 122.840739 \nL 177.810413 123.055692 \nL 179.492426 123.533725 \nL 181.174438 124.29737 \nL 182.85645 125.369841 \nL 184.538463 126.775033 \nL 186.220475 128.537522 \nL 187.902488 130.682566 \nL 189.5845 133.236104 \nL 191.266513 136.224757 \nL 192.948525 139.675826 \nL 194.630538 143.617295 \nL 196.31255 148.077828 \nL 197.994563 153.086771 \nL 200.097078 160.16496 \nL 202.199594 168.207152 \nL 204.302109 177.275153 \nL 206.404625 187.432434 \nL 208.50714 198.74413 \nL 210.609656 211.277038 \nL 212.712172 225.09962 \nL 214.814687 240.282 \nL 216.4967 253.455144 \nL 216.4967 253.455144 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"pb6322f2469\">\n   <rect height=\"260.82\" width=\"268.898496\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a curve\" class=\"sr-only\"><ul>\n<li>In quadrant 3:\n<ul>\n<li>The curve rises sharply to touch the x axis at point (negative 5 comma 0).</li>\n<li>The curve falls gradually to a relative minimum at point (negative 2 comma negative 11).</li>\n<li>The curve rises gradually to cross both axes at the origin.</li>\n</ul>\n</li>\n<li>In quadrant 1:\n<ul>\n<li>The curve rises gradually to a relative maximum at point (2.5 comma 21).</li>\n<li>The curve falls sharply to cross the x axis at point (4 comma 0).</li>\n</ul>\n</li>\n<li>In quadrant 4 the curve falls sharply.</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">Which of the following could be the equation of the graph shown in the <em>xy</em>-plane?</p>","answerOptions":[{"id":"56612885-a8a2-4415-a697-cb0912f32303","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 4 right parenthesis left parenthesis x plus 5 right parenthesis\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>5</mn></mrow></mrow></mfenced></math></p>"},{"id":"90bf6fbb-ade4-4747-bd5f-621d7d6f6502","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 4 right parenthesis left parenthesis x plus 5 right parenthesis squared\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>4</mn></mrow></mrow></mfenced><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mn>2</mn></msup></math></p>"},{"id":"b326be18-0286-4dea-a57a-9099caa960e4","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 5 right parenthesis left parenthesis x plus 4 right parenthesis\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced></math></p>"},{"id":"779013b1-ba63-4754-b11f-010bba051780","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 5 right parenthesis squared left parenthesis x plus 4 right parenthesis\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mn>2</mn></msup><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced></math></p>"}],"keys":["90bf6fbb-ade4-4747-bd5f-621d7d6f6502"],"correct_answer":["B"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. Each of the given choices is an equation of the form&nbsp;<math alttext=\"y equals minus one tenth x left parenthesis x minus a right parenthesis Superscript m Baseline left parenthesis x plus b right parenthesis Superscript n\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>a</mi></mrow></mfenced><mi>m</mi></msup><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mi>n</mi></msup></math>, where <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, <math alttext=\"m\"><mi>m</mi>\n</math>, and <math alttext=\"n\"><mi>n</mi>\n</math> are positive constants. In the <em>xy</em>-plane, the graph of an equation of this form has <em>x</em>-intercepts at <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, <math alttext=\"x equals a\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mi>a</mi>\n</mrow>\n</math>, and <math alttext=\"x equals negative b\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mi>b</mi>\n\t</mrow>\n</mrow>\n</math>. The graph shown has <em>x</em>-intercepts at <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, <math alttext=\"x equals 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math>, and <math alttext=\"x equals negative 5\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>5</mn>\n</mrow>\n</math>. Therefore, <math alttext=\"a equals 4\"><mrow>\n\t<mi>a</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math> and <math alttext=\"b equals 5\"><mrow>\n\t<mi>b</mi>\n\t<mo>=</mo>\n\t<mn>5</mn>\n</mrow>\n</math>. Of the given choices, only choices A and B have <math alttext=\"a equals 4\"><mrow>\n\t<mi>a</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math> and <math alttext=\"b equals 5\"><mrow>\n\t<mi>b</mi>\n\t<mo>=</mo>\n\t<mn>5</mn>\n</mrow>\n</math>. For an equation in the form <math alttext=\"y equals minus one tenth x left parenthesis x minus a right parenthesis Superscript m Baseline left parenthesis x plus b right parenthesis Superscript n\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>a</mi></mrow></mfenced><mi>m</mi></msup><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mi>n</mi></msup></math>, if all values of <math alttext=\"x\"><mi>x</mi>\n</math> that are less than <math alttext=\"negative b\"><mrow>\n\t<mo>-</mo>\n\t<mi>b</mi>\n</mrow>\n</math> or greater than <math alttext=\"a\"><mi>a</mi>\n</math> correspond to negative <em>y</em>-values, then the sum of all the exponents of the factors on the right-hand side of the equation is even. In the graph shown, all values of <math alttext=\"x\"><mi>x</mi>\n</math> less than <math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math> or greater than <math alttext=\"4\"><mn>4</mn>\n</math> correspond to negative <em>y</em>-values. Therefore, the sum of all the exponents of the factors on the right-hand side of the equation&nbsp;<math alttext=\"y equals minus one tenth x left parenthesis x minus 4 right parenthesis Superscript m Baseline left parenthesis x plus 5 right parenthesis Superscript n\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>4</mn></mrow></mfenced><mi>m</mi></msup><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mn>5</mn></mrow></mfenced><mi>n</mi></msup></math> must be even. For choice A, the sum of these exponents is <math alttext=\"1 plus 1 plus 1\"><mn>1</mn><mo>+</mo><mn>1</mn><mo>+</mo><mn>1</mn></math>, or <math alttext=\"3\"><mn>3</mn>\n</math>, which is odd. For choice B, the sum of these exponents is&nbsp;<math alttext=\"1 plus 1 plus 2\"><mn>1</mn><mo>+</mo><mn>1</mn><mo>+</mo><mn>2</mn></math>, or <math alttext=\"4\"><mn>4</mn>\n</math>, which is even. Therefore,&nbsp;<math alttext=\"y equals minus one tenth x left parenthesis x minus 4 right parenthesis left parenthesis x plus 5 right parenthesis squared\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>4</mn></mrow></mfenced><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mn>5</mn></mrow></mfenced><mn>2</mn></msup></math> could be the equation of the graph shown.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. For the graph of this equation, all values of <math alttext=\"x\"><mi>x</mi>\n</math> less than <math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math> correspond to positive, not negative, <em>y</em>-values.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. The graph of this equation has <em>x</em>-intercepts at <math alttext=\"x equals negative 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>4</mn>\n</mrow>\n</math>, <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, and <math alttext=\"x equals 5\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>5</mn>\n</mrow>\n</math>, rather than <em>x</em>-intercepts at <math alttext=\"x equals negative 5\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>5</mn>\n</mrow>\n</math>, <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, and <math alttext=\"x equals 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. The graph of this equation has <em>x</em>-intercepts at <math alttext=\"x equals negative 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>4</mn>\n</mrow>\n</math>, <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, and <math alttext=\"x equals 5\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>5</mn>\n</mrow>\n</math>, rather than <em>x</em>-intercepts at <math alttext=\"x equals negative 5\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>5</mn>\n</mrow>\n</math>, <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, and <math alttext=\"x equals 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959827,"pPcc":"SAT#P","questionId":"252a3b3a","skill_cd":"P.C.","score_band_range_cd":5,"skill_desc":"Nonlinear functions","createDate":1691007959827,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"30c5bb08-3642-4126-a066-371cb194f2d1","primary_class_cd":"P","uId":"2b76569b-ce88-4efe-97ac-8140d8ed9884","difficulty":"M"},"raw_detail":{"keys":["90bf6fbb-ade4-4747-bd5f-621d7d6f6502"],"rationale":"<p style=\"text-align: left;\">Choice B is correct. Each of the given choices is an equation of the form&nbsp;<math alttext=\"y equals minus one tenth x left parenthesis x minus a right parenthesis Superscript m Baseline left parenthesis x plus b right parenthesis Superscript n\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>a</mi></mrow></mfenced><mi>m</mi></msup><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mi>n</mi></msup></math>, where <math alttext=\"a\"><mi>a</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math>, <math alttext=\"m\"><mi>m</mi>\n</math>, and <math alttext=\"n\"><mi>n</mi>\n</math> are positive constants. In the <em>xy</em>-plane, the graph of an equation of this form has <em>x</em>-intercepts at <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, <math alttext=\"x equals a\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mi>a</mi>\n</mrow>\n</math>, and <math alttext=\"x equals negative b\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mi>b</mi>\n\t</mrow>\n</mrow>\n</math>. The graph shown has <em>x</em>-intercepts at <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, <math alttext=\"x equals 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math>, and <math alttext=\"x equals negative 5\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>5</mn>\n</mrow>\n</math>. Therefore, <math alttext=\"a equals 4\"><mrow>\n\t<mi>a</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math> and <math alttext=\"b equals 5\"><mrow>\n\t<mi>b</mi>\n\t<mo>=</mo>\n\t<mn>5</mn>\n</mrow>\n</math>. Of the given choices, only choices A and B have <math alttext=\"a equals 4\"><mrow>\n\t<mi>a</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math> and <math alttext=\"b equals 5\"><mrow>\n\t<mi>b</mi>\n\t<mo>=</mo>\n\t<mn>5</mn>\n</mrow>\n</math>. For an equation in the form <math alttext=\"y equals minus one tenth x left parenthesis x minus a right parenthesis Superscript m Baseline left parenthesis x plus b right parenthesis Superscript n\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mi>a</mi></mrow></mfenced><mi>m</mi></msup><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mi>b</mi></mrow></mfenced><mi>n</mi></msup></math>, if all values of <math alttext=\"x\"><mi>x</mi>\n</math> that are less than <math alttext=\"negative b\"><mrow>\n\t<mo>-</mo>\n\t<mi>b</mi>\n</mrow>\n</math> or greater than <math alttext=\"a\"><mi>a</mi>\n</math> correspond to negative <em>y</em>-values, then the sum of all the exponents of the factors on the right-hand side of the equation is even. In the graph shown, all values of <math alttext=\"x\"><mi>x</mi>\n</math> less than <math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math> or greater than <math alttext=\"4\"><mn>4</mn>\n</math> correspond to negative <em>y</em>-values. Therefore, the sum of all the exponents of the factors on the right-hand side of the equation&nbsp;<math alttext=\"y equals minus one tenth x left parenthesis x minus 4 right parenthesis Superscript m Baseline left parenthesis x plus 5 right parenthesis Superscript n\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mn>4</mn></mrow></mfenced><mi>m</mi></msup><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mn>5</mn></mrow></mfenced><mi>n</mi></msup></math> must be even. For choice A, the sum of these exponents is <math alttext=\"1 plus 1 plus 1\"><mn>1</mn><mo>+</mo><mn>1</mn><mo>+</mo><mn>1</mn></math>, or <math alttext=\"3\"><mn>3</mn>\n</math>, which is odd. For choice B, the sum of these exponents is&nbsp;<math alttext=\"1 plus 1 plus 2\"><mn>1</mn><mo>+</mo><mn>1</mn><mo>+</mo><mn>2</mn></math>, or <math alttext=\"4\"><mn>4</mn>\n</math>, which is even. Therefore,&nbsp;<math alttext=\"y equals minus one tenth x left parenthesis x minus 4 right parenthesis left parenthesis x plus 5 right parenthesis squared\"><mi>y</mi><mo>=</mo><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mn>4</mn></mrow></mfenced><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mn>5</mn></mrow></mfenced><mn>2</mn></msup></math> could be the equation of the graph shown.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. For the graph of this equation, all values of <math alttext=\"x\"><mi>x</mi>\n</math> less than <math alttext=\"negative 5\"><mo>-</mo><mn>5</mn>\n</math> correspond to positive, not negative, <em>y</em>-values.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. The graph of this equation has <em>x</em>-intercepts at <math alttext=\"x equals negative 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>4</mn>\n</mrow>\n</math>, <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, and <math alttext=\"x equals 5\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>5</mn>\n</mrow>\n</math>, rather than <em>x</em>-intercepts at <math alttext=\"x equals negative 5\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>5</mn>\n</mrow>\n</math>, <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, and <math alttext=\"x equals 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. The graph of this equation has <em>x</em>-intercepts at <math alttext=\"x equals negative 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>4</mn>\n</mrow>\n</math>, <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, and <math alttext=\"x equals 5\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>5</mn>\n</mrow>\n</math>, rather than <em>x</em>-intercepts at <math alttext=\"x equals negative 5\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>5</mn>\n</mrow>\n</math>, <math alttext=\"x equals 0\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>, and <math alttext=\"x equals 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>4</mn>\n</mrow>\n</math>.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 287.764248 275.22\" width=\"287.764248pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a curve in the x y plane with the origin labeled O. The x axis ranges from negative 8 to 8 in increments of 1. The y axis ranges from negative 100 to 100 in increments of 20. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M -0 275.22 \nL 287.764248 275.22 \nL 287.764248 0 \nL -0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 8.404248 260.46 \nL 280.564248 260.46 \nL 280.564248 10.98 \nL 8.404248 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 276.098496 268.02 \nL 276.098496 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n    <g id=\"ytick_9\"></g>\n    <g id=\"ytick_10\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 37.782876 255.11539 \nL 37.782876 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 50.897317 255.11539 \nL 50.897317 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 64.011758 255.11539 \nL 64.011758 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 77.126199 255.11539 \nL 77.126199 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 90.24064 255.11539 \nL 90.24064 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 103.35508 255.11539 \nL 103.35508 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 116.469521 255.11539 \nL 116.469521 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 129.583962 255.11539 \nL 129.583962 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 155.812844 255.11539 \nL 155.812844 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 168.927285 255.11539 \nL 168.927285 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 182.041726 255.11539 \nL 182.041726 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 195.156167 255.11539 \nL 195.156167 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 208.270607 255.11539 \nL 208.270607 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 221.385048 255.11539 \nL 221.385048 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 234.499489 255.11539 \nL 234.499489 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 247.61393 255.11539 \nL 247.61393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 249.869614 \nL 252.859706 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 228.886508 \nL 252.859706 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 207.903403 \nL 252.859706 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 186.920298 \nL 252.859706 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 165.937192 \nL 252.859706 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 123.970981 \nL 252.859706 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 102.987876 \nL 252.859706 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 82.004771 \nL 252.859706 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 61.021665 \nL 252.859706 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 40.03856 \nL 252.859706 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 32.5371 144.954087 \nL 258.105483 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 255.26462 -129.281463 \nL 258.105483 -130.265913 \nL 255.26462 -131.250364 \nL 255.26462 -129.281463 \nL 258.105483 -130.265913 \n\" id=\"m3f1d07b608\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pb6322f2469)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m3f1d07b608\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 142.698403 255.11539 \nL 142.698403 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 143.704311 -242.098754 \nL 142.698403 -245.672993 \nL 141.692495 -242.098754 \nL 143.704311 -242.098754 \nL 142.698403 -245.672993 \n\" id=\"m53fd734fbb\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pb6322f2469)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m53fd734fbb\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 37.782876 148.819396 \nL 37.782876 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 50.897317 148.819396 \nL 50.897317 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 64.011758 148.819396 \nL 64.011758 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 77.126199 148.819396 \nL 77.126199 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 90.24064 148.819396 \nL 90.24064 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 103.35508 148.819396 \nL 103.35508 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 116.469521 148.819396 \nL 116.469521 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 129.583962 148.819396 \nL 129.583962 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 155.812844 148.819396 \nL 155.812844 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 168.927285 148.819396 \nL 168.927285 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 182.041726 148.819396 \nL 182.041726 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 195.156167 148.819396 \nL 195.156167 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 208.270607 148.819396 \nL 208.270607 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 221.385048 148.819396 \nL 221.385048 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 234.499489 148.819396 \nL 234.499489 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 247.61393 148.819396 \nL 247.61393 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 249.869614 \nL 146.563712 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 228.886508 \nL 146.563712 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 207.903403 \nL 146.563712 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 186.920298 \nL 146.563712 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 165.937192 \nL 146.563712 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 123.970981 \nL 146.563712 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 102.987876 \nL 146.563712 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 82.004771 \nL 146.563712 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 61.021665 \nL 146.563712 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 138.833094 40.03856 \nL 146.563712 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 113.584344 256.164545 \nL 113.584344 244.623837 \nL 135.616605 244.623837 \nL 135.616605 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 104.928813 249.082747 \nL 104.928813 253.541657 \nL 115.420366 253.541657 \nL 115.420366 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(106.011899 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 100 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(114.084785 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 100 -->\n     <g transform=\"translate(114.084785 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 235.18144 \nL 121.19072 223.640732 \nL 135.878894 223.640732 \nL 135.878894 235.18144 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 112.2729 228.099642 \nL 112.2729 232.558552 \nL 122.764453 232.558552 \nL 122.764453 228.099642 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(113.880564 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 80 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(121.174629 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 80 -->\n     <g transform=\"translate(121.174629 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 214.198335 \nL 121.19072 202.657627 \nL 135.878894 202.657627 \nL 135.878894 214.198335 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 112.2729 207.116537 \nL 112.2729 211.575447 \nL 122.764453 211.575447 \nL 122.764453 207.116537 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(113.880564 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 60 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(121.174629 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 60 -->\n     <g transform=\"translate(121.174629 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 193.215229 \nL 121.19072 181.674521 \nL 135.878894 181.674521 \nL 135.878894 193.215229 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 112.2729 186.133431 \nL 112.2729 190.592341 \nL 122.764453 190.592341 \nL 122.764453 186.133431 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(113.880564 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 40 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(121.202754 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 40 -->\n     <g transform=\"translate(121.202754 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 172.232124 \nL 121.19072 160.691416 \nL 135.878894 160.691416 \nL 135.878894 172.232124 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 112.2729 165.150326 \nL 112.2729 169.609236 \nL 122.764453 169.609236 \nL 122.764453 165.150326 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(113.880564 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 20 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(121.174629 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 20 -->\n     <g transform=\"translate(121.174629 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 130.265913 \nL 121.19072 118.725205 \nL 135.878894 118.725205 \nL 135.878894 130.265913 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 20 -->\n     <g transform=\"translate(121.174629 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 20 -->\n     <g transform=\"translate(121.174629 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 109.282808 \nL 121.19072 97.7421 \nL 135.878894 97.7421 \nL 135.878894 109.282808 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 40 -->\n     <g transform=\"translate(121.202754 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 40 -->\n     <g transform=\"translate(121.202754 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 88.299702 \nL 121.19072 76.758994 \nL 135.878894 76.758994 \nL 135.878894 88.299702 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 60 -->\n     <g transform=\"translate(121.174629 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 60 -->\n     <g transform=\"translate(121.174629 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 121.19072 67.316597 \nL 121.19072 55.775889 \nL 135.878894 55.775889 \nL 135.878894 67.316597 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 80 -->\n     <g transform=\"translate(121.174629 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 80 -->\n     <g transform=\"translate(121.174629 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 113.584344 46.333492 \nL 113.584344 34.792784 \nL 135.616605 34.792784 \nL 135.616605 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 100 -->\n     <g transform=\"translate(114.084785 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 100 -->\n     <g transform=\"translate(114.084785 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n      <use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 19.422659 153.347329 \nL 19.422659 157.54395 \nL 124.862763 157.54395 \nL 124.862763 153.347329 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 33.061677 160.166838 \nL 33.061677 148.62613 \nL 40.930342 148.62613 \nL 40.930342 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(26.01381 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 8 -->\n     <g transform=\"translate(33.315921 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 46.176118 160.166838 \nL 46.176118 148.62613 \nL 54.044783 148.62613 \nL 54.044783 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(39.128251 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 7 -->\n     <defs>\n      <path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n     </defs>\n     <g transform=\"translate(46.444424 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 7 -->\n     <g transform=\"translate(46.444424 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 59.290559 160.166838 \nL 59.290559 148.62613 \nL 67.159224 148.62613 \nL 67.159224 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(52.242692 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 6 -->\n     <g transform=\"translate(59.544802 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 72.405 160.166838 \nL 72.405 148.62613 \nL 80.273665 148.62613 \nL 80.273665 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(65.357133 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 5 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n     </defs>\n     <g transform=\"translate(72.645181 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 5 -->\n     <g transform=\"translate(72.645181 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 85.519441 160.166838 \nL 85.519441 148.62613 \nL 93.388105 148.62613 \nL 93.388105 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(78.471573 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 4 -->\n     <g transform=\"translate(85.801809 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_22\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 98.633882 160.166838 \nL 98.633882 148.62613 \nL 106.502546 148.62613 \nL 106.502546 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(91.586014 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 3 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(98.874062 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 3 -->\n     <g transform=\"translate(98.874062 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_23\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 111.748323 160.166838 \nL 111.748323 148.62613 \nL 119.616987 148.62613 \nL 119.616987 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_44\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(104.700455 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_45\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_46\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 2 -->\n     <g transform=\"translate(112.002566 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_24\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 124.862763 160.166838 \nL 124.862763 148.62613 \nL 132.731428 148.62613 \nL 132.731428 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_47\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- – -->\n     <g transform=\"translate(117.814896 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_48\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 1 -->\n     <g transform=\"translate(125.117007 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_49\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 1 -->\n     <g transform=\"translate(125.117007 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_25\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 151.091645 160.166838 \nL 151.091645 148.62613 \nL 158.96031 148.62613 \nL 158.96031 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_50\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 1 -->\n     <g transform=\"translate(151.345888 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_51\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 1 -->\n     <g transform=\"translate(151.345888 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_26\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 164.206086 160.166838 \nL 164.206086 148.62613 \nL 172.074751 148.62613 \nL 172.074751 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_52\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_53\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 2 -->\n     <g transform=\"translate(164.460329 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_27\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 177.320527 160.166838 \nL 177.320527 148.62613 \nL 185.189191 148.62613 \nL 185.189191 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_54\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 3 -->\n     <g transform=\"translate(177.560708 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_55\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 3 -->\n     <g transform=\"translate(177.560708 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_28\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 190.434968 160.166838 \nL 190.434968 148.62613 \nL 198.303632 148.62613 \nL 198.303632 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_56\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_57\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 4 -->\n     <g transform=\"translate(190.717336 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_29\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 203.549409 160.166838 \nL 203.549409 148.62613 \nL 211.418073 148.62613 \nL 211.418073 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_58\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 5 -->\n     <g transform=\"translate(203.789589 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_59\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 5 -->\n     <g transform=\"translate(203.789589 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_30\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 216.66385 160.166838 \nL 216.66385 148.62613 \nL 224.532514 148.62613 \nL 224.532514 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_60\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_61\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 6 -->\n     <g transform=\"translate(216.918093 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_31\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 229.77829 160.166838 \nL 229.77829 148.62613 \nL 237.646955 148.62613 \nL 237.646955 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_62\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 7 -->\n     <g transform=\"translate(230.046596 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_63\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 7 -->\n     <g transform=\"translate(230.046596 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_32\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 242.892731 160.166838 \nL 242.892731 148.62613 \nL 250.761396 148.62613 \nL 250.761396 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_64\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_65\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- 8 -->\n     <g transform=\"translate(243.146974 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_66\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(131.046292 155.331197)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_67\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(139.189809 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_68\">\n    <g clip-path=\"url(#pb6322f2469)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(260.389509 148.249399)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#pb6322f2469)\" d=\"M 37.782876 235.601102 \nL 39.885392 223.480655 \nL 41.987907 212.507212 \nL 44.090423 202.615825 \nL 46.192938 193.743211 \nL 48.295454 185.82775 \nL 50.39797 178.809485 \nL 52.500485 172.630123 \nL 54.603001 167.233033 \nL 56.705516 162.563249 \nL 58.387529 159.315206 \nL 60.069541 156.471969 \nL 61.751554 154.007694 \nL 63.433566 151.897219 \nL 65.115579 150.116063 \nL 66.797591 148.640428 \nL 68.479603 147.447195 \nL 70.161616 146.513928 \nL 71.843628 145.818871 \nL 73.525641 145.340951 \nL 75.207653 145.059774 \nL 77.310169 144.955012 \nL 79.412684 145.089912 \nL 81.5152 145.429137 \nL 84.038219 146.058619 \nL 86.98174 147.030488 \nL 90.766268 148.531495 \nL 103.381362 153.776236 \nL 106.745387 154.844798 \nL 109.688909 155.564209 \nL 112.63243 156.04849 \nL 115.155449 156.256745 \nL 117.678468 156.260735 \nL 120.201486 156.051424 \nL 122.724505 155.623225 \nL 125.247524 154.974001 \nL 127.770543 154.105062 \nL 130.293561 153.021169 \nL 133.237083 151.496096 \nL 136.180605 149.708734 \nL 139.54463 147.377691 \nL 143.329158 144.445913 \nL 147.954692 140.539486 \nL 160.149282 130.018952 \nL 163.513307 127.520423 \nL 166.036326 125.89973 \nL 168.559345 124.559165 \nL 170.66186 123.699577 \nL 172.764376 123.113349 \nL 174.446388 122.867014 \nL 176.128401 122.840739 \nL 177.810413 123.055692 \nL 179.492426 123.533725 \nL 181.174438 124.29737 \nL 182.85645 125.369841 \nL 184.538463 126.775033 \nL 186.220475 128.537522 \nL 187.902488 130.682566 \nL 189.5845 133.236104 \nL 191.266513 136.224757 \nL 192.948525 139.675826 \nL 194.630538 143.617295 \nL 196.31255 148.077828 \nL 197.994563 153.086771 \nL 200.097078 160.16496 \nL 202.199594 168.207152 \nL 204.302109 177.275153 \nL 206.404625 187.432434 \nL 208.50714 198.74413 \nL 210.609656 211.277038 \nL 212.712172 225.09962 \nL 214.814687 240.282 \nL 216.4967 253.455144 \nL 216.4967 253.455144 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"pb6322f2469\">\n   <rect height=\"260.82\" width=\"268.898496\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a curve\" class=\"sr-only\"><ul>\n<li>In quadrant 3:\n<ul>\n<li>The curve rises sharply to touch the x axis at point (negative 5 comma 0).</li>\n<li>The curve falls gradually to a relative minimum at point (negative 2 comma negative 11).</li>\n<li>The curve rises gradually to cross both axes at the origin.</li>\n</ul>\n</li>\n<li>In quadrant 1:\n<ul>\n<li>The curve rises gradually to a relative maximum at point (2.5 comma 21).</li>\n<li>The curve falls sharply to cross the x axis at point (4 comma 0).</li>\n</ul>\n</li>\n<li>In quadrant 4 the curve falls sharply.</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">Which of the following could be the equation of the graph shown in the <em>xy</em>-plane?</p>","externalid":"30c5bb08-3642-4126-a066-371cb194f2d1","templateid":"0abfcd03-a10c-470f-893d-0f8edd39bfa8","vaultid":"d89fe7c8-0a4e-4d66-b108-3ec2d7242330","type":"mcq","answerOptions":[{"id":"56612885-a8a2-4415-a697-cb0912f32303","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 4 right parenthesis left parenthesis x plus 5 right parenthesis\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>5</mn></mrow></mrow></mfenced></math></p>"},{"id":"90bf6fbb-ade4-4747-bd5f-621d7d6f6502","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 4 right parenthesis left parenthesis x plus 5 right parenthesis squared\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>4</mn></mrow></mrow></mfenced><msup><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mn>2</mn></msup></math></p>"},{"id":"b326be18-0286-4dea-a57a-9099caa960e4","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 5 right parenthesis left parenthesis x plus 4 right parenthesis\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced></math></p>"},{"id":"779013b1-ba63-4754-b11f-010bba051780","content":"<p><math alttext=\"y equals negative one tenth x left parenthesis x minus 5 right parenthesis squared left parenthesis x plus 4 right parenthesis\"><mi>y</mi><mo>=</mo><mrow><mrow><mo>-</mo><mfrac><mn>1</mn><mn>10</mn></mfrac></mrow></mrow><mi>x</mi><msup><mfenced><mrow><mi>x</mi><mo>-</mo><mrow><mn>5</mn></mrow></mrow></mfenced><mn>2</mn></msup><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced></math></p>"}],"correct_answer":["B"]},"createDate":1691007959827,"updateDate":1691007959827}$SATQ$::jsonb, 1691007959827, 1691007959827),
    ($SATQ$253985c2$SATQ$, $SATQ$238bf570-e789-4f6b-9588-2ff4572b2368$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">Which expression is equivalent to&nbsp;<math alttext="6 x plus 5 x plus 4 y"><mrow><mn>6</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>5</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow><mi>y</mi></math>?</p>$SATQ$, $SATQ$[{"id":"06d45870-9642-476f-aa0c-b1a4264d739f","content":"<p><math alttext=\"15 x\"><mrow>\n\t<mn>15</mn>\n\t<mi>x</mi>\n</mrow>\n</math></p>"},{"id":"9c245d43-7979-4fda-8433-48e736f8f761","content":"<p><math alttext=\"15 y\"><mrow>\n\t<mn>15</mn>\n\t<mi>y</mi>\n</mrow>\n</math></p>"},{"id":"abc435f9-7a98-4ef5-b0ec-f01412489e17","content":"<p><math alttext=\"11 x plus 4 y\"><mrow>\n\t<mrow>\n\t\t<mn>11</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"ef48c285-4068-4f70-bdac-9a2acbdd0868","content":"<p><math alttext=\"30 x plus 4 y\"><mrow>\n\t<mrow>\n\t\t<mn>30</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["abc435f9-7a98-4ef5-b0ec-f01412489e17"]$SATQ$::jsonb, $SATQ$<p>Choice C is correct. In the given expression, <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="6 x"><mn>6</mn><mi>x</mi></math> and <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="5 x"><mn>5</mn><mi>x</mi></math> are like terms. Combining these like terms yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="11 x"><mn>11</mn><mi>x</mi></math>. It follows that the expression <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="6 x plus 5 x plus 4 y"><mn>6</mn><mi>x</mi><mo>+</mo><mn>5</mn><mi>x</mi><mo>+</mo><mn>4</mn><mi>y</mi></math> is equivalent to <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="11 x plus 4 y"><mn>11</mn><mi>x</mi><mo>+</mo><mn>4</mn><mi>y</mi></math>.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"253985c2","external_id":"238bf570-e789-4f6b-9588-2ff4572b2368","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"24e8d21d-1648-4b71-abaa-5ed46900362d","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">Which expression is equivalent to&nbsp;<math alttext=\"6 x plus 5 x plus 4 y\"><mrow><mn>6</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>5</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow><mi>y</mi></math>?</p>","answerOptions":[{"id":"06d45870-9642-476f-aa0c-b1a4264d739f","content":"<p><math alttext=\"15 x\"><mrow>\n\t<mn>15</mn>\n\t<mi>x</mi>\n</mrow>\n</math></p>"},{"id":"9c245d43-7979-4fda-8433-48e736f8f761","content":"<p><math alttext=\"15 y\"><mrow>\n\t<mn>15</mn>\n\t<mi>y</mi>\n</mrow>\n</math></p>"},{"id":"abc435f9-7a98-4ef5-b0ec-f01412489e17","content":"<p><math alttext=\"11 x plus 4 y\"><mrow>\n\t<mrow>\n\t\t<mn>11</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"ef48c285-4068-4f70-bdac-9a2acbdd0868","content":"<p><math alttext=\"30 x plus 4 y\"><mrow>\n\t<mrow>\n\t\t<mn>30</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"}],"keys":["abc435f9-7a98-4ef5-b0ec-f01412489e17"],"correct_answer":["C"],"rationale":"<p>Choice C is correct. In the given expression, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6 x\"><mn>6</mn><mi>x</mi></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"5 x\"><mn>5</mn><mi>x</mi></math> are like terms. Combining these like terms yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"11 x\"><mn>11</mn><mi>x</mi></math>. It follows that the expression <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6 x plus 5 x plus 4 y\"><mn>6</mn><mi>x</mi><mo>+</mo><mn>5</mn><mi>x</mi><mo>+</mo><mn>4</mn><mi>y</mi></math> is equivalent to <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"11 x plus 4 y\"><mn>11</mn><mi>x</mi><mo>+</mo><mn>4</mn><mi>y</mi></math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1776362727992,"pPcc":"SAT#P","questionId":"253985c2","skill_cd":"P.A.","score_band_range_cd":1,"skill_desc":"Equivalent expressions","createDate":1776362727992,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"238bf570-e789-4f6b-9588-2ff4572b2368","primary_class_cd":"P","uId":"24e8d21d-1648-4b71-abaa-5ed46900362d","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">Which expression is equivalent to&nbsp;<math alttext=\"6 x plus 5 x plus 4 y\"><mrow><mn>6</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>5</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow><mi>y</mi></math>?</p>","keys":["abc435f9-7a98-4ef5-b0ec-f01412489e17"],"answerOptions":[{"id":"06d45870-9642-476f-aa0c-b1a4264d739f","content":"<p><math alttext=\"15 x\"><mrow>\n\t<mn>15</mn>\n\t<mi>x</mi>\n</mrow>\n</math></p>"},{"id":"9c245d43-7979-4fda-8433-48e736f8f761","content":"<p><math alttext=\"15 y\"><mrow>\n\t<mn>15</mn>\n\t<mi>y</mi>\n</mrow>\n</math></p>"},{"id":"abc435f9-7a98-4ef5-b0ec-f01412489e17","content":"<p><math alttext=\"11 x plus 4 y\"><mrow>\n\t<mrow>\n\t\t<mn>11</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"},{"id":"ef48c285-4068-4f70-bdac-9a2acbdd0868","content":"<p><math alttext=\"30 x plus 4 y\"><mrow>\n\t<mrow>\n\t\t<mn>30</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mrow>\n\t\t<mn>4</mn>\n\t\t<mi>y</mi>\n\t</mrow>\n</mrow>\n</math></p>"}],"rationale":"<p>Choice C is correct. In the given expression, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6 x\"><mn>6</mn><mi>x</mi></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"5 x\"><mn>5</mn><mi>x</mi></math> are like terms. Combining these like terms yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"11 x\"><mn>11</mn><mi>x</mi></math>. It follows that the expression <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6 x plus 5 x plus 4 y\"><mn>6</mn><mi>x</mi><mo>+</mo><mn>5</mn><mi>x</mi><mo>+</mo><mn>4</mn><mi>y</mi></math> is equivalent to <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"11 x plus 4 y\"><mn>11</mn><mi>x</mi><mo>+</mo><mn>4</mn><mi>y</mi></math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"238bf570-e789-4f6b-9588-2ff4572b2368","correct_answer":["C"]},"createDate":1776362727992,"updateDate":1776362727992}$SATQ$::jsonb, 1776362727992, 1776362727992),
    ($SATQ$263f9937$SATQ$, NULL, NULL, $SATQ$08160-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, $SATQ$<div xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1" class="stimulus_reference ">
        <div class="passage ">
          <div class="prose style:1 ">
            <div class="tcp-ed59dd2a-561f-433e-8d73-1fb5a7f8d1fa">
              <table class="table_WithBorder tcp-a8523ebf-f180-40d1-88a3-dcabc5a77c14"><caption>Growth of a Culture of Bacteria</caption>
                <tbody><tr><td class="tcp-e86d5073-7d32-4453-804a-3e1ec995e124">Day</td>
                    <td class="tcp-525f9596-272e-44a5-aba5-3ed2484be473">Number of bacteria per<br>
	milliliter at end of day</td>
                  </tr><tr><td class="para_center">1</td>
                    <td class="para_center">
                      <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_000_4635e0b1.png" alt="2 point 5 times 10 to the power 5"></span></td>
                  </tr><tr><td class="para_center">2</td>
                    <td class="para_center">
                      <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_001_c2baeab2.png" alt="5 point 0 times 10 to the power 5"></span></td>
                  </tr><tr><td class="para_center">3</td>
                    <td class="para_center">
                      <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_002_0000f2c9.png" alt="1 point 0 times 10 to the power 6"></span></td>
                  </tr></tbody></table></div>
          </div>
        </div>
      </div>
$SATQ$, $SATQ$<p class="stem_paragraph ">A culture of bacteria is growing at an exponential rate, as shown in the table above. At this rate, on which day would the number of bacteria per milliliter reach <span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_003_f57ce665.png" alt="5 point 1 2, times 10, to the power 8"></span></span>?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p>Day 5</p>\n"},{"id":"b","content":"<p>Day 9</p>\n"},{"id":"c","content":"<p>Day 11</p>\n"},{"id":"d","content":"<p>Day 12</p>\n"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice D is correct. The number of bacteria per milliliter is doubling each day. For example, from day 1 to day 2, the number of bacteria increased from 2.5 &times; 10<sup>5</sup> to 5.0<!--StartFragment--> &times; 10<sup>5</sup>. At the end of day 3 there are 10<sup>6</sup> bacteria per milliliter. At the end of day 4, there will be&nbsp;<!--StartFragment-->10<sup>6</sup> &times; 2 bacteria per milliliter. At the end of day 5, there will be <!--StartFragment-->(10<sup>6 </sup>&times; 2) &times; 2, or <!--EndFragment--><!--StartFragment-->10<sup>6</sup> &times; (2<sup>2</sup>) bacteria per milliliter, and so on. At the end of day <span class="italic">d</span>, the number of bacteria will be 10<sup>6 </sup>&times; (2<sup><span class="italic">d</span> &ndash; 3</sup>). If the number of bacteria per milliliter will reach 5.12 &times; 10<sup>8</sup> at the end of day <span class="italic">d</span>, then the equation <!--StartFragment--><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_004_75324b04.png" alt="10 to the power 6, end power, times 2 to the power d minus 3, end power, equals 5 point 1 2, times 10 to the power 8"></span><!--EndFragment--> must hold. Since <!--StartFragment-->5.12 &times; 10<sup>8</sup><!--EndFragment--> can be rewritten as 512 &times; 10<sup>6</sup>,&nbsp; the equation is equivalent to <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_005_95f7403b.png" alt="2 to the power d minus 3, end power, equals 512"></span>. Rewriting 512 as 2<sup>9</sup> gives <span class="italic">d</span> &ndash; 3 = 9, so <span class="italic">d</span> = 12. The number of bacteria per milliliter would reach <!--StartFragment-->5.12 &times; 10<sup>8</sup>&nbsp;<!--StartFragment-->at the end of day 12. <!--EndFragment--><p>Choices A, B, and C are incorrect. Given the growth rate of the bacteria, <!--StartFragment-->the number of bacteria will not reach 5.12&nbsp;&times; 10<sup>8</sup> per milliliter by the end of any of these days.<!--EndFragment--></p></p>
$SATQ$, false, 6, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"263f9937","external_id":null,"disclosed_item_id":"08160-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":"<div xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\" class=\"stimulus_reference \">\n        <div class=\"passage \">\n          <div class=\"prose style:1 \">\n            <div class=\"tcp-ed59dd2a-561f-433e-8d73-1fb5a7f8d1fa\">\n              <table class=\"table_WithBorder tcp-a8523ebf-f180-40d1-88a3-dcabc5a77c14\"><caption>Growth of a Culture of Bacteria</caption>\n                <tbody><tr><td class=\"tcp-e86d5073-7d32-4453-804a-3e1ec995e124\">Day</td>\n                    <td class=\"tcp-525f9596-272e-44a5-aba5-3ed2484be473\">Number of bacteria per<br>\n\tmilliliter at end of day</td>\n                  </tr><tr><td class=\"para_center\">1</td>\n                    <td class=\"para_center\">\n                      <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_000_4635e0b1.png\" alt=\"2 point 5 times 10 to the power 5\"></span></td>\n                  </tr><tr><td class=\"para_center\">2</td>\n                    <td class=\"para_center\">\n                      <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_001_c2baeab2.png\" alt=\"5 point 0 times 10 to the power 5\"></span></td>\n                  </tr><tr><td class=\"para_center\">3</td>\n                    <td class=\"para_center\">\n                      <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_002_0000f2c9.png\" alt=\"1 point 0 times 10 to the power 6\"></span></td>\n                  </tr></tbody></table></div>\n          </div>\n        </div>\n      </div>\n","stem":"<p class=\"stem_paragraph \">A culture of bacteria is growing at an exponential rate, as shown in the table above. At this rate, on which day would the number of bacteria per milliliter reach <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_003_f57ce665.png\" alt=\"5 point 1 2, times 10, to the power 8\"></span></span>?</p>\n","answerOptions":[{"id":"a","content":"<p>Day 5</p>\n"},{"id":"b","content":"<p>Day 9</p>\n"},{"id":"c","content":"<p>Day 11</p>\n"},{"id":"d","content":"<p>Day 12</p>\n"}],"keys":null,"correct_answer":["D"],"rationale":"<p>Choice D is correct. The number of bacteria per milliliter is doubling each day. For example, from day 1 to day 2, the number of bacteria increased from 2.5 &times; 10<sup>5</sup> to 5.0<!--StartFragment--> &times; 10<sup>5</sup>. At the end of day 3 there are 10<sup>6</sup> bacteria per milliliter. At the end of day 4, there will be&nbsp;<!--StartFragment-->10<sup>6</sup> &times; 2 bacteria per milliliter. At the end of day 5, there will be <!--StartFragment-->(10<sup>6 </sup>&times; 2) &times; 2, or <!--EndFragment--><!--StartFragment-->10<sup>6</sup> &times; (2<sup>2</sup>) bacteria per milliliter, and so on. At the end of day <span class=\"italic\">d</span>, the number of bacteria will be 10<sup>6 </sup>&times; (2<sup><span class=\"italic\">d</span> &ndash; 3</sup>). If the number of bacteria per milliliter will reach 5.12 &times; 10<sup>8</sup> at the end of day <span class=\"italic\">d</span>, then the equation <!--StartFragment--><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_004_75324b04.png\" alt=\"10 to the power 6, end power, times 2 to the power d minus 3, end power, equals 5 point 1 2, times 10 to the power 8\"></span><!--EndFragment--> must hold. Since <!--StartFragment-->5.12 &times; 10<sup>8</sup><!--EndFragment--> can be rewritten as 512 &times; 10<sup>6</sup>,&nbsp; the equation is equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/263f9937/img_005_95f7403b.png\" alt=\"2 to the power d minus 3, end power, equals 512\"></span>. Rewriting 512 as 2<sup>9</sup> gives <span class=\"italic\">d</span> &ndash; 3 = 9, so <span class=\"italic\">d</span> = 12. The number of bacteria per milliliter would reach <!--StartFragment-->5.12 &times; 10<sup>8</sup>&nbsp;<!--StartFragment-->at the end of day 12. <!--EndFragment--><p>Choices A, B, and C are incorrect. Given the growth rate of the bacteria, <!--StartFragment-->the number of bacteria will not reach 5.12&nbsp;&times; 10<sup>8</sup> per milliliter by the end of any of these days.<!--EndFragment--></p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":6,"raw_list":{"updateDate":1691007959635,"pPcc":"SAT#P","questionId":"263f9937","skill_cd":"P.C.","score_band_range_cd":7,"skill_desc":"Nonlinear functions","createDate":1691007959635,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"08160-DC","external_id":null,"primary_class_cd":"P","uId":"25957940-be96-409d-8aaf-fff875e2189e","difficulty":"H"},"raw_detail":{"item_id":"08160-DC","section":"Math","body":"<div xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\" class=\"stimulus_reference \">\n        <div class=\"passage \">\n          <div class=\"prose style:1 \">\n            <div class=\"tcp-ed59dd2a-561f-433e-8d73-1fb5a7f8d1fa\">\n              <table class=\"table_WithBorder tcp-a8523ebf-f180-40d1-88a3-dcabc5a77c14\"><caption>Growth of a Culture of Bacteria</caption>\n                <tbody><tr><td class=\"tcp-e86d5073-7d32-4453-804a-3e1ec995e124\">Day</td>\n                    <td class=\"tcp-525f9596-272e-44a5-aba5-3ed2484be473\">Number of bacteria per<br>\n\tmilliliter at end of day</td>\n                  </tr><tr><td class=\"para_center\">1</td>\n                    <td class=\"para_center\">\n                      <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD8AAAAeCAYAAACbr8ZMAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABj0lEQVRYR+2VgZGEIAwALc+CKMdebMVO8gEMhEgC59/9zL3ZGeY8FGGTgMsTOLYV8Ke2dYMDIF7/f/awQNgfIssBzPG2rrBhqs+u5wCwQ0D5tZR9wB4WiBwdtiewrRiqeM8ivZiNKQ1rDH/fSixdbU2wBzZ/m2U4NhSvfWn/056v4jUi9LJRAPKLRSQ/gLWefK/Kyf+SnLDzvowMkU9IWyxN9OGTk5/UUp4SJ/tjlWjV18hr5Aja8tYknLI9lECRoDyRaxbz+It8Stx1HE+cTFBT9hpJzHioRD0Edpj0S5PoTTyzGApeX/6aRZm45ILduQ22aR5sfxt72aRMzAZgKguIKl8qox2v9Q8h8bsndhIaRDc/0wbO4k/ky6JuikdmJn6b/GTZD6F9YZXsDCN5Xur8+rzdxZa3D7yzS4cy8Yr4nYl7sjMBUOVx1KufugaSGInLANHEXDRnvfPJOhevSdK75ThCk4/ISpvZdgWauN+qmJSP1ADUpgn8Bks+0jpMijuO4ziO4ziO4zhfzbL8AMmg9m0nOPzCAAAAAElFTkSuQmCC\" alt=\"2 point 5 times 10 to the power 5\"></span></td>\n                  </tr><tr><td class=\"para_center\">2</td>\n                    <td class=\"para_center\">\n                      <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD8AAAAeCAYAAACbr8ZMAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABd0lEQVRYR+2Vi7GEIAxFLY+CKIdebMVOsoEYCV+B/cybZ84Ms4oa7k0Cuz2BwxnAnziMgwPAX/9/druB3R9iVgJYY2cMOCz1OfUcAHawaN5cbW9xRiQivHA9FAN7BX+7wG7FN9/LsG9dg8HP24SeBjgcGo9zYf/LPU8vZBkZgBaNgfP7T8HmauZnNVChxfPwweQJSHupFOQrNNIxo8iTOl9rRUNhfkUwdUt5ipLYtIuubdVIMBvMY8Uq0veF+QENeWGTtr+yZ604FMqFcvK9xJDg+hZKFj6pzeVw8urm7zWE4uI0DaGtVhXOaC8BsSq1hct5RpodMe5pml/UcEsQ1qig552FKXaa8B4/N38XYKXtmY+Zf0NDlzHzYweeRLa6vD4fV+mbn9dwsRpg5W+mZnYkAU3zCxoSOIA0SlVPE0LJSBfKu6PVLSy+ZZJj5wVgWuY9oxqaxATEUe+EUgDP05hYdIKeec8vNCiKoiiKoiiKoih/i217AWPHMRGxGOGgAAAAAElFTkSuQmCC\" alt=\"5 point 0 times 10 to the power 5\"></span></td>\n                  </tr><tr><td class=\"para_center\">3</td>\n                    <td class=\"para_center\">\n                      <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD8AAAAeCAYAAACbr8ZMAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABV0lEQVRYR+2Vga2EIAyGGY+BGIddXMVN+lqwylXAwvkul7NfQhQh8P9tQfcEABYI+KBX5zzEFej9GSzBgUfH9A5LAOcjoP/fDwCsEbwLmPsHZZvhTEfMPnW7ZV+WiIa0eFr0f89TT1dPA48FTP3er5U9T9Saz/OPzWT/Lnq6rjTk/lH2+fITGtfoqZOaxjxg7KI/z6UMOQzz1n2bni6NBnnmT+aPaOVfgsp8WvQoJyaLfb1g9l9N45Zlg3KtK10aDTJAaaxa9ptIvXlRPogss5Laxk0xBS1dWg178FOraxszv2eltvH5O1Oa1RgnmuYnNVT5hHkimcapGuPE95mfKHvmNvNvaDgxbl534ZXcWvaTGqoMmUfJo7+6mllNAJrmJzQ06ZnP0Xwdk2ereQa3dVsmeW2ZQaanS6vhklHzBH/PbWJTBT1dxCc0GIZhGIZhGIZhGN+Fc39v3iEtGF1xvAAAAABJRU5ErkJggg==\" alt=\"1 point 0 times 10 to the power 6\"></span></td>\n                  </tr></tbody></table></div>\n          </div>\n        </div>\n      </div>\n","prompt":"<p class=\"stem_paragraph \">A culture of bacteria is growing at an exponential rate, as shown in the table above. At this rate, on which day would the number of bacteria per milliliter reach <span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADgAAAAYCAYAAACvKj4oAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABU0lEQVRYR+2Vjc0DIQiGHc+BHMddXMVN+ATKSRV/rk2Tpp9Pcjk9FXhBPfdLAGSI3gE2nY+lB9j+HSAF8DGTqBw9hPRfBGKnvNQToIzxoAGU0eA8FFvXHMgR/LX+eewdTF/0zY5VtIhQIgW3Xc5qvDqVb2IDM7lK0g6WLwTjFQHYdsUxtlGcriC1+WDuZfzKTgilWkogClKH2sr6XYa+Gtu8cziZuOYpyShcFni5fSaB5ZRIBBsdz7MEclX7Nfy930EjX1oQ9ZUvbouOx5zWAGduvr1WAmnbGNd0l/2m8hZ3BGJ/iWShzahmJpATNHbI9kuATaAjPiCQf5avCFyJE9ogZ3xA4HqBJXBbHNl/o4JNfMtk8SGvE/T5GZ3Hzqkh2KIL7oUziOhfg24PYSF48+BTBe0KJCfX+vrobX73FhUsgZwo8TOp3uFwOBwOh8Phe3HuD13l7RsGOKYnAAAAAElFTkSuQmCC\" alt=\"5 point 1 2, times 10, to the power 8\"></span></span>?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p>Day 5</p>\n"},"b":{"body":"<p>Day 9</p>\n"},"c":{"body":"<p>Day 11</p>\n"},"d":{"body":"<p>Day 12</p>\n"}},"correct_choice":"d","rationale":"<p>Choice D is correct. The number of bacteria per milliliter is doubling each day. For example, from day 1 to day 2, the number of bacteria increased from 2.5 &times; 10<sup>5</sup> to 5.0<!--StartFragment--> &times; 10<sup>5</sup>. At the end of day 3 there are 10<sup>6</sup> bacteria per milliliter. At the end of day 4, there will be&nbsp;<!--StartFragment-->10<sup>6</sup> &times; 2 bacteria per milliliter. At the end of day 5, there will be <!--StartFragment-->(10<sup>6 </sup>&times; 2) &times; 2, or <!--EndFragment--><!--StartFragment-->10<sup>6</sup> &times; (2<sup>2</sup>) bacteria per milliliter, and so on. At the end of day <span class=\"italic\">d</span>, the number of bacteria will be 10<sup>6 </sup>&times; (2<sup><span class=\"italic\">d</span> &ndash; 3</sup>). If the number of bacteria per milliliter will reach 5.12 &times; 10<sup>8</sup> at the end of day <span class=\"italic\">d</span>, then the equation <!--StartFragment--><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAK8AAAAeCAYAAABaBE6lAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADWElEQVR4Xu2Xi5HrMAhFXZ4LchPbg3tJK+lET4BJsCwUJBHvvhnOjCb+rCW4XGHv4klKj7TlHzhcljXtzwTHbqTnntaJeSm+8eef+3rkBmPLswHPtK9L2vIJ/lHgDtX9rDvdceSxLWnNzoDj9NjSsu65tD4LzRoPIBHGksd8xLNo5OxYvOcQW1Cn1BZ1d/QVMmMMC3Jj9ADP5Z88trQLw81S5uu9WQMCdRa6kpmdfcbF219m8etEoxsDjcvdETvn2AaoITsvEJ8P36Gr87Y6HBuAxtmcfI+L59mJSqMAbBY45CHjvnRGxVw4t5hDjpoObw2umwnvFXHOQsW7xtazjlbTTxp6Muor4KSB5imeRC/ae+L6uTTLecfMAIlL071FF+sVseO5KDA94xMPILs6841Pp9k5S10Yi4ZetOalew1fYf66zxDZgbREy+uygNdO52PemunKhBjKgWLAJKV5nY1Vzg94blgG1xl8gzVratDwuDTFtK+K/C8ak5vhArXneqLaK/cwSxEI3itEp4VzYEoxOFG5To8hKI8jHmFWjm3UBIDMRxOdrvuat9bhLXyqqYbU8Lg0VDfAxVfFJqvFh3CQ9UWuRSkneiWJo7LAQc3YtWtAj3mx0GIOFhUF3HOsAyaQ4PycX2UuzbxnXfRxKT7Ol+uxbVhkuATDakRAq6lGqaGkp26SaV/hOeeveEFd5LWDaosok31AJt0SwGpeTrA0wJ1YY7XC9ZDacLeymlGraQ2Lhta6SW7x1S2LCDD5PE1LAO4+LUFZ9NnOOgvpp79xvCDdbOtYzdujoaVukt81r7G992IVAV5lmvivOX7ZuADqUcmFdYXD1mhtUElPcS3m7dXQzbyevmovchWXkhgzLz57JC+Pj9snNFPwN2irMHfS2mSeeJq3V8OeujG3+EpdJIdX++8aEx/oeLWkW0LUPh0oQbvo34a063zVfcCjuC3z9mrYWzfmFl+1Ei13e8/uZ3h+LVkWsywWILsvF9Uq+h1A7N7xcHGlUUl3+0ZWjdOh4UzdgG/7CmktAnCQNHy7jAVaf00/PzKOcox9xozyMtiH7jPK28DvUe/EfeY917Icvhr+dV8FQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAE/z/L8g8DM+eF1WJ+HwAAAABJRU5ErkJggg==\" alt=\"10 to the power 6, end power, times 2 to the power d minus 3, end power, equals 5 point 1 2, times 10 to the power 8\"></span><!--EndFragment--> must hold. Since <!--StartFragment-->5.12 &times; 10<sup>8</sup><!--EndFragment--> can be rewritten as 512 &times; 10<sup>6</sup>,&nbsp; the equation is equivalent to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAAAeCAYAAAC7Q5mxAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABjklEQVRoQ+2Wjc2EIAxAHY+BGIddXMVN+gHlpwdWEPkSMX0JuZwBLI+2d9soADvoTYE5AMKjWxxGuXVhaLvb2D7LAocBNXhw2PWPNC9T798XuOucMWbioZ9cxjJ4eUEYZtAGytav+/6U5TMQ4ACjYnbhoHLKDInz7ZnTHMdvX+P3i8SL+I8eiD26joO7KJcgpzE23JAJRFCRYf47eTGuGf8BKaHZPYs7bYGrqB434UW1DMwmXFgJnNyzyv1n4PdUxiq4jpFWTSWww014VIOmg0AiLN1KR3AcPoCwPu5XBv+UnqzGMzpBWO69MVA34VGND4BIyjdlX2ieZ4zf3+/HH5TtY8Wwy91nIl2K1vbi8zxOUHxPr8DSTQUargNbhSSeHBKr6FzSHYFNN3HC7J70Brje1Suw6SaV6UvkjZYwBwqofxR6BDbdxJ7U2wdWZFRg0020+xV5sd+VmTlSwk03V811Va7+AJ+VOyewy02q7dPR+K/zYrLEPLheyQn8qhtBEARBEARBEARBEIRV2bY/xzO+g1ShcuMAAAAASUVORK5CYII=\" alt=\"2 to the power d minus 3, end power, equals 512\"></span>. Rewriting 512 as 2<sup>9</sup> gives <span class=\"italic\">d</span> &ndash; 3 = 9, so <span class=\"italic\">d</span> = 12. The number of bacteria per milliliter would reach <!--StartFragment-->5.12 &times; 10<sup>8</sup>&nbsp;<!--StartFragment-->at the end of day 12. <!--EndFragment--><p>Choices A, B, and C are incorrect. Given the growth rate of the bacteria, <!--StartFragment-->the number of bacteria will not reach 5.12&nbsp;&times; 10<sup>8</sup> per milliliter by the end of any of these days.<!--EndFragment--></p></p>\n"}},"createDate":1691007959635,"updateDate":1691007959635}$SATQ$::jsonb, 1691007959635, 1691007959635),
    ($SATQ$2683b5db$SATQ$, NULL, NULL, $SATQ$015647-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.B.$SATQ$, $SATQ$Nonlinear equations in one variable and systems of equations in two variables $SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, $SATQ$<div class="stimulus_reference " xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1"><p class="standalone_statement style:1 "><span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_004_a7ed9557.png" alt="T equals, 0 point 0 1 times, open parenthesis, P minus 40,000, close parenthesis"></span></span></p></div>
$SATQ$, $SATQ$<p class="stem_paragraph ">In a city, the property tax <span class="italic">T</span>, in dollars, is calculated using the formula above, where <span class="italic">P</span> is the value of the property, in dollars. Which of the following expresses the value of the property in terms of the property tax?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_000_a8f35a41.png\" alt=\"P equals 100 T, minus 400\"></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_001_818db763.png\" alt=\"P equals 100 T, plus 400\"></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_002_8eee0e1b.png\" alt=\"P equals 100 T, minus 40,000\"></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_003_0333542a.png\" alt=\"P equals 100 T, plus 40,000\"></span></p>\n"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice D is correct. To express the value of the property in terms of the property tax, the given equation must be solved for <span class="italic">P</span>. Multiplying both sides of the equation by 100 gives <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_005_29774e39.png" alt="100 T equals, P minus 40,000"></span>. Adding 40,000 to both sides of the equation gives <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_006_2906242e.png" alt="100 T plus 40,000, equals P"></span>. Therefore, <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_007_0333542a.png" alt="P equals, 100 T plus 40,000"></span>.<p>Choice A is incorrect and may result from multiplying 40,000 by 0.01, then subtracting 400 from, instead of adding 400 to, the left-hand side of the equation. Choice B is incorrect and may result from multiplying 40,000 by 0.01. Choice C is incorrect and may result from subtracting instead of adding 40,000 from the left-hand side of the equation.</p><p>&nbsp;</p></p>
$SATQ$, false, 8, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"2683b5db","external_id":null,"disclosed_item_id":"015647-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.B.","skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_004_a7ed9557.png\" alt=\"T equals, 0 point 0 1 times, open parenthesis, P minus 40,000, close parenthesis\"></span></span></p></div>\n","stem":"<p class=\"stem_paragraph \">In a city, the property tax <span class=\"italic\">T</span>, in dollars, is calculated using the formula above, where <span class=\"italic\">P</span> is the value of the property, in dollars. Which of the following expresses the value of the property in terms of the property tax?</p>\n","answerOptions":[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_000_a8f35a41.png\" alt=\"P equals 100 T, minus 400\"></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_001_818db763.png\" alt=\"P equals 100 T, plus 400\"></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_002_8eee0e1b.png\" alt=\"P equals 100 T, minus 40,000\"></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_003_0333542a.png\" alt=\"P equals 100 T, plus 40,000\"></span></p>\n"}],"keys":null,"correct_answer":["D"],"rationale":"<p>Choice D is correct. To express the value of the property in terms of the property tax, the given equation must be solved for <span class=\"italic\">P</span>. Multiplying both sides of the equation by 100 gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_005_29774e39.png\" alt=\"100 T equals, P minus 40,000\"></span>. Adding 40,000 to both sides of the equation gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_006_2906242e.png\" alt=\"100 T plus 40,000, equals P\"></span>. Therefore, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/2683b5db/img_007_0333542a.png\" alt=\"P equals, 100 T plus 40,000\"></span>.<p>Choice A is incorrect and may result from multiplying 40,000 by 0.01, then subtracting 400 from, instead of adding 400 to, the left-hand side of the equation. Choice B is incorrect and may result from multiplying 40,000 by 0.01. Choice C is incorrect and may result from subtracting instead of adding 40,000 from the left-hand side of the equation.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":8,"raw_list":{"updateDate":1691007959615,"pPcc":"SAT#P","questionId":"2683b5db","skill_cd":"P.B.","score_band_range_cd":5,"skill_desc":"Nonlinear equations in one variable and systems of equations in two variables ","createDate":1691007959615,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"015647-DC","external_id":null,"primary_class_cd":"P","uId":"b5a098b4-d4c0-4768-adff-7506b9af2fe6","difficulty":"M"},"raw_detail":{"item_id":"015647-DC","section":"Math","body":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJIAAAAcCAYAAACKweYmAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACnklEQVR4Xu2XAZaEIAiGO14H6jjdpavMTVwRqRbB1KGZnR2+93o7mRT8ILrTNxMea5inOayPEPKQc0EIj7DOU1g21ywRwhYWL6IhXLsT2zKFOSqRb51OwraEaV5jfzoVE7Ur+Fm7LIVPjuzvbq/uHjutWHBLW+K6Km0f65zfza97ViD6Im8VIxq12FjMadrisHXdt2LRycM5fq/RY0dCSDGkYokK5NudfUEJz7DA5OJ7Bij2+KdIyIhGLTZWc4A0Lmi1U1slz0LJ4glOglac6rE7dxWpkMBGiq22gO44mGOCykIa0ajFxmoOUevsCUyErWiEVqRXK77V7lg9clGgUHJslFj+DcC6kChhy1rGNaJRi43VnDwUY7g4dKfq4wcpBq1e+Fm7uENaQjCJskhAr53WXWrB1xJVezZCeh9oLCRuRKMWG6s5eSgvBlnL/DAWQYwsD5mCDmmOKk5Feu16C2mPW1hA+I1yUYxCvsH7MHGskAY0arGxmpOHsmbl3ISWACt6HD3Ta6fFgeP6fPhZXrJfdZvj4gX460zy0YUka5nQXsQZFbGndZ7ptSP/5DOS5lc5bg2PQyykAY1abKzm5KGsseyP+VmAIwkHXH23104rJAA6Ah+/O24CvyMvur0rDGjUYmM1Jw9hcWln6ZaD9jNET1NH4ImU/r0802tXKyRJgLvj1pASN6JRi43VHALGJH138TVnrcA2ebRPfg/Qyj072mJHVAspixXDxPe8KG4JrQP0xEq02JjNSZr9HtvRgroDKhS8SoekQgKu7IhaIQFJnNyBXhk3p/btJo1YF23Rx2IOPNe0/TpQLL0Y/zqpsy6v3Y6pm7/jGODcROpmb9iOnX8GdNR3bMeO4ziO4ziO4ziO4ziO4ziO8+lM0w8QXlfaTVpuNwAAAABJRU5ErkJggg==\" alt=\"T equals, 0 point 0 1 times, open parenthesis, P minus 40,000, close parenthesis\"></span></span></p></div>\n","prompt":"<p class=\"stem_paragraph \">In a city, the property tax <span class=\"italic\">T</span>, in dollars, is calculated using the formula above, where <span class=\"italic\">P</span> is the value of the property, in dollars. Which of the following expresses the value of the property in terms of the property tax?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAAAWCAYAAADKHRJUAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABrUlEQVRoQ+2WUZaFIAiGW54Lcjnupa20E0ZSyxTIKezl8p3jqUtM8APaLDVbcBAvxHIQNsD7Kax+ARcD5J8XYPW3edz5AGwQXHnOLy6HJ8AWwMWLX/+fLzLicwqLUbLpIDXTQ4zf/+FLSnJUwdKzM+H2NzLi0wJRiY8XzSa14CDGS9c0VU2SkDQ1ciGeUO/sNm4Zota+FyMP1ogPhbQLNEhF7pumrqkEooTMaNo5PfSwcIWtd/2ITzZdSM/1hxApRfehz01dkySUe1Z2J95Kq02ghtvh3KCkZtcCZZ9surBPrQuxvHxeT9lrhe8miq+qqUwHJSQ5y4V/A9u0PS6XfLKP+GTTwaE1CsomNYoWrBW1Y1Q1lWB42y9avBbfN42OVyPX41ztIF++TdObRgQY4am4Gq6IqkdJBVeUt7S5kE3T1CR9z2YjN61veJ3riE82HczSmt5LD+2xizQ1zfww38E2LX97Wvvjf48zX2mliq+m6TjiGJGz4ZqGtEcZdbSN+BS+1MrtGBVN3Mu/Qmoacj126GaM+CBfapViaWoyDMMwDMMwDMMwDMP4BZblD959yJkPwpvsAAAAAElFTkSuQmCC\" alt=\"P equals 100 T, minus 400\"></span></p>\n"},"b":{"body":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAAAWCAYAAADKHRJUAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABvUlEQVRoQ+2WYZaFIAiFW54Lcjnupa20E0dTyhSIHOrP4zunU8+Y4HKxZmnZgovphBwuhi3m61dY/RJdSlB/Xoirv63jLibGLQYH9+mDqmGGuIXo0smvz+vNSGJOYSlLXTooZvqY8o9/+E+gOKxh5d5ZcP87I4npiUmJTydNk3ryIKbTYJqqJk5ImRq+ETO0O7vPC0PUr+/NqIMlicHgdgEG9EYcvzd5NE1dEyTCCnvDtHN68GGhGtvueklMXbpQ7sv1PDENmu7DWJu6Jk4odQ/E5Evu4MRSO5walGJ2K5CPqUsX9ql1IbWXrqvliWl7r/KzkearaoLpwISUYFnBM5Cm7Xmp4su6JKYuHRxak6C6dIvUtDYO2zGqmiBZvhwPXLwWkPs70/B8LXw/zqM38fJtet00JIGEWXEtVBNVXyUNVFM4oEZWR1cLapqmJu579ja8aWOj2lolMXXpYEarxLTyXHxoj12kqenph1kT0rT67enXp/89rsxolZjWgzVfTRMURIl8G8q0TP8qw15tkhhgVquWaRkVTdTDv4IzLXN97eBmSGIyX2rlcmlqMgzDMAzDMAzDMAzD+AWW5Q8aDAuo/57L1AAAAABJRU5ErkJggg==\" alt=\"P equals 100 T, plus 400\"></span></p>\n"},"c":{"body":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIMAAAAWCAYAAADjNi+WAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACCklEQVRoQ+2XixGDIAyGHc+BGMddXMVNKOElAsEYo23v8t15KkbzJ4TQTiXbMlt36hyzXTYL14+wmsnOzkG8PWBXc6rjzMbazS5zeo4fmAYOdlvs7E5mva63h0QeAJLvnDCnPg5lQpEY6+JqX7xJEtebiPBsF1zfAxSbGusiMe4kOfk1UODu1BQDSy/hHSkbzyhBoco7L92k7ES131Sc9bhPcixYik2P0aqVICS5LQaOXqk8XPKdAijFJ54ohr0q+0WITVjZpSg2cehAeC5f3EBKullabRy9Unm45HskCHuWuglcjo5aQAnWkYL4dsJCEZUBjm3i0AG/GubFTRuui4vPFXy7k3yOXqk8kH07S1/NvQQF4/GE3gEtBu8XEx/GKTZxKJNjdQHFITFSLJCrkPyqGDh6Ce9I2YSBGARctkf7AUmS7/eKoe+vZJyP/agXyGGP/tti6AinwE1aCTY5oq2vAEvKXWot3WLg6BXKA9n36PfC04yLoS2kUivFJg5lnoo1fLe/GPLqZOiVygPZ95M/qM5AiyHu7fU4++9S5K1Ye8nn6JXKA8l3bvWImKfBigGoW3p9D1BsEm/Giq3EK3oTlHdEbDDRbzEqBuDYfo/BJSg2wJuxjnyd6fXPq+4llQdqrpQfwbd0851tW/kxfFd5YStT/gBo5d/athVFURRFURRFURSFzTR9AL5tREOTx470AAAAAElFTkSuQmCC\" alt=\"P equals 100 T, minus 40,000\"></span></p>\n"},"d":{"body":"<p class=\"choice_paragraph \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIMAAAAWCAYAAADjNi+WAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACGklEQVRoQ+2Xi7GEMAhFLc+CUo69bCt2kpevGwlEwuJ+5nFmHDWiXMg17i4t+7b6sEO21W+7j8e38HCLX0OCcnrCP9yljqsY73e/rfU6vVEaJPh982vYuce8XgyNPkRYuY+GBfVl6CCbxPlQV3/ji1Rx2ETka0/B8DzCiYH4UIkLO83Jh0SDh11nBpFexj1aMYlRg7LLkZtepF2JYN5qTjiemlwMy4nBGL21GLU37PjU5N4MEr1afZjKXQtoxVfuMMPTlbgJqQlrVylOTBk6ka/z65kxQ22623ptEr1afZjKPRJEXatNioejDQpooVakLL6fsGyitsBxTBk6kd6GdQvTRutqmTFD6lV8NtJ8iV6tPrBzh8jkZqxBOZjXCAmkGVJeSnwe58SUoYOj1lBQGbqEa4Y2LjcfmEGil3GPVkweKEXEw37rH6BJzf0+M+D5Wsb9eG7QHKdv9M+aARHOQdq0FmpyVJe+BqopI6rGYR1AC2oGiV6lPrBzj34v3M3YDP0EtFo5MWXoQFIrxwz5ufjLcLydAr1afWDnnv1BpQlphvJth+Piv0sFSa0cM0Cw5kv0avWBlbsWSom5G8oMEbikw/MIJ6YirVXLDJEZvRXOPSoxlOh3MTJD5Lz8nourcGIi76x1lOtKb7oOVi+tPnB7ZXwJaUl3n/lsG19GWlXCklJOjf9MXMo/9dk2DMMwDMMwDMMwDDHL8gePjIdDIFcLTAAAAABJRU5ErkJggg==\" alt=\"P equals 100 T, plus 40,000\"></span></p>\n"}},"correct_choice":"d","rationale":"<p>Choice D is correct. To express the value of the property in terms of the property tax, the given equation must be solved for <span class=\"italic\">P</span>. Multiplying both sides of the equation by 100 gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIMAAAAWCAYAAADjNi+WAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACBklEQVRoQ+2XC7KDIAxFXZ4LYjnuxa24Ex7hVw0JDZjazpucGUaFYPBygXbB7G7x63b4/HjB7w7qc1l9CGvi3sV4f/htLe184cYwy7GtTY5U6O+4iz82v4aL28c1otDQHhDnLoHURKS2V2f8DEhiMN7v3oWL9uSfqQYMM5OrKskkLoyCH+MMsKjCpTHDlEaCPloxkfPKwRNTxMT18YOzwJIYit4K0qJnuJSfEOQGSeTWDDMaaWkvzv1yCC0aN2HnVSWJyVUXUrvuZGDK5OCxAdpmKKK7rdVjRiMt7YdzcyuIEyyJfE7Wj8lVF6Iz1y1ISLcDZVxw2yv4Qws9sXttM8T3wfcQ4s9opKX9cG7WDLED96JUL4nJVZUwwriKesfIXWoOwnBpbLyJRin6wfuS+MgMMxoJ+mjF5KrE82ag82lScsBtW/rjgttewSa6nNH/1gyf2IYC7EAQs5MDUJPyCfD3k2aY0UjQRysmVyX6ZmgFvfUDJaB9XlM8kQNIeWiT1tU5oZGW9sO5WTPkcxfXT/11OSH58XiXJ3JQUOLPaKSl/XBuzgwA3tLxMyCJKdStnxFBgydycHArcUSjgqSPVkylZwbguhXSL5HEAJxYmjyRg6OX+51GsR3tZlraS+fH+BHilu6eP9qMHyTuKl842owfBLbybxxthmEYhmEYhmEYhnGLZfkDk/9EQ/RD+4cAAAAASUVORK5CYII=\" alt=\"100 T equals, P minus 40,000\"></span>. Adding 40,000 to both sides of the equation gives <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIMAAAAWCAYAAADjNi+WAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACFUlEQVRoQ+2Xa7KDIAyFXZ4LYjnuxa24Ey7hYTEmNMT0/mjzzTBWCCYeDrRdMHtY4rodsd5eiHuA/trWmMJuce9iYjzitrZxvnE1aIjHFtd0Cft8vRQWOgCa3FqObe1y9Y3J24qjFqKMvSbie0ASg4lxjyFdLBcfAwZPl5sZVPUK5ljFWHFuwCRA7TopJglpFbq8vXPwwrSH4f4sck0giaEY7VqKZh5xfBb5bgZNvVY6aLXSMtpwRf/OhC9X0pO4BetdJYmpXRfKuHxHzJihiR62e22aeq100GqlpW0InA8otRD6cw7iJpQk/QuOY2rXhbwb1i0tGz2OmTFDFheeTYivqddKh9nc7Z3h46hxmoxMxo6xZshFcsWXfklM7TpJquSdO3M0Ss3QxxXxkRk09QrmWMXUrsecGhMbruRjtGwC/p8Z6Hw9LQY+jhp+oct39E+bYaTfIBe3OJ84+gDNy7caSTdXcC2kGTT1Gukwm3u8oK9GaUK9u4ixGe4PfPqjaDTGITFDeS4t2Lk7FfVa6aDJrUX9TNYM9XsH9z/9uzT74xGQmAFDia+p10oHTW4tGo0znBkAfKTje0AS02i5Zl/eygzATL0NyRyrmKdoNc6MzACUIyc9PDe6cEkMwC3QJxjleldvHkc7y0oHqVZa/lPjnyAf6UFxzDrfR95dmmPW+T7gKPdj1nEcx3Ecx3Ecx3EELMsfFW2HQ7XUuRUAAAAASUVORK5CYII=\" alt=\"100 T plus 40,000, equals P\"></span>. Therefore, <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIMAAAAWCAYAAADjNi+WAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACGklEQVRoQ+2Xi7GEMAhFLc+CUo69bCt2kpevGwlEwuJ+5nFmHDWiXMg17i4t+7b6sEO21W+7j8e38HCLX0OCcnrCP9yljqsY73e/rfU6vVEaJPh982vYuce8XgyNPkRYuY+GBfVl6CCbxPlQV3/ji1Rx2ETka0/B8DzCiYH4UIkLO83Jh0SDh11nBpFexj1aMYlRg7LLkZtepF2JYN5qTjiemlwMy4nBGL21GLU37PjU5N4MEr1afZjKXQtoxVfuMMPTlbgJqQlrVylOTBk6ka/z65kxQ22623ptEr1afZjKPRJEXatNioejDQpooVakLL6fsGyitsBxTBk6kd6GdQvTRutqmTFD6lV8NtJ8iV6tPrBzh8jkZqxBOZjXCAmkGVJeSnwe58SUoYOj1lBQGbqEa4Y2LjcfmEGil3GPVkweKEXEw37rH6BJzf0+M+D5Wsb9eG7QHKdv9M+aARHOQdq0FmpyVJe+BqopI6rGYR1AC2oGiV6lPrBzj34v3M3YDP0EtFo5MWXoQFIrxwz5ufjLcLydAr1afWDnnv1BpQlphvJth+Piv0sFSa0cM0Cw5kv0avWBlbsWSom5G8oMEbikw/MIJ6YirVXLDJEZvRXOPSoxlOh3MTJD5Lz8nourcGIi76x1lOtKb7oOVi+tPnB7ZXwJaUl3n/lsG19GWlXCklJOjf9MXMo/9dk2DMMwDMMwDMMwDDHL8gePjIdDIFcLTAAAAABJRU5ErkJggg==\" alt=\"P equals, 100 T plus 40,000\"></span>.<p>Choice A is incorrect and may result from multiplying 40,000 by 0.01, then subtracting 400 from, instead of adding 400 to, the left-hand side of the equation. Choice B is incorrect and may result from multiplying 40,000 by 0.01. Choice C is incorrect and may result from subtracting instead of adding 40,000 from the left-hand side of the equation.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959615,"updateDate":1691007959615}$SATQ$::jsonb, 1691007959615, 1691007959615),
    ($SATQ$26e83bbc$SATQ$, $SATQ$ba562150-ace0-4dca-b1c3-c7c1019ccee7$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="f left parenthesis x right parenthesis equals x squared plus b x"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi></math></p>
<p style="text-align: center;"><math alttext="g left parenthesis x right parenthesis equals 9 x squared minus 27 x"><mi>g</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mn>9</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mrow><mn>27</mn></mrow><mi>x</mi></math></p>
<p style="text-align: left;">Functions <math alttext="f"><mi>f</mi>
</math> and <math alttext="g"><mi>g</mi>
</math> are given, and in function <math alttext="f"><mi>f</mi>
</math>, <math alttext="b"><mi>b</mi>
</math> is a constant. If <math alttext="f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline minus 26 x cubed minus 3 x squared"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>&#183;</mo><mi>g</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mn>9</mn></mrow><msup><mi>x</mi><mn>4</mn></msup><mo>-</mo><mrow><mn>26</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mrow><mn>3</mn></mrow><msup><mi>x</mi><mn>2</mn></msup></math>, what is the value of <math alttext="b"><mi>b</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"ff6b9852-1098-44d0-beb9-4f2e95a213cf","content":"<p><math alttext=\"negative 26\"><mo>-</mo><mn>26</mn>\n</math></p>"},{"id":"d31950fc-e836-4f61-9076-5c7746e0bcc2","content":"<p><math alttext=\"negative StartFraction 26 Over 9 EndFraction\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>26</mn>\n\t\t<mn>9</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"0b5af469-ebef-480c-bcea-35edd268faff","content":"<p><math alttext=\"one ninth\"><mfrac>\n\t<mn>1</mn>\n\t<mn>9</mn>\n</mfrac>\n</math></p>"},{"id":"1725c7ea-ec91-4193-8205-8df95c3313d3","content":"<p><math alttext=\"9\"><mn>9</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["0b5af469-ebef-480c-bcea-35edd268faff"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. Multiplying the given functions <math alttext="f"><mi>f</mi></math> and&nbsp;<math alttext="g"><mi>g</mi></math>&nbsp;yields <math alttext="f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals left parenthesis x squared plus b x right parenthesis left parenthesis 9 x squared minus 27 x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced><mrow><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>27</mn><mi>x</mi></mrow></mfenced></math>. Applying the distributive property to the right-hand side of this equation yields <math alttext="f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals left parenthesis x squared right parenthesis left parenthesis 9 x squared minus 27 x right parenthesis plus left parenthesis b x right parenthesis left parenthesis 9 x squared minus 27 x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced><msup><mi>x</mi><mn>2</mn></msup></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>27</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mfenced><mrow><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>27</mn><mi>x</mi></mrow></mfenced></math>. Applying the distributive property once again to the right-hand side of this equation yields <math alttext="f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals left parenthesis x squared right parenthesis left parenthesis 9 x squared right parenthesis minus left parenthesis x squared right parenthesis left parenthesis 27 x right parenthesis plus left parenthesis b x right parenthesis left parenthesis 9 x squared right parenthesis minus left parenthesis b x right parenthesis left parenthesis 27 x right parenthesis"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced><msup><mi>x</mi><mn>2</mn></msup></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup></mrow></mfenced><mo>-</mo><mfenced><msup><mi>x</mi><mn>2</mn></msup></mfenced><mfenced><mrow><mn>27</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mfenced><mrow><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup></mrow></mfenced><mo>-</mo><mfenced><mrow><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>27</mn><mi>x</mi></mrow></mfenced></math>, which is equivalent to <math alttext="f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline minus 27 x cubed plus 9 b x cubed minus 27 b x squared"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>-</mo><mn>27</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>9</mn><mi>b</mi><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup></math>. Factoring out <math alttext="x cubed"><msup><mi>x</mi><mn>3</mn></msup></math>&nbsp;from the second and third terms yields <math alttext="f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline plus left parenthesis negative 27 plus 9 b right parenthesis x cubed minus 27 b x squared"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>+</mo><mfenced><mrow><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi></mrow></mfenced><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup></math>. Since the left-hand sides of <math alttext="f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline plus left parenthesis negative 27 plus 9 b right parenthesis x cubed minus 27 b x squared"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>+</mo><mfenced><mrow><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi></mrow></mfenced><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup></math>&nbsp;and <math alttext="f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline minus 26 x cubed minus 3 x squared"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>-</mo><mn>26</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn><msup><mi>x</mi><mn>2</mn></msup></math>&nbsp;are equal, it follows that <math alttext="left parenthesis negative 27 plus 9 b right parenthesis x cubed equals minus 26 x cubed"><mfenced><mrow><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi></mrow></mfenced><msup><mi>x</mi><mn>3</mn></msup><mo>=</mo><mo>-</mo><mn>26</mn><msup><mi>x</mi><mn>3</mn></msup></math>, or <math alttext="negative 27 plus 9 b equals negative 26"><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>26</mn></math>, and <math alttext="minus 27 b x squared equals minus 3 x squared"><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup><mo>=</mo><mo>-</mo><mn>3</mn><msup><mi>x</mi><mn>2</mn></msup></math>, or <math alttext="minus 27 b equals negative 3"><mo>-</mo><mn>27</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>3</mn></math>. Adding <math alttext="27"><mn>27</mn>
</math> to each side of <math alttext="negative 27 plus 9 b equals negative 26"><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>26</mn></math> yields <math alttext="9 b equals 1"><mn>9</mn><mi>b</mi><mo>=</mo><mn>1</mn></math>. Dividing each side of this equation by <math alttext="9"><mn>9</mn>
</math> yields <math alttext="b equals one ninth"><mi>b</mi><mo>=</mo><mfrac><mn>1</mn><mn>9</mn></mfrac></math>. Similarly, dividing each side of <math alttext="minus 27 b equals negative 3"><mo>-</mo><mn>27</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>3</mn></math> by <math alttext="negative 27"><mrow>
<mo>-</mo>
<mn>27</mn>
</mrow>
</math> yields <math alttext="b equals one ninth"><mi>b</mi><mo>=</mo><mfrac><mn>1</mn><mn>9</mn></mfrac></math>. Therefore, the value of <math alttext="b"><mi>b</mi>
</math> is <math alttext="one ninth"><mfrac><mn>1</mn><mn>9</mn></mfrac></math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"26e83bbc","external_id":"ba562150-ace0-4dca-b1c3-c7c1019ccee7","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"cc7de6f1-16f5-4b0c-b45d-0f7c80bb7c83","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"f left parenthesis x right parenthesis equals x squared plus b x\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi></math></p>\n<p style=\"text-align: center;\"><math alttext=\"g left parenthesis x right parenthesis equals 9 x squared minus 27 x\"><mi>g</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mn>9</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mrow><mn>27</mn></mrow><mi>x</mi></math></p>\n<p style=\"text-align: left;\">Functions <math alttext=\"f\"><mi>f</mi>\n</math> and <math alttext=\"g\"><mi>g</mi>\n</math> are given, and in function <math alttext=\"f\"><mi>f</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math> is a constant. If <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline minus 26 x cubed minus 3 x squared\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>&#183;</mo><mi>g</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mn>9</mn></mrow><msup><mi>x</mi><mn>4</mn></msup><mo>-</mo><mrow><mn>26</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mrow><mn>3</mn></mrow><msup><mi>x</mi><mn>2</mn></msup></math>, what is the value of <math alttext=\"b\"><mi>b</mi>\n</math>?</p>","answerOptions":[{"id":"ff6b9852-1098-44d0-beb9-4f2e95a213cf","content":"<p><math alttext=\"negative 26\"><mo>-</mo><mn>26</mn>\n</math></p>"},{"id":"d31950fc-e836-4f61-9076-5c7746e0bcc2","content":"<p><math alttext=\"negative StartFraction 26 Over 9 EndFraction\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>26</mn>\n\t\t<mn>9</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"0b5af469-ebef-480c-bcea-35edd268faff","content":"<p><math alttext=\"one ninth\"><mfrac>\n\t<mn>1</mn>\n\t<mn>9</mn>\n</mfrac>\n</math></p>"},{"id":"1725c7ea-ec91-4193-8205-8df95c3313d3","content":"<p><math alttext=\"9\"><mn>9</mn>\n</math></p>"}],"keys":["0b5af469-ebef-480c-bcea-35edd268faff"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. Multiplying the given functions <math alttext=\"f\"><mi>f</mi></math> and&nbsp;<math alttext=\"g\"><mi>g</mi></math>&nbsp;yields <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals left parenthesis x squared plus b x right parenthesis left parenthesis 9 x squared minus 27 x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced><mrow><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>27</mn><mi>x</mi></mrow></mfenced></math>. Applying the distributive property to the right-hand side of this equation yields <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals left parenthesis x squared right parenthesis left parenthesis 9 x squared minus 27 x right parenthesis plus left parenthesis b x right parenthesis left parenthesis 9 x squared minus 27 x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced><msup><mi>x</mi><mn>2</mn></msup></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>27</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mfenced><mrow><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>27</mn><mi>x</mi></mrow></mfenced></math>. Applying the distributive property once again to the right-hand side of this equation yields <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals left parenthesis x squared right parenthesis left parenthesis 9 x squared right parenthesis minus left parenthesis x squared right parenthesis left parenthesis 27 x right parenthesis plus left parenthesis b x right parenthesis left parenthesis 9 x squared right parenthesis minus left parenthesis b x right parenthesis left parenthesis 27 x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced><msup><mi>x</mi><mn>2</mn></msup></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup></mrow></mfenced><mo>-</mo><mfenced><msup><mi>x</mi><mn>2</mn></msup></mfenced><mfenced><mrow><mn>27</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mfenced><mrow><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup></mrow></mfenced><mo>-</mo><mfenced><mrow><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>27</mn><mi>x</mi></mrow></mfenced></math>, which is equivalent to <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline minus 27 x cubed plus 9 b x cubed minus 27 b x squared\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>-</mo><mn>27</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>9</mn><mi>b</mi><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup></math>. Factoring out <math alttext=\"x cubed\"><msup><mi>x</mi><mn>3</mn></msup></math>&nbsp;from the second and third terms yields <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline plus left parenthesis negative 27 plus 9 b right parenthesis x cubed minus 27 b x squared\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>+</mo><mfenced><mrow><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi></mrow></mfenced><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup></math>. Since the left-hand sides of <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline plus left parenthesis negative 27 plus 9 b right parenthesis x cubed minus 27 b x squared\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>+</mo><mfenced><mrow><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi></mrow></mfenced><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup></math>&nbsp;and <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline minus 26 x cubed minus 3 x squared\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>-</mo><mn>26</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn><msup><mi>x</mi><mn>2</mn></msup></math>&nbsp;are equal, it follows that <math alttext=\"left parenthesis negative 27 plus 9 b right parenthesis x cubed equals minus 26 x cubed\"><mfenced><mrow><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi></mrow></mfenced><msup><mi>x</mi><mn>3</mn></msup><mo>=</mo><mo>-</mo><mn>26</mn><msup><mi>x</mi><mn>3</mn></msup></math>, or <math alttext=\"negative 27 plus 9 b equals negative 26\"><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>26</mn></math>, and <math alttext=\"minus 27 b x squared equals minus 3 x squared\"><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup><mo>=</mo><mo>-</mo><mn>3</mn><msup><mi>x</mi><mn>2</mn></msup></math>, or <math alttext=\"minus 27 b equals negative 3\"><mo>-</mo><mn>27</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>3</mn></math>. Adding <math alttext=\"27\"><mn>27</mn>\n</math> to each side of <math alttext=\"negative 27 plus 9 b equals negative 26\"><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>26</mn></math> yields <math alttext=\"9 b equals 1\"><mn>9</mn><mi>b</mi><mo>=</mo><mn>1</mn></math>. Dividing each side of this equation by <math alttext=\"9\"><mn>9</mn>\n</math> yields <math alttext=\"b equals one ninth\"><mi>b</mi><mo>=</mo><mfrac><mn>1</mn><mn>9</mn></mfrac></math>. Similarly, dividing each side of <math alttext=\"minus 27 b equals negative 3\"><mo>-</mo><mn>27</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>3</mn></math> by <math alttext=\"negative 27\"><mrow>\n<mo>-</mo>\n<mn>27</mn>\n</mrow>\n</math> yields <math alttext=\"b equals one ninth\"><mi>b</mi><mo>=</mo><mfrac><mn>1</mn><mn>9</mn></mfrac></math>. Therefore, the value of <math alttext=\"b\"><mi>b</mi>\n</math> is <math alttext=\"one ninth\"><mfrac><mn>1</mn><mn>9</mn></mfrac></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554986,"pPcc":"SAT#P","questionId":"26e83bbc","skill_cd":"P.A.","score_band_range_cd":5,"skill_desc":"Equivalent expressions","createDate":1743430554986,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"ba562150-ace0-4dca-b1c3-c7c1019ccee7","primary_class_cd":"P","uId":"cc7de6f1-16f5-4b0c-b45d-0f7c80bb7c83","difficulty":"M"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: center;\"><math alttext=\"f left parenthesis x right parenthesis equals x squared plus b x\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi></math></p>\n<p style=\"text-align: center;\"><math alttext=\"g left parenthesis x right parenthesis equals 9 x squared minus 27 x\"><mi>g</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mn>9</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mrow><mn>27</mn></mrow><mi>x</mi></math></p>\n<p style=\"text-align: left;\">Functions <math alttext=\"f\"><mi>f</mi>\n</math> and <math alttext=\"g\"><mi>g</mi>\n</math> are given, and in function <math alttext=\"f\"><mi>f</mi>\n</math>, <math alttext=\"b\"><mi>b</mi>\n</math> is a constant. If <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline minus 26 x cubed minus 3 x squared\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>&#183;</mo><mi>g</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mrow><mn>9</mn></mrow><msup><mi>x</mi><mn>4</mn></msup><mo>-</mo><mrow><mn>26</mn></mrow><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mrow><mn>3</mn></mrow><msup><mi>x</mi><mn>2</mn></msup></math>, what is the value of <math alttext=\"b\"><mi>b</mi>\n</math>?</p>","keys":["0b5af469-ebef-480c-bcea-35edd268faff"],"answerOptions":[{"id":"ff6b9852-1098-44d0-beb9-4f2e95a213cf","content":"<p><math alttext=\"negative 26\"><mo>-</mo><mn>26</mn>\n</math></p>"},{"id":"d31950fc-e836-4f61-9076-5c7746e0bcc2","content":"<p><math alttext=\"negative StartFraction 26 Over 9 EndFraction\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>26</mn>\n\t\t<mn>9</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"0b5af469-ebef-480c-bcea-35edd268faff","content":"<p><math alttext=\"one ninth\"><mfrac>\n\t<mn>1</mn>\n\t<mn>9</mn>\n</mfrac>\n</math></p>"},{"id":"1725c7ea-ec91-4193-8205-8df95c3313d3","content":"<p><math alttext=\"9\"><mn>9</mn>\n</math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice C is correct. Multiplying the given functions <math alttext=\"f\"><mi>f</mi></math> and&nbsp;<math alttext=\"g\"><mi>g</mi></math>&nbsp;yields <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals left parenthesis x squared plus b x right parenthesis left parenthesis 9 x squared minus 27 x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced><mrow><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>27</mn><mi>x</mi></mrow></mfenced></math>. Applying the distributive property to the right-hand side of this equation yields <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals left parenthesis x squared right parenthesis left parenthesis 9 x squared minus 27 x right parenthesis plus left parenthesis b x right parenthesis left parenthesis 9 x squared minus 27 x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced><msup><mi>x</mi><mn>2</mn></msup></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>27</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mfenced><mrow><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>27</mn><mi>x</mi></mrow></mfenced></math>. Applying the distributive property once again to the right-hand side of this equation yields <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals left parenthesis x squared right parenthesis left parenthesis 9 x squared right parenthesis minus left parenthesis x squared right parenthesis left parenthesis 27 x right parenthesis plus left parenthesis b x right parenthesis left parenthesis 9 x squared right parenthesis minus left parenthesis b x right parenthesis left parenthesis 27 x right parenthesis\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfenced><msup><mi>x</mi><mn>2</mn></msup></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup></mrow></mfenced><mo>-</mo><mfenced><msup><mi>x</mi><mn>2</mn></msup></mfenced><mfenced><mrow><mn>27</mn><mi>x</mi></mrow></mfenced><mo>+</mo><mfenced><mrow><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>9</mn><msup><mi>x</mi><mn>2</mn></msup></mrow></mfenced><mo>-</mo><mfenced><mrow><mi>b</mi><mi>x</mi></mrow></mfenced><mfenced><mrow><mn>27</mn><mi>x</mi></mrow></mfenced></math>, which is equivalent to <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline minus 27 x cubed plus 9 b x cubed minus 27 b x squared\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>-</mo><mn>27</mn><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mn>9</mn><mi>b</mi><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup></math>. Factoring out <math alttext=\"x cubed\"><msup><mi>x</mi><mn>3</mn></msup></math>&nbsp;from the second and third terms yields <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline plus left parenthesis negative 27 plus 9 b right parenthesis x cubed minus 27 b x squared\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>+</mo><mfenced><mrow><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi></mrow></mfenced><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup></math>. Since the left-hand sides of <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline plus left parenthesis negative 27 plus 9 b right parenthesis x cubed minus 27 b x squared\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>+</mo><mfenced><mrow><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi></mrow></mfenced><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup></math>&nbsp;and <math alttext=\"f left parenthesis x right parenthesis dot g left parenthesis x right parenthesis equals 9 x Superscript 4 Baseline minus 26 x cubed minus 3 x squared\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>&middot;</mo><mi>g</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mn>9</mn><msup><mi>x</mi><mn>4</mn></msup><mo>-</mo><mn>26</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn><msup><mi>x</mi><mn>2</mn></msup></math>&nbsp;are equal, it follows that <math alttext=\"left parenthesis negative 27 plus 9 b right parenthesis x cubed equals minus 26 x cubed\"><mfenced><mrow><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi></mrow></mfenced><msup><mi>x</mi><mn>3</mn></msup><mo>=</mo><mo>-</mo><mn>26</mn><msup><mi>x</mi><mn>3</mn></msup></math>, or <math alttext=\"negative 27 plus 9 b equals negative 26\"><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>26</mn></math>, and <math alttext=\"minus 27 b x squared equals minus 3 x squared\"><mo>-</mo><mn>27</mn><mi>b</mi><msup><mi>x</mi><mn>2</mn></msup><mo>=</mo><mo>-</mo><mn>3</mn><msup><mi>x</mi><mn>2</mn></msup></math>, or <math alttext=\"minus 27 b equals negative 3\"><mo>-</mo><mn>27</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>3</mn></math>. Adding <math alttext=\"27\"><mn>27</mn>\n</math> to each side of <math alttext=\"negative 27 plus 9 b equals negative 26\"><mo>-</mo><mn>27</mn><mo>+</mo><mn>9</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>26</mn></math> yields <math alttext=\"9 b equals 1\"><mn>9</mn><mi>b</mi><mo>=</mo><mn>1</mn></math>. Dividing each side of this equation by <math alttext=\"9\"><mn>9</mn>\n</math> yields <math alttext=\"b equals one ninth\"><mi>b</mi><mo>=</mo><mfrac><mn>1</mn><mn>9</mn></mfrac></math>. Similarly, dividing each side of <math alttext=\"minus 27 b equals negative 3\"><mo>-</mo><mn>27</mn><mi>b</mi><mo>=</mo><mo>-</mo><mn>3</mn></math> by <math alttext=\"negative 27\"><mrow>\n<mo>-</mo>\n<mn>27</mn>\n</mrow>\n</math> yields <math alttext=\"b equals one ninth\"><mi>b</mi><mo>=</mo><mfrac><mn>1</mn><mn>9</mn></mfrac></math>. Therefore, the value of <math alttext=\"b\"><mi>b</mi>\n</math> is <math alttext=\"one ninth\"><mfrac><mn>1</mn><mn>9</mn></mfrac></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"ba562150-ace0-4dca-b1c3-c7c1019ccee7","correct_answer":["C"]},"createDate":1743430554986,"updateDate":1743430554986}$SATQ$::jsonb, 1743430554986, 1743430554986),
    ($SATQ$26eb61c1$SATQ$, $SATQ$322bacf8-a04d-4c31-8a29-228d7b8ccca3$SATQ$::uuid, $SATQ$7e133b80-b53b-42e0-a13f-6ea926a64615$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.A.$SATQ$, $SATQ$Equivalent expressions$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p>Which expression is equivalent to <math alttext="6 x Superscript 8 Baseline y squared plus 12 x squared y squared"><mrow>
	<mrow>
		<mn>6</mn>
		<msup>
			<mi>x</mi>
			<mn>8</mn>
		</msup>
		<msup>
			<mi>y</mi>
			<mn>2</mn>
		</msup>
	</mrow>
	<mo>+</mo>
	<mrow>
		<mn>12</mn>
		<msup>
			<mi>x</mi>
			<mn>2</mn>
		</msup>
		<msup>
			<mi>y</mi>
			<mn>2</mn>
		</msup>
	</mrow>
</mrow>
</math>?</p>$SATQ$, $SATQ$[{"id":"a376a8df-8efc-4e97-bfee-ad798057dd7e","content":"<p><math alttext=\"6 x squared y squared left parenthesis 2 x Superscript 6 Baseline right parenthesis\"><mrow><mn>6</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mfenced><mrow><mrow><mn>2</mn></mrow><msup><mi>x</mi><mrow><mn>6</mn></mrow></msup></mrow></mfenced></math></p>"},{"id":"dc509f72-45fa-452a-aabd-a76932f88576","content":"<p><math alttext=\"6 x squared y squared left parenthesis x Superscript 4 Baseline right parenthesis\"><mrow><mn>6</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mfenced><msup><mi>x</mi><mrow><mn>4</mn></mrow></msup></mfenced></math></p>"},{"id":"f8bbf18f-194a-4645-af5f-9d56ebbd4f5e","content":"<p><math alttext=\"6 x squared y squared left parenthesis x Superscript 6 Baseline plus 2 right parenthesis\"><mrow>\n\t<mn>6</mn>\n\t<msup>\n\t\t<mi>x</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>y</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>6</mn>\n\t\t\t</msup>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>2</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"},{"id":"881e1380-4fee-45a1-bcc9-90582eedc394","content":"<p><math alttext=\"6 x squared y squared left parenthesis x Superscript 4 Baseline plus 2 right parenthesis\"><mrow>\n\t<mn>6</mn>\n\t<msup>\n\t\t<mi>x</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>y</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>4</mn>\n\t\t\t</msup>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>2</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["f8bbf18f-194a-4645-af5f-9d56ebbd4f5e"]$SATQ$::jsonb, $SATQ$<p>Choice C is correct. Since each term of the given expression has a common factor of <math alttext="6 x squared y squared"><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, it may be rewritten as <math alttext="6 x squared y squared left parenthesis x Superscript 6 Baseline right parenthesis plus 6 x squared y squared left parenthesis 2 right parenthesis"><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>(</mo><msup><mi>x</mi><mn>6</mn></msup><mo>)</mo><mo>+</mo><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>(</mo><mn>2</mn><mo>)</mo></math>, or <math alttext="6 x squared y squared left parenthesis x Superscript 6 Baseline plus 2 right parenthesis"><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>(</mo><msup><mi>x</mi><mn>6</mn></msup><mo>+</mo><mn>2</mn><mo>)</mo></math>.</p>
<p>Choice A is incorrect. This expression is equivalent to <math alttext="12 x Superscript 8 Baseline y squared"><mn>12</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, not <math alttext="6 x Superscript 8 Baseline y squared plus 12 x squared y squared"><mn>6</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>.</p>
<p>Choice B is incorrect. This expression is equivalent to <math alttext="6 x Superscript 6 Baseline y squared"><mn>6</mn><msup><mi>x</mi><mn>6</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, not <math alttext="6 x Superscript 8 Baseline y squared plus 12 x squared y squared"><mn>6</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>.</p>
<p>Choice D is incorrect. This expression is equivalent to <math alttext="6 x Superscript 6 Baseline y squared plus 12 x squared y squared"><mn>6</mn><msup><mi>x</mi><mn>6</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, not <math alttext="6 x Superscript 8 Baseline y squared plus 12 x squared y squared"><mn>6</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"26eb61c1","external_id":"322bacf8-a04d-4c31-8a29-228d7b8ccca3","disclosed_item_id":null,"source":"qbank","vaultid":"7e133b80-b53b-42e0-a13f-6ea926a64615","uId":"87896da4-48cf-40fc-8cae-8aca2dc48153","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.A.","skill_desc":"Equivalent expressions","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p>Which expression is equivalent to <math alttext=\"6 x Superscript 8 Baseline y squared plus 12 x squared y squared\"><mrow>\n\t<mrow>\n\t\t<mn>6</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>8</mn>\n\t\t</msup>\n\t\t<msup>\n\t\t\t<mi>y</mi>\n\t\t\t<mn>2</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mrow>\n\t\t<mn>12</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>2</mn>\n\t\t</msup>\n\t\t<msup>\n\t\t\t<mi>y</mi>\n\t\t\t<mn>2</mn>\n\t\t</msup>\n\t</mrow>\n</mrow>\n</math>?</p>","answerOptions":[{"id":"a376a8df-8efc-4e97-bfee-ad798057dd7e","content":"<p><math alttext=\"6 x squared y squared left parenthesis 2 x Superscript 6 Baseline right parenthesis\"><mrow><mn>6</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mfenced><mrow><mrow><mn>2</mn></mrow><msup><mi>x</mi><mrow><mn>6</mn></mrow></msup></mrow></mfenced></math></p>"},{"id":"dc509f72-45fa-452a-aabd-a76932f88576","content":"<p><math alttext=\"6 x squared y squared left parenthesis x Superscript 4 Baseline right parenthesis\"><mrow><mn>6</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mfenced><msup><mi>x</mi><mrow><mn>4</mn></mrow></msup></mfenced></math></p>"},{"id":"f8bbf18f-194a-4645-af5f-9d56ebbd4f5e","content":"<p><math alttext=\"6 x squared y squared left parenthesis x Superscript 6 Baseline plus 2 right parenthesis\"><mrow>\n\t<mn>6</mn>\n\t<msup>\n\t\t<mi>x</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>y</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>6</mn>\n\t\t\t</msup>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>2</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"},{"id":"881e1380-4fee-45a1-bcc9-90582eedc394","content":"<p><math alttext=\"6 x squared y squared left parenthesis x Superscript 4 Baseline plus 2 right parenthesis\"><mrow>\n\t<mn>6</mn>\n\t<msup>\n\t\t<mi>x</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>y</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>4</mn>\n\t\t\t</msup>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>2</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"}],"keys":["f8bbf18f-194a-4645-af5f-9d56ebbd4f5e"],"correct_answer":["C"],"rationale":"<p>Choice C is correct. Since each term of the given expression has a common factor of <math alttext=\"6 x squared y squared\"><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, it may be rewritten as <math alttext=\"6 x squared y squared left parenthesis x Superscript 6 Baseline right parenthesis plus 6 x squared y squared left parenthesis 2 right parenthesis\"><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>(</mo><msup><mi>x</mi><mn>6</mn></msup><mo>)</mo><mo>+</mo><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>(</mo><mn>2</mn><mo>)</mo></math>, or <math alttext=\"6 x squared y squared left parenthesis x Superscript 6 Baseline plus 2 right parenthesis\"><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>(</mo><msup><mi>x</mi><mn>6</mn></msup><mo>+</mo><mn>2</mn><mo>)</mo></math>.</p>\n<p>Choice A is incorrect. This expression is equivalent to <math alttext=\"12 x Superscript 8 Baseline y squared\"><mn>12</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, not <math alttext=\"6 x Superscript 8 Baseline y squared plus 12 x squared y squared\"><mn>6</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>.</p>\n<p>Choice B is incorrect. This expression is equivalent to <math alttext=\"6 x Superscript 6 Baseline y squared\"><mn>6</mn><msup><mi>x</mi><mn>6</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, not <math alttext=\"6 x Superscript 8 Baseline y squared plus 12 x squared y squared\"><mn>6</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>.</p>\n<p>Choice D is incorrect. This expression is equivalent to <math alttext=\"6 x Superscript 6 Baseline y squared plus 12 x squared y squared\"><mn>6</mn><msup><mi>x</mi><mn>6</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, not <math alttext=\"6 x Superscript 8 Baseline y squared plus 12 x squared y squared\"><mn>6</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959821,"pPcc":"SAT#P","questionId":"26eb61c1","skill_cd":"P.A.","score_band_range_cd":5,"skill_desc":"Equivalent expressions","createDate":1691007959821,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":null,"external_id":"322bacf8-a04d-4c31-8a29-228d7b8ccca3","primary_class_cd":"P","uId":"87896da4-48cf-40fc-8cae-8aca2dc48153","difficulty":"M"},"raw_detail":{"keys":["f8bbf18f-194a-4645-af5f-9d56ebbd4f5e"],"rationale":"<p>Choice C is correct. Since each term of the given expression has a common factor of <math alttext=\"6 x squared y squared\"><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, it may be rewritten as <math alttext=\"6 x squared y squared left parenthesis x Superscript 6 Baseline right parenthesis plus 6 x squared y squared left parenthesis 2 right parenthesis\"><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>(</mo><msup><mi>x</mi><mn>6</mn></msup><mo>)</mo><mo>+</mo><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>(</mo><mn>2</mn><mo>)</mo></math>, or <math alttext=\"6 x squared y squared left parenthesis x Superscript 6 Baseline plus 2 right parenthesis\"><mn>6</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>(</mo><msup><mi>x</mi><mn>6</mn></msup><mo>+</mo><mn>2</mn><mo>)</mo></math>.</p>\n<p>Choice A is incorrect. This expression is equivalent to <math alttext=\"12 x Superscript 8 Baseline y squared\"><mn>12</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, not <math alttext=\"6 x Superscript 8 Baseline y squared plus 12 x squared y squared\"><mn>6</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>.</p>\n<p>Choice B is incorrect. This expression is equivalent to <math alttext=\"6 x Superscript 6 Baseline y squared\"><mn>6</mn><msup><mi>x</mi><mn>6</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, not <math alttext=\"6 x Superscript 8 Baseline y squared plus 12 x squared y squared\"><mn>6</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>.</p>\n<p>Choice D is incorrect. This expression is equivalent to <math alttext=\"6 x Superscript 6 Baseline y squared plus 12 x squared y squared\"><mn>6</mn><msup><mi>x</mi><mn>6</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>, not <math alttext=\"6 x Superscript 8 Baseline y squared plus 12 x squared y squared\"><mn>6</mn><msup><mi>x</mi><mn>8</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mo>+</mo><mn>12</mn><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup></math>.</p>","origin":"manifold","stem":"<p>Which expression is equivalent to <math alttext=\"6 x Superscript 8 Baseline y squared plus 12 x squared y squared\"><mrow>\n\t<mrow>\n\t\t<mn>6</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>8</mn>\n\t\t</msup>\n\t\t<msup>\n\t\t\t<mi>y</mi>\n\t\t\t<mn>2</mn>\n\t\t</msup>\n\t</mrow>\n\t<mo>+</mo>\n\t<mrow>\n\t\t<mn>12</mn>\n\t\t<msup>\n\t\t\t<mi>x</mi>\n\t\t\t<mn>2</mn>\n\t\t</msup>\n\t\t<msup>\n\t\t\t<mi>y</mi>\n\t\t\t<mn>2</mn>\n\t\t</msup>\n\t</mrow>\n</mrow>\n</math>?</p>","externalid":"322bacf8-a04d-4c31-8a29-228d7b8ccca3","templateid":"199825c2-00f3-4475-b410-43d543b34c45","vaultid":"7e133b80-b53b-42e0-a13f-6ea926a64615","type":"mcq","answerOptions":[{"id":"a376a8df-8efc-4e97-bfee-ad798057dd7e","content":"<p><math alttext=\"6 x squared y squared left parenthesis 2 x Superscript 6 Baseline right parenthesis\"><mrow><mn>6</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mfenced><mrow><mrow><mn>2</mn></mrow><msup><mi>x</mi><mrow><mn>6</mn></mrow></msup></mrow></mfenced></math></p>"},{"id":"dc509f72-45fa-452a-aabd-a76932f88576","content":"<p><math alttext=\"6 x squared y squared left parenthesis x Superscript 4 Baseline right parenthesis\"><mrow><mn>6</mn></mrow><msup><mi>x</mi><mn>2</mn></msup><msup><mi>y</mi><mn>2</mn></msup><mfenced><msup><mi>x</mi><mrow><mn>4</mn></mrow></msup></mfenced></math></p>"},{"id":"f8bbf18f-194a-4645-af5f-9d56ebbd4f5e","content":"<p><math alttext=\"6 x squared y squared left parenthesis x Superscript 6 Baseline plus 2 right parenthesis\"><mrow>\n\t<mn>6</mn>\n\t<msup>\n\t\t<mi>x</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>y</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>6</mn>\n\t\t\t</msup>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>2</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"},{"id":"881e1380-4fee-45a1-bcc9-90582eedc394","content":"<p><math alttext=\"6 x squared y squared left parenthesis x Superscript 4 Baseline plus 2 right parenthesis\"><mrow>\n\t<mn>6</mn>\n\t<msup>\n\t\t<mi>x</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<msup>\n\t\t<mi>y</mi>\n\t\t<mn>2</mn>\n\t</msup>\n\t<mfenced>\n\t\t<mrow>\n\t\t\t<msup>\n\t\t\t\t<mi>x</mi>\n\t\t\t\t<mn>4</mn>\n\t\t\t</msup>\n\t\t\t<mo>+</mo>\n\t\t\t<mn>2</mn>\n\t\t</mrow>\n\t</mfenced>\n</mrow>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959821,"updateDate":1691007959821}$SATQ$::jsonb, 1691007959821, 1691007959821),
    ($SATQ$26f5269a$SATQ$, $SATQ$591c966e-550b-4b07-97bb-f659afe623d8$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Advanced Math$SATQ$, $SATQ$P$SATQ$, $SATQ$P.C.$SATQ$, $SATQ$Nonlinear functions$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="275.22pt" version="1.1" viewBox="0 0 286.56 275.22" width="286.56pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a curve in the x y plane with the origin labeled O. The x axis ranges from negative 2 to 10. The y axis ranges from 0 to 80. Refer to long description.">
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
    <path d="M 10.869179 268.02 
L 270.020821 268.02 
L 270.020821 7.2 
L 10.869179 7.2 
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
   </g>
   <g id="LineCollection_1">
    <path clip-path="url(#p0d5c12a1d0)" d="M 40.343507 246.558847 
L 40.343507 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 107.75192 246.558847 
L 107.75192 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 141.456126 246.558847 
L 141.456126 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 175.160332 246.558847 
L 175.160332 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 208.864539 246.558847 
L 208.864539 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 242.568745 246.558847 
L 242.568745 34.222347 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 228.864138 
L 247.624376 228.864138 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 216.225061 
L 247.624376 216.225061 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 203.585984 
L 247.624376 203.585984 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 190.946906 
L 247.624376 190.946906 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 178.307829 
L 247.624376 178.307829 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 165.668752 
L 247.624376 165.668752 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 153.029674 
L 247.624376 153.029674 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 140.390597 
L 247.624376 140.390597 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 127.75152 
L 247.624376 127.75152 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 115.112442 
L 247.624376 115.112442 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 102.473365 
L 247.624376 102.473365 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 89.834288 
L 247.624376 89.834288 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 77.19521 
L 247.624376 77.19521 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 64.556133 
L 247.624376 64.556133 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 51.917056 
L 247.624376 51.917056 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 39.277978 
L 247.624376 39.277978 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.287877 241.503216 
L 252.680007 241.503216 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 249.942118 -32.732334 
L 252.680007 -33.716784 
L 249.942118 -34.701235 
L 249.942118 -32.732334 
L 252.680007 -33.716784 
" id="mb41c4a744e" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p0d5c12a1d0)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#mb41c4a744e" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#p0d5c12a1d0)" d="M 74.047714 246.558847 
L 74.047714 29.166716 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 75.01716 -242.479045 
L 74.047714 -246.053284 
L 73.078267 -242.479045 
L 75.01716 -242.479045 
L 74.047714 -246.053284 
" id="m2021a6cc2b" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p0d5c12a1d0)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m2021a6cc2b" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#p0d5c12a1d0)" d="M 40.343507 245.228417 
L 40.343507 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 107.75192 245.228417 
L 107.75192 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 141.456126 245.228417 
L 141.456126 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 175.160332 245.228417 
L 175.160332 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 208.864539 245.228417 
L 208.864539 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 242.568745 245.228417 
L 242.568745 237.778014 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 228.864138 
L 77.772915 228.864138 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 216.225061 
L 77.772915 216.225061 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 203.585984 
L 77.772915 203.585984 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 190.946906 
L 77.772915 190.946906 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 178.307829 
L 77.772915 178.307829 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 165.668752 
L 77.772915 165.668752 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 153.029674 
L 77.772915 153.029674 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 140.390597 
L 77.772915 140.390597 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 127.75152 
L 77.772915 127.75152 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 115.112442 
L 77.772915 115.112442 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 102.473365 
L 77.772915 102.473365 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 89.834288 
L 77.772915 89.834288 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 77.19521 
L 77.772915 77.19521 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 64.556133 
L 77.772915 64.556133 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 51.917056 
L 77.772915 51.917056 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p0d5c12a1d0)" d="M 70.322512 39.277978 
L 77.772915 39.277978 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#p0d5c12a1d0)" d="M 59.639166 234.930896 
L 59.639166 223.808507 
L 67.222612 223.808507 
L 67.222612 234.930896 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_1">
    <g clip-path="url(#p0d5c12a1d0)">
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
     <g transform="translate(59.865924 233.555781)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_2">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 5 -->
     <g transform="translate(59.865924 233.555781)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 222.291818 
L 53.319627 211.16943 
L 67.475393 211.16943 
L 67.475393 222.291818 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_3">
    <g clip-path="url(#p0d5c12a1d0)">
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
     <g transform="translate(52.790143 220.916703)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_4">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 10 -->
     <g transform="translate(52.790143 220.916703)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 209.652741 
L 53.319627 198.530353 
L 67.475393 198.530353 
L 67.475393 209.652741 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_5">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 15 -->
     <g transform="translate(52.77608 208.277626)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_6">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 15 -->
     <g transform="translate(52.77608 208.277626)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 197.013664 
L 53.319627 185.891275 
L 67.475393 185.891275 
L 67.475393 197.013664 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_7">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 20 -->
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
     <g transform="translate(52.790143 195.638548)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_8">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 20 -->
     <g transform="translate(52.790143 195.638548)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 184.374586 
L 53.319627 173.252198 
L 67.475393 173.252198 
L 67.475393 184.374586 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_9">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 25 -->
     <g transform="translate(52.77608 182.999471)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_10">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 25 -->
     <g transform="translate(52.77608 182.999471)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 171.735509 
L 53.319627 160.613121 
L 67.475393 160.613121 
L 67.475393 171.735509 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_11">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 30 -->
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
     <g transform="translate(52.77608 170.360394)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_12">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 30 -->
     <g transform="translate(52.77608 170.360394)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 159.096431 
L 53.319627 147.974043 
L 67.475393 147.974043 
L 67.475393 159.096431 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_13">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 35 -->
     <g transform="translate(52.762018 157.721316)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_14">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 35 -->
     <g transform="translate(52.762018 157.721316)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 146.457354 
L 53.319627 135.334966 
L 67.475393 135.334966 
L 67.475393 146.457354 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_15">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 40 -->
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
     <g transform="translate(52.818268 145.082239)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
      <use x="47.070312" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_16">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 40 -->
     <g transform="translate(52.818268 145.082239)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
      <use x="47.070312" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 133.818277 
L 53.319627 122.695889 
L 67.475393 122.695889 
L 67.475393 133.818277 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_17">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 45 -->
     <g transform="translate(52.804205 132.443162)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
      <use x="47.070312" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_18">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 45 -->
     <g transform="translate(52.804205 132.443162)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
      <use x="47.070312" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 121.179199 
L 53.319627 110.056811 
L 67.475393 110.056811 
L 67.475393 121.179199 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_19">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 50 -->
     <g transform="translate(52.77608 119.804084)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_20">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 50 -->
     <g transform="translate(52.77608 119.804084)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 108.540122 
L 53.319627 97.417734 
L 67.475393 97.417734 
L 67.475393 108.540122 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_21">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 55 -->
     <g transform="translate(52.762018 107.165007)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_22">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 55 -->
     <g transform="translate(52.762018 107.165007)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
      <use x="47.363281" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 95.901045 
L 53.319627 84.778657 
L 67.475393 84.778657 
L 67.475393 95.901045 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_23">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 60 -->
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
     <g transform="translate(52.790143 94.52593)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_24">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 60 -->
     <g transform="translate(52.790143 94.52593)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 83.261967 
L 53.319627 72.139579 
L 67.475393 72.139579 
L 67.475393 83.261967 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_25">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 65 -->
     <g transform="translate(52.77608 81.886852)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_26">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 65 -->
     <g transform="translate(52.77608 81.886852)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_14">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 70.62289 
L 53.319627 59.500502 
L 67.475393 59.500502 
L 67.475393 70.62289 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_27">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 70 -->
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
     <g transform="translate(52.804205 69.247775)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
      <use x="47.167969" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_28">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 70 -->
     <g transform="translate(52.804205 69.247775)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
      <use x="47.167969" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_15">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 57.983813 
L 53.319627 46.861425 
L 67.475393 46.861425 
L 67.475393 57.983813 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_29">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 75 -->
     <g transform="translate(52.790143 56.608698)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
      <use x="47.167969" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_30">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 75 -->
     <g transform="translate(52.790143 56.608698)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
      <use x="47.167969" xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_16">
    <path clip-path="url(#p0d5c12a1d0)" d="M 53.319627 45.344735 
L 53.319627 34.222347 
L 67.475393 34.222347 
L 67.475393 45.344735 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_31">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 80 -->
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
     <g transform="translate(52.790143 43.96962)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_32">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 80 -->
     <g transform="translate(52.790143 43.96962)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_17">
    <path clip-path="url(#p0d5c12a1d0)" d="M 22.648799 249.592225 
L 22.648799 253.63673 
L 35.79344 253.63673 
L 35.79344 249.592225 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_18">
    <path clip-path="url(#p0d5c12a1d0)" d="M 35.79344 256.164545 
L 35.79344 245.042157 
L 43.376886 245.042157 
L 43.376886 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_33">
    <g clip-path="url(#p0d5c12a1d0)">
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
     <g transform="translate(28.736065 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_34">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 2 -->
     <g transform="translate(35.781479 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_35">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 2 -->
     <g transform="translate(35.781479 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_19">
    <path clip-path="url(#p0d5c12a1d0)" d="M 103.201852 256.164545 
L 103.201852 245.042157 
L 110.785299 245.042157 
L 110.785299 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_36">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 2 -->
     <g transform="translate(103.189892 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_37">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 2 -->
     <g transform="translate(103.189892 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_20">
    <path clip-path="url(#p0d5c12a1d0)" d="M 136.906058 256.164545 
L 136.906058 245.042157 
L 144.489505 245.042157 
L 144.489505 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_38">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 4 -->
     <g transform="translate(136.922223 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_39">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 4 -->
     <g transform="translate(136.922223 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_21">
    <path clip-path="url(#p0d5c12a1d0)" d="M 170.610265 256.164545 
L 170.610265 245.042157 
L 178.193711 245.042157 
L 178.193711 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_40">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 6 -->
     <g transform="translate(170.598304 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_41">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 6 -->
     <g transform="translate(170.598304 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_22">
    <path clip-path="url(#p0d5c12a1d0)" d="M 204.314471 256.164545 
L 204.314471 245.042157 
L 211.897917 245.042157 
L 211.897917 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_42">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 8 -->
     <g transform="translate(204.30251 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_43">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 8 -->
     <g transform="translate(204.30251 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_23">
    <path clip-path="url(#p0d5c12a1d0)" d="M 233.974172 256.164545 
L 233.974172 245.042157 
L 248.129939 245.042157 
L 248.129939 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_44">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 10 -->
     <g transform="translate(233.444688 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_45">
    <g clip-path="url(#p0d5c12a1d0)">
     <!-- 10 -->
     <g transform="translate(233.444688 255.042212)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_46">
    <g clip-path="url(#p0d5c12a1d0)">
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
     <g transform="translate(62.652299 251.62363)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_47">
    <g clip-path="url(#p0d5c12a1d0)">
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
     <g transform="translate(70.53912 22.350767)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_48">
    <g clip-path="url(#p0d5c12a1d0)">
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
     <g transform="translate(254.754873 244.798528)scale(0.15 -0.15)">
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
" id="m8ee6376c87" style="stroke:#000000;"></path>
    </defs>
    <g clip-path="url(#p0d5c12a1d0)">
     <use style="stroke:#000000;" x="74.047714" xlink:href="#m8ee6376c87" y="140.390597"></use>
    </g>
   </g>
   <g id="line2d_2">
    <path clip-path="url(#p0d5c12a1d0)" d="M 56.959208 243.389585 
L 59.796035 221.663214 
L 62.227601 204.586922 
L 64.659167 188.889902 
L 67.090733 174.526594 
L 69.522299 161.451437 
L 71.953865 149.618869 
L 74.385431 138.98333 
L 76.411736 131.001908 
L 78.438041 123.79375 
L 80.464346 117.33249 
L 82.490651 111.591762 
L 84.516956 106.545198 
L 86.543261 102.166434 
L 88.164305 99.12652 
L 89.785349 96.483624 
L 91.406393 94.224245 
L 93.027437 92.334885 
L 94.648481 90.802044 
L 96.269525 89.612222 
L 97.890569 88.75192 
L 99.511613 88.207638 
L 101.132657 87.965877 
L 102.753701 88.013137 
L 104.374745 88.335918 
L 105.995789 88.920722 
L 107.616833 89.754049 
L 109.237877 90.822399 
L 111.264182 92.467771 
L 113.290487 94.432908 
L 115.316792 96.691443 
L 117.748358 99.751846 
L 120.585185 103.747532 
L 123.422012 108.132237 
L 127.069361 114.224903 
L 131.527232 122.158098 
L 146.116628 148.532702 
L 149.358716 153.798714 
L 152.195543 158.040731 
L 155.03237 161.865592 
L 157.463936 164.757182 
L 159.490241 166.859247 
L 161.516546 168.65356 
L 163.542851 170.113753 
L 165.163895 171.023624 
L 166.784938 171.689285 
L 168.405982 172.097235 
L 170.027026 172.233977 
L 171.64807 172.086009 
L 172.863853 171.780073 
L 174.079636 171.300699 
L 175.70068 170.381898 
L 177.321724 169.131141 
L 178.942768 167.534927 
L 180.563812 165.579757 
L 182.184856 163.25213 
L 183.8059 160.538549 
L 185.426944 157.425512 
L 187.047988 153.899521 
L 189.074293 148.89075 
L 191.100598 143.189278 
L 193.126903 136.768739 
L 195.153208 129.602767 
L 197.179513 121.664996 
L 199.205818 112.929059 
L 201.637384 101.355232 
L 204.06895 88.548518 
L 206.500516 74.463357 
L 208.932082 59.054187 
L 211.363648 42.275447 
L 212.17417 36.37031 
L 212.17417 36.37031 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="p0d5c12a1d0">
   <rect height="260.82" width="259.151642" x="10.869179" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a curve" class="sr-only"><ul><li>Moving from left to right, the curve passes from quadrant 2 to quadrant 1.</li>
<li>The curve has 1 relative maximum and 1 relative minimum.</li>
<li>The curve passes through the following points:<ul><li>(0 comma 40)</li><li>(4 comma 40)</li><li>(7 comma 40)</li></ul></li>
</ul></div></figure></p>
<p style="text-align: left;">The&nbsp;<em>y</em>-intercept of the graph shown is&nbsp;<math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext="y"><mi>y</mi>
</math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["40"]$SATQ$::jsonb, $SATQ$["40"]$SATQ$::jsonb, $SATQ$<p>The correct answer is <math alttext="40"><mn>40</mn>
</math>. The <em>y</em>-intercept of a graph in the <em>xy</em>-plane is the point <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> on the graph where <math alttext="x equals 0"><mi>x</mi><mo>=</mo><mn>0</mn></math>. The <em>y</em>-intercept of the graph shown is <math alttext="left parenthesis 0 comma 40 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>40</mn></mrow></mfenced></math>. Therefore, the value of <math alttext="y"><mi>y</mi>
</math> is <math alttext="40"><mn>40</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"26f5269a","external_id":"591c966e-550b-4b07-97bb-f659afe623d8","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"d7855708-d016-4f27-9885-dcff05a1db4c","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"P","domain":"Advanced Math","skill_cd":"P.C.","skill_desc":"Nonlinear functions","difficulty":"E","score_band_range_cd":1,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 286.56 275.22\" width=\"286.56pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a curve in the x y plane with the origin labeled O. The x axis ranges from negative 2 to 10. The y axis ranges from 0 to 80. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 286.56 275.22 \nL 286.56 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 7.2 260.46 \nL 279.36 260.46 \nL 279.36 10.98 \nL 7.2 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 10.869179 268.02 \nL 270.020821 268.02 \nL 270.020821 7.2 \nL 10.869179 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 40.343507 246.558847 \nL 40.343507 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 107.75192 246.558847 \nL 107.75192 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 141.456126 246.558847 \nL 141.456126 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 175.160332 246.558847 \nL 175.160332 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 208.864539 246.558847 \nL 208.864539 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 242.568745 246.558847 \nL 242.568745 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 228.864138 \nL 247.624376 228.864138 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 216.225061 \nL 247.624376 216.225061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 203.585984 \nL 247.624376 203.585984 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 190.946906 \nL 247.624376 190.946906 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 178.307829 \nL 247.624376 178.307829 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 165.668752 \nL 247.624376 165.668752 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 153.029674 \nL 247.624376 153.029674 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 140.390597 \nL 247.624376 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 127.75152 \nL 247.624376 127.75152 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 115.112442 \nL 247.624376 115.112442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 102.473365 \nL 247.624376 102.473365 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 89.834288 \nL 247.624376 89.834288 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 77.19521 \nL 247.624376 77.19521 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 64.556133 \nL 247.624376 64.556133 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 51.917056 \nL 247.624376 51.917056 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 39.277978 \nL 247.624376 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 241.503216 \nL 252.680007 241.503216 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 249.942118 -32.732334 \nL 252.680007 -33.716784 \nL 249.942118 -34.701235 \nL 249.942118 -32.732334 \nL 252.680007 -33.716784 \n\" id=\"mb41c4a744e\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mb41c4a744e\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 74.047714 246.558847 \nL 74.047714 29.166716 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 75.01716 -242.479045 \nL 74.047714 -246.053284 \nL 73.078267 -242.479045 \nL 75.01716 -242.479045 \nL 74.047714 -246.053284 \n\" id=\"m2021a6cc2b\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m2021a6cc2b\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 40.343507 245.228417 \nL 40.343507 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 107.75192 245.228417 \nL 107.75192 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 141.456126 245.228417 \nL 141.456126 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 175.160332 245.228417 \nL 175.160332 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 208.864539 245.228417 \nL 208.864539 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 242.568745 245.228417 \nL 242.568745 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 228.864138 \nL 77.772915 228.864138 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 216.225061 \nL 77.772915 216.225061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 203.585984 \nL 77.772915 203.585984 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 190.946906 \nL 77.772915 190.946906 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 178.307829 \nL 77.772915 178.307829 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 165.668752 \nL 77.772915 165.668752 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 153.029674 \nL 77.772915 153.029674 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 140.390597 \nL 77.772915 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 127.75152 \nL 77.772915 127.75152 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 115.112442 \nL 77.772915 115.112442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 102.473365 \nL 77.772915 102.473365 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 89.834288 \nL 77.772915 89.834288 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 77.19521 \nL 77.772915 77.19521 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 64.556133 \nL 77.772915 64.556133 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 51.917056 \nL 77.772915 51.917056 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 39.277978 \nL 77.772915 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 59.639166 234.930896 \nL 59.639166 223.808507 \nL 67.222612 223.808507 \nL 67.222612 234.930896 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 5 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n     </defs>\n     <g transform=\"translate(59.865924 233.555781)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 5 -->\n     <g transform=\"translate(59.865924 233.555781)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 222.291818 \nL 53.319627 211.16943 \nL 67.475393 211.16943 \nL 67.475393 222.291818 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(52.790143 220.916703)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 10 -->\n     <g transform=\"translate(52.790143 220.916703)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 209.652741 \nL 53.319627 198.530353 \nL 67.475393 198.530353 \nL 67.475393 209.652741 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 15 -->\n     <g transform=\"translate(52.77608 208.277626)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 15 -->\n     <g transform=\"translate(52.77608 208.277626)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 197.013664 \nL 53.319627 185.891275 \nL 67.475393 185.891275 \nL 67.475393 197.013664 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 20 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(52.790143 195.638548)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 20 -->\n     <g transform=\"translate(52.790143 195.638548)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 184.374586 \nL 53.319627 173.252198 \nL 67.475393 173.252198 \nL 67.475393 184.374586 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 25 -->\n     <g transform=\"translate(52.77608 182.999471)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 25 -->\n     <g transform=\"translate(52.77608 182.999471)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 171.735509 \nL 53.319627 160.613121 \nL 67.475393 160.613121 \nL 67.475393 171.735509 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 30 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(52.77608 170.360394)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 30 -->\n     <g transform=\"translate(52.77608 170.360394)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 159.096431 \nL 53.319627 147.974043 \nL 67.475393 147.974043 \nL 67.475393 159.096431 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 35 -->\n     <g transform=\"translate(52.762018 157.721316)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 35 -->\n     <g transform=\"translate(52.762018 157.721316)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 146.457354 \nL 53.319627 135.334966 \nL 67.475393 135.334966 \nL 67.475393 146.457354 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 40 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(52.818268 145.082239)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 40 -->\n     <g transform=\"translate(52.818268 145.082239)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 133.818277 \nL 53.319627 122.695889 \nL 67.475393 122.695889 \nL 67.475393 133.818277 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 45 -->\n     <g transform=\"translate(52.804205 132.443162)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 45 -->\n     <g transform=\"translate(52.804205 132.443162)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 121.179199 \nL 53.319627 110.056811 \nL 67.475393 110.056811 \nL 67.475393 121.179199 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 50 -->\n     <g transform=\"translate(52.77608 119.804084)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 50 -->\n     <g transform=\"translate(52.77608 119.804084)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 108.540122 \nL 53.319627 97.417734 \nL 67.475393 97.417734 \nL 67.475393 108.540122 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 55 -->\n     <g transform=\"translate(52.762018 107.165007)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 55 -->\n     <g transform=\"translate(52.762018 107.165007)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 95.901045 \nL 53.319627 84.778657 \nL 67.475393 84.778657 \nL 67.475393 95.901045 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 60 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(52.790143 94.52593)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 60 -->\n     <g transform=\"translate(52.790143 94.52593)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 83.261967 \nL 53.319627 72.139579 \nL 67.475393 72.139579 \nL 67.475393 83.261967 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 65 -->\n     <g transform=\"translate(52.77608 81.886852)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 65 -->\n     <g transform=\"translate(52.77608 81.886852)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 70.62289 \nL 53.319627 59.500502 \nL 67.475393 59.500502 \nL 67.475393 70.62289 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 70 -->\n     <defs>\n      <path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n     </defs>\n     <g transform=\"translate(52.804205 69.247775)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n      <use x=\"47.167969\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 70 -->\n     <g transform=\"translate(52.804205 69.247775)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n      <use x=\"47.167969\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 57.983813 \nL 53.319627 46.861425 \nL 67.475393 46.861425 \nL 67.475393 57.983813 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 75 -->\n     <g transform=\"translate(52.790143 56.608698)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n      <use x=\"47.167969\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 75 -->\n     <g transform=\"translate(52.790143 56.608698)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n      <use x=\"47.167969\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 45.344735 \nL 53.319627 34.222347 \nL 67.475393 34.222347 \nL 67.475393 45.344735 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 80 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(52.790143 43.96962)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 80 -->\n     <g transform=\"translate(52.790143 43.96962)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 22.648799 249.592225 \nL 22.648799 253.63673 \nL 35.79344 253.63673 \nL 35.79344 249.592225 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.79344 256.164545 \nL 35.79344 245.042157 \nL 43.376886 245.042157 \nL 43.376886 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(28.736065 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 2 -->\n     <g transform=\"translate(35.781479 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 2 -->\n     <g transform=\"translate(35.781479 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 103.201852 256.164545 \nL 103.201852 245.042157 \nL 110.785299 245.042157 \nL 110.785299 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 2 -->\n     <g transform=\"translate(103.189892 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 2 -->\n     <g transform=\"translate(103.189892 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 136.906058 256.164545 \nL 136.906058 245.042157 \nL 144.489505 245.042157 \nL 144.489505 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 4 -->\n     <g transform=\"translate(136.922223 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 4 -->\n     <g transform=\"translate(136.922223 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 170.610265 256.164545 \nL 170.610265 245.042157 \nL 178.193711 245.042157 \nL 178.193711 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 6 -->\n     <g transform=\"translate(170.598304 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 6 -->\n     <g transform=\"translate(170.598304 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_22\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 204.314471 256.164545 \nL 204.314471 245.042157 \nL 211.897917 245.042157 \nL 211.897917 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 8 -->\n     <g transform=\"translate(204.30251 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 8 -->\n     <g transform=\"translate(204.30251 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_23\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 233.974172 256.164545 \nL 233.974172 245.042157 \nL 248.129939 245.042157 \nL 248.129939 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_44\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 10 -->\n     <g transform=\"translate(233.444688 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_45\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 10 -->\n     <g transform=\"translate(233.444688 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_46\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(62.652299 251.62363)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_47\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(70.53912 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_48\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(254.754873 244.798528)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"m8ee6376c87\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <use style=\"stroke:#000000;\" x=\"74.047714\" xlink:href=\"#m8ee6376c87\" y=\"140.390597\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 56.959208 243.389585 \nL 59.796035 221.663214 \nL 62.227601 204.586922 \nL 64.659167 188.889902 \nL 67.090733 174.526594 \nL 69.522299 161.451437 \nL 71.953865 149.618869 \nL 74.385431 138.98333 \nL 76.411736 131.001908 \nL 78.438041 123.79375 \nL 80.464346 117.33249 \nL 82.490651 111.591762 \nL 84.516956 106.545198 \nL 86.543261 102.166434 \nL 88.164305 99.12652 \nL 89.785349 96.483624 \nL 91.406393 94.224245 \nL 93.027437 92.334885 \nL 94.648481 90.802044 \nL 96.269525 89.612222 \nL 97.890569 88.75192 \nL 99.511613 88.207638 \nL 101.132657 87.965877 \nL 102.753701 88.013137 \nL 104.374745 88.335918 \nL 105.995789 88.920722 \nL 107.616833 89.754049 \nL 109.237877 90.822399 \nL 111.264182 92.467771 \nL 113.290487 94.432908 \nL 115.316792 96.691443 \nL 117.748358 99.751846 \nL 120.585185 103.747532 \nL 123.422012 108.132237 \nL 127.069361 114.224903 \nL 131.527232 122.158098 \nL 146.116628 148.532702 \nL 149.358716 153.798714 \nL 152.195543 158.040731 \nL 155.03237 161.865592 \nL 157.463936 164.757182 \nL 159.490241 166.859247 \nL 161.516546 168.65356 \nL 163.542851 170.113753 \nL 165.163895 171.023624 \nL 166.784938 171.689285 \nL 168.405982 172.097235 \nL 170.027026 172.233977 \nL 171.64807 172.086009 \nL 172.863853 171.780073 \nL 174.079636 171.300699 \nL 175.70068 170.381898 \nL 177.321724 169.131141 \nL 178.942768 167.534927 \nL 180.563812 165.579757 \nL 182.184856 163.25213 \nL 183.8059 160.538549 \nL 185.426944 157.425512 \nL 187.047988 153.899521 \nL 189.074293 148.89075 \nL 191.100598 143.189278 \nL 193.126903 136.768739 \nL 195.153208 129.602767 \nL 197.179513 121.664996 \nL 199.205818 112.929059 \nL 201.637384 101.355232 \nL 204.06895 88.548518 \nL 206.500516 74.463357 \nL 208.932082 59.054187 \nL 211.363648 42.275447 \nL 212.17417 36.37031 \nL 212.17417 36.37031 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p0d5c12a1d0\">\n   <rect height=\"260.82\" width=\"259.151642\" x=\"10.869179\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a curve\" class=\"sr-only\"><ul><li>Moving from left to right, the curve passes from quadrant 2 to quadrant 1.</li>\n<li>The curve has 1 relative maximum and 1 relative minimum.</li>\n<li>The curve passes through the following points:<ul><li>(0 comma 40)</li><li>(4 comma 40)</li><li>(7 comma 40)</li></ul></li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The&nbsp;<em>y</em>-intercept of the graph shown is&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"y\"><mi>y</mi>\n</math>?</p>","answerOptions":[],"keys":["40"],"correct_answer":["40"],"rationale":"<p>The correct answer is <math alttext=\"40\"><mn>40</mn>\n</math>. The <em>y</em>-intercept of a graph in the <em>xy</em>-plane is the point <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> on the graph where <math alttext=\"x equals 0\"><mi>x</mi><mo>=</mo><mn>0</mn></math>. The <em>y</em>-intercept of the graph shown is <math alttext=\"left parenthesis 0 comma 40 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>40</mn></mrow></mfenced></math>. Therefore, the value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"40\"><mn>40</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357400,"pPcc":"SAT#P","questionId":"26f5269a","skill_cd":"P.C.","score_band_range_cd":1,"skill_desc":"Nonlinear functions","createDate":1730147357400,"program":"SAT","primary_class_cd_desc":"Advanced Math","ibn":"","external_id":"591c966e-550b-4b07-97bb-f659afe623d8","primary_class_cd":"P","uId":"d7855708-d016-4f27-9885-dcff05a1db4c","difficulty":"E"},"raw_detail":{"answerOptions":[],"externalid":"591c966e-550b-4b07-97bb-f659afe623d8","keys":["40"],"rationale":"<p>The correct answer is <math alttext=\"40\"><mn>40</mn>\n</math>. The <em>y</em>-intercept of a graph in the <em>xy</em>-plane is the point <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> on the graph where <math alttext=\"x equals 0\"><mi>x</mi><mo>=</mo><mn>0</mn></math>. The <em>y</em>-intercept of the graph shown is <math alttext=\"left parenthesis 0 comma 40 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>40</mn></mrow></mfenced></math>. Therefore, the value of <math alttext=\"y\"><mi>y</mi>\n</math> is <math alttext=\"40\"><mn>40</mn>\n</math>.</p>","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 286.56 275.22\" width=\"286.56pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a curve in the x y plane with the origin labeled O. The x axis ranges from negative 2 to 10. The y axis ranges from 0 to 80. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 286.56 275.22 \nL 286.56 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 7.2 260.46 \nL 279.36 260.46 \nL 279.36 10.98 \nL 7.2 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 10.869179 268.02 \nL 270.020821 268.02 \nL 270.020821 7.2 \nL 10.869179 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 40.343507 246.558847 \nL 40.343507 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 107.75192 246.558847 \nL 107.75192 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 141.456126 246.558847 \nL 141.456126 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 175.160332 246.558847 \nL 175.160332 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 208.864539 246.558847 \nL 208.864539 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 242.568745 246.558847 \nL 242.568745 34.222347 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 228.864138 \nL 247.624376 228.864138 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 216.225061 \nL 247.624376 216.225061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 203.585984 \nL 247.624376 203.585984 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 190.946906 \nL 247.624376 190.946906 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 178.307829 \nL 247.624376 178.307829 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 165.668752 \nL 247.624376 165.668752 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 153.029674 \nL 247.624376 153.029674 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 140.390597 \nL 247.624376 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 127.75152 \nL 247.624376 127.75152 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 115.112442 \nL 247.624376 115.112442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 102.473365 \nL 247.624376 102.473365 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 89.834288 \nL 247.624376 89.834288 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 77.19521 \nL 247.624376 77.19521 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 64.556133 \nL 247.624376 64.556133 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 51.917056 \nL 247.624376 51.917056 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 39.277978 \nL 247.624376 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.287877 241.503216 \nL 252.680007 241.503216 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 249.942118 -32.732334 \nL 252.680007 -33.716784 \nL 249.942118 -34.701235 \nL 249.942118 -32.732334 \nL 252.680007 -33.716784 \n\" id=\"mb41c4a744e\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mb41c4a744e\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 74.047714 246.558847 \nL 74.047714 29.166716 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 75.01716 -242.479045 \nL 74.047714 -246.053284 \nL 73.078267 -242.479045 \nL 75.01716 -242.479045 \nL 74.047714 -246.053284 \n\" id=\"m2021a6cc2b\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m2021a6cc2b\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 40.343507 245.228417 \nL 40.343507 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 107.75192 245.228417 \nL 107.75192 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 141.456126 245.228417 \nL 141.456126 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 175.160332 245.228417 \nL 175.160332 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 208.864539 245.228417 \nL 208.864539 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 242.568745 245.228417 \nL 242.568745 237.778014 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 228.864138 \nL 77.772915 228.864138 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 216.225061 \nL 77.772915 216.225061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 203.585984 \nL 77.772915 203.585984 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 190.946906 \nL 77.772915 190.946906 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 178.307829 \nL 77.772915 178.307829 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 165.668752 \nL 77.772915 165.668752 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 153.029674 \nL 77.772915 153.029674 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 140.390597 \nL 77.772915 140.390597 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 127.75152 \nL 77.772915 127.75152 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 115.112442 \nL 77.772915 115.112442 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 102.473365 \nL 77.772915 102.473365 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 89.834288 \nL 77.772915 89.834288 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 77.19521 \nL 77.772915 77.19521 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 64.556133 \nL 77.772915 64.556133 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 51.917056 \nL 77.772915 51.917056 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 70.322512 39.277978 \nL 77.772915 39.277978 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 59.639166 234.930896 \nL 59.639166 223.808507 \nL 67.222612 223.808507 \nL 67.222612 234.930896 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 5 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n     </defs>\n     <g transform=\"translate(59.865924 233.555781)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 5 -->\n     <g transform=\"translate(59.865924 233.555781)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 222.291818 \nL 53.319627 211.16943 \nL 67.475393 211.16943 \nL 67.475393 222.291818 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(52.790143 220.916703)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 10 -->\n     <g transform=\"translate(52.790143 220.916703)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 209.652741 \nL 53.319627 198.530353 \nL 67.475393 198.530353 \nL 67.475393 209.652741 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 15 -->\n     <g transform=\"translate(52.77608 208.277626)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 15 -->\n     <g transform=\"translate(52.77608 208.277626)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 197.013664 \nL 53.319627 185.891275 \nL 67.475393 185.891275 \nL 67.475393 197.013664 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 20 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(52.790143 195.638548)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 20 -->\n     <g transform=\"translate(52.790143 195.638548)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 184.374586 \nL 53.319627 173.252198 \nL 67.475393 173.252198 \nL 67.475393 184.374586 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 25 -->\n     <g transform=\"translate(52.77608 182.999471)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 25 -->\n     <g transform=\"translate(52.77608 182.999471)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 171.735509 \nL 53.319627 160.613121 \nL 67.475393 160.613121 \nL 67.475393 171.735509 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 30 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(52.77608 170.360394)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 30 -->\n     <g transform=\"translate(52.77608 170.360394)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 159.096431 \nL 53.319627 147.974043 \nL 67.475393 147.974043 \nL 67.475393 159.096431 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 35 -->\n     <g transform=\"translate(52.762018 157.721316)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 35 -->\n     <g transform=\"translate(52.762018 157.721316)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 146.457354 \nL 53.319627 135.334966 \nL 67.475393 135.334966 \nL 67.475393 146.457354 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 40 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(52.818268 145.082239)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 40 -->\n     <g transform=\"translate(52.818268 145.082239)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 133.818277 \nL 53.319627 122.695889 \nL 67.475393 122.695889 \nL 67.475393 133.818277 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 45 -->\n     <g transform=\"translate(52.804205 132.443162)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 45 -->\n     <g transform=\"translate(52.804205 132.443162)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n      <use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 121.179199 \nL 53.319627 110.056811 \nL 67.475393 110.056811 \nL 67.475393 121.179199 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 50 -->\n     <g transform=\"translate(52.77608 119.804084)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 50 -->\n     <g transform=\"translate(52.77608 119.804084)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 108.540122 \nL 53.319627 97.417734 \nL 67.475393 97.417734 \nL 67.475393 108.540122 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 55 -->\n     <g transform=\"translate(52.762018 107.165007)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 55 -->\n     <g transform=\"translate(52.762018 107.165007)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n      <use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 95.901045 \nL 53.319627 84.778657 \nL 67.475393 84.778657 \nL 67.475393 95.901045 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 60 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(52.790143 94.52593)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 60 -->\n     <g transform=\"translate(52.790143 94.52593)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 83.261967 \nL 53.319627 72.139579 \nL 67.475393 72.139579 \nL 67.475393 83.261967 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 65 -->\n     <g transform=\"translate(52.77608 81.886852)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 65 -->\n     <g transform=\"translate(52.77608 81.886852)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 70.62289 \nL 53.319627 59.500502 \nL 67.475393 59.500502 \nL 67.475393 70.62289 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 70 -->\n     <defs>\n      <path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n     </defs>\n     <g transform=\"translate(52.804205 69.247775)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n      <use x=\"47.167969\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 70 -->\n     <g transform=\"translate(52.804205 69.247775)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n      <use x=\"47.167969\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 57.983813 \nL 53.319627 46.861425 \nL 67.475393 46.861425 \nL 67.475393 57.983813 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 75 -->\n     <g transform=\"translate(52.790143 56.608698)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n      <use x=\"47.167969\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 75 -->\n     <g transform=\"translate(52.790143 56.608698)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n      <use x=\"47.167969\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 53.319627 45.344735 \nL 53.319627 34.222347 \nL 67.475393 34.222347 \nL 67.475393 45.344735 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 80 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(52.790143 43.96962)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 80 -->\n     <g transform=\"translate(52.790143 43.96962)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 22.648799 249.592225 \nL 22.648799 253.63673 \nL 35.79344 253.63673 \nL 35.79344 249.592225 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 35.79344 256.164545 \nL 35.79344 245.042157 \nL 43.376886 245.042157 \nL 43.376886 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(28.736065 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 2 -->\n     <g transform=\"translate(35.781479 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 2 -->\n     <g transform=\"translate(35.781479 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 103.201852 256.164545 \nL 103.201852 245.042157 \nL 110.785299 245.042157 \nL 110.785299 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 2 -->\n     <g transform=\"translate(103.189892 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 2 -->\n     <g transform=\"translate(103.189892 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 136.906058 256.164545 \nL 136.906058 245.042157 \nL 144.489505 245.042157 \nL 144.489505 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 4 -->\n     <g transform=\"translate(136.922223 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 4 -->\n     <g transform=\"translate(136.922223 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 170.610265 256.164545 \nL 170.610265 245.042157 \nL 178.193711 245.042157 \nL 178.193711 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 6 -->\n     <g transform=\"translate(170.598304 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 6 -->\n     <g transform=\"translate(170.598304 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_22\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 204.314471 256.164545 \nL 204.314471 245.042157 \nL 211.897917 245.042157 \nL 211.897917 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 8 -->\n     <g transform=\"translate(204.30251 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 8 -->\n     <g transform=\"translate(204.30251 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_23\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 233.974172 256.164545 \nL 233.974172 245.042157 \nL 248.129939 245.042157 \nL 248.129939 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_44\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 10 -->\n     <g transform=\"translate(233.444688 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_45\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- 10 -->\n     <g transform=\"translate(233.444688 255.042212)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_46\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(62.652299 251.62363)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_47\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(70.53912 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_48\">\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(254.754873 244.798528)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"m8ee6376c87\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#p0d5c12a1d0)\">\n     <use style=\"stroke:#000000;\" x=\"74.047714\" xlink:href=\"#m8ee6376c87\" y=\"140.390597\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p0d5c12a1d0)\" d=\"M 56.959208 243.389585 \nL 59.796035 221.663214 \nL 62.227601 204.586922 \nL 64.659167 188.889902 \nL 67.090733 174.526594 \nL 69.522299 161.451437 \nL 71.953865 149.618869 \nL 74.385431 138.98333 \nL 76.411736 131.001908 \nL 78.438041 123.79375 \nL 80.464346 117.33249 \nL 82.490651 111.591762 \nL 84.516956 106.545198 \nL 86.543261 102.166434 \nL 88.164305 99.12652 \nL 89.785349 96.483624 \nL 91.406393 94.224245 \nL 93.027437 92.334885 \nL 94.648481 90.802044 \nL 96.269525 89.612222 \nL 97.890569 88.75192 \nL 99.511613 88.207638 \nL 101.132657 87.965877 \nL 102.753701 88.013137 \nL 104.374745 88.335918 \nL 105.995789 88.920722 \nL 107.616833 89.754049 \nL 109.237877 90.822399 \nL 111.264182 92.467771 \nL 113.290487 94.432908 \nL 115.316792 96.691443 \nL 117.748358 99.751846 \nL 120.585185 103.747532 \nL 123.422012 108.132237 \nL 127.069361 114.224903 \nL 131.527232 122.158098 \nL 146.116628 148.532702 \nL 149.358716 153.798714 \nL 152.195543 158.040731 \nL 155.03237 161.865592 \nL 157.463936 164.757182 \nL 159.490241 166.859247 \nL 161.516546 168.65356 \nL 163.542851 170.113753 \nL 165.163895 171.023624 \nL 166.784938 171.689285 \nL 168.405982 172.097235 \nL 170.027026 172.233977 \nL 171.64807 172.086009 \nL 172.863853 171.780073 \nL 174.079636 171.300699 \nL 175.70068 170.381898 \nL 177.321724 169.131141 \nL 178.942768 167.534927 \nL 180.563812 165.579757 \nL 182.184856 163.25213 \nL 183.8059 160.538549 \nL 185.426944 157.425512 \nL 187.047988 153.899521 \nL 189.074293 148.89075 \nL 191.100598 143.189278 \nL 193.126903 136.768739 \nL 195.153208 129.602767 \nL 197.179513 121.664996 \nL 199.205818 112.929059 \nL 201.637384 101.355232 \nL 204.06895 88.548518 \nL 206.500516 74.463357 \nL 208.932082 59.054187 \nL 211.363648 42.275447 \nL 212.17417 36.37031 \nL 212.17417 36.37031 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p0d5c12a1d0\">\n   <rect height=\"260.82\" width=\"259.151642\" x=\"10.869179\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a curve\" class=\"sr-only\"><ul><li>Moving from left to right, the curve passes from quadrant 2 to quadrant 1.</li>\n<li>The curve has 1 relative maximum and 1 relative minimum.</li>\n<li>The curve passes through the following points:<ul><li>(0 comma 40)</li><li>(4 comma 40)</li><li>(7 comma 40)</li></ul></li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The&nbsp;<em>y</em>-intercept of the graph shown is&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"y\"><mi>y</mi>\n</math>?</p>","type":"spr","correct_answer":["40"]},"createDate":1730147357400,"updateDate":1730147357400}$SATQ$::jsonb, 1730147357400, 1730147357400)
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
