-- batch 77/138 (25 rows)
INSERT INTO sat_questions (question_id, external_id, vault_id, disclosed_item_id, source, program, test_type, test_type_desc, domain, primary_class_cd, skill_cd, skill_desc, difficulty, score_band_range_cd, question_type, stimulus_html, stem_html, answer_options, correct_answer, answer_keys, rationale_html, correct_answer_extracted_from_rationale, image_count, parent_template_name, parent_template_id, template_cluster_id, template_cluster_name, origin, position, answer_style, section, raw_payload, created_date, updated_date) VALUES
    ($SATQ$5ad9eff0$SATQ$, NULL, NULL, $SATQ$11138-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">The width of a rectangular dance floor is <span class="italic">w</span> feet. The length of the floor is 6 feet longer than its width. Which of the following expresses the perimeter, in feet, of the dance floor in terms of <span class="italic">w</span> ?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_000_42ae89f1.png\" alt=\"2 w plus 6\"></span></span></p>\n"},{"id":"b","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_001_e0c26a15.png\" alt=\"4 w plus 12\"></span></span></p>\n"},{"id":"c","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_002_385dd278.png\" alt=\"w squared plus 6\"></span></span></p>\n"},{"id":"d","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_003_b2895104.png\" alt=\"w squared plus 6 w\"></span></span></p>\n"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice B is correct. It is given that the width of the dance floor is <span class="italic">w</span> feet. The length is 6 feet longer than the width; therefore, the length of the dance floor is <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_004_3da6c791.png" alt="w plus 6"></span>. So the perimeter is <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_005_32650b60.png" alt="w plus w, plus, open parenthesis, w plus 6, close parenthesis, plus, open parenthesis, w plus 6, close parenthesis, equals, 4 w plus 12"></span>.<p>Choice A is incorrect because it is the sum of one length and one width, which is only half the perimeter. Choice C is incorrect and may result from using the formula for the area instead of the formula for the perimeter and making a calculation error. Choice D is incorrect because this is the area, not the perimeter, of the dance floor.</p><p>&nbsp;</p></p>
$SATQ$, false, 6, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"5ad9eff0","external_id":null,"disclosed_item_id":"11138-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">The width of a rectangular dance floor is <span class=\"italic\">w</span> feet. The length of the floor is 6 feet longer than its width. Which of the following expresses the perimeter, in feet, of the dance floor in terms of <span class=\"italic\">w</span> ?</p>\n","answerOptions":[{"id":"a","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_000_42ae89f1.png\" alt=\"2 w plus 6\"></span></span></p>\n"},{"id":"b","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_001_e0c26a15.png\" alt=\"4 w plus 12\"></span></span></p>\n"},{"id":"c","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_002_385dd278.png\" alt=\"w squared plus 6\"></span></span></p>\n"},{"id":"d","content":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_003_b2895104.png\" alt=\"w squared plus 6 w\"></span></span></p>\n"}],"keys":null,"correct_answer":["B"],"rationale":"<p>Choice B is correct. It is given that the width of the dance floor is <span class=\"italic\">w</span> feet. The length is 6 feet longer than the width; therefore, the length of the dance floor is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_004_3da6c791.png\" alt=\"w plus 6\"></span>. So the perimeter is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5ad9eff0/img_005_32650b60.png\" alt=\"w plus w, plus, open parenthesis, w plus 6, close parenthesis, plus, open parenthesis, w plus 6, close parenthesis, equals, 4 w plus 12\"></span>.<p>Choice A is incorrect because it is the sum of one length and one width, which is only half the perimeter. Choice C is incorrect and may result from using the formula for the area instead of the formula for the perimeter and making a calculation error. Choice D is incorrect because this is the area, not the perimeter, of the dance floor.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":6,"raw_list":{"updateDate":1691007959638,"pPcc":"SAT#H","questionId":"5ad9eff0","skill_cd":"H.A.","score_band_range_cd":5,"skill_desc":"Linear equations in one variable","createDate":1691007959638,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"11138-DC","external_id":null,"primary_class_cd":"H","uId":"dda727be-07d6-4492-a237-7ece01521fca","difficulty":"M"},"raw_detail":{"item_id":"11138-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">The width of a rectangular dance floor is <span class=\"italic\">w</span> feet. The length of the floor is 6 feet longer than its width. Which of the following expresses the perimeter, in feet, of the dance floor in terms of <span class=\"italic\">w</span> ?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAWCAYAAAC/kK73AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABVklEQVRYR+2U2w3DIAxFGY+BGIddsko2cW3MBUMeWFWl/nAlVOIYc/xogojopBwDyRYr5lN+/yo6M0XDFNLRmTp0ooOovKAjFcd/woOBWZWJ6ZJl0qwi8fMAeebIzz2ZXwkAALoTijkXzsWkGatT64ppVWvjxXYtgpUL3BHnUUdiqJgZWQ+XZwMp2cfIFZhswxzeyAXeiqa+YpK1HN15vkQFqiaiHeDA4ldB0ZU3IJEfXGB71dHhR/h2qAJBA7gEkZvFFzazr0eKACrbt2UTAYN7xvUFB5qgRRpMD8nYyEUWVmzLVrKQiAWdBfDZR+3T7JcZ5ndPl2urMHeaQLEV8G6r7o9ygdexWIKj0m8Va+B8GH6wZT7vqbbIBV595pjDqCC71cUaTL8k7Fp89exoW8kDLprH5cLZ5vp29fbjQvsHRLDVJ/BbAR7L29Wtra2tra2tUSF8ABk9RxIbHhOQAAAAAElFTkSuQmCC\" alt=\"2 w plus 6\"></span></span></p>\n"},"b":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADcAAAAWCAYAAABkKwTVAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABW0lEQVRYR+2U0RHDIAiGHc+BHMddsoqbUMBgUKOh16Ttg/+d1xQR+RB1rSBF8PgTNoDd9HNtwYGPqcsHIEH0juxlnPkVUSD8+Rs42MJp0gdYAEyV50a+LJmk8RQcYCrBGD9FX/Lp4LjDPKC5suc1BzBLKhFi35alSmjcTaV9e1u/oZYVLheaYmX/absp5XUNHBP7CGlw57hdFQj5e49rGpv+f6Z3To4k/lY4zpM4BE5vOHpQCjy65JPE6lCVdphy8hdJPwkn16qKrU/FBEc+5EDBxKa+9yUsSY4+Z2MEa4UTsKpz2nsygtO9TMWgeQ1ENlN1Hzg5Ljz6dFeiTJyOFprgaLMMyTaGO2zkO9PdcNx1k/lKw5MTODwtCSS2iAUyBUfdCScHY917DMeb5BcSY/Fc9q1tV7oLTvI0g5HmcNgC6tEQ36vn/xON4ObXyXZFlpaWlpaWlpa+LedeXAWCnM5dQ/QAAAAASUVORK5CYII=\" alt=\"4 w plus 12\"></span></span></p>\n"},"c":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAeCAYAAABXNvynAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABS0lEQVRYR+2U7Q2EIAyGGY+BGIddXMVNei3lPQsm2qh38UffhJz0an3oB+mqaCkkP7oKLUTy/E7RWimnTHVVyAafK/H2ndANsCxfOOL8lrdn2er1GbbS7CbihD8Gqy2H+eBlqnlLCPwobB9mxERCMg+M7C9LA2+DdyZPJYibquY93Foz7/uMwGkYIpRkZ1PA+ZbwyAXsjbuUEU5OlDOfarJhryfu/fVdx7eEC7hVTeKor5hk7dqhAfQp14zzS+bqQhWOPnYmP7BAmju+V3uAHoDFQaLKy7CZ5/7KqQAoj0fLHgDAhz0s2kohbBrEQort7pTiAJ4Mzz5qN72taUfvKHizNeDN1pwvygXcy+8H5j+QSdgql+NudkUu4O5z3hLNUW8GnEKBR9sdeYBFc1sg68MhEMwOFhzt1fYvARrriQqHQqFQKBQKhX6vlD4HgDODVXHItwAAAABJRU5ErkJggg==\" alt=\"w squared plus 6\"></span></span></p>\n"},"d":{"body":"<p><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADkAAAAeCAYAAACWsbYLAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAPUJuPDwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABaklEQVRYR+1VAQ7DIAj0eT7I5/iXfqU/YSCyoksqo0uzNFxiVqmwO0CavICtAP3wKrAB0PNzAHuFnDLUnYU1wbkCbp8jtIkq21sQYB3LE6up8chKanAVE2BhfyaQr4Pcd1yqa26HkPmpwD7QJKYkMeMAoP2tYDLH8FnBUnHAhq/5U9BeM+4v3HkJPAwSaZcPG4uap6sFJpGGuB6+zbCV8QBlLmfM3mSTPWcWfYZ1nmmTyNYdFIfPkonWXNlv+TY0Q5+OnCn8I/WZkOydEVzBLpKEHRWQKmmhLr6DEwWlt+QkNvXcXZYQUfR4tjQREbm6ky6+HJyDUCuQjz5ItqvTDaOYKzmfYbuqrocvtwQ5ERF2brbmdNj6cRdMIntrLkV6+L6dMJhkQGwVW+NqFQkmkf3Mql1dfDk4Tyh8r5xG2xVYRBK4asc55jEKd/EVAvqySvBhDN8EESprrsy/8Q0EAoFAIBAIBAIBjZReMPwNiX73M6sAAAAASUVORK5CYII=\" alt=\"w squared plus 6 w\"></span></span></p>\n"}},"correct_choice":"b","rationale":"<p>Choice B is correct. It is given that the width of the dance floor is <span class=\"italic\">w</span> feet. The length is 6 feet longer than the width; therefore, the length of the dance floor is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAWCAYAAABHcFUAAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABDUlEQVRIS+2UgQnEIAxFO54DOY67uIqb5PKj/6rtoeE4KAd+EG0a4+PH9nhKUpIEnbC0ETPm5yQ5GohyGIhIlqhTSOX3YCzOwz5JpEgKd4CSgj5HraB7mdTb97b2FguitSYHOqAcdUw5jgCgDkHJL7FV311Q1jo4UnMRwri1zg4MST2D4JxuwuYGQTdnh0F+KICcbrEzA9gAhQRUxWbGunXbYiIElrPRQxJqeqeg01KcX4v0IIh5vgxCepy65tR4d9eqfexzhbOYQZ0xS57IBdVa5YfSF3SEsYRL73AJckG1nHX7LLF+cSStUGNsJQ8UdG0h3RtAWay/zExc/Qa+FcE4vN3Y2tra2vofHccLsb3TOkiA964AAAAASUVORK5CYII=\" alt=\"w plus 6\"></span>. So the perimeter is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAO0AAAAcCAYAAACNgzgzAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADKElEQVR4Xu2YDbKDIAyEPZ4H8jjepVfpTXiEuBb5UfpqU1v2m2G0FMkmJEg79IS7z24cRjffnVu6LoFzdzePg5tu79HVq9/ky3Hu5qYLJi54l75e/SY/wG0a3OgzY/l4SdxtcsM4+/fPeQncq9/ky9Hj4eT39M8mheoYRIM2fy4MXyycfVzs1e8S0HClo3htQ0U85Bbt6hvv6dznMUsUa8LbxF+QNHoszBcjjDtJa69+l5AC8ZfLFC3iksVhLdjHZlsbewpYEKvAtNqTBXuXphYNWIg06KGokjdhy9uxV7//C5Je2ifjAdT/8htU45D/xt/EbK1sb235/nGcyfr2/zB4ZiFt7W3nMdfQMA/Q+ej3WcDnaVY/Y73W8RB0A5G5dHzr21Ofiza1cHSIREpVj37B0774c4lW4Zb2aslgqmENuI6VLmmlBSsVW0pPfsOO3O61mo7gi/zJtRRjOs469wHGtxZt0Bn/Wbc65js0eD7QEvBF6LpbHQhqFW5pT8fkyWCqISSvJNdDB3b07HgU7L6vaL/Z72eJNcJuqtc69wHGtxQt4riZeyNcnJNvZSD6ovvlkQAMy+1eSx2xtKfPHCTvuzXIXP6SLlDQkPyOK+n9l80f8PtV4rdoU9Ea5D7A80dFixjCjxX9QoMojoqhWKz0Ne0Ii5CaUGBpz69Ecac01RBs1TSUCnSb0ClNNn/Eb9iR272W2QhF+rBRK1rVYhOPGIzfm1s3N++fn1R7ItQhEf4IXOgLwsvBLNEq3NpeKfCWGtRWPqaYvFHCLF0Zvfr9DGvCF1tazDbxiMH4WtHK2vlLvahX4T5wGIS+2TtffTChVbi5vUJCWGqoLVDpmNiys/fq9yuoj7ley3jE1GIjYMPZta0TeIHRHwEqfNt3RKtwe3v5UdFcgxRQNE5tbRcGmo5s9+r3K8Buqtc6HgDj08IsxacIJoh3ZTxcPE+/iLU9IX3rfEyDzL+0dGFkhz1crCfp1e8U+JgW1SfiIcBuKRb+Umnb00kXaEDeu6P/B7wR48Q5k179JoQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEkH4Zhj9qFQUZEw/i7gAAAABJRU5ErkJggg==\" alt=\"w plus w, plus, open parenthesis, w plus 6, close parenthesis, plus, open parenthesis, w plus 6, close parenthesis, equals, 4 w plus 12\"></span>.<p>Choice A is incorrect because it is the sum of one length and one width, which is only half the perimeter. Choice C is incorrect and may result from using the formula for the area instead of the formula for the perimeter and making a calculation error. Choice D is incorrect because this is the area, not the perimeter, of the dance floor.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959638,"updateDate":1691007959638}$SATQ$::jsonb, 1691007959638, 1691007959638),
    ($SATQ$5b7599a6$SATQ$, $SATQ$8cda2479-6500-45ad-b2fe-a4863fff3443$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="275.22pt" version="1.1" viewBox="0 0 288.918319 275.22" width="288.918319pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a line in the x y plane with the origin labeled O. The x axis ranges from negative 10 to 10. The y axis ranges from negative 10 to 10. Refer to long description.">
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
    <g id="ytick_8"></g>
    <g id="ytick_9"></g>
    <g id="ytick_10"></g>
   </g>
   <g id="LineCollection_1">
    <path clip-path="url(#pc3fefc5859)" d="M 39.986102 255.11539 
L 39.986102 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 50.477655 255.11539 
L 50.477655 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 60.969208 255.11539 
L 60.969208 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 71.46076 255.11539 
L 71.46076 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 81.952313 255.11539 
L 81.952313 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 92.443866 255.11539 
L 92.443866 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 102.935418 255.11539 
L 102.935418 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 113.426971 255.11539 
L 113.426971 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 123.918524 255.11539 
L 123.918524 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 134.410076 255.11539 
L 134.410076 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 155.393182 255.11539 
L 155.393182 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 165.884735 255.11539 
L 165.884735 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 176.376287 255.11539 
L 176.376287 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 186.86784 255.11539 
L 186.86784 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 197.359393 255.11539 
L 197.359393 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 207.850945 255.11539 
L 207.850945 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 218.342498 255.11539 
L 218.342498 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 228.834051 255.11539 
L 228.834051 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 239.325603 255.11539 
L 239.325603 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 249.817156 255.11539 
L 249.817156 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 249.869614 
L 255.062932 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 239.378061 
L 255.062932 239.378061 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 228.886508 
L 255.062932 228.886508 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 218.394956 
L 255.062932 218.394956 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 207.903403 
L 255.062932 207.903403 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 197.41185 
L 255.062932 197.41185 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 186.920298 
L 255.062932 186.920298 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 176.428745 
L 255.062932 176.428745 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 165.937192 
L 255.062932 165.937192 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 155.44564 
L 255.062932 155.44564 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 134.462534 
L 255.062932 134.462534 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 123.970981 
L 255.062932 123.970981 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 113.479429 
L 255.062932 113.479429 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 102.987876 
L 255.062932 102.987876 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 92.496323 
L 255.062932 92.496323 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 82.004771 
L 255.062932 82.004771 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 71.513218 
L 255.062932 71.513218 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 61.021665 
L 255.062932 61.021665 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 50.530113 
L 255.062932 50.530113 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 40.03856 
L 255.062932 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#pc3fefc5859)" d="M 34.740326 144.954087 
L 260.308709 144.954087 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 257.443461 -129.281463 
L 260.308709 -130.265913 
L 257.443461 -131.250364 
L 257.443461 -129.281463 
L 260.308709 -130.265913 
" id="mb180adb27c" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#pc3fefc5859)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#mb180adb27c" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#pc3fefc5859)" d="M 144.901629 255.11539 
L 144.901629 29.547007 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 145.916171 -242.098754 
L 144.901629 -245.672993 
L 143.887087 -242.098754 
L 145.916171 -242.098754 
L 144.901629 -245.672993 
" id="m9ad59cef6e" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#pc3fefc5859)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m9ad59cef6e" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#pc3fefc5859)" d="M 39.986102 148.819396 
L 39.986102 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 50.477655 148.819396 
L 50.477655 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 60.969208 148.819396 
L 60.969208 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 71.46076 148.819396 
L 71.46076 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 81.952313 148.819396 
L 81.952313 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 92.443866 148.819396 
L 92.443866 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 102.935418 148.819396 
L 102.935418 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 113.426971 148.819396 
L 113.426971 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 123.918524 148.819396 
L 123.918524 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 134.410076 148.819396 
L 134.410076 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 155.393182 148.819396 
L 155.393182 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 165.884735 148.819396 
L 165.884735 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 176.376287 148.819396 
L 176.376287 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 186.86784 148.819396 
L 186.86784 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 197.359393 148.819396 
L 197.359393 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 207.850945 148.819396 
L 207.850945 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 218.342498 148.819396 
L 218.342498 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 228.834051 148.819396 
L 228.834051 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 239.325603 148.819396 
L 239.325603 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 249.817156 148.819396 
L 249.817156 141.088778 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 249.869614 
L 148.766938 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 239.378061 
L 148.766938 239.378061 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 228.886508 
L 148.766938 228.886508 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 218.394956 
L 148.766938 218.394956 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 207.903403 
L 148.766938 207.903403 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 197.41185 
L 148.766938 197.41185 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 186.920298 
L 148.766938 186.920298 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 176.428745 
L 148.766938 176.428745 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 165.937192 
L 148.766938 165.937192 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 155.44564 
L 148.766938 155.44564 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 134.462534 
L 148.766938 134.462534 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 123.970981 
L 148.766938 123.970981 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 113.479429 
L 148.766938 113.479429 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 102.987876 
L 148.766938 102.987876 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 92.496323 
L 148.766938 92.496323 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 82.004771 
L 148.766938 82.004771 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 71.513218 
L 148.766938 71.513218 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 61.021665 
L 148.766938 61.021665 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 50.530113 
L 148.766938 50.530113 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#pc3fefc5859)" d="M 141.03632 40.03856 
L 148.766938 40.03856 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#pc3fefc5859)" d="M 123.393946 256.164545 
L 123.393946 244.623837 
L 138.08212 244.623837 
L 138.08212 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#pc3fefc5859)" d="M 114.476126 249.082747 
L 114.476126 253.541657 
L 124.967679 253.541657 
L 124.967679 249.082747 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_1">
    <g clip-path="url(#pc3fefc5859)">
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
     <g transform="translate(116.08379 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_2">
    <g clip-path="url(#pc3fefc5859)">
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
     <g transform="translate(123.377855 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_3">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 10 -->
     <g transform="translate(123.377855 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#pc3fefc5859)" d="M 129.951167 235.18144 
L 129.951167 223.640732 
L 137.819831 223.640732 
L 137.819831 235.18144 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#pc3fefc5859)" d="M 121.820213 228.099642 
L 121.820213 232.558552 
L 132.311766 232.558552 
L 132.311766 228.099642 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_4">
    <g clip-path="url(#pc3fefc5859)">
     <!-- – -->
     <g transform="translate(122.64101 233.625687)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_5">
    <g clip-path="url(#pc3fefc5859)">
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
     <g transform="translate(130.467698 233.625687)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_6">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 8 -->
     <g transform="translate(130.467698 233.625687)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#pc3fefc5859)" d="M 129.951167 214.198335 
L 129.951167 202.657627 
L 137.819831 202.657627 
L 137.819831 214.198335 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#pc3fefc5859)" d="M 121.820213 207.116537 
L 121.820213 211.575447 
L 132.311766 211.575447 
L 132.311766 207.116537 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_7">
    <g clip-path="url(#pc3fefc5859)">
     <!-- – -->
     <g transform="translate(122.64101 212.642582)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_8">
    <g clip-path="url(#pc3fefc5859)">
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
     <g transform="translate(130.467698 212.642582)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_9">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 6 -->
     <g transform="translate(130.467698 212.642582)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#pc3fefc5859)" d="M 129.951167 193.215229 
L 129.951167 181.674521 
L 137.819831 181.674521 
L 137.819831 193.215229 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#pc3fefc5859)" d="M 121.820213 186.133431 
L 121.820213 190.592341 
L 132.311766 190.592341 
L 132.311766 186.133431 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_10">
    <g clip-path="url(#pc3fefc5859)">
     <!-- – -->
     <g transform="translate(122.64101 191.659476)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_11">
    <g clip-path="url(#pc3fefc5859)">
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
     <g transform="translate(130.495823 191.659476)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_12">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 4 -->
     <g transform="translate(130.495823 191.659476)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#pc3fefc5859)" d="M 129.951167 172.232124 
L 129.951167 160.691416 
L 137.819831 160.691416 
L 137.819831 172.232124 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#pc3fefc5859)" d="M 121.820213 165.150326 
L 121.820213 169.609236 
L 132.311766 169.609236 
L 132.311766 165.150326 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_13">
    <g clip-path="url(#pc3fefc5859)">
     <!-- – -->
     <g transform="translate(122.64101 170.676371)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_14">
    <g clip-path="url(#pc3fefc5859)">
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
     <g transform="translate(130.467698 170.676371)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_15">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 2 -->
     <g transform="translate(130.467698 170.676371)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#pc3fefc5859)" d="M 129.951167 130.265913 
L 129.951167 118.725205 
L 137.819831 118.725205 
L 137.819831 130.265913 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_16">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 2 -->
     <g transform="translate(130.467698 128.71016)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_17">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 2 -->
     <g transform="translate(130.467698 128.71016)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#pc3fefc5859)" d="M 129.951167 109.282808 
L 129.951167 97.7421 
L 137.819831 97.7421 
L 137.819831 109.282808 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_18">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 4 -->
     <g transform="translate(130.495823 107.727055)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_19">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 4 -->
     <g transform="translate(130.495823 107.727055)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#pc3fefc5859)" d="M 129.951167 88.299702 
L 129.951167 76.758994 
L 137.819831 76.758994 
L 137.819831 88.299702 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_20">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 6 -->
     <g transform="translate(130.467698 86.743949)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_21">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 6 -->
     <g transform="translate(130.467698 86.743949)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_14">
    <path clip-path="url(#pc3fefc5859)" d="M 129.951167 67.316597 
L 129.951167 55.775889 
L 137.819831 55.775889 
L 137.819831 67.316597 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_22">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 8 -->
     <g transform="translate(130.467698 65.760844)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_23">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 8 -->
     <g transform="translate(130.467698 65.760844)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_15">
    <path clip-path="url(#pc3fefc5859)" d="M 123.393946 46.333492 
L 123.393946 34.792784 
L 138.08212 34.792784 
L 138.08212 46.333492 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_24">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 10 -->
     <g transform="translate(123.377855 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_25">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 10 -->
     <g transform="translate(123.377855 44.777738)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_16">
    <path clip-path="url(#pc3fefc5859)" d="M 19.527574 153.347329 
L 19.527574 157.54395 
L 119.197325 157.54395 
L 119.197325 153.347329 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_17">
    <path clip-path="url(#pc3fefc5859)" d="M 31.330571 160.166838 
L 31.330571 148.62613 
L 45.231879 148.62613 
L 45.231879 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_26">
    <g clip-path="url(#pc3fefc5859)">
     <!-- – -->
     <g transform="translate(23.758126 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_27">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 10 -->
     <g transform="translate(31.052191 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_28">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 10 -->
     <g transform="translate(31.052191 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_18">
    <path clip-path="url(#pc3fefc5859)" d="M 56.248009 160.166838 
L 56.248009 148.62613 
L 64.116673 148.62613 
L 64.116673 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_29">
    <g clip-path="url(#pc3fefc5859)">
     <!-- – -->
     <g transform="translate(49.200141 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_30">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 8 -->
     <g transform="translate(56.502252 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_31">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 8 -->
     <g transform="translate(56.502252 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_19">
    <path clip-path="url(#pc3fefc5859)" d="M 77.231114 160.166838 
L 77.231114 148.62613 
L 85.099779 148.62613 
L 85.099779 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_32">
    <g clip-path="url(#pc3fefc5859)">
     <!-- – -->
     <g transform="translate(70.183247 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_33">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 6 -->
     <g transform="translate(77.485357 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_34">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 6 -->
     <g transform="translate(77.485357 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_20">
    <path clip-path="url(#pc3fefc5859)" d="M 98.21422 160.166838 
L 98.21422 148.62613 
L 106.082884 148.62613 
L 106.082884 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_35">
    <g clip-path="url(#pc3fefc5859)">
     <!-- – -->
     <g transform="translate(91.166352 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_36">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 4 -->
     <g transform="translate(98.496588 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_37">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 4 -->
     <g transform="translate(98.496588 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_21">
    <path clip-path="url(#pc3fefc5859)" d="M 119.197325 160.166838 
L 119.197325 148.62613 
L 127.06599 148.62613 
L 127.06599 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_38">
    <g clip-path="url(#pc3fefc5859)">
     <!-- – -->
     <g transform="translate(112.149458 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_39">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 2 -->
     <g transform="translate(119.451568 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_40">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 2 -->
     <g transform="translate(119.451568 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_22">
    <path clip-path="url(#pc3fefc5859)" d="M 161.163536 160.166838 
L 161.163536 148.62613 
L 169.0322 148.62613 
L 169.0322 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_41">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 2 -->
     <g transform="translate(161.417779 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_42">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 2 -->
     <g transform="translate(161.417779 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_23">
    <path clip-path="url(#pc3fefc5859)" d="M 182.146641 160.166838 
L 182.146641 148.62613 
L 190.015306 148.62613 
L 190.015306 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_43">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 4 -->
     <g transform="translate(182.429009 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_44">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 4 -->
     <g transform="translate(182.429009 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_24">
    <path clip-path="url(#pc3fefc5859)" d="M 203.129747 160.166838 
L 203.129747 148.62613 
L 210.998411 148.62613 
L 210.998411 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_45">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 6 -->
     <g transform="translate(203.38399 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_46">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 6 -->
     <g transform="translate(203.38399 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_25">
    <path clip-path="url(#pc3fefc5859)" d="M 224.112852 160.166838 
L 224.112852 148.62613 
L 231.981516 148.62613 
L 231.981516 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_47">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 8 -->
     <g transform="translate(224.367095 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_48">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 8 -->
     <g transform="translate(224.367095 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_26">
    <path clip-path="url(#pc3fefc5859)" d="M 240.899336 160.166838 
L 240.899336 148.62613 
L 255.58751 148.62613 
L 255.58751 160.166838 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_49">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 10 -->
     <g transform="translate(240.883245 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_50">
    <g clip-path="url(#pc3fefc5859)">
     <!-- 10 -->
     <g transform="translate(240.883245 158.873374)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_51">
    <g clip-path="url(#pc3fefc5859)">
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
     <g transform="translate(133.249519 155.331197)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_52">
    <g clip-path="url(#pc3fefc5859)">
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
     <g transform="translate(141.393035 22.350767)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_53">
    <g clip-path="url(#pc3fefc5859)">
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
     <g transform="translate(262.592735 148.249399)scale(0.15 -0.15)">
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
" id="m7413cc4c42" style="stroke:#000000;"></path>
    </defs>
    <g clip-path="url(#pc3fefc5859)">
     <use style="stroke:#000000;" x="144.901629" xlink:href="#m7413cc4c42" y="82.004771"></use>
    </g>
   </g>
   <g id="line2d_2">
    <path clip-path="url(#pc3fefc5859)" d="M 129.553265 35.95968 
L 202.300304 254.200796 
L 202.300304 254.200796 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="pc3fefc5859">
   <rect height="260.82" width="271.206637" x="7.2" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a line" class="sr-only"><ul><li>The line slants sharply down from left to right.</li>
<li>The line passes through the following points:<br>
<ul>
<li>(0 comma 6)</li>
<li>(1 comma 3)</li>
</ul>
</li>
</ul></div></figure></p>
<p style="text-align: left;">The graph shows a linear relationship between <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math>. Which equation represents this relationship, where <math alttext="upper R"><mi>R</mi>
</math> is a positive constant?</p>$SATQ$, $SATQ$[{"id":"92dceefe-230e-4689-bad2-9bca95676cb5","content":"<p><math alttext=\"upper R x plus 18 y equals 36\"><mi>R</mi><mi>x</mi><mo>+</mo><mn>18</mn><mi>y</mi><mo>=</mo><mn>36</mn></math></p>"},{"id":"cf6717b1-2e4b-4258-9561-3ab1a4670d44","content":"<p><math alttext=\"upper R x minus 18 y equals negative 36\"><mi>R</mi><mi>x</mi><mo>-</mo><mn>18</mn><mi>y</mi><mo>=</mo><mo>-</mo><mn>36</mn></math></p>"},{"id":"93176a23-5fa5-41a3-b807-99eb715f44b1","content":"<p><math alttext=\"18 x plus upper R y equals 36\"><mn>18</mn><mi>x</mi><mo>+</mo><mi>R</mi><mi>y</mi><mo>=</mo><mn>36</mn></math></p>"},{"id":"6f18332b-448d-47d9-a91e-de28c26b901c","content":"<p><math alttext=\"18 x minus upper R y equals negative 36\"><mn>18</mn><mi>x</mi><mo>-</mo><mi>R</mi><mi>y</mi><mo>=</mo><mo>-</mo><mn>36</mn></math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["93176a23-5fa5-41a3-b807-99eb715f44b1"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. The equation representing the linear relationship shown can be written in slope-intercept form <math alttext="y equals m x plus b"><mrow>
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
</math> is the slope and <math alttext="left parenthesis 0 comma b right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math> is the <em>y</em>-intercept of the line. The line shown passes through the points <math alttext="left parenthesis 0 comma 6 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math> and <math alttext="left parenthesis 2 comma 0 right parenthesis"><mfenced><mrow><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Given two points on a line, <math alttext="left parenthesis x 1 comma y 1 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math alttext="left parenthesis x 2 comma y 2 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, the slope of the line can be calculated using the equation <math alttext="m equals StartFraction y 2 minus y 1 Over x 2 minus x 1 EndFraction"><mi>m</mi><mo>=</mo><mfrac><mrow><msub><mi>y</mi><mn>2</mn></msub><mo>-</mo><msub><mi>y</mi><mn>1</mn></msub></mrow><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>-</mo><msub><mi>x</mi><mn>1</mn></msub></mrow></mfrac></math>. Substituting <math alttext="left parenthesis 0 comma 6 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math> and <math alttext="left parenthesis 2 comma 0 right parenthesis"><mfenced><mrow><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math> for <math alttext="left parenthesis x 1 comma y 1 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math alttext="left parenthesis x 2 comma y 2 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, respectively, in this equation yields <math alttext="m equals StartFraction 0 minus 6 Over 2 minus 0 EndFraction"><mi>m</mi><mo>=</mo><mfrac><mrow><mn>0</mn><mo>-</mo><mn>6</mn></mrow><mrow><mn>2</mn><mo>-</mo><mn>0</mn></mrow></mfrac></math>, which is equivalent to <math alttext="m equals negative six halves"><mi>m</mi><mo>=</mo><mo>-</mo><mfrac><mn>6</mn><mn>2</mn></mfrac></math>, or <math alttext="m equals negative 3"><mrow>
	<mi>m</mi>
	<mo>=</mo>
	<mrow>
		<mo>-</mo>
		<mn>3</mn>
	</mrow>
</mrow>
</math>. Since <math alttext="left parenthesis 0 comma 6 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math> is the <em>y</em>-intercept, it follows that <math alttext="b equals 6"><mrow>
	<mi>b</mi>
	<mo>=</mo>
	<mn>6</mn>
</mrow>
</math>. Substituting <math alttext="negative 3"><mrow>
	<mo>-</mo>
	<mn>3</mn>
</mrow>
</math> for <math alttext="m"><mi>m</mi>
</math> and <math alttext="6"><mn>6</mn>
</math> for <math alttext="b"><mi>b</mi>
</math> in the equation <math alttext="y equals m x plus b"><mrow>
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
</math> yields <math alttext="y equals minus 3 x plus 6"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mo>-</mo>
			<mn>3</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>6</mn>
	</mrow>
</mrow>
</math>. Adding <math alttext="3 x"><mrow>
	<mn>3</mn>
	<mi>x</mi>
</mrow>
</math> to both sides of this equation yields <math alttext="3 x plus y equals 6"><mrow>
	<mrow>
		<mrow>
			<mn>3</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mi>y</mi>
	</mrow>
	<mo>=</mo>
	<mn>6</mn>
</mrow>
</math>. Multiplying this equation by <math alttext="6"><mn>6</mn>
</math> yields <math alttext="18 x plus 6 y equals 36"><mrow>
	<mrow>
		<mrow>
			<mn>18</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>6</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>36</mn>
</mrow>
</math>. It follows that the equation <math alttext="18 x plus upper R y equals 36"><mn>18</mn><mi>x</mi><mo>+</mo><mi>R</mi><mi>y</mi><mo>=</mo><mn>36</mn></math>, where <math alttext="upper R"><mi>R</mi>
</math> is a positive constant, represents this relationship.</p>
<p style="text-align: left;">Choice A is incorrect. The graph of this relationship passes through the point&nbsp;<math alttext="left parenthesis 0 comma 2 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>2</mn></mrow></mfenced></math>, not&nbsp;<math alttext="left parenthesis 0 comma 6 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math>.</p>
<p style="text-align: left;">Choice B is incorrect. The graph of this relationship passes through the point <math alttext="left parenthesis 0 comma 2 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>2</mn></mrow></mfenced></math>, not <math alttext="left parenthesis 0 comma 6 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math>.</p>
<p style="text-align: left;">Choice D is incorrect. The graph of this relationship passes through the point <math alttext="left parenthesis negative 2 comma 0 right parenthesis"><mfenced><mrow><mo>-</mo><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, not <math alttext="left parenthesis 2 comma 0 right parenthesis"><mfenced><mrow><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"5b7599a6","external_id":"8cda2479-6500-45ad-b2fe-a4863fff3443","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"efd3ea09-26b9-46cc-aee2-c384d427bc1d","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 288.918319 275.22\" width=\"288.918319pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a line in the x y plane with the origin labeled O. The x axis ranges from negative 10 to 10. The y axis ranges from negative 10 to 10. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 288.918319 275.22 \nL 288.918319 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 9.558319 260.46 \nL 281.718319 260.46 \nL 281.718319 10.98 \nL 9.558319 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 278.406637 268.02 \nL 278.406637 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n    <g id=\"xtick_10\"></g>\n    <g id=\"xtick_11\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n    <g id=\"ytick_9\"></g>\n    <g id=\"ytick_10\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 39.986102 255.11539 \nL 39.986102 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 50.477655 255.11539 \nL 50.477655 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 60.969208 255.11539 \nL 60.969208 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 71.46076 255.11539 \nL 71.46076 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 81.952313 255.11539 \nL 81.952313 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 92.443866 255.11539 \nL 92.443866 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 102.935418 255.11539 \nL 102.935418 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 113.426971 255.11539 \nL 113.426971 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 123.918524 255.11539 \nL 123.918524 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 134.410076 255.11539 \nL 134.410076 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 155.393182 255.11539 \nL 155.393182 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 165.884735 255.11539 \nL 165.884735 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 176.376287 255.11539 \nL 176.376287 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 186.86784 255.11539 \nL 186.86784 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 197.359393 255.11539 \nL 197.359393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 207.850945 255.11539 \nL 207.850945 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 218.342498 255.11539 \nL 218.342498 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 228.834051 255.11539 \nL 228.834051 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 239.325603 255.11539 \nL 239.325603 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 249.817156 255.11539 \nL 249.817156 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 249.869614 \nL 255.062932 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 239.378061 \nL 255.062932 239.378061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 228.886508 \nL 255.062932 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 218.394956 \nL 255.062932 218.394956 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 207.903403 \nL 255.062932 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 197.41185 \nL 255.062932 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 186.920298 \nL 255.062932 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 176.428745 \nL 255.062932 176.428745 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 165.937192 \nL 255.062932 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 155.44564 \nL 255.062932 155.44564 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 134.462534 \nL 255.062932 134.462534 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 123.970981 \nL 255.062932 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 113.479429 \nL 255.062932 113.479429 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 102.987876 \nL 255.062932 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 92.496323 \nL 255.062932 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 82.004771 \nL 255.062932 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 71.513218 \nL 255.062932 71.513218 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 61.021665 \nL 255.062932 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 50.530113 \nL 255.062932 50.530113 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 40.03856 \nL 255.062932 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 144.954087 \nL 260.308709 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 257.443461 -129.281463 \nL 260.308709 -130.265913 \nL 257.443461 -131.250364 \nL 257.443461 -129.281463 \nL 260.308709 -130.265913 \n\" id=\"mb180adb27c\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mb180adb27c\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 144.901629 255.11539 \nL 144.901629 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 145.916171 -242.098754 \nL 144.901629 -245.672993 \nL 143.887087 -242.098754 \nL 145.916171 -242.098754 \nL 144.901629 -245.672993 \n\" id=\"m9ad59cef6e\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m9ad59cef6e\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 39.986102 148.819396 \nL 39.986102 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 50.477655 148.819396 \nL 50.477655 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 60.969208 148.819396 \nL 60.969208 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 71.46076 148.819396 \nL 71.46076 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 81.952313 148.819396 \nL 81.952313 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 92.443866 148.819396 \nL 92.443866 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 102.935418 148.819396 \nL 102.935418 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 113.426971 148.819396 \nL 113.426971 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 123.918524 148.819396 \nL 123.918524 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 134.410076 148.819396 \nL 134.410076 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 155.393182 148.819396 \nL 155.393182 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 165.884735 148.819396 \nL 165.884735 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 176.376287 148.819396 \nL 176.376287 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 186.86784 148.819396 \nL 186.86784 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 197.359393 148.819396 \nL 197.359393 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 207.850945 148.819396 \nL 207.850945 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 218.342498 148.819396 \nL 218.342498 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 228.834051 148.819396 \nL 228.834051 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 239.325603 148.819396 \nL 239.325603 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 249.817156 148.819396 \nL 249.817156 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 249.869614 \nL 148.766938 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 239.378061 \nL 148.766938 239.378061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 228.886508 \nL 148.766938 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 218.394956 \nL 148.766938 218.394956 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 207.903403 \nL 148.766938 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 197.41185 \nL 148.766938 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 186.920298 \nL 148.766938 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 176.428745 \nL 148.766938 176.428745 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 165.937192 \nL 148.766938 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 155.44564 \nL 148.766938 155.44564 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 134.462534 \nL 148.766938 134.462534 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 123.970981 \nL 148.766938 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 113.479429 \nL 148.766938 113.479429 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 102.987876 \nL 148.766938 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 92.496323 \nL 148.766938 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 82.004771 \nL 148.766938 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 71.513218 \nL 148.766938 71.513218 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 61.021665 \nL 148.766938 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 50.530113 \nL 148.766938 50.530113 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 40.03856 \nL 148.766938 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 123.393946 256.164545 \nL 123.393946 244.623837 \nL 138.08212 244.623837 \nL 138.08212 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 114.476126 249.082747 \nL 114.476126 253.541657 \nL 124.967679 253.541657 \nL 124.967679 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(116.08379 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(123.377855 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(123.377855 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 235.18144 \nL 129.951167 223.640732 \nL 137.819831 223.640732 \nL 137.819831 235.18144 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 121.820213 228.099642 \nL 121.820213 232.558552 \nL 132.311766 232.558552 \nL 132.311766 228.099642 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(122.64101 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(130.467698 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(130.467698 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 214.198335 \nL 129.951167 202.657627 \nL 137.819831 202.657627 \nL 137.819831 214.198335 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 121.820213 207.116537 \nL 121.820213 211.575447 \nL 132.311766 211.575447 \nL 132.311766 207.116537 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(122.64101 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(130.467698 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(130.467698 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 193.215229 \nL 129.951167 181.674521 \nL 137.819831 181.674521 \nL 137.819831 193.215229 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 121.820213 186.133431 \nL 121.820213 190.592341 \nL 132.311766 190.592341 \nL 132.311766 186.133431 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(122.64101 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(130.495823 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(130.495823 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 172.232124 \nL 129.951167 160.691416 \nL 137.819831 160.691416 \nL 137.819831 172.232124 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 121.820213 165.150326 \nL 121.820213 169.609236 \nL 132.311766 169.609236 \nL 132.311766 165.150326 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(122.64101 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(130.467698 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(130.467698 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 130.265913 \nL 129.951167 118.725205 \nL 137.819831 118.725205 \nL 137.819831 130.265913 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(130.467698 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(130.467698 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 109.282808 \nL 129.951167 97.7421 \nL 137.819831 97.7421 \nL 137.819831 109.282808 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(130.495823 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(130.495823 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 88.299702 \nL 129.951167 76.758994 \nL 137.819831 76.758994 \nL 137.819831 88.299702 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(130.467698 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(130.467698 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 67.316597 \nL 129.951167 55.775889 \nL 137.819831 55.775889 \nL 137.819831 67.316597 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(130.467698 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(130.467698 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 123.393946 46.333492 \nL 123.393946 34.792784 \nL 138.08212 34.792784 \nL 138.08212 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(123.377855 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(123.377855 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 19.527574 153.347329 \nL 19.527574 157.54395 \nL 119.197325 157.54395 \nL 119.197325 153.347329 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 31.330571 160.166838 \nL 31.330571 148.62613 \nL 45.231879 148.62613 \nL 45.231879 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(23.758126 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 56.248009 160.166838 \nL 56.248009 148.62613 \nL 64.116673 148.62613 \nL 64.116673 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(49.200141 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(56.502252 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(56.502252 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 77.231114 160.166838 \nL 77.231114 148.62613 \nL 85.099779 148.62613 \nL 85.099779 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(70.183247 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(77.485357 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(77.485357 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 98.21422 160.166838 \nL 98.21422 148.62613 \nL 106.082884 148.62613 \nL 106.082884 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(91.166352 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(98.496588 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(98.496588 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 119.197325 160.166838 \nL 119.197325 148.62613 \nL 127.06599 148.62613 \nL 127.06599 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(112.149458 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(119.451568 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(119.451568 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_22\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 161.163536 160.166838 \nL 161.163536 148.62613 \nL 169.0322 148.62613 \nL 169.0322 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(161.417779 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(161.417779 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_23\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 182.146641 160.166838 \nL 182.146641 148.62613 \nL 190.015306 148.62613 \nL 190.015306 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(182.429009 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_44\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(182.429009 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_24\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 203.129747 160.166838 \nL 203.129747 148.62613 \nL 210.998411 148.62613 \nL 210.998411 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_45\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(203.38399 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_46\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(203.38399 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_25\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 224.112852 160.166838 \nL 224.112852 148.62613 \nL 231.981516 148.62613 \nL 231.981516 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_47\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(224.367095 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_48\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(224.367095 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_26\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 240.899336 160.166838 \nL 240.899336 148.62613 \nL 255.58751 148.62613 \nL 255.58751 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_49\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(240.883245 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_50\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(240.883245 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_51\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(133.249519 155.331197)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_52\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(141.393035 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_53\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(262.592735 148.249399)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"m7413cc4c42\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <use style=\"stroke:#000000;\" x=\"144.901629\" xlink:href=\"#m7413cc4c42\" y=\"82.004771\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.553265 35.95968 \nL 202.300304 254.200796 \nL 202.300304 254.200796 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"pc3fefc5859\">\n   <rect height=\"260.82\" width=\"271.206637\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a line\" class=\"sr-only\"><ul><li>The line slants sharply down from left to right.</li>\n<li>The line passes through the following points:<br>\n<ul>\n<li>(0 comma 6)</li>\n<li>(1 comma 3)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The graph shows a linear relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>. Which equation represents this relationship, where <math alttext=\"upper R\"><mi>R</mi>\n</math> is a positive constant?</p>","answerOptions":[{"id":"92dceefe-230e-4689-bad2-9bca95676cb5","content":"<p><math alttext=\"upper R x plus 18 y equals 36\"><mi>R</mi><mi>x</mi><mo>+</mo><mn>18</mn><mi>y</mi><mo>=</mo><mn>36</mn></math></p>"},{"id":"cf6717b1-2e4b-4258-9561-3ab1a4670d44","content":"<p><math alttext=\"upper R x minus 18 y equals negative 36\"><mi>R</mi><mi>x</mi><mo>-</mo><mn>18</mn><mi>y</mi><mo>=</mo><mo>-</mo><mn>36</mn></math></p>"},{"id":"93176a23-5fa5-41a3-b807-99eb715f44b1","content":"<p><math alttext=\"18 x plus upper R y equals 36\"><mn>18</mn><mi>x</mi><mo>+</mo><mi>R</mi><mi>y</mi><mo>=</mo><mn>36</mn></math></p>"},{"id":"6f18332b-448d-47d9-a91e-de28c26b901c","content":"<p><math alttext=\"18 x minus upper R y equals negative 36\"><mn>18</mn><mi>x</mi><mo>-</mo><mi>R</mi><mi>y</mi><mo>=</mo><mo>-</mo><mn>36</mn></math></p>"}],"keys":["93176a23-5fa5-41a3-b807-99eb715f44b1"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. The equation representing the linear relationship shown can be written in slope-intercept form <math alttext=\"y equals m x plus b\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>m</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>b</mi>\n\t</mrow>\n</mrow>\n</math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope and <math alttext=\"left parenthesis 0 comma b right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math> is the <em>y</em>-intercept of the line. The line shown passes through the points <math alttext=\"left parenthesis 0 comma 6 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math> and <math alttext=\"left parenthesis 2 comma 0 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Given two points on a line, <math alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, the slope of the line can be calculated using the equation <math alttext=\"m equals StartFraction y 2 minus y 1 Over x 2 minus x 1 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><msub><mi>y</mi><mn>2</mn></msub><mo>-</mo><msub><mi>y</mi><mn>1</mn></msub></mrow><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>-</mo><msub><mi>x</mi><mn>1</mn></msub></mrow></mfrac></math>. Substituting <math alttext=\"left parenthesis 0 comma 6 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math> and <math alttext=\"left parenthesis 2 comma 0 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math> for <math alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, respectively, in this equation yields <math alttext=\"m equals StartFraction 0 minus 6 Over 2 minus 0 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><mn>0</mn><mo>-</mo><mn>6</mn></mrow><mrow><mn>2</mn><mo>-</mo><mn>0</mn></mrow></mfrac></math>, which is equivalent to <math alttext=\"m equals negative six halves\"><mi>m</mi><mo>=</mo><mo>-</mo><mfrac><mn>6</mn><mn>2</mn></mfrac></math>, or <math alttext=\"m equals negative 3\"><mrow>\n\t<mi>m</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n</mrow>\n</math>. Since <math alttext=\"left parenthesis 0 comma 6 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math> is the <em>y</em>-intercept, it follows that <math alttext=\"b equals 6\"><mrow>\n\t<mi>b</mi>\n\t<mo>=</mo>\n\t<mn>6</mn>\n</mrow>\n</math>. Substituting <math alttext=\"negative 3\"><mrow>\n\t<mo>-</mo>\n\t<mn>3</mn>\n</mrow>\n</math> for <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"6\"><mn>6</mn>\n</math> for <math alttext=\"b\"><mi>b</mi>\n</math> in the equation <math alttext=\"y equals m x plus b\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>m</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>b</mi>\n\t</mrow>\n</mrow>\n</math> yields <math alttext=\"y equals minus 3 x plus 6\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>6</mn>\n\t</mrow>\n</mrow>\n</math>. Adding <math alttext=\"3 x\"><mrow>\n\t<mn>3</mn>\n\t<mi>x</mi>\n</mrow>\n</math> to both sides of this equation yields <math alttext=\"3 x plus y equals 6\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>6</mn>\n</mrow>\n</math>. Multiplying this equation by <math alttext=\"6\"><mn>6</mn>\n</math> yields <math alttext=\"18 x plus 6 y equals 36\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>18</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>36</mn>\n</mrow>\n</math>. It follows that the equation <math alttext=\"18 x plus upper R y equals 36\"><mn>18</mn><mi>x</mi><mo>+</mo><mi>R</mi><mi>y</mi><mo>=</mo><mn>36</mn></math>, where <math alttext=\"upper R\"><mi>R</mi>\n</math> is a positive constant, represents this relationship.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. The graph of this relationship passes through the point&nbsp;<math alttext=\"left parenthesis 0 comma 2 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>2</mn></mrow></mfenced></math>, not&nbsp;<math alttext=\"left parenthesis 0 comma 6 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. The graph of this relationship passes through the point <math alttext=\"left parenthesis 0 comma 2 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>2</mn></mrow></mfenced></math>, not <math alttext=\"left parenthesis 0 comma 6 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. The graph of this relationship passes through the point <math alttext=\"left parenthesis negative 2 comma 0 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, not <math alttext=\"left parenthesis 2 comma 0 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357391,"pPcc":"SAT#H","questionId":"5b7599a6","skill_cd":"H.C.","score_band_range_cd":7,"skill_desc":"Linear equations in two variables","createDate":1730147357391,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"8cda2479-6500-45ad-b2fe-a4863fff3443","primary_class_cd":"H","uId":"efd3ea09-26b9-46cc-aee2-c384d427bc1d","difficulty":"H"},"raw_detail":{"answerOptions":[{"content":"<p><math alttext=\"upper R x plus 18 y equals 36\"><mi>R</mi><mi>x</mi><mo>+</mo><mn>18</mn><mi>y</mi><mo>=</mo><mn>36</mn></math></p>","id":"92dceefe-230e-4689-bad2-9bca95676cb5"},{"content":"<p><math alttext=\"upper R x minus 18 y equals negative 36\"><mi>R</mi><mi>x</mi><mo>-</mo><mn>18</mn><mi>y</mi><mo>=</mo><mo>-</mo><mn>36</mn></math></p>","id":"cf6717b1-2e4b-4258-9561-3ab1a4670d44"},{"content":"<p><math alttext=\"18 x plus upper R y equals 36\"><mn>18</mn><mi>x</mi><mo>+</mo><mi>R</mi><mi>y</mi><mo>=</mo><mn>36</mn></math></p>","id":"93176a23-5fa5-41a3-b807-99eb715f44b1"},{"content":"<p><math alttext=\"18 x minus upper R y equals negative 36\"><mn>18</mn><mi>x</mi><mo>-</mo><mi>R</mi><mi>y</mi><mo>=</mo><mo>-</mo><mn>36</mn></math></p>","id":"6f18332b-448d-47d9-a91e-de28c26b901c"}],"externalid":"8cda2479-6500-45ad-b2fe-a4863fff3443","keys":["93176a23-5fa5-41a3-b807-99eb715f44b1"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. The equation representing the linear relationship shown can be written in slope-intercept form <math alttext=\"y equals m x plus b\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>m</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>b</mi>\n\t</mrow>\n</mrow>\n</math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope and <math alttext=\"left parenthesis 0 comma b right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mi>b</mi></mrow></mfenced></math> is the <em>y</em>-intercept of the line. The line shown passes through the points <math alttext=\"left parenthesis 0 comma 6 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math> and <math alttext=\"left parenthesis 2 comma 0 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Given two points on a line, <math alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, the slope of the line can be calculated using the equation <math alttext=\"m equals StartFraction y 2 minus y 1 Over x 2 minus x 1 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><msub><mi>y</mi><mn>2</mn></msub><mo>-</mo><msub><mi>y</mi><mn>1</mn></msub></mrow><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>-</mo><msub><mi>x</mi><mn>1</mn></msub></mrow></mfrac></math>. Substituting <math alttext=\"left parenthesis 0 comma 6 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math> and <math alttext=\"left parenthesis 2 comma 0 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math> for <math alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, respectively, in this equation yields <math alttext=\"m equals StartFraction 0 minus 6 Over 2 minus 0 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><mn>0</mn><mo>-</mo><mn>6</mn></mrow><mrow><mn>2</mn><mo>-</mo><mn>0</mn></mrow></mfrac></math>, which is equivalent to <math alttext=\"m equals negative six halves\"><mi>m</mi><mo>=</mo><mo>-</mo><mfrac><mn>6</mn><mn>2</mn></mfrac></math>, or <math alttext=\"m equals negative 3\"><mrow>\n\t<mi>m</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mo>-</mo>\n\t\t<mn>3</mn>\n\t</mrow>\n</mrow>\n</math>. Since <math alttext=\"left parenthesis 0 comma 6 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math> is the <em>y</em>-intercept, it follows that <math alttext=\"b equals 6\"><mrow>\n\t<mi>b</mi>\n\t<mo>=</mo>\n\t<mn>6</mn>\n</mrow>\n</math>. Substituting <math alttext=\"negative 3\"><mrow>\n\t<mo>-</mo>\n\t<mn>3</mn>\n</mrow>\n</math> for <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"6\"><mn>6</mn>\n</math> for <math alttext=\"b\"><mi>b</mi>\n</math> in the equation <math alttext=\"y equals m x plus b\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>m</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>b</mi>\n\t</mrow>\n</mrow>\n</math> yields <math alttext=\"y equals minus 3 x plus 6\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>6</mn>\n\t</mrow>\n</mrow>\n</math>. Adding <math alttext=\"3 x\"><mrow>\n\t<mn>3</mn>\n\t<mi>x</mi>\n</mrow>\n</math> to both sides of this equation yields <math alttext=\"3 x plus y equals 6\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>6</mn>\n</mrow>\n</math>. Multiplying this equation by <math alttext=\"6\"><mn>6</mn>\n</math> yields <math alttext=\"18 x plus 6 y equals 36\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>18</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>36</mn>\n</mrow>\n</math>. It follows that the equation <math alttext=\"18 x plus upper R y equals 36\"><mn>18</mn><mi>x</mi><mo>+</mo><mi>R</mi><mi>y</mi><mo>=</mo><mn>36</mn></math>, where <math alttext=\"upper R\"><mi>R</mi>\n</math> is a positive constant, represents this relationship.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. The graph of this relationship passes through the point&nbsp;<math alttext=\"left parenthesis 0 comma 2 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>2</mn></mrow></mfenced></math>, not&nbsp;<math alttext=\"left parenthesis 0 comma 6 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. The graph of this relationship passes through the point <math alttext=\"left parenthesis 0 comma 2 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>2</mn></mrow></mfenced></math>, not <math alttext=\"left parenthesis 0 comma 6 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>6</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. The graph of this relationship passes through the point <math alttext=\"left parenthesis negative 2 comma 0 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>, not <math alttext=\"left parenthesis 2 comma 0 right parenthesis\"><mfenced><mrow><mn>2</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>.</p>","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 288.918319 275.22\" width=\"288.918319pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a line in the x y plane with the origin labeled O. The x axis ranges from negative 10 to 10. The y axis ranges from negative 10 to 10. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 288.918319 275.22 \nL 288.918319 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 9.558319 260.46 \nL 281.718319 260.46 \nL 281.718319 10.98 \nL 9.558319 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 278.406637 268.02 \nL 278.406637 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n    <g id=\"xtick_7\"></g>\n    <g id=\"xtick_8\"></g>\n    <g id=\"xtick_9\"></g>\n    <g id=\"xtick_10\"></g>\n    <g id=\"xtick_11\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n    <g id=\"ytick_9\"></g>\n    <g id=\"ytick_10\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 39.986102 255.11539 \nL 39.986102 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 50.477655 255.11539 \nL 50.477655 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 60.969208 255.11539 \nL 60.969208 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 71.46076 255.11539 \nL 71.46076 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 81.952313 255.11539 \nL 81.952313 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 92.443866 255.11539 \nL 92.443866 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 102.935418 255.11539 \nL 102.935418 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 113.426971 255.11539 \nL 113.426971 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 123.918524 255.11539 \nL 123.918524 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 134.410076 255.11539 \nL 134.410076 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 155.393182 255.11539 \nL 155.393182 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 165.884735 255.11539 \nL 165.884735 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 176.376287 255.11539 \nL 176.376287 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 186.86784 255.11539 \nL 186.86784 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 197.359393 255.11539 \nL 197.359393 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 207.850945 255.11539 \nL 207.850945 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 218.342498 255.11539 \nL 218.342498 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 228.834051 255.11539 \nL 228.834051 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 239.325603 255.11539 \nL 239.325603 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 249.817156 255.11539 \nL 249.817156 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 249.869614 \nL 255.062932 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 239.378061 \nL 255.062932 239.378061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 228.886508 \nL 255.062932 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 218.394956 \nL 255.062932 218.394956 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 207.903403 \nL 255.062932 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 197.41185 \nL 255.062932 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 186.920298 \nL 255.062932 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 176.428745 \nL 255.062932 176.428745 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 165.937192 \nL 255.062932 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 155.44564 \nL 255.062932 155.44564 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 134.462534 \nL 255.062932 134.462534 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 123.970981 \nL 255.062932 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 113.479429 \nL 255.062932 113.479429 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 102.987876 \nL 255.062932 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 92.496323 \nL 255.062932 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 82.004771 \nL 255.062932 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 71.513218 \nL 255.062932 71.513218 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 61.021665 \nL 255.062932 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 50.530113 \nL 255.062932 50.530113 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 40.03856 \nL 255.062932 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 34.740326 144.954087 \nL 260.308709 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 257.443461 -129.281463 \nL 260.308709 -130.265913 \nL 257.443461 -131.250364 \nL 257.443461 -129.281463 \nL 260.308709 -130.265913 \n\" id=\"mb180adb27c\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#mb180adb27c\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 144.901629 255.11539 \nL 144.901629 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 145.916171 -242.098754 \nL 144.901629 -245.672993 \nL 143.887087 -242.098754 \nL 145.916171 -242.098754 \nL 144.901629 -245.672993 \n\" id=\"m9ad59cef6e\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m9ad59cef6e\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 39.986102 148.819396 \nL 39.986102 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 50.477655 148.819396 \nL 50.477655 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 60.969208 148.819396 \nL 60.969208 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 71.46076 148.819396 \nL 71.46076 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 81.952313 148.819396 \nL 81.952313 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 92.443866 148.819396 \nL 92.443866 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 102.935418 148.819396 \nL 102.935418 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 113.426971 148.819396 \nL 113.426971 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 123.918524 148.819396 \nL 123.918524 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 134.410076 148.819396 \nL 134.410076 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 155.393182 148.819396 \nL 155.393182 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 165.884735 148.819396 \nL 165.884735 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 176.376287 148.819396 \nL 176.376287 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 186.86784 148.819396 \nL 186.86784 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 197.359393 148.819396 \nL 197.359393 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 207.850945 148.819396 \nL 207.850945 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 218.342498 148.819396 \nL 218.342498 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 228.834051 148.819396 \nL 228.834051 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 239.325603 148.819396 \nL 239.325603 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 249.817156 148.819396 \nL 249.817156 141.088778 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 249.869614 \nL 148.766938 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 239.378061 \nL 148.766938 239.378061 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 228.886508 \nL 148.766938 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 218.394956 \nL 148.766938 218.394956 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 207.903403 \nL 148.766938 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 197.41185 \nL 148.766938 197.41185 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 186.920298 \nL 148.766938 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 176.428745 \nL 148.766938 176.428745 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 165.937192 \nL 148.766938 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 155.44564 \nL 148.766938 155.44564 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 134.462534 \nL 148.766938 134.462534 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 123.970981 \nL 148.766938 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 113.479429 \nL 148.766938 113.479429 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 102.987876 \nL 148.766938 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 92.496323 \nL 148.766938 92.496323 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 82.004771 \nL 148.766938 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 71.513218 \nL 148.766938 71.513218 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 61.021665 \nL 148.766938 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 50.530113 \nL 148.766938 50.530113 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 141.03632 40.03856 \nL 148.766938 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 123.393946 256.164545 \nL 123.393946 244.623837 \nL 138.08212 244.623837 \nL 138.08212 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 114.476126 249.082747 \nL 114.476126 253.541657 \nL 124.967679 253.541657 \nL 124.967679 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(116.08379 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(123.377855 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(123.377855 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 235.18144 \nL 129.951167 223.640732 \nL 137.819831 223.640732 \nL 137.819831 235.18144 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 121.820213 228.099642 \nL 121.820213 232.558552 \nL 132.311766 232.558552 \nL 132.311766 228.099642 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(122.64101 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(130.467698 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(130.467698 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 214.198335 \nL 129.951167 202.657627 \nL 137.819831 202.657627 \nL 137.819831 214.198335 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 121.820213 207.116537 \nL 121.820213 211.575447 \nL 132.311766 211.575447 \nL 132.311766 207.116537 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(122.64101 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(130.467698 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(130.467698 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 193.215229 \nL 129.951167 181.674521 \nL 137.819831 181.674521 \nL 137.819831 193.215229 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 121.820213 186.133431 \nL 121.820213 190.592341 \nL 132.311766 190.592341 \nL 132.311766 186.133431 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(122.64101 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(130.495823 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(130.495823 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 172.232124 \nL 129.951167 160.691416 \nL 137.819831 160.691416 \nL 137.819831 172.232124 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 121.820213 165.150326 \nL 121.820213 169.609236 \nL 132.311766 169.609236 \nL 132.311766 165.150326 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(122.64101 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(130.467698 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(130.467698 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 130.265913 \nL 129.951167 118.725205 \nL 137.819831 118.725205 \nL 137.819831 130.265913 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(130.467698 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(130.467698 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 109.282808 \nL 129.951167 97.7421 \nL 137.819831 97.7421 \nL 137.819831 109.282808 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(130.495823 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(130.495823 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 88.299702 \nL 129.951167 76.758994 \nL 137.819831 76.758994 \nL 137.819831 88.299702 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(130.467698 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(130.467698 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.951167 67.316597 \nL 129.951167 55.775889 \nL 137.819831 55.775889 \nL 137.819831 67.316597 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(130.467698 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(130.467698 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 123.393946 46.333492 \nL 123.393946 34.792784 \nL 138.08212 34.792784 \nL 138.08212 46.333492 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(123.377855 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(123.377855 44.777738)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 19.527574 153.347329 \nL 19.527574 157.54395 \nL 119.197325 157.54395 \nL 119.197325 153.347329 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 31.330571 160.166838 \nL 31.330571 148.62613 \nL 45.231879 148.62613 \nL 45.231879 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(23.758126 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 56.248009 160.166838 \nL 56.248009 148.62613 \nL 64.116673 148.62613 \nL 64.116673 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(49.200141 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(56.502252 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(56.502252 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 77.231114 160.166838 \nL 77.231114 148.62613 \nL 85.099779 148.62613 \nL 85.099779 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(70.183247 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(77.485357 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(77.485357 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 98.21422 160.166838 \nL 98.21422 148.62613 \nL 106.082884 148.62613 \nL 106.082884 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(91.166352 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(98.496588 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(98.496588 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 119.197325 160.166838 \nL 119.197325 148.62613 \nL 127.06599 148.62613 \nL 127.06599 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- – -->\n     <g transform=\"translate(112.149458 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(119.451568 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(119.451568 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_22\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 161.163536 160.166838 \nL 161.163536 148.62613 \nL 169.0322 148.62613 \nL 169.0322 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(161.417779 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 2 -->\n     <g transform=\"translate(161.417779 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_23\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 182.146641 160.166838 \nL 182.146641 148.62613 \nL 190.015306 148.62613 \nL 190.015306 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(182.429009 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_44\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 4 -->\n     <g transform=\"translate(182.429009 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_24\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 203.129747 160.166838 \nL 203.129747 148.62613 \nL 210.998411 148.62613 \nL 210.998411 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_45\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(203.38399 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_46\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 6 -->\n     <g transform=\"translate(203.38399 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_25\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 224.112852 160.166838 \nL 224.112852 148.62613 \nL 231.981516 148.62613 \nL 231.981516 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_47\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(224.367095 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_48\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 8 -->\n     <g transform=\"translate(224.367095 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_26\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 240.899336 160.166838 \nL 240.899336 148.62613 \nL 255.58751 148.62613 \nL 255.58751 160.166838 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_49\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(240.883245 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_50\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- 10 -->\n     <g transform=\"translate(240.883245 158.873374)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_51\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(133.249519 155.331197)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_52\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(141.393035 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_53\">\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(262.592735 148.249399)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <defs>\n     <path d=\"M 0 3 \nC 0.795609 3 1.55874 2.683901 2.12132 2.12132 \nC 2.683901 1.55874 3 0.795609 3 0 \nC 3 -0.795609 2.683901 -1.55874 2.12132 -2.12132 \nC 1.55874 -2.683901 0.795609 -3 0 -3 \nC -0.795609 -3 -1.55874 -2.683901 -2.12132 -2.12132 \nC -2.683901 -1.55874 -3 -0.795609 -3 0 \nC -3 0.795609 -2.683901 1.55874 -2.12132 2.12132 \nC -1.55874 2.683901 -0.795609 3 0 3 \nz\n\" id=\"m7413cc4c42\" style=\"stroke:#000000;\"></path>\n    </defs>\n    <g clip-path=\"url(#pc3fefc5859)\">\n     <use style=\"stroke:#000000;\" x=\"144.901629\" xlink:href=\"#m7413cc4c42\" y=\"82.004771\"></use>\n    </g>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#pc3fefc5859)\" d=\"M 129.553265 35.95968 \nL 202.300304 254.200796 \nL 202.300304 254.200796 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"pc3fefc5859\">\n   <rect height=\"260.82\" width=\"271.206637\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a line\" class=\"sr-only\"><ul><li>The line slants sharply down from left to right.</li>\n<li>The line passes through the following points:<br>\n<ul>\n<li>(0 comma 6)</li>\n<li>(1 comma 3)</li>\n</ul>\n</li>\n</ul></div></figure></p>\n<p style=\"text-align: left;\">The graph shows a linear relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>. Which equation represents this relationship, where <math alttext=\"upper R\"><mi>R</mi>\n</math> is a positive constant?</p>","type":"mcq","correct_answer":["C"]},"createDate":1730147357391,"updateDate":1730147357391}$SATQ$::jsonb, 1730147357391, 1730147357391),
    ($SATQ$5b8a8475$SATQ$, $SATQ$451c1b50-026a-4bad-96b2-c090526934bf$SATQ$::uuid, $SATQ$58b70bc5-a55b-44b7-a39c-e7505dd6d2fe$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">Line <math alttext="k"><mi>k</mi>
</math> is defined by <math alttext="y equals 3 x plus 15"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mn>3</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>15</mn>
	</mrow>
</mrow>
</math>. Line <math alttext="j"><mi>j</mi>
</math> is perpendicular to line <math alttext="k"><mi>k</mi>
</math> in the <em>xy</em>-plane. What is the slope of line <math alttext="j"><mi>j</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"03c5bab3-0445-4b41-831e-f1a62f33d195","content":"<p><math alttext=\"negative one third\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>3</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"5b7fd79e-af3f-4401-a408-7aa14fee0ffb","content":"<p><math alttext=\"negative one twelfth\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>12</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"20454c08-39dd-4a68-a50f-91ae7b8bc8f6","content":"<p><math alttext=\"negative one eighteenth\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>18</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"8a2169b7-0b69-4970-947f-c2f5aac2d68e","content":"<p><math alttext=\"negative one forty fifth\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>45</mn>\n\t</mfrac>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["03c5bab3-0445-4b41-831e-f1a62f33d195"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It's given that line <math alttext="j"><mi>j</mi>
</math> is perpendicular to line <math alttext="k"><mi>k</mi>
</math> in the <em>xy</em>-plane. It follows that the slope of line <math alttext="j"><mi>j</mi>
</math> is the opposite reciprocal of the slope of line <math alttext="k"><mi>k</mi>
</math>. The equation for line <math alttext="k"><mi>k</mi>
</math> is written in slope-intercept form <math alttext="y equals m x plus b"><mrow>
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
</math> is the slope of the line and&nbsp;<math alttext="b"><mi>b</mi>
</math> is the <em>y</em>-coordinate of the <em>y</em>-intercept of the line. It follows that the slope of line <math alttext="k"><mi>k</mi>
</math> is <math alttext="3"><mn>3</mn>
</math>. The opposite reciprocal of a number is <math alttext="negative 1"><mo>-</mo><mn>1</mn>
</math> divided by the number. Thus, the opposite reciprocal of <math alttext="3"><mn>3</mn>
</math> is <math alttext="negative one third"><mo>-</mo><mfrac><mn>1</mn><mn>3</mn></mfrac></math>. Therefore, the slope of line <math alttext="j"><mi>j</mi>
</math> is <math alttext="negative one third"><mrow>
	<mo>-</mo>
	<mfrac>
		<mn>1</mn>
		<mn>3</mn>
	</mfrac>
</mrow>
</math>.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"5b8a8475","external_id":"451c1b50-026a-4bad-96b2-c090526934bf","disclosed_item_id":null,"source":"qbank","vaultid":"58b70bc5-a55b-44b7-a39c-e7505dd6d2fe","uId":"0d8bdd95-d411-40c9-a290-dcb5c5fb2bf4","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">Line <math alttext=\"k\"><mi>k</mi>\n</math> is defined by <math alttext=\"y equals 3 x plus 15\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>15</mn>\n\t</mrow>\n</mrow>\n</math>. Line <math alttext=\"j\"><mi>j</mi>\n</math> is perpendicular to line <math alttext=\"k\"><mi>k</mi>\n</math> in the <em>xy</em>-plane. What is the slope of line <math alttext=\"j\"><mi>j</mi>\n</math>?</p>","answerOptions":[{"id":"03c5bab3-0445-4b41-831e-f1a62f33d195","content":"<p><math alttext=\"negative one third\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>3</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"5b7fd79e-af3f-4401-a408-7aa14fee0ffb","content":"<p><math alttext=\"negative one twelfth\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>12</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"20454c08-39dd-4a68-a50f-91ae7b8bc8f6","content":"<p><math alttext=\"negative one eighteenth\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>18</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"8a2169b7-0b69-4970-947f-c2f5aac2d68e","content":"<p><math alttext=\"negative one forty fifth\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>45</mn>\n\t</mfrac>\n</mrow>\n</math></p>"}],"keys":["03c5bab3-0445-4b41-831e-f1a62f33d195"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that line <math alttext=\"j\"><mi>j</mi>\n</math> is perpendicular to line <math alttext=\"k\"><mi>k</mi>\n</math> in the <em>xy</em>-plane. It follows that the slope of line <math alttext=\"j\"><mi>j</mi>\n</math> is the opposite reciprocal of the slope of line <math alttext=\"k\"><mi>k</mi>\n</math>. The equation for line <math alttext=\"k\"><mi>k</mi>\n</math> is written in slope-intercept form <math alttext=\"y equals m x plus b\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>m</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>b</mi>\n\t</mrow>\n</mrow>\n</math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope of the line and&nbsp;<math alttext=\"b\"><mi>b</mi>\n</math> is the <em>y</em>-coordinate of the <em>y</em>-intercept of the line. It follows that the slope of line <math alttext=\"k\"><mi>k</mi>\n</math> is <math alttext=\"3\"><mn>3</mn>\n</math>. The opposite reciprocal of a number is <math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math> divided by the number. Thus, the opposite reciprocal of <math alttext=\"3\"><mn>3</mn>\n</math> is <math alttext=\"negative one third\"><mo>-</mo><mfrac><mn>1</mn><mn>3</mn></mfrac></math>. Therefore, the slope of line <math alttext=\"j\"><mi>j</mi>\n</math> is <math alttext=\"negative one third\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>3</mn>\n\t</mfrac>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959816,"pPcc":"SAT#H","questionId":"5b8a8475","skill_cd":"H.C.","score_band_range_cd":2,"skill_desc":"Linear equations in two variables","createDate":1691007959816,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"451c1b50-026a-4bad-96b2-c090526934bf","primary_class_cd":"H","uId":"0d8bdd95-d411-40c9-a290-dcb5c5fb2bf4","difficulty":"E"},"raw_detail":{"keys":["03c5bab3-0445-4b41-831e-f1a62f33d195"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that line <math alttext=\"j\"><mi>j</mi>\n</math> is perpendicular to line <math alttext=\"k\"><mi>k</mi>\n</math> in the <em>xy</em>-plane. It follows that the slope of line <math alttext=\"j\"><mi>j</mi>\n</math> is the opposite reciprocal of the slope of line <math alttext=\"k\"><mi>k</mi>\n</math>. The equation for line <math alttext=\"k\"><mi>k</mi>\n</math> is written in slope-intercept form <math alttext=\"y equals m x plus b\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mi>m</mi>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>b</mi>\n\t</mrow>\n</mrow>\n</math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope of the line and&nbsp;<math alttext=\"b\"><mi>b</mi>\n</math> is the <em>y</em>-coordinate of the <em>y</em>-intercept of the line. It follows that the slope of line <math alttext=\"k\"><mi>k</mi>\n</math> is <math alttext=\"3\"><mn>3</mn>\n</math>. The opposite reciprocal of a number is <math alttext=\"negative 1\"><mo>-</mo><mn>1</mn>\n</math> divided by the number. Thus, the opposite reciprocal of <math alttext=\"3\"><mn>3</mn>\n</math> is <math alttext=\"negative one third\"><mo>-</mo><mfrac><mn>1</mn><mn>3</mn></mfrac></math>. Therefore, the slope of line <math alttext=\"j\"><mi>j</mi>\n</math> is <math alttext=\"negative one third\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>3</mn>\n\t</mfrac>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">Line <math alttext=\"k\"><mi>k</mi>\n</math> is defined by <math alttext=\"y equals 3 x plus 15\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>15</mn>\n\t</mrow>\n</mrow>\n</math>. Line <math alttext=\"j\"><mi>j</mi>\n</math> is perpendicular to line <math alttext=\"k\"><mi>k</mi>\n</math> in the <em>xy</em>-plane. What is the slope of line <math alttext=\"j\"><mi>j</mi>\n</math>?</p>","externalid":"451c1b50-026a-4bad-96b2-c090526934bf","templateid":"b946d1dd-7df6-414a-87c6-5ad488389f7a","vaultid":"58b70bc5-a55b-44b7-a39c-e7505dd6d2fe","type":"mcq","answerOptions":[{"id":"03c5bab3-0445-4b41-831e-f1a62f33d195","content":"<p><math alttext=\"negative one third\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>3</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"5b7fd79e-af3f-4401-a408-7aa14fee0ffb","content":"<p><math alttext=\"negative one twelfth\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>12</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"20454c08-39dd-4a68-a50f-91ae7b8bc8f6","content":"<p><math alttext=\"negative one eighteenth\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>18</mn>\n\t</mfrac>\n</mrow>\n</math></p>"},{"id":"8a2169b7-0b69-4970-947f-c2f5aac2d68e","content":"<p><math alttext=\"negative one forty fifth\"><mrow>\n\t<mo>-</mo>\n\t<mfrac>\n\t\t<mn>1</mn>\n\t\t<mn>45</mn>\n\t</mfrac>\n</mrow>\n</math></p>"}],"correct_answer":["A"]},"createDate":1691007959816,"updateDate":1691007959816}$SATQ$::jsonb, 1691007959816, 1691007959816),
    ($SATQ$5bf5136d$SATQ$, $SATQ$176e3a8c-9f87-406f-a76a-01267378721c$SATQ$::uuid, $SATQ$21f0c9f6-ce41-4147-8177-6338e0d473aa$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.E.$SATQ$, $SATQ$Linear inequalities in one or two variables$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">The triangle inequality theorem states that the sum of any two sides of a triangle must be greater than the length of the third side. If a triangle has side lengths of <math alttext="6"><mn>6</mn>
</math> and <math alttext="12"><mn>12</mn>
</math>, which inequality represents the possible lengths, <math alttext="x"><mi>x</mi>
</math>, of the third side of the triangle?</p>$SATQ$, $SATQ$[{"id":"e56b2ea9-05a1-4dbf-ab99-423ef2e771af","content":"<p><math alttext=\"x less than 18\"><mi>x</mi><mo>&#60;</mo><mn>18</mn>\n</math></p>"},{"id":"35b11e8c-0356-47ea-8f6d-1221ea2799f4","content":"<p><math alttext=\"x greater than 18\"><mi>x</mi><mo>&#62;</mo><mn>18</mn>\n</math></p>"},{"id":"1a68c024-53bb-4441-965b-fba30855002b","content":"<p><math alttext=\"6 less than x less than 18\"><mn>6</mn>\n<mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>18</mn>\n</math></p>"},{"id":"1c534f57-190b-4bc6-9986-6d7072ef2dd3","content":"<p><math alttext=\"x less than 6\"><mi>x</mi><mo>&#60;</mo><mn>6</mn>\n</math> or&nbsp;<math alttext=\"x greater than 18\"><mi>x</mi><mo>&#62;</mo><mn>18</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["1a68c024-53bb-4441-965b-fba30855002b"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. It&rsquo;s given that a triangle has side lengths of <math alttext="6"><mn>6</mn>
</math> and <math alttext="12"><mn>12</mn>
</math>, and <math alttext="x"><mi>x</mi>
</math> represents the length of the third side of the triangle. It&rsquo;s also given that the triangle inequality theorem states that the sum of any two sides of a triangle must be greater than the length of the third side. Therefore, the inequalities <math alttext="6 plus x greater than 12"><mn>6</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>12</mn></math>, <math alttext="6 plus 12 greater than x"><mn>6</mn><mo>+</mo><mn>12</mn><mo>&#62;</mo><mi>x</mi></math>, and <math alttext="12 plus x greater than 6"><mn>12</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> represent all possible values of <math alttext="x"><mi>x</mi>
</math>. Subtracting <math alttext="6"><mn>6</mn>
</math> from both sides of the inequality <math alttext="6 plus x greater than 12"><mn>6</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>12</mn></math> yields <math alttext="x greater than 12 minus 6"><mi>x</mi><mo>&#62;</mo><mn>12</mn><mo>-</mo><mn>6</mn></math>, or <math alttext="x greater than 6"><mi>x</mi><mo>&#62;</mo><mn>6</mn></math>. Adding <math alttext="6"><mn>6</mn>
</math> and <math alttext="12"><mn>12</mn>
</math> in the inequality <math alttext="6 plus 12 greater than x"><mn>6</mn><mo>+</mo><mn>12</mn><mo>&#62;</mo><mi>x</mi></math> yields <math alttext="18 greater than x"><mn>18</mn><mo>&#62;</mo><mi>x</mi></math>, or <math alttext="x less than 18"><mi>x</mi><mo>&#60;</mo><mn>18</mn></math>. Subtracting <math alttext="12"><mn>12</mn>
</math> from both sides of the inequality <math alttext="12 plus x greater than 6"><mn>12</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> yields <math alttext="x greater than 6 minus 12"><mi>x</mi><mo>&#62;</mo><mn>6</mn><mo>-</mo><mn>12</mn></math>, or <math alttext="x greater than negative 6"><mi>x</mi><mo>&#62;</mo><mo>-</mo><mn>6</mn></math>. Since all <em>x</em>-values that satisfy the inequality <math alttext="x greater than 6"><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> also satisfy the inequality <math alttext="x greater than negative 6"><mi>x</mi><mo>&#62;</mo><mo>-</mo><mn>6</mn></math>, it follows that the inequalities <math alttext="x greater than 6"><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> and <math alttext="x less than 18"><mi>x</mi><mo>&#60;</mo><mn>18</mn></math> represent the possible values of <math alttext="x"><mi>x</mi>
</math>. Therefore, the inequality <math alttext="6 less than x less than 18"><mn>6</mn><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>18</mn></math> represents the possible lengths, <math alttext="x"><mi>x</mi>
</math>, of the third side of the triangle.</p>
<p style="text-align: left;">Choice A is incorrect. This inequality gives the upper bound for <math alttext="x"><mi>x</mi>
</math> but does not include its lower bound.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"5bf5136d","external_id":"176e3a8c-9f87-406f-a76a-01267378721c","disclosed_item_id":null,"source":"qbank","vaultid":"21f0c9f6-ce41-4147-8177-6338e0d473aa","uId":"864f2fa0-e51c-4f6e-9d8b-178779f7b4a2","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.E.","skill_desc":"Linear inequalities in one or two variables","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">The triangle inequality theorem states that the sum of any two sides of a triangle must be greater than the length of the third side. If a triangle has side lengths of <math alttext=\"6\"><mn>6</mn>\n</math> and <math alttext=\"12\"><mn>12</mn>\n</math>, which inequality represents the possible lengths, <math alttext=\"x\"><mi>x</mi>\n</math>, of the third side of the triangle?</p>","answerOptions":[{"id":"e56b2ea9-05a1-4dbf-ab99-423ef2e771af","content":"<p><math alttext=\"x less than 18\"><mi>x</mi><mo>&#60;</mo><mn>18</mn>\n</math></p>"},{"id":"35b11e8c-0356-47ea-8f6d-1221ea2799f4","content":"<p><math alttext=\"x greater than 18\"><mi>x</mi><mo>&#62;</mo><mn>18</mn>\n</math></p>"},{"id":"1a68c024-53bb-4441-965b-fba30855002b","content":"<p><math alttext=\"6 less than x less than 18\"><mn>6</mn>\n<mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>18</mn>\n</math></p>"},{"id":"1c534f57-190b-4bc6-9986-6d7072ef2dd3","content":"<p><math alttext=\"x less than 6\"><mi>x</mi><mo>&#60;</mo><mn>6</mn>\n</math> or&nbsp;<math alttext=\"x greater than 18\"><mi>x</mi><mo>&#62;</mo><mn>18</mn>\n</math></p>"}],"keys":["1a68c024-53bb-4441-965b-fba30855002b"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It&rsquo;s given that a triangle has side lengths of <math alttext=\"6\"><mn>6</mn>\n</math> and <math alttext=\"12\"><mn>12</mn>\n</math>, and <math alttext=\"x\"><mi>x</mi>\n</math> represents the length of the third side of the triangle. It&rsquo;s also given that the triangle inequality theorem states that the sum of any two sides of a triangle must be greater than the length of the third side. Therefore, the inequalities <math alttext=\"6 plus x greater than 12\"><mn>6</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>12</mn></math>, <math alttext=\"6 plus 12 greater than x\"><mn>6</mn><mo>+</mo><mn>12</mn><mo>&#62;</mo><mi>x</mi></math>, and <math alttext=\"12 plus x greater than 6\"><mn>12</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> represent all possible values of <math alttext=\"x\"><mi>x</mi>\n</math>. Subtracting <math alttext=\"6\"><mn>6</mn>\n</math> from both sides of the inequality <math alttext=\"6 plus x greater than 12\"><mn>6</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>12</mn></math> yields <math alttext=\"x greater than 12 minus 6\"><mi>x</mi><mo>&#62;</mo><mn>12</mn><mo>-</mo><mn>6</mn></math>, or <math alttext=\"x greater than 6\"><mi>x</mi><mo>&#62;</mo><mn>6</mn></math>. Adding <math alttext=\"6\"><mn>6</mn>\n</math> and <math alttext=\"12\"><mn>12</mn>\n</math> in the inequality <math alttext=\"6 plus 12 greater than x\"><mn>6</mn><mo>+</mo><mn>12</mn><mo>&#62;</mo><mi>x</mi></math> yields <math alttext=\"18 greater than x\"><mn>18</mn><mo>&#62;</mo><mi>x</mi></math>, or <math alttext=\"x less than 18\"><mi>x</mi><mo>&#60;</mo><mn>18</mn></math>. Subtracting <math alttext=\"12\"><mn>12</mn>\n</math> from both sides of the inequality <math alttext=\"12 plus x greater than 6\"><mn>12</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> yields <math alttext=\"x greater than 6 minus 12\"><mi>x</mi><mo>&#62;</mo><mn>6</mn><mo>-</mo><mn>12</mn></math>, or <math alttext=\"x greater than negative 6\"><mi>x</mi><mo>&#62;</mo><mo>-</mo><mn>6</mn></math>. Since all <em>x</em>-values that satisfy the inequality <math alttext=\"x greater than 6\"><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> also satisfy the inequality <math alttext=\"x greater than negative 6\"><mi>x</mi><mo>&#62;</mo><mo>-</mo><mn>6</mn></math>, it follows that the inequalities <math alttext=\"x greater than 6\"><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> and <math alttext=\"x less than 18\"><mi>x</mi><mo>&#60;</mo><mn>18</mn></math> represent the possible values of <math alttext=\"x\"><mi>x</mi>\n</math>. Therefore, the inequality <math alttext=\"6 less than x less than 18\"><mn>6</mn><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>18</mn></math> represents the possible lengths, <math alttext=\"x\"><mi>x</mi>\n</math>, of the third side of the triangle.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This inequality gives the upper bound for <math alttext=\"x\"><mi>x</mi>\n</math> but does not include its lower bound.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959819,"pPcc":"SAT#H","questionId":"5bf5136d","skill_cd":"H.E.","score_band_range_cd":7,"skill_desc":"Linear inequalities in one or two variables","createDate":1691007959819,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"176e3a8c-9f87-406f-a76a-01267378721c","primary_class_cd":"H","uId":"864f2fa0-e51c-4f6e-9d8b-178779f7b4a2","difficulty":"H"},"raw_detail":{"keys":["1a68c024-53bb-4441-965b-fba30855002b"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It&rsquo;s given that a triangle has side lengths of <math alttext=\"6\"><mn>6</mn>\n</math> and <math alttext=\"12\"><mn>12</mn>\n</math>, and <math alttext=\"x\"><mi>x</mi>\n</math> represents the length of the third side of the triangle. It&rsquo;s also given that the triangle inequality theorem states that the sum of any two sides of a triangle must be greater than the length of the third side. Therefore, the inequalities <math alttext=\"6 plus x greater than 12\"><mn>6</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>12</mn></math>, <math alttext=\"6 plus 12 greater than x\"><mn>6</mn><mo>+</mo><mn>12</mn><mo>&#62;</mo><mi>x</mi></math>, and <math alttext=\"12 plus x greater than 6\"><mn>12</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> represent all possible values of <math alttext=\"x\"><mi>x</mi>\n</math>. Subtracting <math alttext=\"6\"><mn>6</mn>\n</math> from both sides of the inequality <math alttext=\"6 plus x greater than 12\"><mn>6</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>12</mn></math> yields <math alttext=\"x greater than 12 minus 6\"><mi>x</mi><mo>&#62;</mo><mn>12</mn><mo>-</mo><mn>6</mn></math>, or <math alttext=\"x greater than 6\"><mi>x</mi><mo>&#62;</mo><mn>6</mn></math>. Adding <math alttext=\"6\"><mn>6</mn>\n</math> and <math alttext=\"12\"><mn>12</mn>\n</math> in the inequality <math alttext=\"6 plus 12 greater than x\"><mn>6</mn><mo>+</mo><mn>12</mn><mo>&#62;</mo><mi>x</mi></math> yields <math alttext=\"18 greater than x\"><mn>18</mn><mo>&#62;</mo><mi>x</mi></math>, or <math alttext=\"x less than 18\"><mi>x</mi><mo>&#60;</mo><mn>18</mn></math>. Subtracting <math alttext=\"12\"><mn>12</mn>\n</math> from both sides of the inequality <math alttext=\"12 plus x greater than 6\"><mn>12</mn><mo>+</mo><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> yields <math alttext=\"x greater than 6 minus 12\"><mi>x</mi><mo>&#62;</mo><mn>6</mn><mo>-</mo><mn>12</mn></math>, or <math alttext=\"x greater than negative 6\"><mi>x</mi><mo>&#62;</mo><mo>-</mo><mn>6</mn></math>. Since all <em>x</em>-values that satisfy the inequality <math alttext=\"x greater than 6\"><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> also satisfy the inequality <math alttext=\"x greater than negative 6\"><mi>x</mi><mo>&#62;</mo><mo>-</mo><mn>6</mn></math>, it follows that the inequalities <math alttext=\"x greater than 6\"><mi>x</mi><mo>&#62;</mo><mn>6</mn></math> and <math alttext=\"x less than 18\"><mi>x</mi><mo>&#60;</mo><mn>18</mn></math> represent the possible values of <math alttext=\"x\"><mi>x</mi>\n</math>. Therefore, the inequality <math alttext=\"6 less than x less than 18\"><mn>6</mn><mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>18</mn></math> represents the possible lengths, <math alttext=\"x\"><mi>x</mi>\n</math>, of the third side of the triangle.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This inequality gives the upper bound for <math alttext=\"x\"><mi>x</mi>\n</math> but does not include its lower bound.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">The triangle inequality theorem states that the sum of any two sides of a triangle must be greater than the length of the third side. If a triangle has side lengths of <math alttext=\"6\"><mn>6</mn>\n</math> and <math alttext=\"12\"><mn>12</mn>\n</math>, which inequality represents the possible lengths, <math alttext=\"x\"><mi>x</mi>\n</math>, of the third side of the triangle?</p>","externalid":"176e3a8c-9f87-406f-a76a-01267378721c","templateid":"662a2935-da17-4671-9783-746c8813447d","vaultid":"21f0c9f6-ce41-4147-8177-6338e0d473aa","type":"mcq","answerOptions":[{"id":"e56b2ea9-05a1-4dbf-ab99-423ef2e771af","content":"<p><math alttext=\"x less than 18\"><mi>x</mi><mo>&#60;</mo><mn>18</mn>\n</math></p>"},{"id":"35b11e8c-0356-47ea-8f6d-1221ea2799f4","content":"<p><math alttext=\"x greater than 18\"><mi>x</mi><mo>&#62;</mo><mn>18</mn>\n</math></p>"},{"id":"1a68c024-53bb-4441-965b-fba30855002b","content":"<p><math alttext=\"6 less than x less than 18\"><mn>6</mn>\n<mo>&#60;</mo><mi>x</mi><mo>&#60;</mo><mn>18</mn>\n</math></p>"},{"id":"1c534f57-190b-4bc6-9986-6d7072ef2dd3","content":"<p><math alttext=\"x less than 6\"><mi>x</mi><mo>&#60;</mo><mn>6</mn>\n</math> or&nbsp;<math alttext=\"x greater than 18\"><mi>x</mi><mo>&#62;</mo><mn>18</mn>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959819,"updateDate":1691007959819}$SATQ$::jsonb, 1691007959819, 1691007959819),
    ($SATQ$5c94e6fa$SATQ$, $SATQ$214d64ec-0e1a-4a3f-8fcb-73b3eecf4a6b$SATQ$::uuid, $SATQ$6d6ba7a1-7374-4cef-9c32-2a6cd898206c$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="3 x plus 21 equals 3 x plus k"><mrow><mn>3</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>21</mn></mrow><mo>=</mo><mrow><mn>3</mn></mrow><mi>x</mi><mo>+</mo><mi>k</mi></math></p>
<p style="text-align: left;">In the given equation, <math alttext="k"><mi>k</mi>
</math> is a constant. The equation has infinitely many solutions. What is the value of <math alttext="k"><mi>k</mi>
</math>?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["21"]$SATQ$::jsonb, $SATQ$["21"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="21"><mn>21</mn>
</math>. It's given that the equation <math alttext="3 x plus 21 equals 3 x plus k"><mrow>
	<mrow>
		<mrow>
			<mn>3</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>21</mn>
	</mrow>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mn>3</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mi>k</mi>
	</mrow>
</mrow>
</math> has infinitely many solutions. If an equation in one variable has infinitely many solutions, then the equation is true for any value of the variable. Subtracting <math alttext="3 x"><mrow>
	<mn>3</mn>
	<mi>x</mi>
</mrow>
</math> from both sides of the given equation yields <math alttext="k equals 21"><mrow>
	<mi>k</mi>
	<mo>=</mo>
	<mn>21</mn>
</mrow>
</math>. Since this equation must be true for any value of <math alttext="x"><mi>x</mi>
</math>, the value of <math alttext="k"><mi>k</mi>
</math> is <math alttext="21"><mn>21</mn>
</math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"5c94e6fa","external_id":"214d64ec-0e1a-4a3f-8fcb-73b3eecf4a6b","disclosed_item_id":null,"source":"qbank","vaultid":"6d6ba7a1-7374-4cef-9c32-2a6cd898206c","uId":"307e1c7f-87c2-4c82-9c5e-2db49eb15c11","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":3,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"3 x plus 21 equals 3 x plus k\"><mrow><mn>3</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>21</mn></mrow><mo>=</mo><mrow><mn>3</mn></mrow><mi>x</mi><mo>+</mo><mi>k</mi></math></p>\n<p style=\"text-align: left;\">In the given equation, <math alttext=\"k\"><mi>k</mi>\n</math> is a constant. The equation has infinitely many solutions. What is the value of <math alttext=\"k\"><mi>k</mi>\n</math>?</p>","answerOptions":[],"keys":["21"],"correct_answer":["21"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"21\"><mn>21</mn>\n</math>. It's given that the equation <math alttext=\"3 x plus 21 equals 3 x plus k\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>21</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>k</mi>\n\t</mrow>\n</mrow>\n</math> has infinitely many solutions. If an equation in one variable has infinitely many solutions, then the equation is true for any value of the variable. Subtracting <math alttext=\"3 x\"><mrow>\n\t<mn>3</mn>\n\t<mi>x</mi>\n</mrow>\n</math> from both sides of the given equation yields <math alttext=\"k equals 21\"><mrow>\n\t<mi>k</mi>\n\t<mo>=</mo>\n\t<mn>21</mn>\n</mrow>\n</math>. Since this equation must be true for any value of <math alttext=\"x\"><mi>x</mi>\n</math>, the value of <math alttext=\"k\"><mi>k</mi>\n</math> is <math alttext=\"21\"><mn>21</mn>\n</math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959809,"pPcc":"SAT#H","questionId":"5c94e6fa","skill_cd":"H.A.","score_band_range_cd":3,"skill_desc":"Linear equations in one variable","createDate":1691007959809,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"214d64ec-0e1a-4a3f-8fcb-73b3eecf4a6b","primary_class_cd":"H","uId":"307e1c7f-87c2-4c82-9c5e-2db49eb15c11","difficulty":"E"},"raw_detail":{"keys":["21"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"21\"><mn>21</mn>\n</math>. It's given that the equation <math alttext=\"3 x plus 21 equals 3 x plus k\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>21</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>k</mi>\n\t</mrow>\n</mrow>\n</math> has infinitely many solutions. If an equation in one variable has infinitely many solutions, then the equation is true for any value of the variable. Subtracting <math alttext=\"3 x\"><mrow>\n\t<mn>3</mn>\n\t<mi>x</mi>\n</mrow>\n</math> from both sides of the given equation yields <math alttext=\"k equals 21\"><mrow>\n\t<mi>k</mi>\n\t<mo>=</mo>\n\t<mn>21</mn>\n</mrow>\n</math>. Since this equation must be true for any value of <math alttext=\"x\"><mi>x</mi>\n</math>, the value of <math alttext=\"k\"><mi>k</mi>\n</math> is <math alttext=\"21\"><mn>21</mn>\n</math>.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"3 x plus 21 equals 3 x plus k\"><mrow><mn>3</mn></mrow><mi>x</mi><mo>+</mo><mrow><mn>21</mn></mrow><mo>=</mo><mrow><mn>3</mn></mrow><mi>x</mi><mo>+</mo><mi>k</mi></math></p>\n<p style=\"text-align: left;\">In the given equation, <math alttext=\"k\"><mi>k</mi>\n</math> is a constant. The equation has infinitely many solutions. What is the value of <math alttext=\"k\"><mi>k</mi>\n</math>?</p>","externalid":"214d64ec-0e1a-4a3f-8fcb-73b3eecf4a6b","templateid":"7de209c7-4a38-462b-8f66-c33e7771569e","vaultid":"6d6ba7a1-7374-4cef-9c32-2a6cd898206c","type":"spr","answerOptions":[],"correct_answer":["21"]},"createDate":1691007959809,"updateDate":1691007959809}$SATQ$::jsonb, 1691007959809, 1691007959809),
    ($SATQ$5cf1bbc9$SATQ$, $SATQ$d243de3a-1370-41b8-a350-5396b80263a0$SATQ$::uuid, $SATQ$4261a1e9-20e9-407c-976f-f2ba72895e7b$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style='text-align: center;'><figure class='image'><?xml version="1.0" encoding="utf-8" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
  "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">

<!-- Created with matplotlib (https://matplotlib.org/) -->
<svg height="347.04px" version="1.1" viewbox="0 0 405 347.04" width="405px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<defs>
<style type="text/css">
*{stroke-linecap:butt;stroke-linejoin:round;}
  </style>
</defs>
<g id="figure_1">
<g id="patch_1">
<path d="M 0 347.04 
L 405 347.04 
L 405 0 
L 0 0 
z
" style="fill:none;"></path>
</g>
<g id="axes_1">
<g id="patch_2">
<path d="M 34.92 339.84 
L 372.6 339.84 
L 372.6 7.2 
L 34.92 7.2 
z
" style="fill:none;"></path>
</g>
<g id="matplotlib.axis_1"></g>
<g id="matplotlib.axis_2"></g>
</g>
<g id="axes_2">
<g id="patch_3">
<path d="M 7.2 339.60375 
L 397.8 339.60375 
L 397.8 12.47625 
L 7.2 12.47625 
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
</g>
<g id="LineCollection_1">
<path clip-path="url(#p827c2fd850)" d="M 132.115909 312.686591 
L 132.115909 46.368409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 157.479545 312.686591 
L 157.479545 46.368409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 182.843182 312.686591 
L 182.843182 46.368409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 208.206818 312.686591 
L 208.206818 46.368409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 233.570455 312.686591 
L 233.570455 46.368409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 258.934091 312.686591 
L 258.934091 46.368409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 284.297727 312.686591 
L 284.297727 46.368409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 309.661364 312.686591 
L 309.661364 46.368409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 335.025 312.686591 
L 335.025 46.368409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 360.388636 312.686591 
L 360.388636 46.368409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 293.663864 
L 366.729545 293.663864 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 280.982045 
L 366.729545 280.982045 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 268.300227 
L 366.729545 268.300227 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 255.618409 
L 366.729545 255.618409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 242.936591 
L 366.729545 242.936591 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 230.254773 
L 366.729545 230.254773 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 217.572955 
L 366.729545 217.572955 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 204.891136 
L 366.729545 204.891136 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 192.209318 
L 366.729545 192.209318 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 179.5275 
L 366.729545 179.5275 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 166.845682 
L 366.729545 166.845682 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 154.163864 
L 366.729545 154.163864 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 141.482045 
L 366.729545 141.482045 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 128.800227 
L 366.729545 128.800227 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 116.118409 
L 366.729545 116.118409 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 103.436591 
L 366.729545 103.436591 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 90.754773 
L 366.729545 90.754773 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 78.072955 
L 366.729545 78.072955 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 65.391136 
L 366.729545 65.391136 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
<path clip-path="url(#p827c2fd850)" d="M 100.411364 52.709318 
L 366.729545 52.709318 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
</g>
<g id="LineCollection_2">
<path clip-path="url(#p827c2fd850)" d="M 100.411364 306.345682 
L 373.070455 306.345682 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
</g>
<g id="PathCollection_1">
<defs>
<path d="M 368.943838 -39.459594 
L 373.070455 -40.694318 
L 368.943838 -41.929043 
L 368.943838 -39.459594 
L 373.070455 -40.694318 
" id="m5a8455985a" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
</defs>
<g clip-path="url(#p827c2fd850)">
<use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m5a8455985a" y="347.04"></use>
</g>
</g>
<g id="LineCollection_3">
<path clip-path="url(#p827c2fd850)" d="M 106.752273 312.686591 
L 106.752273 40.0275 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
</g>
<g id="PathCollection_2">
<defs>
<path d="M 108.213447 -302.529594 
L 106.752273 -307.0125 
L 105.291099 -302.529594 
L 108.213447 -302.529594 
L 106.752273 -307.0125 
" id="m91c11db910" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
</defs>
<g clip-path="url(#p827c2fd850)">
<use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m91c11db910" y="347.04"></use>
</g>
</g>
<g id="LineCollection_4">
<path clip-path="url(#p827c2fd850)" d="M 132.115909 311.017931 
L 132.115909 301.673433 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 157.479545 311.017931 
L 157.479545 301.673433 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 182.843182 311.017931 
L 182.843182 301.673433 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 208.206818 311.017931 
L 208.206818 301.673433 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 233.570455 311.017931 
L 233.570455 301.673433 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 258.934091 311.017931 
L 258.934091 301.673433 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 284.297727 311.017931 
L 284.297727 301.673433 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 309.661364 311.017931 
L 309.661364 301.673433 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 335.025 311.017931 
L 335.025 301.673433 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 360.388636 311.017931 
L 360.388636 301.673433 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
</g>
<g id="LineCollection_5">
<path clip-path="url(#p827c2fd850)" d="M 102.080024 293.663864 
L 111.424522 293.663864 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 280.982045 
L 111.424522 280.982045 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 268.300227 
L 111.424522 268.300227 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 255.618409 
L 111.424522 255.618409 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 242.936591 
L 111.424522 242.936591 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 230.254773 
L 111.424522 230.254773 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 217.572955 
L 111.424522 217.572955 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 204.891136 
L 111.424522 204.891136 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 192.209318 
L 111.424522 192.209318 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 179.5275 
L 111.424522 179.5275 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 166.845682 
L 111.424522 166.845682 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 154.163864 
L 111.424522 154.163864 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 141.482045 
L 111.424522 141.482045 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 128.800227 
L 111.424522 128.800227 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 116.118409 
L 111.424522 116.118409 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 103.436591 
L 111.424522 103.436591 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 90.754773 
L 111.424522 90.754773 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 78.072955 
L 111.424522 78.072955 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 65.391136 
L 111.424522 65.391136 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
<path clip-path="url(#p827c2fd850)" d="M 102.080024 52.709318 
L 111.424522 52.709318 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
</g>
<g id="PolyCollection_1">
<path clip-path="url(#p827c2fd850)" d="M 34.148864 288.591136 
L 34.148864 274.641136 
L 51.903409 274.641136 
L 51.903409 288.591136 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_1">
<g clip-path="url(#p827c2fd850)">
<!-- 50 -->
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
<g transform="translate(78.95 287.137585)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-53"></use>
<use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_2">
<g clip-path="url(#p827c2fd850)">
<!-- 50 -->
<g transform="translate(78.95 287.137585)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-53"></use>
<use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="PolyCollection_2">
<path clip-path="url(#p827c2fd850)" d="M 24.954545 263.2275 
L 24.954545 249.2775 
L 51.586364 249.2775 
L 51.586364 263.2275 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_3">
<g clip-path="url(#p827c2fd850)">
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
</defs>
<g transform="translate(69.515625 261.773949)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-49"></use>
<use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
<use x="94.53125" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_4">
<g clip-path="url(#p827c2fd850)">
<!-- 100 -->
<g transform="translate(69.515625 261.773949)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-49"></use>
<use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
<use x="94.53125" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="PolyCollection_3">
<path clip-path="url(#p827c2fd850)" d="M 24.954545 237.863864 
L 24.954545 223.913864 
L 51.586364 223.913864 
L 51.586364 237.863864 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_5">
<g clip-path="url(#p827c2fd850)">
<!-- 150 -->
<g transform="translate(69.496875 236.410313)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-49"></use>
<use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
<use x="94.628906" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_6">
<g clip-path="url(#p827c2fd850)">
<!-- 150 -->
<g transform="translate(69.496875 236.410313)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-49"></use>
<use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
<use x="94.628906" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="PolyCollection_4">
<path clip-path="url(#p827c2fd850)" d="M 24.954545 212.500227 
L 24.954545 198.550227 
L 51.586364 198.550227 
L 51.586364 212.500227 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_7">
<g clip-path="url(#p827c2fd850)">
<!-- 200 -->
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
<g transform="translate(69.515625 211.046676)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-50"></use>
<use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
<use x="94.53125" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_8">
<g clip-path="url(#p827c2fd850)">
<!-- 200 -->
<g transform="translate(69.515625 211.046676)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-50"></use>
<use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
<use x="94.53125" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="PolyCollection_5">
<path clip-path="url(#p827c2fd850)" d="M 24.954545 187.136591 
L 24.954545 173.186591 
L 51.586364 173.186591 
L 51.586364 187.136591 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_9">
<g clip-path="url(#p827c2fd850)">
<!-- 250 -->
<g transform="translate(69.496875 185.68304)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-50"></use>
<use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
<use x="94.628906" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_10">
<g clip-path="url(#p827c2fd850)">
<!-- 250 -->
<g transform="translate(69.496875 185.68304)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-50"></use>
<use x="47.265625" xlink:href="#CrimsonText-Regular-53"></use>
<use x="94.628906" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="PolyCollection_6">
<path clip-path="url(#p827c2fd850)" d="M 24.954545 161.772955 
L 24.954545 147.822955 
L 51.586364 147.822955 
L 51.586364 161.772955 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_11">
<g clip-path="url(#p827c2fd850)">
<!-- 300 -->
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
<g transform="translate(69.496875 160.319403)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-51"></use>
<use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
<use x="94.628906" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_12">
<g clip-path="url(#p827c2fd850)">
<!-- 300 -->
<g transform="translate(69.496875 160.319403)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-51"></use>
<use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
<use x="94.628906" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="PolyCollection_7">
<path clip-path="url(#p827c2fd850)" d="M 24.954545 136.409318 
L 24.954545 122.459318 
L 51.586364 122.459318 
L 51.586364 136.409318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_13">
<g clip-path="url(#p827c2fd850)">
<!-- 350 -->
<g transform="translate(69.478125 134.955767)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-51"></use>
<use x="47.363281" xlink:href="#CrimsonText-Regular-53"></use>
<use x="94.726562" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_14">
<g clip-path="url(#p827c2fd850)">
<!-- 350 -->
<g transform="translate(69.478125 134.955767)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-51"></use>
<use x="47.363281" xlink:href="#CrimsonText-Regular-53"></use>
<use x="94.726562" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="PolyCollection_8">
<path clip-path="url(#p827c2fd850)" d="M 24.954545 111.045682 
L 24.954545 97.095682 
L 51.586364 97.095682 
L 51.586364 111.045682 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_15">
<g clip-path="url(#p827c2fd850)">
<!-- 400 -->
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
<g transform="translate(69.553125 109.592131)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-52"></use>
<use x="47.070312" xlink:href="#CrimsonText-Regular-48"></use>
<use x="94.335938" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_16">
<g clip-path="url(#p827c2fd850)">
<!-- 400 -->
<g transform="translate(69.553125 109.592131)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-52"></use>
<use x="47.070312" xlink:href="#CrimsonText-Regular-48"></use>
<use x="94.335938" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="PolyCollection_9">
<path clip-path="url(#p827c2fd850)" d="M 24.954545 85.682045 
L 24.954545 71.732045 
L 51.586364 71.732045 
L 51.586364 85.682045 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_17">
<g clip-path="url(#p827c2fd850)">
<!-- 450 -->
<g transform="translate(69.534375 84.228494)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-52"></use>
<use x="47.070312" xlink:href="#CrimsonText-Regular-53"></use>
<use x="94.433594" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_18">
<g clip-path="url(#p827c2fd850)">
<!-- 450 -->
<g transform="translate(69.534375 84.228494)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-52"></use>
<use x="47.070312" xlink:href="#CrimsonText-Regular-53"></use>
<use x="94.433594" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="PolyCollection_10">
<path clip-path="url(#p827c2fd850)" d="M 24.954545 60.318409 
L 24.954545 46.368409 
L 51.586364 46.368409 
L 51.586364 60.318409 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_19">
<g clip-path="url(#p827c2fd850)">
<!-- 500 -->
<g transform="translate(69.496875 58.864858)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-53"></use>
<use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
<use x="94.628906" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_20">
<g clip-path="url(#p827c2fd850)">
<!-- 500 -->
<g transform="translate(69.496875 58.864858)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-53"></use>
<use x="47.363281" xlink:href="#CrimsonText-Regular-48"></use>
<use x="94.628906" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="PolyCollection_11">
<path clip-path="url(#p827c2fd850)" d="M 126.409091 324.734318 
L 126.409091 310.784318 
L 135.920455 310.784318 
L 135.920455 324.734318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_21">
<g clip-path="url(#p827c2fd850)">
<!-- 1 -->
<g transform="translate(125.833239 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-49"></use>
</g>
</g>
</g>
<g id="text_22">
<g clip-path="url(#p827c2fd850)">
<!-- 1 -->
<g transform="translate(125.833239 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-49"></use>
</g>
</g>
</g>
<g id="PolyCollection_12">
<path clip-path="url(#p827c2fd850)" d="M 151.772727 324.734318 
L 151.772727 310.784318 
L 161.284091 310.784318 
L 161.284091 324.734318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_23">
<g clip-path="url(#p827c2fd850)">
<!-- 2 -->
<g transform="translate(151.196875 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-50"></use>
</g>
</g>
</g>
<g id="text_24">
<g clip-path="url(#p827c2fd850)">
<!-- 2 -->
<g transform="translate(151.196875 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-50"></use>
</g>
</g>
</g>
<g id="PolyCollection_13">
<path clip-path="url(#p827c2fd850)" d="M 177.136364 324.734318 
L 177.136364 310.784318 
L 186.647727 310.784318 
L 186.647727 324.734318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_25">
<g clip-path="url(#p827c2fd850)">
<!-- 3 -->
<g transform="translate(176.541761 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-51"></use>
</g>
</g>
</g>
<g id="text_26">
<g clip-path="url(#p827c2fd850)">
<!-- 3 -->
<g transform="translate(176.541761 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-51"></use>
</g>
</g>
</g>
<g id="PolyCollection_14">
<path clip-path="url(#p827c2fd850)" d="M 202.5 324.734318 
L 202.5 310.784318 
L 212.011364 310.784318 
L 212.011364 324.734318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_27">
<g clip-path="url(#p827c2fd850)">
<!-- 4 -->
<g transform="translate(201.961648 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-52"></use>
</g>
</g>
</g>
<g id="text_28">
<g clip-path="url(#p827c2fd850)">
<!-- 4 -->
<g transform="translate(201.961648 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-52"></use>
</g>
</g>
</g>
<g id="PolyCollection_15">
<path clip-path="url(#p827c2fd850)" d="M 227.863636 324.734318 
L 227.863636 310.784318 
L 237.375 310.784318 
L 237.375 324.734318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_29">
<g clip-path="url(#p827c2fd850)">
<!-- 5 -->
<g transform="translate(227.269034 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-53"></use>
</g>
</g>
</g>
<g id="text_30">
<g clip-path="url(#p827c2fd850)">
<!-- 5 -->
<g transform="translate(227.269034 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-53"></use>
</g>
</g>
</g>
<g id="PolyCollection_16">
<path clip-path="url(#p827c2fd850)" d="M 253.227273 324.734318 
L 253.227273 310.784318 
L 262.738636 310.784318 
L 262.738636 324.734318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_31">
<g clip-path="url(#p827c2fd850)">
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
<g transform="translate(252.65142 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-54"></use>
</g>
</g>
</g>
<g id="text_32">
<g clip-path="url(#p827c2fd850)">
<!-- 6 -->
<g transform="translate(252.65142 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-54"></use>
</g>
</g>
</g>
<g id="PolyCollection_17">
<path clip-path="url(#p827c2fd850)" d="M 278.590909 324.734318 
L 278.590909 310.784318 
L 288.102273 310.784318 
L 288.102273 324.734318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_33">
<g clip-path="url(#p827c2fd850)">
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
<g transform="translate(278.033807 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-55"></use>
</g>
</g>
</g>
<g id="text_34">
<g clip-path="url(#p827c2fd850)">
<!-- 7 -->
<g transform="translate(278.033807 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-55"></use>
</g>
</g>
</g>
<g id="PolyCollection_18">
<path clip-path="url(#p827c2fd850)" d="M 303.954545 324.734318 
L 303.954545 310.784318 
L 313.465909 310.784318 
L 313.465909 324.734318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_35">
<g clip-path="url(#p827c2fd850)">
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
<g transform="translate(303.378693 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-56"></use>
</g>
</g>
</g>
<g id="text_36">
<g clip-path="url(#p827c2fd850)">
<!-- 8 -->
<g transform="translate(303.378693 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-56"></use>
</g>
</g>
</g>
<g id="PolyCollection_19">
<path clip-path="url(#p827c2fd850)" d="M 329.318182 324.734318 
L 329.318182 310.784318 
L 338.829545 310.784318 
L 338.829545 324.734318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_37">
<g clip-path="url(#p827c2fd850)">
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
<g transform="translate(328.74233 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-57"></use>
</g>
</g>
</g>
<g id="text_38">
<g clip-path="url(#p827c2fd850)">
<!-- 9 -->
<g transform="translate(328.74233 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-57"></use>
</g>
</g>
</g>
<g id="PolyCollection_20">
<path clip-path="url(#p827c2fd850)" d="M 349.609091 324.734318 
L 349.609091 310.784318 
L 367.363636 310.784318 
L 367.363636 324.734318 
z
" style="fill:#ffffff;"></path>
</g>
<g id="text_39">
<g clip-path="url(#p827c2fd850)">
<!-- 10 -->
<g transform="translate(347.823295 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-49"></use>
<use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_40">
<g clip-path="url(#p827c2fd850)">
<!-- 10 -->
<g transform="translate(347.823295 323.597813)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Regular-49"></use>
<use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
</g>
</g>
</g>
<g id="text_41">
<g clip-path="url(#p827c2fd850)">
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
<g transform="translate(92.098295 319.299659)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Italic-79"></use>
</g>
</g>
</g>
<g id="text_42">
<g clip-path="url(#p827c2fd850)">
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
<g transform="translate(102.074148 31.739432)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Italic-121"></use>
</g>
</g>
</g>
<g id="text_43">
<g clip-path="url(#p827c2fd850)">
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
<g transform="translate(375.397017 310.739432)scale(0.2 -0.2)">
<use xlink:href="#CrimsonText-Italic-120"></use>
</g>
</g>
</g>
<g id="line2d_1">
<path clip-path="url(#p827c2fd850)" d="M 106.752273 255.618409 
L 360.388636 128.800227 
L 360.388636 128.800227 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
</g>
</g>
</g>
<defs>
<clippath id="p827c2fd850">
<rect height="327.1275" width="390.6" x="7.2" y="12.47625"></rect>
</clippath>
</defs>
</svg>
</figure></p>
<p style='text-align: left;'>The graph of the function <math><mi>f</mi>
</math>, where <math><mrow><mi>y</mi><mo>&#x0003D;</mo><mi>f</mi><mo stretchy='false'>&#x00028;</mo><mi>x</mi><mo stretchy='false'>&#x00029;</mo></mrow></math>, gives the total cost <math><mi>y</mi>
</math>, in dollars, for a certain video game system and <math><mi>x</mi>
</math> games. What is the best interpretation of the slope of the graph in this context?</p>$SATQ$, $SATQ$[{"id":"ba1a2e2b-4684-46b2-9873-a001cee0962c","content":"<p style='text-align: left;'>Each game costs <math><mrow><mi>&#x00024;</mi></mrow><mn>25</mn>\n</math>.</p>"},{"id":"b938424a-6e2b-4e1d-b87d-962a782b104e","content":"<p style='text-align: left;'>The video game system costs <math><mrow><mi>&#x00024;</mi></mrow><mn>100</mn>\n</math>.</p>"},{"id":"7a96d4a9-3190-49b7-a923-6d1a2bf74e21","content":"<p style='text-align: left;'>The video game system costs <math><mrow><mi>&#x00024;</mi></mrow><mn>25</mn>\n</math>.</p>"},{"id":"cb7ca7cd-3410-4ffc-af16-07680841821c","content":"<p style='text-align: left;'>Each game costs <math><mrow><mi>&#x00024;</mi></mrow><mn>100</mn>\n</math>.</p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["ba1a2e2b-4684-46b2-9873-a001cee0962c"]$SATQ$::jsonb, $SATQ$<p>Choice A is correct. The given graph is a line, and the slope of a line is defined as the change in the value of <math alttext="y"><mi>y</mi>
</math> for each increase in the value of <math alttext="x"><mi>x</mi>
</math> by <math alttext="1"><mn>1</mn>
</math>. It&rsquo;s given that <math alttext="y"><mi>y</mi>
</math> represents the total cost, in dollars, and that <math alttext="x"><mi>x</mi>
</math> represents the number of games. Therefore, the change in the value of <math alttext="y"><mi>y</mi>
</math> for each increase in the value of <math alttext="x"><mi>x</mi>
</math> by <math alttext="1"><mn>1</mn>
</math> represents the change in total cost, in dollars, for each increase in the number of games by <math alttext="1"><mn>1</mn>
</math>. In other words, the slope represents the cost, in dollars, per game. The graph shows that when the value of <math alttext="x"><mi>x</mi>
</math> increases from <math alttext="0"><mn>0</mn>
</math> to <math alttext="1"><mn>1</mn>
</math>, the value of <math alttext="y"><mi>y</mi>
</math> increases from <math alttext="100"><mn>100</mn>
</math> to <math alttext="125"><mn>125</mn>
</math>. It follows that the slope is <math alttext="25"><mn>25</mn>
</math>, or the cost per game is <math alttext="dollar sign 25"><mo>$</mo><mn>25</mn></math>. Thus, the best interpretation of the slope of the graph is that each game costs <math alttext="dollar sign 25"><mo>$</mo><mn>25</mn></math>.</p>
<p>Choice B is incorrect. This is an interpretation of the <em>y</em>-intercept of the graph rather than the slope of the graph.</p>
<p>Choice C is incorrect. The slope of the graph is the cost per game, not the cost of the video game system.</p>
<p>Choice D is incorrect. Each game costs <math alttext="dollar sign 25"><mo>$</mo><mn>25</mn></math>, not <math alttext="dollar sign 100"><mo>$</mo><mn>100</mn></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"5cf1bbc9","external_id":"d243de3a-1370-41b8-a350-5396b80263a0","disclosed_item_id":null,"source":"qbank","vaultid":"4261a1e9-20e9-407c-976f-f2ba72895e7b","uId":"4c077efb-cb9e-4f91-8f16-bcff26f3bee1","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p style='text-align: center;'><figure class='image'><?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"no\"?>\n<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\"\n  \"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">\n\n<!-- Created with matplotlib (https://matplotlib.org/) -->\n<svg height=\"347.04px\" version=\"1.1\" viewbox=\"0 0 405 347.04\" width=\"405px\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\">\n<defs>\n<style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n</defs>\n<g id=\"figure_1\">\n<g id=\"patch_1\">\n<path d=\"M 0 347.04 \nL 405 347.04 \nL 405 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n</g>\n<g id=\"axes_1\">\n<g id=\"patch_2\">\n<path d=\"M 34.92 339.84 \nL 372.6 339.84 \nL 372.6 7.2 \nL 34.92 7.2 \nz\n\" style=\"fill:none;\"></path>\n</g>\n<g id=\"matplotlib.axis_1\"></g>\n<g id=\"matplotlib.axis_2\"></g>\n</g>\n<g id=\"axes_2\">\n<g id=\"patch_3\">\n<path d=\"M 7.2 339.60375 \nL 397.8 339.60375 \nL 397.8 12.47625 \nL 7.2 12.47625 \nz\n\" style=\"fill:none;\"></path>\n</g>\n<g id=\"matplotlib.axis_3\">\n<g id=\"xtick_1\"></g>\n<g id=\"xtick_2\"></g>\n<g id=\"xtick_3\"></g>\n<g id=\"xtick_4\"></g>\n<g id=\"xtick_5\"></g>\n<g id=\"xtick_6\"></g>\n<g id=\"xtick_7\"></g>\n</g>\n<g id=\"matplotlib.axis_4\">\n<g id=\"ytick_1\"></g>\n<g id=\"ytick_2\"></g>\n<g id=\"ytick_3\"></g>\n<g id=\"ytick_4\"></g>\n<g id=\"ytick_5\"></g>\n<g id=\"ytick_6\"></g>\n</g>\n<g id=\"LineCollection_1\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 132.115909 312.686591 \nL 132.115909 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 157.479545 312.686591 \nL 157.479545 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 182.843182 312.686591 \nL 182.843182 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 208.206818 312.686591 \nL 208.206818 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 233.570455 312.686591 \nL 233.570455 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 258.934091 312.686591 \nL 258.934091 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 284.297727 312.686591 \nL 284.297727 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 309.661364 312.686591 \nL 309.661364 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 335.025 312.686591 \nL 335.025 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 360.388636 312.686591 \nL 360.388636 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 293.663864 \nL 366.729545 293.663864 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 280.982045 \nL 366.729545 280.982045 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 268.300227 \nL 366.729545 268.300227 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 255.618409 \nL 366.729545 255.618409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 242.936591 \nL 366.729545 242.936591 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 230.254773 \nL 366.729545 230.254773 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 217.572955 \nL 366.729545 217.572955 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 204.891136 \nL 366.729545 204.891136 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 192.209318 \nL 366.729545 192.209318 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 179.5275 \nL 366.729545 179.5275 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 166.845682 \nL 366.729545 166.845682 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 154.163864 \nL 366.729545 154.163864 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 141.482045 \nL 366.729545 141.482045 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 128.800227 \nL 366.729545 128.800227 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 116.118409 \nL 366.729545 116.118409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 103.436591 \nL 366.729545 103.436591 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 90.754773 \nL 366.729545 90.754773 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 78.072955 \nL 366.729545 78.072955 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 65.391136 \nL 366.729545 65.391136 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 52.709318 \nL 366.729545 52.709318 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n</g>\n<g id=\"LineCollection_2\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 306.345682 \nL 373.070455 306.345682 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n</g>\n<g id=\"PathCollection_1\">\n<defs>\n<path d=\"M 368.943838 -39.459594 \nL 373.070455 -40.694318 \nL 368.943838 -41.929043 \nL 368.943838 -39.459594 \nL 373.070455 -40.694318 \n\" id=\"m5a8455985a\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n</defs>\n<g clip-path=\"url(#p827c2fd850)\">\n<use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m5a8455985a\" y=\"347.04\"></use>\n</g>\n</g>\n<g id=\"LineCollection_3\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 106.752273 312.686591 \nL 106.752273 40.0275 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n</g>\n<g id=\"PathCollection_2\">\n<defs>\n<path d=\"M 108.213447 -302.529594 \nL 106.752273 -307.0125 \nL 105.291099 -302.529594 \nL 108.213447 -302.529594 \nL 106.752273 -307.0125 \n\" id=\"m91c11db910\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n</defs>\n<g clip-path=\"url(#p827c2fd850)\">\n<use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m91c11db910\" y=\"347.04\"></use>\n</g>\n</g>\n<g id=\"LineCollection_4\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 132.115909 311.017931 \nL 132.115909 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 157.479545 311.017931 \nL 157.479545 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 182.843182 311.017931 \nL 182.843182 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 208.206818 311.017931 \nL 208.206818 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 233.570455 311.017931 \nL 233.570455 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 258.934091 311.017931 \nL 258.934091 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 284.297727 311.017931 \nL 284.297727 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 309.661364 311.017931 \nL 309.661364 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 335.025 311.017931 \nL 335.025 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 360.388636 311.017931 \nL 360.388636 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n</g>\n<g id=\"LineCollection_5\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 293.663864 \nL 111.424522 293.663864 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 280.982045 \nL 111.424522 280.982045 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 268.300227 \nL 111.424522 268.300227 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 255.618409 \nL 111.424522 255.618409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 242.936591 \nL 111.424522 242.936591 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 230.254773 \nL 111.424522 230.254773 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 217.572955 \nL 111.424522 217.572955 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 204.891136 \nL 111.424522 204.891136 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 192.209318 \nL 111.424522 192.209318 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 179.5275 \nL 111.424522 179.5275 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 166.845682 \nL 111.424522 166.845682 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 154.163864 \nL 111.424522 154.163864 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 141.482045 \nL 111.424522 141.482045 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 128.800227 \nL 111.424522 128.800227 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 116.118409 \nL 111.424522 116.118409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 103.436591 \nL 111.424522 103.436591 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 90.754773 \nL 111.424522 90.754773 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 78.072955 \nL 111.424522 78.072955 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 65.391136 \nL 111.424522 65.391136 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 52.709318 \nL 111.424522 52.709318 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n</g>\n<g id=\"PolyCollection_1\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 34.148864 288.591136 \nL 34.148864 274.641136 \nL 51.903409 274.641136 \nL 51.903409 288.591136 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_1\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 50 -->\n<defs>\n<path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n<path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n</defs>\n<g transform=\"translate(78.95 287.137585)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_2\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 50 -->\n<g transform=\"translate(78.95 287.137585)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_2\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 263.2275 \nL 24.954545 249.2775 \nL 51.586364 249.2775 \nL 51.586364 263.2275 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_3\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 100 -->\n<defs>\n<path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n</defs>\n<g transform=\"translate(69.515625 261.773949)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_4\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 100 -->\n<g transform=\"translate(69.515625 261.773949)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_3\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 237.863864 \nL 24.954545 223.913864 \nL 51.586364 223.913864 \nL 51.586364 237.863864 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_5\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 150 -->\n<g transform=\"translate(69.496875 236.410313)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_6\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 150 -->\n<g transform=\"translate(69.496875 236.410313)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_4\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 212.500227 \nL 24.954545 198.550227 \nL 51.586364 198.550227 \nL 51.586364 212.500227 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_7\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 200 -->\n<defs>\n<path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n</defs>\n<g transform=\"translate(69.515625 211.046676)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_8\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 200 -->\n<g transform=\"translate(69.515625 211.046676)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_5\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 187.136591 \nL 24.954545 173.186591 \nL 51.586364 173.186591 \nL 51.586364 187.136591 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_9\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 250 -->\n<g transform=\"translate(69.496875 185.68304)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_10\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 250 -->\n<g transform=\"translate(69.496875 185.68304)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_6\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 161.772955 \nL 24.954545 147.822955 \nL 51.586364 147.822955 \nL 51.586364 161.772955 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_11\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 300 -->\n<defs>\n<path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n</defs>\n<g transform=\"translate(69.496875 160.319403)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_12\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 300 -->\n<g transform=\"translate(69.496875 160.319403)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_7\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 136.409318 \nL 24.954545 122.459318 \nL 51.586364 122.459318 \nL 51.586364 136.409318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_13\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 350 -->\n<g transform=\"translate(69.478125 134.955767)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.726562\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_14\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 350 -->\n<g transform=\"translate(69.478125 134.955767)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.726562\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_8\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 111.045682 \nL 24.954545 97.095682 \nL 51.586364 97.095682 \nL 51.586364 111.045682 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_15\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 400 -->\n<defs>\n<path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n</defs>\n<g transform=\"translate(69.553125 109.592131)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n<use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.335938\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_16\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 400 -->\n<g transform=\"translate(69.553125 109.592131)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n<use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.335938\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_9\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 85.682045 \nL 24.954545 71.732045 \nL 51.586364 71.732045 \nL 51.586364 85.682045 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_17\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 450 -->\n<g transform=\"translate(69.534375 84.228494)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n<use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.433594\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_18\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 450 -->\n<g transform=\"translate(69.534375 84.228494)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n<use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.433594\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_10\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 60.318409 \nL 24.954545 46.368409 \nL 51.586364 46.368409 \nL 51.586364 60.318409 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_19\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 500 -->\n<g transform=\"translate(69.496875 58.864858)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_20\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 500 -->\n<g transform=\"translate(69.496875 58.864858)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_11\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 126.409091 324.734318 \nL 126.409091 310.784318 \nL 135.920455 310.784318 \nL 135.920455 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_21\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 1 -->\n<g transform=\"translate(125.833239 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_22\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 1 -->\n<g transform=\"translate(125.833239 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_12\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 151.772727 324.734318 \nL 151.772727 310.784318 \nL 161.284091 310.784318 \nL 161.284091 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_23\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 2 -->\n<g transform=\"translate(151.196875 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_24\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 2 -->\n<g transform=\"translate(151.196875 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_13\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 177.136364 324.734318 \nL 177.136364 310.784318 \nL 186.647727 310.784318 \nL 186.647727 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_25\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 3 -->\n<g transform=\"translate(176.541761 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_26\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 3 -->\n<g transform=\"translate(176.541761 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_14\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 202.5 324.734318 \nL 202.5 310.784318 \nL 212.011364 310.784318 \nL 212.011364 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_27\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 4 -->\n<g transform=\"translate(201.961648 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_28\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 4 -->\n<g transform=\"translate(201.961648 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_15\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 227.863636 324.734318 \nL 227.863636 310.784318 \nL 237.375 310.784318 \nL 237.375 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_29\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 5 -->\n<g transform=\"translate(227.269034 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_30\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 5 -->\n<g transform=\"translate(227.269034 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_16\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 253.227273 324.734318 \nL 253.227273 310.784318 \nL 262.738636 310.784318 \nL 262.738636 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_31\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 6 -->\n<defs>\n<path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n</defs>\n<g transform=\"translate(252.65142 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-54\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_32\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 6 -->\n<g transform=\"translate(252.65142 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-54\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_17\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 278.590909 324.734318 \nL 278.590909 310.784318 \nL 288.102273 310.784318 \nL 288.102273 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_33\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 7 -->\n<defs>\n<path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n</defs>\n<g transform=\"translate(278.033807 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-55\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_34\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 7 -->\n<g transform=\"translate(278.033807 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-55\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_18\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 303.954545 324.734318 \nL 303.954545 310.784318 \nL 313.465909 310.784318 \nL 313.465909 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_35\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 8 -->\n<defs>\n<path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n</defs>\n<g transform=\"translate(303.378693 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-56\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_36\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 8 -->\n<g transform=\"translate(303.378693 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-56\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_19\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 329.318182 324.734318 \nL 329.318182 310.784318 \nL 338.829545 310.784318 \nL 338.829545 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_37\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 9 -->\n<defs>\n<path d=\"M 34.46875 42.09375 \nQ 34.46875 49.03125 31.203125 54.203125 \nQ 27.9375 59.375 22.75 59.375 \nQ 18.5625 59.375 15.53125 55.46875 \nQ 12.5 51.5625 12.5 45.21875 \nQ 12.5 38.875 15.71875 34.625 \nQ 18.953125 30.375 24.90625 30.375 \nQ 27.546875 30.375 29.984375 31.78125 \nQ 32.421875 33.203125 33.109375 34.765625 \nQ 34.375 37.703125 34.46875 42.09375 \nz\nM 24.3125 63.1875 \nQ 32.328125 63.1875 37.59375 56.890625 \nQ 42.875 50.59375 42.875 42.28125 \nQ 42.875 34.671875 39.75 27.390625 \nQ 36.625 20.125 31.6875 14.703125 \nQ 26.765625 9.28125 21.234375 5.328125 \nQ 15.71875 1.375 10.25 -0.59375 \nQ 9.671875 -0.59375 8.890625 0.578125 \nQ 8.109375 1.765625 8.109375 2.25 \nQ 15.625 5.171875 22.5625 11.859375 \nQ 29.5 18.5625 32.125 28.21875 \nQ 32.328125 29.203125 32.03125 29.203125 \nQ 31.84375 29.109375 31.734375 29 \nQ 30.671875 27.734375 27.25 26.65625 \nQ 23.828125 25.59375 21.1875 25.59375 \nQ 14.15625 25.59375 9.265625 30.859375 \nQ 4.390625 36.140625 4.390625 43.453125 \nQ 4.390625 51.5625 10.390625 57.375 \nQ 16.40625 63.1875 24.3125 63.1875 \nz\n\" id=\"CrimsonText-Regular-57\"></path>\n</defs>\n<g transform=\"translate(328.74233 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-57\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_38\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 9 -->\n<g transform=\"translate(328.74233 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-57\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_20\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 349.609091 324.734318 \nL 349.609091 310.784318 \nL 367.363636 310.784318 \nL 367.363636 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_39\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 10 -->\n<g transform=\"translate(347.823295 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_40\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 10 -->\n<g transform=\"translate(347.823295 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_41\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- O -->\n<defs>\n<path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n</defs>\n<g transform=\"translate(92.098295 319.299659)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Italic-79\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_42\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- y -->\n<defs>\n<path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n</defs>\n<g transform=\"translate(102.074148 31.739432)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Italic-121\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_43\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- x -->\n<defs>\n<path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n</defs>\n<g transform=\"translate(375.397017 310.739432)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Italic-120\"></use>\n</g>\n</g>\n</g>\n<g id=\"line2d_1\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 106.752273 255.618409 \nL 360.388636 128.800227 \nL 360.388636 128.800227 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n</g>\n</g>\n</g>\n<defs>\n<clippath id=\"p827c2fd850\">\n<rect height=\"327.1275\" width=\"390.6\" x=\"7.2\" y=\"12.47625\"></rect>\n</clippath>\n</defs>\n</svg>\n</figure></p>\n<p style='text-align: left;'>The graph of the function <math><mi>f</mi>\n</math>, where <math><mrow><mi>y</mi><mo>&#x0003D;</mo><mi>f</mi><mo stretchy='false'>&#x00028;</mo><mi>x</mi><mo stretchy='false'>&#x00029;</mo></mrow></math>, gives the total cost <math><mi>y</mi>\n</math>, in dollars, for a certain video game system and <math><mi>x</mi>\n</math> games. What is the best interpretation of the slope of the graph in this context?</p>","answerOptions":[{"id":"ba1a2e2b-4684-46b2-9873-a001cee0962c","content":"<p style='text-align: left;'>Each game costs <math><mrow><mi>&#x00024;</mi></mrow><mn>25</mn>\n</math>.</p>"},{"id":"b938424a-6e2b-4e1d-b87d-962a782b104e","content":"<p style='text-align: left;'>The video game system costs <math><mrow><mi>&#x00024;</mi></mrow><mn>100</mn>\n</math>.</p>"},{"id":"7a96d4a9-3190-49b7-a923-6d1a2bf74e21","content":"<p style='text-align: left;'>The video game system costs <math><mrow><mi>&#x00024;</mi></mrow><mn>25</mn>\n</math>.</p>"},{"id":"cb7ca7cd-3410-4ffc-af16-07680841821c","content":"<p style='text-align: left;'>Each game costs <math><mrow><mi>&#x00024;</mi></mrow><mn>100</mn>\n</math>.</p>"}],"keys":["ba1a2e2b-4684-46b2-9873-a001cee0962c"],"correct_answer":["A"],"rationale":"<p>Choice A is correct. The given graph is a line, and the slope of a line is defined as the change in the value of <math alttext=\"y\"><mi>y</mi>\n</math> for each increase in the value of <math alttext=\"x\"><mi>x</mi>\n</math> by <math alttext=\"1\"><mn>1</mn>\n</math>. It&rsquo;s given that <math alttext=\"y\"><mi>y</mi>\n</math> represents the total cost, in dollars, and that <math alttext=\"x\"><mi>x</mi>\n</math> represents the number of games. Therefore, the change in the value of <math alttext=\"y\"><mi>y</mi>\n</math> for each increase in the value of <math alttext=\"x\"><mi>x</mi>\n</math> by <math alttext=\"1\"><mn>1</mn>\n</math> represents the change in total cost, in dollars, for each increase in the number of games by <math alttext=\"1\"><mn>1</mn>\n</math>. In other words, the slope represents the cost, in dollars, per game. The graph shows that when the value of <math alttext=\"x\"><mi>x</mi>\n</math> increases from <math alttext=\"0\"><mn>0</mn>\n</math> to <math alttext=\"1\"><mn>1</mn>\n</math>, the value of <math alttext=\"y\"><mi>y</mi>\n</math> increases from <math alttext=\"100\"><mn>100</mn>\n</math> to <math alttext=\"125\"><mn>125</mn>\n</math>. It follows that the slope is <math alttext=\"25\"><mn>25</mn>\n</math>, or the cost per game is <math alttext=\"dollar sign 25\"><mo>$</mo><mn>25</mn></math>. Thus, the best interpretation of the slope of the graph is that each game costs <math alttext=\"dollar sign 25\"><mo>$</mo><mn>25</mn></math>.</p>\n<p>Choice B is incorrect. This is an interpretation of the <em>y</em>-intercept of the graph rather than the slope of the graph.</p>\n<p>Choice C is incorrect. The slope of the graph is the cost per game, not the cost of the video game system.</p>\n<p>Choice D is incorrect. Each game costs <math alttext=\"dollar sign 25\"><mo>$</mo><mn>25</mn></math>, not <math alttext=\"dollar sign 100\"><mo>$</mo><mn>100</mn></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959811,"pPcc":"SAT#H","questionId":"5cf1bbc9","skill_cd":"H.B.","score_band_range_cd":4,"skill_desc":"Linear functions","createDate":1691007959811,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"d243de3a-1370-41b8-a350-5396b80263a0","primary_class_cd":"H","uId":"4c077efb-cb9e-4f91-8f16-bcff26f3bee1","difficulty":"M"},"raw_detail":{"keys":["ba1a2e2b-4684-46b2-9873-a001cee0962c"],"rationale":"<p>Choice A is correct. The given graph is a line, and the slope of a line is defined as the change in the value of <math alttext=\"y\"><mi>y</mi>\n</math> for each increase in the value of <math alttext=\"x\"><mi>x</mi>\n</math> by <math alttext=\"1\"><mn>1</mn>\n</math>. It&rsquo;s given that <math alttext=\"y\"><mi>y</mi>\n</math> represents the total cost, in dollars, and that <math alttext=\"x\"><mi>x</mi>\n</math> represents the number of games. Therefore, the change in the value of <math alttext=\"y\"><mi>y</mi>\n</math> for each increase in the value of <math alttext=\"x\"><mi>x</mi>\n</math> by <math alttext=\"1\"><mn>1</mn>\n</math> represents the change in total cost, in dollars, for each increase in the number of games by <math alttext=\"1\"><mn>1</mn>\n</math>. In other words, the slope represents the cost, in dollars, per game. The graph shows that when the value of <math alttext=\"x\"><mi>x</mi>\n</math> increases from <math alttext=\"0\"><mn>0</mn>\n</math> to <math alttext=\"1\"><mn>1</mn>\n</math>, the value of <math alttext=\"y\"><mi>y</mi>\n</math> increases from <math alttext=\"100\"><mn>100</mn>\n</math> to <math alttext=\"125\"><mn>125</mn>\n</math>. It follows that the slope is <math alttext=\"25\"><mn>25</mn>\n</math>, or the cost per game is <math alttext=\"dollar sign 25\"><mo>$</mo><mn>25</mn></math>. Thus, the best interpretation of the slope of the graph is that each game costs <math alttext=\"dollar sign 25\"><mo>$</mo><mn>25</mn></math>.</p>\n<p>Choice B is incorrect. This is an interpretation of the <em>y</em>-intercept of the graph rather than the slope of the graph.</p>\n<p>Choice C is incorrect. The slope of the graph is the cost per game, not the cost of the video game system.</p>\n<p>Choice D is incorrect. Each game costs <math alttext=\"dollar sign 25\"><mo>$</mo><mn>25</mn></math>, not <math alttext=\"dollar sign 100\"><mo>$</mo><mn>100</mn></math>.</p>","origin":"manifold","stem":"<p style='text-align: center;'><figure class='image'><?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"no\"?>\n<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\"\n  \"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">\n\n<!-- Created with matplotlib (https://matplotlib.org/) -->\n<svg height=\"347.04px\" version=\"1.1\" viewbox=\"0 0 405 347.04\" width=\"405px\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\">\n<defs>\n<style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n</defs>\n<g id=\"figure_1\">\n<g id=\"patch_1\">\n<path d=\"M 0 347.04 \nL 405 347.04 \nL 405 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n</g>\n<g id=\"axes_1\">\n<g id=\"patch_2\">\n<path d=\"M 34.92 339.84 \nL 372.6 339.84 \nL 372.6 7.2 \nL 34.92 7.2 \nz\n\" style=\"fill:none;\"></path>\n</g>\n<g id=\"matplotlib.axis_1\"></g>\n<g id=\"matplotlib.axis_2\"></g>\n</g>\n<g id=\"axes_2\">\n<g id=\"patch_3\">\n<path d=\"M 7.2 339.60375 \nL 397.8 339.60375 \nL 397.8 12.47625 \nL 7.2 12.47625 \nz\n\" style=\"fill:none;\"></path>\n</g>\n<g id=\"matplotlib.axis_3\">\n<g id=\"xtick_1\"></g>\n<g id=\"xtick_2\"></g>\n<g id=\"xtick_3\"></g>\n<g id=\"xtick_4\"></g>\n<g id=\"xtick_5\"></g>\n<g id=\"xtick_6\"></g>\n<g id=\"xtick_7\"></g>\n</g>\n<g id=\"matplotlib.axis_4\">\n<g id=\"ytick_1\"></g>\n<g id=\"ytick_2\"></g>\n<g id=\"ytick_3\"></g>\n<g id=\"ytick_4\"></g>\n<g id=\"ytick_5\"></g>\n<g id=\"ytick_6\"></g>\n</g>\n<g id=\"LineCollection_1\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 132.115909 312.686591 \nL 132.115909 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 157.479545 312.686591 \nL 157.479545 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 182.843182 312.686591 \nL 182.843182 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 208.206818 312.686591 \nL 208.206818 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 233.570455 312.686591 \nL 233.570455 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 258.934091 312.686591 \nL 258.934091 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 284.297727 312.686591 \nL 284.297727 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 309.661364 312.686591 \nL 309.661364 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 335.025 312.686591 \nL 335.025 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 360.388636 312.686591 \nL 360.388636 46.368409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 293.663864 \nL 366.729545 293.663864 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 280.982045 \nL 366.729545 280.982045 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 268.300227 \nL 366.729545 268.300227 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 255.618409 \nL 366.729545 255.618409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 242.936591 \nL 366.729545 242.936591 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 230.254773 \nL 366.729545 230.254773 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 217.572955 \nL 366.729545 217.572955 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 204.891136 \nL 366.729545 204.891136 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 192.209318 \nL 366.729545 192.209318 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 179.5275 \nL 366.729545 179.5275 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 166.845682 \nL 366.729545 166.845682 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 154.163864 \nL 366.729545 154.163864 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 141.482045 \nL 366.729545 141.482045 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 128.800227 \nL 366.729545 128.800227 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 116.118409 \nL 366.729545 116.118409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 103.436591 \nL 366.729545 103.436591 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 90.754773 \nL 366.729545 90.754773 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 78.072955 \nL 366.729545 78.072955 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 65.391136 \nL 366.729545 65.391136 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 52.709318 \nL 366.729545 52.709318 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n</g>\n<g id=\"LineCollection_2\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 100.411364 306.345682 \nL 373.070455 306.345682 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n</g>\n<g id=\"PathCollection_1\">\n<defs>\n<path d=\"M 368.943838 -39.459594 \nL 373.070455 -40.694318 \nL 368.943838 -41.929043 \nL 368.943838 -39.459594 \nL 373.070455 -40.694318 \n\" id=\"m5a8455985a\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n</defs>\n<g clip-path=\"url(#p827c2fd850)\">\n<use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m5a8455985a\" y=\"347.04\"></use>\n</g>\n</g>\n<g id=\"LineCollection_3\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 106.752273 312.686591 \nL 106.752273 40.0275 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n</g>\n<g id=\"PathCollection_2\">\n<defs>\n<path d=\"M 108.213447 -302.529594 \nL 106.752273 -307.0125 \nL 105.291099 -302.529594 \nL 108.213447 -302.529594 \nL 106.752273 -307.0125 \n\" id=\"m91c11db910\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n</defs>\n<g clip-path=\"url(#p827c2fd850)\">\n<use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m91c11db910\" y=\"347.04\"></use>\n</g>\n</g>\n<g id=\"LineCollection_4\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 132.115909 311.017931 \nL 132.115909 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 157.479545 311.017931 \nL 157.479545 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 182.843182 311.017931 \nL 182.843182 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 208.206818 311.017931 \nL 208.206818 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 233.570455 311.017931 \nL 233.570455 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 258.934091 311.017931 \nL 258.934091 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 284.297727 311.017931 \nL 284.297727 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 309.661364 311.017931 \nL 309.661364 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 335.025 311.017931 \nL 335.025 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 360.388636 311.017931 \nL 360.388636 301.673433 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n</g>\n<g id=\"LineCollection_5\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 293.663864 \nL 111.424522 293.663864 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 280.982045 \nL 111.424522 280.982045 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 268.300227 \nL 111.424522 268.300227 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 255.618409 \nL 111.424522 255.618409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 242.936591 \nL 111.424522 242.936591 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 230.254773 \nL 111.424522 230.254773 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 217.572955 \nL 111.424522 217.572955 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 204.891136 \nL 111.424522 204.891136 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 192.209318 \nL 111.424522 192.209318 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 179.5275 \nL 111.424522 179.5275 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 166.845682 \nL 111.424522 166.845682 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 154.163864 \nL 111.424522 154.163864 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 141.482045 \nL 111.424522 141.482045 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 128.800227 \nL 111.424522 128.800227 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 116.118409 \nL 111.424522 116.118409 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 103.436591 \nL 111.424522 103.436591 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 90.754773 \nL 111.424522 90.754773 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 78.072955 \nL 111.424522 78.072955 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 65.391136 \nL 111.424522 65.391136 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 102.080024 52.709318 \nL 111.424522 52.709318 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n</g>\n<g id=\"PolyCollection_1\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 34.148864 288.591136 \nL 34.148864 274.641136 \nL 51.903409 274.641136 \nL 51.903409 288.591136 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_1\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 50 -->\n<defs>\n<path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n<path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n</defs>\n<g transform=\"translate(78.95 287.137585)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_2\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 50 -->\n<g transform=\"translate(78.95 287.137585)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_2\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 263.2275 \nL 24.954545 249.2775 \nL 51.586364 249.2775 \nL 51.586364 263.2275 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_3\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 100 -->\n<defs>\n<path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n</defs>\n<g transform=\"translate(69.515625 261.773949)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_4\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 100 -->\n<g transform=\"translate(69.515625 261.773949)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_3\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 237.863864 \nL 24.954545 223.913864 \nL 51.586364 223.913864 \nL 51.586364 237.863864 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_5\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 150 -->\n<g transform=\"translate(69.496875 236.410313)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_6\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 150 -->\n<g transform=\"translate(69.496875 236.410313)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_4\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 212.500227 \nL 24.954545 198.550227 \nL 51.586364 198.550227 \nL 51.586364 212.500227 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_7\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 200 -->\n<defs>\n<path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n</defs>\n<g transform=\"translate(69.515625 211.046676)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_8\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 200 -->\n<g transform=\"translate(69.515625 211.046676)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.53125\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_5\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 187.136591 \nL 24.954545 173.186591 \nL 51.586364 173.186591 \nL 51.586364 187.136591 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_9\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 250 -->\n<g transform=\"translate(69.496875 185.68304)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_10\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 250 -->\n<g transform=\"translate(69.496875 185.68304)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_6\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 161.772955 \nL 24.954545 147.822955 \nL 51.586364 147.822955 \nL 51.586364 161.772955 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_11\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 300 -->\n<defs>\n<path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n</defs>\n<g transform=\"translate(69.496875 160.319403)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_12\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 300 -->\n<g transform=\"translate(69.496875 160.319403)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_7\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 136.409318 \nL 24.954545 122.459318 \nL 51.586364 122.459318 \nL 51.586364 136.409318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_13\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 350 -->\n<g transform=\"translate(69.478125 134.955767)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.726562\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_14\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 350 -->\n<g transform=\"translate(69.478125 134.955767)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.726562\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_8\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 111.045682 \nL 24.954545 97.095682 \nL 51.586364 97.095682 \nL 51.586364 111.045682 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_15\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 400 -->\n<defs>\n<path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n</defs>\n<g transform=\"translate(69.553125 109.592131)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n<use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.335938\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_16\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 400 -->\n<g transform=\"translate(69.553125 109.592131)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n<use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.335938\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_9\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 85.682045 \nL 24.954545 71.732045 \nL 51.586364 71.732045 \nL 51.586364 85.682045 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_17\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 450 -->\n<g transform=\"translate(69.534375 84.228494)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n<use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.433594\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_18\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 450 -->\n<g transform=\"translate(69.534375 84.228494)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n<use x=\"47.070312\" xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"94.433594\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_10\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 24.954545 60.318409 \nL 24.954545 46.368409 \nL 51.586364 46.368409 \nL 51.586364 60.318409 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_19\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 500 -->\n<g transform=\"translate(69.496875 58.864858)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_20\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 500 -->\n<g transform=\"translate(69.496875 58.864858)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n<use x=\"47.363281\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n<use x=\"94.628906\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_11\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 126.409091 324.734318 \nL 126.409091 310.784318 \nL 135.920455 310.784318 \nL 135.920455 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_21\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 1 -->\n<g transform=\"translate(125.833239 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_22\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 1 -->\n<g transform=\"translate(125.833239 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_12\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 151.772727 324.734318 \nL 151.772727 310.784318 \nL 161.284091 310.784318 \nL 161.284091 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_23\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 2 -->\n<g transform=\"translate(151.196875 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_24\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 2 -->\n<g transform=\"translate(151.196875 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-50\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_13\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 177.136364 324.734318 \nL 177.136364 310.784318 \nL 186.647727 310.784318 \nL 186.647727 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_25\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 3 -->\n<g transform=\"translate(176.541761 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_26\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 3 -->\n<g transform=\"translate(176.541761 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-51\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_14\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 202.5 324.734318 \nL 202.5 310.784318 \nL 212.011364 310.784318 \nL 212.011364 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_27\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 4 -->\n<g transform=\"translate(201.961648 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_28\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 4 -->\n<g transform=\"translate(201.961648 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-52\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_15\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 227.863636 324.734318 \nL 227.863636 310.784318 \nL 237.375 310.784318 \nL 237.375 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_29\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 5 -->\n<g transform=\"translate(227.269034 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_30\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 5 -->\n<g transform=\"translate(227.269034 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-53\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_16\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 253.227273 324.734318 \nL 253.227273 310.784318 \nL 262.738636 310.784318 \nL 262.738636 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_31\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 6 -->\n<defs>\n<path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n</defs>\n<g transform=\"translate(252.65142 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-54\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_32\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 6 -->\n<g transform=\"translate(252.65142 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-54\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_17\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 278.590909 324.734318 \nL 278.590909 310.784318 \nL 288.102273 310.784318 \nL 288.102273 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_33\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 7 -->\n<defs>\n<path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n</defs>\n<g transform=\"translate(278.033807 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-55\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_34\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 7 -->\n<g transform=\"translate(278.033807 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-55\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_18\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 303.954545 324.734318 \nL 303.954545 310.784318 \nL 313.465909 310.784318 \nL 313.465909 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_35\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 8 -->\n<defs>\n<path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n</defs>\n<g transform=\"translate(303.378693 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-56\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_36\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 8 -->\n<g transform=\"translate(303.378693 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-56\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_19\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 329.318182 324.734318 \nL 329.318182 310.784318 \nL 338.829545 310.784318 \nL 338.829545 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_37\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 9 -->\n<defs>\n<path d=\"M 34.46875 42.09375 \nQ 34.46875 49.03125 31.203125 54.203125 \nQ 27.9375 59.375 22.75 59.375 \nQ 18.5625 59.375 15.53125 55.46875 \nQ 12.5 51.5625 12.5 45.21875 \nQ 12.5 38.875 15.71875 34.625 \nQ 18.953125 30.375 24.90625 30.375 \nQ 27.546875 30.375 29.984375 31.78125 \nQ 32.421875 33.203125 33.109375 34.765625 \nQ 34.375 37.703125 34.46875 42.09375 \nz\nM 24.3125 63.1875 \nQ 32.328125 63.1875 37.59375 56.890625 \nQ 42.875 50.59375 42.875 42.28125 \nQ 42.875 34.671875 39.75 27.390625 \nQ 36.625 20.125 31.6875 14.703125 \nQ 26.765625 9.28125 21.234375 5.328125 \nQ 15.71875 1.375 10.25 -0.59375 \nQ 9.671875 -0.59375 8.890625 0.578125 \nQ 8.109375 1.765625 8.109375 2.25 \nQ 15.625 5.171875 22.5625 11.859375 \nQ 29.5 18.5625 32.125 28.21875 \nQ 32.328125 29.203125 32.03125 29.203125 \nQ 31.84375 29.109375 31.734375 29 \nQ 30.671875 27.734375 27.25 26.65625 \nQ 23.828125 25.59375 21.1875 25.59375 \nQ 14.15625 25.59375 9.265625 30.859375 \nQ 4.390625 36.140625 4.390625 43.453125 \nQ 4.390625 51.5625 10.390625 57.375 \nQ 16.40625 63.1875 24.3125 63.1875 \nz\n\" id=\"CrimsonText-Regular-57\"></path>\n</defs>\n<g transform=\"translate(328.74233 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-57\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_38\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 9 -->\n<g transform=\"translate(328.74233 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-57\"></use>\n</g>\n</g>\n</g>\n<g id=\"PolyCollection_20\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 349.609091 324.734318 \nL 349.609091 310.784318 \nL 367.363636 310.784318 \nL 367.363636 324.734318 \nz\n\" style=\"fill:#ffffff;\"></path>\n</g>\n<g id=\"text_39\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 10 -->\n<g transform=\"translate(347.823295 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_40\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- 10 -->\n<g transform=\"translate(347.823295 323.597813)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Regular-49\"></use>\n<use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_41\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- O -->\n<defs>\n<path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n</defs>\n<g transform=\"translate(92.098295 319.299659)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Italic-79\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_42\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- y -->\n<defs>\n<path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n</defs>\n<g transform=\"translate(102.074148 31.739432)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Italic-121\"></use>\n</g>\n</g>\n</g>\n<g id=\"text_43\">\n<g clip-path=\"url(#p827c2fd850)\">\n<!-- x -->\n<defs>\n<path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n</defs>\n<g transform=\"translate(375.397017 310.739432)scale(0.2 -0.2)\">\n<use xlink:href=\"#CrimsonText-Italic-120\"></use>\n</g>\n</g>\n</g>\n<g id=\"line2d_1\">\n<path clip-path=\"url(#p827c2fd850)\" d=\"M 106.752273 255.618409 \nL 360.388636 128.800227 \nL 360.388636 128.800227 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n</g>\n</g>\n</g>\n<defs>\n<clippath id=\"p827c2fd850\">\n<rect height=\"327.1275\" width=\"390.6\" x=\"7.2\" y=\"12.47625\"></rect>\n</clippath>\n</defs>\n</svg>\n</figure></p>\n<p style='text-align: left;'>The graph of the function <math><mi>f</mi>\n</math>, where <math><mrow><mi>y</mi><mo>&#x0003D;</mo><mi>f</mi><mo stretchy='false'>&#x00028;</mo><mi>x</mi><mo stretchy='false'>&#x00029;</mo></mrow></math>, gives the total cost <math><mi>y</mi>\n</math>, in dollars, for a certain video game system and <math><mi>x</mi>\n</math> games. What is the best interpretation of the slope of the graph in this context?</p>","externalid":"d243de3a-1370-41b8-a350-5396b80263a0","templateid":"cf9eb9b8-73db-4edf-ad85-0217cf45ff73","vaultid":"4261a1e9-20e9-407c-976f-f2ba72895e7b","type":"mcq","answerOptions":[{"id":"ba1a2e2b-4684-46b2-9873-a001cee0962c","content":"<p style='text-align: left;'>Each game costs <math><mrow><mi>&#x00024;</mi></mrow><mn>25</mn>\n</math>.</p>"},{"id":"b938424a-6e2b-4e1d-b87d-962a782b104e","content":"<p style='text-align: left;'>The video game system costs <math><mrow><mi>&#x00024;</mi></mrow><mn>100</mn>\n</math>.</p>"},{"id":"7a96d4a9-3190-49b7-a923-6d1a2bf74e21","content":"<p style='text-align: left;'>The video game system costs <math><mrow><mi>&#x00024;</mi></mrow><mn>25</mn>\n</math>.</p>"},{"id":"cb7ca7cd-3410-4ffc-af16-07680841821c","content":"<p style='text-align: left;'>Each game costs <math><mrow><mi>&#x00024;</mi></mrow><mn>100</mn>\n</math>.</p>"}],"correct_answer":["A"]},"createDate":1691007959811,"updateDate":1691007959811}$SATQ$::jsonb, 1691007959811, 1691007959811),
    ($SATQ$5e08a055$SATQ$, $SATQ$673c8b0c-840e-41ac-bc4e-82b2f8b2a747$SATQ$::uuid, $SATQ$940ddce7-fb76-4d88-834c-6d34b6f281f8$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="y equals 6 x plus 18"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mn>6</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>18</mn>
	</mrow>
</mrow>
</math></p>
<p style="text-align: left;">One of the equations in a system of two linear equations is given. The system has no solution. Which equation could be the second equation in the system?</p>$SATQ$, $SATQ$[{"id":"0f530c53-ba44-484b-a5a5-ea8772b2d512","content":"<p><math alttext=\"minus 6 x plus y equals 18\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>18</mn>\n</mrow>\n</math></p>"},{"id":"666a73e3-4c50-4e70-ab8c-ded1deefc246","content":"<p><math alttext=\"minus 6 x plus y equals 22\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>22</mn>\n</mrow>\n</math></p>"},{"id":"925eecf1-af05-416f-b158-f1ea493bd5f5","content":"<p><math alttext=\"minus 12 x plus y equals 36\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>36</mn>\n</mrow>\n</math></p>"},{"id":"3cede950-1993-497f-bc30-64e4d8e408dc","content":"<p><math alttext=\"minus 12 x plus y equals 18\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>18</mn>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["B"]$SATQ$::jsonb, $SATQ$["666a73e3-4c50-4e70-ab8c-ded1deefc246"]$SATQ$::jsonb, $SATQ$<p>Choice B is correct. A system of two linear equations in two variables, <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math>, has no solution if the lines represented by the equations in the <em>xy</em>-plane are parallel and distinct. Lines represented by equations in standard form, <math alttext="upper A x plus upper B y equals upper C"><mi>A</mi><mi>x</mi><mo>+</mo><mi>B</mi><mi>y</mi><mo>=</mo><mi>C</mi></math> and <math alttext="upper D x plus upper E y equals upper F"><mi>D</mi><mi>x</mi><mo>+</mo><mi>E</mi><mi>y</mi><mo>=</mo><mi>F</mi></math>, are parallel if the coefficients for <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math> in one equation are proportional to the corresponding coefficients in the other equation, meaning <math alttext="StartFraction upper D Over upper A EndFraction equals StartFraction upper E Over upper B EndFraction"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mfrac><mi>E</mi><mi>B</mi></mfrac></math>; and the lines are distinct if the constants are not proportional, meaning <math alttext="StartFraction upper F Over upper C EndFraction"><mfrac><mi>F</mi><mi>C</mi></mfrac></math> is not equal to <math alttext="StartFraction upper D Over upper A EndFraction"><mfrac><mi>D</mi><mi>A</mi></mfrac></math> or <math alttext="StartFraction upper E Over upper B EndFraction"><mfrac><mi>E</mi><mi>B</mi></mfrac></math>. The given equation, <math alttext="y equals 6 x plus 18"><mi>y</mi><mo>=</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>18</mn></math>, can be written in standard form by subtracting <math alttext="6 x"><mn>6</mn><mi>x</mi></math> from both sides of the equation to yield <math alttext="minus 6 x plus y equals 18"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>18</mn></math>. Therefore, the given equation can be written in the form <math alttext="upper A x plus upper B y equals upper C"><mi>A</mi><mi>x</mi><mo>+</mo><mi>B</mi><mi>y</mi><mo>=</mo><mi>C</mi></math>, where <math alttext="upper A equals negative 6"><mi>A</mi><mo>=</mo><mo>-</mo><mn>6</mn></math>, <math alttext="upper B equals 1"><mi>B</mi><mo>=</mo><mn>1</mn></math>, and <math alttext="upper C equals 18"><mi>C</mi><mo>=</mo><mn>18</mn></math>. The equation in choice B, <math alttext="minus 6 x plus y equals 22"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>22</mn></math>, is written in the form <math alttext="upper D x plus upper E y equals upper F"><mi>D</mi><mi>x</mi><mo>+</mo><mi>E</mi><mi>y</mi><mo>=</mo><mi>F</mi></math>, where <math alttext="upper D equals negative 6"><mi>D</mi><mo>=</mo><mo>-</mo><mn>6</mn></math>, <math alttext="upper E equals 1"><mi>E</mi><mo>=</mo><mn>1</mn></math>, and <math alttext="upper F equals 22"><mi>F</mi><mo>=</mo><mn>22</mn></math>. Therefore,&nbsp; <math alttext="StartFraction upper D Over upper A EndFraction equals StartFraction negative 6 Over negative 6 EndFraction"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mfrac><mrow><mo>-</mo><mn>6</mn></mrow><mrow><mo>-</mo><mn>6</mn></mrow></mfrac></math>, which can be rewritten as <math alttext="StartFraction upper D Over upper A EndFraction equals 1"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mn>1</mn></math>; <math alttext="StartFraction upper E Over upper B EndFraction equals one oneth"><mfrac><mi>E</mi><mi>B</mi></mfrac><mo>=</mo><mfrac><mn>1</mn><mn>1</mn></mfrac></math>, which can be rewritten as <math alttext="StartFraction upper E Over upper B EndFraction equals 1"><mfrac><mi>E</mi><mi>B</mi></mfrac><mo>=</mo><mn>1</mn></math>; and <math alttext="StartFraction upper F Over upper C EndFraction equals StartFraction 22 Over 18 EndFraction"><mfrac><mi>F</mi><mi>C</mi></mfrac><mo>=</mo><mfrac><mn>22</mn><mn>18</mn></mfrac></math>, which can be rewritten as <math alttext="StartFraction upper F Over upper C EndFraction equals StartFraction 11 Over 9 EndFraction"><mfrac><mi>F</mi><mi>C</mi></mfrac><mo>=</mo><mfrac><mn>11</mn><mn>9</mn></mfrac></math>. Since <math alttext="StartFraction upper D Over upper A EndFraction equals 1"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mn>1</mn></math>,&nbsp;<math alttext="StartFraction upper E Over upper B EndFraction equals 1"><mfrac><mi>E</mi><mi>B</mi></mfrac><mo>=</mo><mn>1</mn></math>, and <math alttext="StartFraction upper F Over upper C EndFraction"><mfrac><mi>F</mi><mi>C</mi></mfrac></math> is not equal to <math alttext="1"><mn>1</mn>
</math>, it follows that the given equation and the equation <math alttext="minus 6 x plus y equals 22"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>22</mn></math> are parallel and distinct. Therefore, a system of two linear equations consisting of the given equation and the equation <math alttext="minus 6 x plus y equals 22"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>22</mn></math> has no solution. Thus, the&nbsp;equation in choice B could be the second equation in the system.</p>
<p>Choice A is incorrect. The equation&nbsp;<math alttext="minus 6 x plus y equals 18"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>18</mn></math> and the given equation represent the same line in the <em>xy</em>-plane. Therefore, a system of these linear equations would have infinitely many solutions, rather than no solution.&nbsp;</p>
<p>Choice C is incorrect. The equation <math alttext="minus 12 x plus y equals 36"><mo>-</mo><mn>12</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>36</mn></math> and the given equation represent lines in the <em>xy</em>-plane that are distinct and not parallel. Therefore, a system of these linear equations would have exactly one solution, rather than no solution.</p>
<p>Choice D is incorrect. The equation <math alttext="minus 12 x plus y equals 18"><mo>-</mo><mn>12</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>18</mn></math> and the given equation represent lines in the <em>xy</em>-plane that are distinct and not parallel. Therefore, a system of these linear equations would have&nbsp;exactly one solution, rather than no solution.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"5e08a055","external_id":"673c8b0c-840e-41ac-bc4e-82b2f8b2a747","disclosed_item_id":null,"source":"qbank","vaultid":"940ddce7-fb76-4d88-834c-6d34b6f281f8","uId":"e31ea41f-be85-4ffe-9d6c-2ebf13f0d90e","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"y equals 6 x plus 18\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>18</mn>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">One of the equations in a system of two linear equations is given. The system has no solution. Which equation could be the second equation in the system?</p>","answerOptions":[{"id":"0f530c53-ba44-484b-a5a5-ea8772b2d512","content":"<p><math alttext=\"minus 6 x plus y equals 18\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>18</mn>\n</mrow>\n</math></p>"},{"id":"666a73e3-4c50-4e70-ab8c-ded1deefc246","content":"<p><math alttext=\"minus 6 x plus y equals 22\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>22</mn>\n</mrow>\n</math></p>"},{"id":"925eecf1-af05-416f-b158-f1ea493bd5f5","content":"<p><math alttext=\"minus 12 x plus y equals 36\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>36</mn>\n</mrow>\n</math></p>"},{"id":"3cede950-1993-497f-bc30-64e4d8e408dc","content":"<p><math alttext=\"minus 12 x plus y equals 18\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>18</mn>\n</mrow>\n</math></p>"}],"keys":["666a73e3-4c50-4e70-ab8c-ded1deefc246"],"correct_answer":["B"],"rationale":"<p>Choice B is correct. A system of two linear equations in two variables, <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>, has no solution if the lines represented by the equations in the <em>xy</em>-plane are parallel and distinct. Lines represented by equations in standard form, <math alttext=\"upper A x plus upper B y equals upper C\"><mi>A</mi><mi>x</mi><mo>+</mo><mi>B</mi><mi>y</mi><mo>=</mo><mi>C</mi></math> and <math alttext=\"upper D x plus upper E y equals upper F\"><mi>D</mi><mi>x</mi><mo>+</mo><mi>E</mi><mi>y</mi><mo>=</mo><mi>F</mi></math>, are parallel if the coefficients for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math> in one equation are proportional to the corresponding coefficients in the other equation, meaning <math alttext=\"StartFraction upper D Over upper A EndFraction equals StartFraction upper E Over upper B EndFraction\"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mfrac><mi>E</mi><mi>B</mi></mfrac></math>; and the lines are distinct if the constants are not proportional, meaning <math alttext=\"StartFraction upper F Over upper C EndFraction\"><mfrac><mi>F</mi><mi>C</mi></mfrac></math> is not equal to <math alttext=\"StartFraction upper D Over upper A EndFraction\"><mfrac><mi>D</mi><mi>A</mi></mfrac></math> or <math alttext=\"StartFraction upper E Over upper B EndFraction\"><mfrac><mi>E</mi><mi>B</mi></mfrac></math>. The given equation, <math alttext=\"y equals 6 x plus 18\"><mi>y</mi><mo>=</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>18</mn></math>, can be written in standard form by subtracting <math alttext=\"6 x\"><mn>6</mn><mi>x</mi></math> from both sides of the equation to yield <math alttext=\"minus 6 x plus y equals 18\"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>18</mn></math>. Therefore, the given equation can be written in the form <math alttext=\"upper A x plus upper B y equals upper C\"><mi>A</mi><mi>x</mi><mo>+</mo><mi>B</mi><mi>y</mi><mo>=</mo><mi>C</mi></math>, where <math alttext=\"upper A equals negative 6\"><mi>A</mi><mo>=</mo><mo>-</mo><mn>6</mn></math>, <math alttext=\"upper B equals 1\"><mi>B</mi><mo>=</mo><mn>1</mn></math>, and <math alttext=\"upper C equals 18\"><mi>C</mi><mo>=</mo><mn>18</mn></math>. The equation in choice B, <math alttext=\"minus 6 x plus y equals 22\"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>22</mn></math>, is written in the form <math alttext=\"upper D x plus upper E y equals upper F\"><mi>D</mi><mi>x</mi><mo>+</mo><mi>E</mi><mi>y</mi><mo>=</mo><mi>F</mi></math>, where <math alttext=\"upper D equals negative 6\"><mi>D</mi><mo>=</mo><mo>-</mo><mn>6</mn></math>, <math alttext=\"upper E equals 1\"><mi>E</mi><mo>=</mo><mn>1</mn></math>, and <math alttext=\"upper F equals 22\"><mi>F</mi><mo>=</mo><mn>22</mn></math>. Therefore,&nbsp; <math alttext=\"StartFraction upper D Over upper A EndFraction equals StartFraction negative 6 Over negative 6 EndFraction\"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mfrac><mrow><mo>-</mo><mn>6</mn></mrow><mrow><mo>-</mo><mn>6</mn></mrow></mfrac></math>, which can be rewritten as <math alttext=\"StartFraction upper D Over upper A EndFraction equals 1\"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mn>1</mn></math>; <math alttext=\"StartFraction upper E Over upper B EndFraction equals one oneth\"><mfrac><mi>E</mi><mi>B</mi></mfrac><mo>=</mo><mfrac><mn>1</mn><mn>1</mn></mfrac></math>, which can be rewritten as <math alttext=\"StartFraction upper E Over upper B EndFraction equals 1\"><mfrac><mi>E</mi><mi>B</mi></mfrac><mo>=</mo><mn>1</mn></math>; and <math alttext=\"StartFraction upper F Over upper C EndFraction equals StartFraction 22 Over 18 EndFraction\"><mfrac><mi>F</mi><mi>C</mi></mfrac><mo>=</mo><mfrac><mn>22</mn><mn>18</mn></mfrac></math>, which can be rewritten as <math alttext=\"StartFraction upper F Over upper C EndFraction equals StartFraction 11 Over 9 EndFraction\"><mfrac><mi>F</mi><mi>C</mi></mfrac><mo>=</mo><mfrac><mn>11</mn><mn>9</mn></mfrac></math>. Since <math alttext=\"StartFraction upper D Over upper A EndFraction equals 1\"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mn>1</mn></math>,&nbsp;<math alttext=\"StartFraction upper E Over upper B EndFraction equals 1\"><mfrac><mi>E</mi><mi>B</mi></mfrac><mo>=</mo><mn>1</mn></math>, and <math alttext=\"StartFraction upper F Over upper C EndFraction\"><mfrac><mi>F</mi><mi>C</mi></mfrac></math> is not equal to <math alttext=\"1\"><mn>1</mn>\n</math>, it follows that the given equation and the equation <math alttext=\"minus 6 x plus y equals 22\"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>22</mn></math> are parallel and distinct. Therefore, a system of two linear equations consisting of the given equation and the equation <math alttext=\"minus 6 x plus y equals 22\"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>22</mn></math> has no solution. Thus, the&nbsp;equation in choice B could be the second equation in the system.</p>\n<p>Choice A is incorrect. The equation&nbsp;<math alttext=\"minus 6 x plus y equals 18\"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>18</mn></math> and the given equation represent the same line in the <em>xy</em>-plane. Therefore, a system of these linear equations would have infinitely many solutions, rather than no solution.&nbsp;</p>\n<p>Choice C is incorrect. The equation <math alttext=\"minus 12 x plus y equals 36\"><mo>-</mo><mn>12</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>36</mn></math> and the given equation represent lines in the <em>xy</em>-plane that are distinct and not parallel. Therefore, a system of these linear equations would have exactly one solution, rather than no solution.</p>\n<p>Choice D is incorrect. The equation <math alttext=\"minus 12 x plus y equals 18\"><mo>-</mo><mn>12</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>18</mn></math> and the given equation represent lines in the <em>xy</em>-plane that are distinct and not parallel. Therefore, a system of these linear equations would have&nbsp;exactly one solution, rather than no solution.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959817,"pPcc":"SAT#H","questionId":"5e08a055","skill_cd":"H.D.","score_band_range_cd":6,"skill_desc":"Systems of two linear equations in two variables","createDate":1691007959817,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"673c8b0c-840e-41ac-bc4e-82b2f8b2a747","primary_class_cd":"H","uId":"e31ea41f-be85-4ffe-9d6c-2ebf13f0d90e","difficulty":"H"},"raw_detail":{"keys":["666a73e3-4c50-4e70-ab8c-ded1deefc246"],"rationale":"<p>Choice B is correct. A system of two linear equations in two variables, <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>, has no solution if the lines represented by the equations in the <em>xy</em>-plane are parallel and distinct. Lines represented by equations in standard form, <math alttext=\"upper A x plus upper B y equals upper C\"><mi>A</mi><mi>x</mi><mo>+</mo><mi>B</mi><mi>y</mi><mo>=</mo><mi>C</mi></math> and <math alttext=\"upper D x plus upper E y equals upper F\"><mi>D</mi><mi>x</mi><mo>+</mo><mi>E</mi><mi>y</mi><mo>=</mo><mi>F</mi></math>, are parallel if the coefficients for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math> in one equation are proportional to the corresponding coefficients in the other equation, meaning <math alttext=\"StartFraction upper D Over upper A EndFraction equals StartFraction upper E Over upper B EndFraction\"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mfrac><mi>E</mi><mi>B</mi></mfrac></math>; and the lines are distinct if the constants are not proportional, meaning <math alttext=\"StartFraction upper F Over upper C EndFraction\"><mfrac><mi>F</mi><mi>C</mi></mfrac></math> is not equal to <math alttext=\"StartFraction upper D Over upper A EndFraction\"><mfrac><mi>D</mi><mi>A</mi></mfrac></math> or <math alttext=\"StartFraction upper E Over upper B EndFraction\"><mfrac><mi>E</mi><mi>B</mi></mfrac></math>. The given equation, <math alttext=\"y equals 6 x plus 18\"><mi>y</mi><mo>=</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>18</mn></math>, can be written in standard form by subtracting <math alttext=\"6 x\"><mn>6</mn><mi>x</mi></math> from both sides of the equation to yield <math alttext=\"minus 6 x plus y equals 18\"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>18</mn></math>. Therefore, the given equation can be written in the form <math alttext=\"upper A x plus upper B y equals upper C\"><mi>A</mi><mi>x</mi><mo>+</mo><mi>B</mi><mi>y</mi><mo>=</mo><mi>C</mi></math>, where <math alttext=\"upper A equals negative 6\"><mi>A</mi><mo>=</mo><mo>-</mo><mn>6</mn></math>, <math alttext=\"upper B equals 1\"><mi>B</mi><mo>=</mo><mn>1</mn></math>, and <math alttext=\"upper C equals 18\"><mi>C</mi><mo>=</mo><mn>18</mn></math>. The equation in choice B, <math alttext=\"minus 6 x plus y equals 22\"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>22</mn></math>, is written in the form <math alttext=\"upper D x plus upper E y equals upper F\"><mi>D</mi><mi>x</mi><mo>+</mo><mi>E</mi><mi>y</mi><mo>=</mo><mi>F</mi></math>, where <math alttext=\"upper D equals negative 6\"><mi>D</mi><mo>=</mo><mo>-</mo><mn>6</mn></math>, <math alttext=\"upper E equals 1\"><mi>E</mi><mo>=</mo><mn>1</mn></math>, and <math alttext=\"upper F equals 22\"><mi>F</mi><mo>=</mo><mn>22</mn></math>. Therefore,&nbsp; <math alttext=\"StartFraction upper D Over upper A EndFraction equals StartFraction negative 6 Over negative 6 EndFraction\"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mfrac><mrow><mo>-</mo><mn>6</mn></mrow><mrow><mo>-</mo><mn>6</mn></mrow></mfrac></math>, which can be rewritten as <math alttext=\"StartFraction upper D Over upper A EndFraction equals 1\"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mn>1</mn></math>; <math alttext=\"StartFraction upper E Over upper B EndFraction equals one oneth\"><mfrac><mi>E</mi><mi>B</mi></mfrac><mo>=</mo><mfrac><mn>1</mn><mn>1</mn></mfrac></math>, which can be rewritten as <math alttext=\"StartFraction upper E Over upper B EndFraction equals 1\"><mfrac><mi>E</mi><mi>B</mi></mfrac><mo>=</mo><mn>1</mn></math>; and <math alttext=\"StartFraction upper F Over upper C EndFraction equals StartFraction 22 Over 18 EndFraction\"><mfrac><mi>F</mi><mi>C</mi></mfrac><mo>=</mo><mfrac><mn>22</mn><mn>18</mn></mfrac></math>, which can be rewritten as <math alttext=\"StartFraction upper F Over upper C EndFraction equals StartFraction 11 Over 9 EndFraction\"><mfrac><mi>F</mi><mi>C</mi></mfrac><mo>=</mo><mfrac><mn>11</mn><mn>9</mn></mfrac></math>. Since <math alttext=\"StartFraction upper D Over upper A EndFraction equals 1\"><mfrac><mi>D</mi><mi>A</mi></mfrac><mo>=</mo><mn>1</mn></math>,&nbsp;<math alttext=\"StartFraction upper E Over upper B EndFraction equals 1\"><mfrac><mi>E</mi><mi>B</mi></mfrac><mo>=</mo><mn>1</mn></math>, and <math alttext=\"StartFraction upper F Over upper C EndFraction\"><mfrac><mi>F</mi><mi>C</mi></mfrac></math> is not equal to <math alttext=\"1\"><mn>1</mn>\n</math>, it follows that the given equation and the equation <math alttext=\"minus 6 x plus y equals 22\"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>22</mn></math> are parallel and distinct. Therefore, a system of two linear equations consisting of the given equation and the equation <math alttext=\"minus 6 x plus y equals 22\"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>22</mn></math> has no solution. Thus, the&nbsp;equation in choice B could be the second equation in the system.</p>\n<p>Choice A is incorrect. The equation&nbsp;<math alttext=\"minus 6 x plus y equals 18\"><mo>-</mo><mn>6</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>18</mn></math> and the given equation represent the same line in the <em>xy</em>-plane. Therefore, a system of these linear equations would have infinitely many solutions, rather than no solution.&nbsp;</p>\n<p>Choice C is incorrect. The equation <math alttext=\"minus 12 x plus y equals 36\"><mo>-</mo><mn>12</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>36</mn></math> and the given equation represent lines in the <em>xy</em>-plane that are distinct and not parallel. Therefore, a system of these linear equations would have exactly one solution, rather than no solution.</p>\n<p>Choice D is incorrect. The equation <math alttext=\"minus 12 x plus y equals 18\"><mo>-</mo><mn>12</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>18</mn></math> and the given equation represent lines in the <em>xy</em>-plane that are distinct and not parallel. Therefore, a system of these linear equations would have&nbsp;exactly one solution, rather than no solution.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"y equals 6 x plus 18\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>18</mn>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">One of the equations in a system of two linear equations is given. The system has no solution. Which equation could be the second equation in the system?</p>","externalid":"673c8b0c-840e-41ac-bc4e-82b2f8b2a747","templateid":"d6275941-2b5a-4092-85c0-6aadce8dba13","vaultid":"940ddce7-fb76-4d88-834c-6d34b6f281f8","type":"mcq","answerOptions":[{"id":"0f530c53-ba44-484b-a5a5-ea8772b2d512","content":"<p><math alttext=\"minus 6 x plus y equals 18\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>18</mn>\n</mrow>\n</math></p>"},{"id":"666a73e3-4c50-4e70-ab8c-ded1deefc246","content":"<p><math alttext=\"minus 6 x plus y equals 22\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>22</mn>\n</mrow>\n</math></p>"},{"id":"925eecf1-af05-416f-b158-f1ea493bd5f5","content":"<p><math alttext=\"minus 12 x plus y equals 36\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>36</mn>\n</mrow>\n</math></p>"},{"id":"3cede950-1993-497f-bc30-64e4d8e408dc","content":"<p><math alttext=\"minus 12 x plus y equals 18\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>12</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>18</mn>\n</mrow>\n</math></p>"}],"correct_answer":["B"]},"createDate":1691007959817,"updateDate":1691007959817}$SATQ$::jsonb, 1691007959817, 1691007959817),
    ($SATQ$5e422ff9$SATQ$, NULL, NULL, $SATQ$08687-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, $SATQ$<div class="stimulus_reference " xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1"><p class="standalone_statement style:1 "><span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_002_9a3d8391.png" alt="y equals, 2 x minus 3, and, 3 y equals 5 x"></span></span></p></div>
$SATQ$, $SATQ$<p class="stem_paragraph ">In the solution to the system of equations above, what is the value of <span class="italic">y</span> ?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p><span class=\"choice_cell align:right \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_000_a791eb5b.png\" alt=\"negative 15\"></span></span></span></p>\n"},{"id":"b","content":"<p><span class=\"choice_cell align:right \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_001_a68399e9.png\" alt=\"negative 9\"></span></span></span></p>\n"},{"id":"c","content":"<p>9</p>\n"},{"id":"d","content":"<p>15</p>\n"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice D is correct. Multiplying both sides of <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_003_62933e63.png" alt="y equals 2 x minus 3"></span> by 5 results in <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_004_64ac7f17.png" alt="5 y, equals 10 x minus 15"></span>. Multiplying both sides of <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_005_d1fd4c47.png" alt="3 y, equals 5 x"></span> by 2 results in <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_006_4f4b7dc0.png" alt="6 y, equals 10 x"></span>. Subtracting the resulting equations yields <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_007_4216d6fd.png" alt="5 y minus 6 y, equals, open parenthesis, 10 x minus 15, close parenthesis, minus, 10 x"></span>, which simplifies to <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_008_ea733a88.png" alt="negative y equals negative 15"></span>. Dividing both sides of <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_009_ea733a88.png" alt="negative y equals negative 15"></span> by <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_010_d3b569af.png" alt="negative 1"></span> results in <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_011_b8528459.png" alt="y equals 15"></span>.<p>Choices A and B are incorrect and may result from incorrectly subtracting the transformed equation. Choice C is incorrect and may result from finding the value of <span class="italic">x</span> instead of the value of <span class="italic">y</span>.</p><p>&nbsp;</p></p>
$SATQ$, false, 12, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"5e422ff9","external_id":null,"disclosed_item_id":"08687-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_002_9a3d8391.png\" alt=\"y equals, 2 x minus 3, and, 3 y equals 5 x\"></span></span></p></div>\n","stem":"<p class=\"stem_paragraph \">In the solution to the system of equations above, what is the value of <span class=\"italic\">y</span> ?</p>\n","answerOptions":[{"id":"a","content":"<p><span class=\"choice_cell align:right \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_000_a791eb5b.png\" alt=\"negative 15\"></span></span></span></p>\n"},{"id":"b","content":"<p><span class=\"choice_cell align:right \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_001_a68399e9.png\" alt=\"negative 9\"></span></span></span></p>\n"},{"id":"c","content":"<p>9</p>\n"},{"id":"d","content":"<p>15</p>\n"}],"keys":null,"correct_answer":["D"],"rationale":"<p>Choice D is correct. Multiplying both sides of <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_003_62933e63.png\" alt=\"y equals 2 x minus 3\"></span> by 5 results in <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_004_64ac7f17.png\" alt=\"5 y, equals 10 x minus 15\"></span>. Multiplying both sides of <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_005_d1fd4c47.png\" alt=\"3 y, equals 5 x\"></span> by 2 results in <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_006_4f4b7dc0.png\" alt=\"6 y, equals 10 x\"></span>. Subtracting the resulting equations yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_007_4216d6fd.png\" alt=\"5 y minus 6 y, equals, open parenthesis, 10 x minus 15, close parenthesis, minus, 10 x\"></span>, which simplifies to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_008_ea733a88.png\" alt=\"negative y equals negative 15\"></span>. Dividing both sides of <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_009_ea733a88.png\" alt=\"negative y equals negative 15\"></span> by <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_010_d3b569af.png\" alt=\"negative 1\"></span> results in <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/5e422ff9/img_011_b8528459.png\" alt=\"y equals 15\"></span>.<p>Choices A and B are incorrect and may result from incorrectly subtracting the transformed equation. Choice C is incorrect and may result from finding the value of <span class=\"italic\">x</span> instead of the value of <span class=\"italic\">y</span>.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":12,"raw_list":{"updateDate":1691007959636,"pPcc":"SAT#H","questionId":"5e422ff9","skill_cd":"H.D.","score_band_range_cd":5,"skill_desc":"Systems of two linear equations in two variables","createDate":1691007959636,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"08687-DC","external_id":null,"primary_class_cd":"H","uId":"c32ce35c-b001-4aad-8fb4-1dc7076f6bcc","difficulty":"M"},"raw_detail":{"item_id":"08687-DC","section":"Math","body":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFUAAAA2CAYAAAC2ldWuAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAbSkFbcgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAACgklEQVR4Xu2ZDZKDIAyFPZ4H8jjepVfxJqwhBtII9Edibfd9M0yt62oSXgKNAwAAAAAAAAAAAAAAAIDfIIQlzOMQ6FDGOC/0eSq3SdswhtWE023oQg7oFG6BnQi3KTp2ZmA5oNaGLw1sWOYwFoxf5vHOSU/YhiFM68O2U2myu09sdGyc19vvHzasFmynXGCl5KBGJRlbWF0+anLz0zpG1NIirFdN6wcdtoZWQwsbRLm//D8r2S893e5vU/Ncle4nIAV6S1ePmsvBfE0AL2HVUVJubySgpYmT2keHtYntlTHpWZXnvI0u1o8Kdw9nkkoajthV2hO3EkBOxKA6q5SD1U7pnJp+tVRTWz8OEx2Z5qZKjyLBat1fygJdEyegY1rKvW0WsV0OQpIHeqlUalczoFJatkD2VlBagPVuQ00ife/KM04fIad0adBESq3Ok+qxC0n3TM92Wv0JtxT4r9gtFTiA3h55pT0AAAAAAADgRKTdxuOcdlqJai+242/7U7DN3t6dn1fgps2X9xek86R/0z/q7HsSJ9S8Kf0JSu202KEyznq03Z5pOsdrjC2cbZ8rWw/hFt+9gVwS7tOyViaqddEMnR1EypBp4hdt27AZYztmJXsvg24S7xyOZSIb7qHSNBm6615pjCe1OjfOuyGO6IBZdZSU60WpOZ5spNFxYl2xKaUXL30cLza8m/41amXG7louT8kRciIG9USVEiVbcqnaB/vjsMF71ZRSLp5zfEVd2t4R1haxmWyIar1a+qcFRy8Oymj6Lsh5L5UmWwoBlECn0rIFkv9+RbUmZ/KwaiFqK3FPWrbkWq2CLtdfTa3PUioJ4AB2SwUOoLdHnmn/vQzDH1FTWFNz+8J9AAAAAElFTkSuQmCC\" alt=\"y equals, 2 x minus 3, and, 3 y equals 5 x\"></span></span></p></div>\n","prompt":"<p class=\"stem_paragraph \">In the solution to the system of equations above, what is the value of <span class=\"italic\">y</span> ?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p><span class=\"choice_cell align:right \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB8AAAAWCAYAAAA4oUfxAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAsklEQVRIS+2UUQrEIAxEPV4OlOPkLl7Fm8zGpq7WNYWK7EfxgdgWcZLJ0LCCyAEkCefrFyCCdcuPl8Xx5+wUiHxcOBRPAgqsJWCNWEsSsk488VwYCdJqceuYIMmsHYnncSyzeESZay8O7VdIvzOr9XXeoyKn8cXPsDW2Wwa6s24qu6UO5v2CJ+5hOVkUwqfiNStvFS/z7Uf1F9tL2luh8kMaZWeKO9trAfeh3Ww2m7cRwgc3u/dCm6+IUAAAAABJRU5ErkJggg==\" alt=\"negative 15\"></span></span></span></p>\n"},"b":{"body":"<p><span class=\"choice_cell align:right \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAlklEQVRIS+2S0Q3AIAhEHY+BGMddXMVNrhQ0tZo2rbR/voSgJB5yGjzkSJBUghAz9rWPxGcxJNYGnBziyBEkiUS1lBSdgCKk15y43W4c/ar+mP+EixW9n/aYjTCQwJL25V20QvZ4LCetVpu5blwx8RrSRMU/EO4xj48pXlOt67+bTiB+le0cg8feH9EyeDxrwWKx+IQQNqfzs6W644JnAAAAAElFTkSuQmCC\" alt=\"negative 9\"></span></span></span></p>\n"},"c":{"body":"<p>9</p>\n"},"d":{"body":"<p>15</p>\n"}},"correct_choice":"d","rationale":"<p>Choice D is correct. Multiplying both sides of <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEUAAAAWCAYAAACWl1FwAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABTklEQVRYR+1V2xHDIAxjPAZiHHbJKtnExRgDdTDXR0w/iu5ySVMCQpKNWw2AE6J3gI98+XjifSmO0HPwkCgs55DRBAlwAJGAI2RiK4UhQSSHHwkDZwQ/WPyM/omkJYiDg5AWK6+qWRdjMjEf09/XwS7NUF6ZgJxqomQnBRdy18ZNdZ+SGEKLFaRRId3wcXb1bswgReD5+XtKkl281flltNem5CpgFarE3aLnkBgTA6U7o+TcDRZkJDzXPj5qxtyV2LqWXKdvNmrjKbiDTHVJ2TBCnhKWUEsISWRRjFNCm52XRIu2XS/pofVPIhLiNCXfgjc7m5/LCsdkASdpehc8t0wx8RoEgT+wSgnX7lQQLs0ihOrgh6gHSH/adSbg7ye8QvobtJIYXWgE96pmisUpWOesa0/6nxqhf4U8kv8a/fFqVTYbGxsbGxsbG2/DuQdubyg6n2ZxHwAAAABJRU5ErkJggg==\" alt=\"y equals 2 x minus 3\"></span> by 5 results in <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF8AAAAWCAYAAACmG0BRAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABvklEQVRoQ+2W0ZHDIAxEXR4FUQ69uBV3wiGIDMgSkIPgH70ZJg7BRrssOAfg/elt+IDLqtkTPl/jtIc37mJr8KctajU+DHutVqnOIV/95bw5bBj6ngAKmsuKir9lw+n3nTTrHPE1PsA4H2rfXjzH5UwUBI2K8qFKZ579kL7dO7VVJzDk60jhcSLyIDRipeic4rRlH+bHNB0+TFn1JyNyyqImUm/sW7RDenUCXV/vJFkbRUEXtIfoOFm9hXIBtRjxrCONGliCz+DNZ+Yk9eH9OEdanDXGl4h1jvh6G1WkBNNVDqSif5H6ElGUtOBM/51+Rs8qZPPHfGWh2xgfhknidsJKVpiPYuFSCsltUqdJu1SqU4L6ykLFlC+68joOJswKAkTzyQ5EpDCkc35/SCSk8FRwg0BINF8QupK2+c+F4xKV+sD8jtgJpsz/Wox1zdSvQjRf2HX0n0USmcZ1/3VMMBWS+8VZGI2F0xux/9epB1qJqtLDff/ci4bT31fSC0nX1zwwN2o8gKvJGbKalvlAPlKgMcaXolHfZzFW0gzJoK9DcEeRsgFc4X+vnPI9eRvvOW4URVEURVEURZnkOP4AueiwblkNCQYAAAAASUVORK5CYII=\" alt=\"5 y, equals 10 x minus 15\"></span>. Multiplying both sides of <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAWCAYAAABg3tToAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABSklEQVRYR+2VjQ2EIAyFGY+BGIddXMVNerTY0itF708vJnwJ0VOor+2DC8ySApTLNiLkFfD+cgAWSKJDjbS8p6cmlEq4mggsqVz/kxisGaLS8hE1SIBSCAkCsEKOAWLJant0GVTQmIuCHxeUk9ItX3PsPubN+xZyzUE8mmO0VLftuIsSMBOqJZ9tMbLpcF+Yod2BiENSIvfgIxzWMRyf13t6hfpy8EGyaVt4RpekGKoLvD1sYtKtwfsODqQF2+p4nTuLWmzjEtaI49XC2pbqw0Pf02TDp/YbMbK5PbUP8QJhEErqwi4hnpa2VfpktwV91byW07OUd7v0Dd7fC2K1sGbUQN2y9pMNrzenWoS/GX5+VpdEi5MAJyrW3hKp771uSbA2bLWQ0Un0S/a0tL2qkub5tluv4lny1tgj/dbo4/lM200mk8lk0hHCAwCKMBp7ZTnrAAAAAElFTkSuQmCC\" alt=\"3 y, equals 5 x\"></span> by 2 results in <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD4AAAAWCAYAAACYPi8fAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABf0lEQVRYR+1VgZHDIAzLeAzEOOySVbKJH+Mq+A2m6Zf073rojgtJIJJs0W4AHYlCvvC0jLjz9V+xx41COro6aI9V6xYoL3tdLz6SvZbNRDvFfPFIPwFo6mmQd9Wsvb8EooNSaAmOFPJ9zCX4QyXfhHBLN60uTy+n46WUSsSfV6uICSnT1nUQMfNY1O71U4cjiXQCtlGlEEZveQavQsQbhCi/L6MhPNcp407EcFR4OhpWvIZ33LxGWX3YDw4pjNonG1hIfYiqalJLeEe3NVzjXrE7z8+ud/ycxi2BjY6toK3wbMwwjgbytGkQjNvY2Q/pHxXvBwaAaJ6OhuXUcI1fjDog57rTIFTlmXEGf6QYd0hmYmy81WsTypBnbLwtlEvgfiimYbdnwTXupK10VsUZSeZ19t0JLEIVUdWG9LHu7m4zPOMM0aGOob1/7IVZ+/4XqikZXUKnIHdgZJxRY8yjY1o15+1/oF78vx6oJI7D16NG5zMRX1hYWFhYWLiIbfsB4VDW9H5zxb0AAAAASUVORK5CYII=\" alt=\"6 y, equals 10 x\"></span>. Subtracting the resulting equations yields <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAL4AAAAcCAYAAADfoAV4AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAOJ5y/mQAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAADQElEQVR4Xu2Xi7GjMAxFKY+CKIde0ko68SILBSNLNhhh8jY6M8w+TJCvvmYHRye85zAOY5jfIaxL/z0hvMM8DmF6/Y7PTkIIrzD9WNETd/ree5h4I5/kNQ1hXLKz3v4c4TWFYZyXsrErmKeGibovPhhgcX8tbbL82w2cBs/tT6COaYmKnKBSU8SC+fjw7Imh6TyS7zsmZSlud8dUbORaontAzlGgKTlPTN33PKpNRzrFgorPtsTw+54UdR7Md7RhNHxKe/aIqdjI0ZjxsXYGEsUdjwX4QEPC9JEmHerBycO1aj6Ard4nV0kncDTflgNRGyY9Yxr9Tt87YigKZMEiYVcTiwGud/GdGgi0l2vZJo18EqEPecNgYrfiibFmPsQ1o5OhphM4WjiW3+SwJ49N75juGvnTVdMUN4HncGUiosh992/Ct7UWNtsYAFiC64oG9TuWXVky4nu6T9onmNa8XDO9T/tiEq/HkKPqPJhvQBsCZ6nZ6RVT/N26Ti+lHUOdlgrhIiiAFpMWHYEEJPY7ayB2wRFQk6Q1oLD+mVCCj1aoOg/mG7Ar/O+I6SF/+HFC4qircPP99AU+ga1cZAdAW7nYVg1X6JEkKjT4U2valjimaDo1eKwBKRYtuiQ7KZpW+5geKHxunKYriEv/jj++CO6VJ/GKhpYEAWT3bEHx04hAH/LmxG9Q26ZN0XRqiMUUbVzXiHb0gusV05qOiBQIMByLTtm4FerWWuEDd2lIoT3W2x3lJOU+SJMU1yBJlSRcQNOpIcU6rrH/NLZwbZjYxRT3Wd87bXyaTac9oDneU0NKKeFqkpQTKE6hJbjr7Vpg+Dv+zBKLYioNgLM0DRPjmO7ySsZTp8kQDw6t8wBZwPekBGXBuFEDUZpQWpIA1LZNnOx+fZcSw59bUiumWr7xfTttcY+TwwSwjGnWfFswtktMulKMVlAC6BIDcbMGQktUKUkATk7yQUhQWnAU9zVplhSL6UC+wQ/LGLcOE8AipvhbuSGqSMdhb3pqwL0ag/VH+RSOwbc9RxsmPWhuZOouqWN78Q0anGv0HibNjbwdJ/d/Xmh8gwbHcRzHcRzHcRzHcRzHcRzHcRzHcRzHcewYhn+ClJSKja7RAwAAAABJRU5ErkJggg==\" alt=\"5 y minus 6 y, equals, open parenthesis, 10 x minus 15, close parenthesis, minus, 10 x\"></span>, which simplifies to <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAAAWCAYAAABjadrAAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABHElEQVRYR+2WDQ6DIAyFOR4H4jjchatwk45aKz+jJipmTPslRtx0lNf3cOYtBGfA+gjr5QZAAJdOOKwOF77ufSwQ3LLorkDRgzUuyQTvEaQkekuOkARC8ayHOFqgZeLmhyFdeTuPPck5FnykGPUEwujdUi9NXlszF1R3Q8x5c6Q68Twcnr8ViBtqnUsxy3X0hDwMZTeLMZt7SmSB1sYVSaB1Nfee6TA/w5/1HDWKM/WVSAJJ0L51cS2bPdFCxXj9uuLqAq9yVCBpqzgM/7e40z0j+JlAixWd33XPDEgC8X7TOndIxBBSGuMxr3sQUSB+sRT185qGxL2740/IXsSySDfshcOs+ES4K3e9ef4WFgaHs0dLURRFURRFxJgPXiu8TmgDTXgAAAAASUVORK5CYII=\" alt=\"negative y equals negative 15\"></span>. Dividing both sides of <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAAAWCAYAAABjadrAAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABHElEQVRYR+2WDQ6DIAyFOR4H4jjchatwk45aKz+jJipmTPslRtx0lNf3cOYtBGfA+gjr5QZAAJdOOKwOF77ufSwQ3LLorkDRgzUuyQTvEaQkekuOkARC8ayHOFqgZeLmhyFdeTuPPck5FnykGPUEwujdUi9NXlszF1R3Q8x5c6Q68Twcnr8ViBtqnUsxy3X0hDwMZTeLMZt7SmSB1sYVSaB1Nfee6TA/w5/1HDWKM/WVSAJJ0L51cS2bPdFCxXj9uuLqAq9yVCBpqzgM/7e40z0j+JlAixWd33XPDEgC8X7TOndIxBBSGuMxr3sQUSB+sRT185qGxL2740/IXsSySDfshcOs+ES4K3e9ef4WFgaHs0dLURRFURRFxJgPXiu8TmgDTXgAAAAASUVORK5CYII=\" alt=\"negative y equals negative 15\"></span> by <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABcAAAAYCAYAAAARfGZ1AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAMyZLetQAAAFhJREFUeNpjYKAMtADxNiB+DsT/oXyqgS9AfAyIp9LCcCYkNtUNZyDWcBEiMBu5hv8nAoeQa7gLEViMXMNpGuYjy/AQJAwyfA0SnyquxYVHwSgYBaOAJgAAQ7AqWC3zu8cAAAAASUVORK5CYII=\" alt=\"negative 1\"></span> results in <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC0AAAAWCAYAAABUpxX0AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABBklEQVRYR+2Uaw6EIAyEOR4H6nG4C1fhJl0qVB7bqrsB9QdfQsRIYDodNE/iwaB1AfPrDqJHiA+aNgP819pbQQ+bEFF0cGgNROn4rMia4GxyThNNBVmH4Uz0tlG3EOObs2Pbkhy26EKKgCSaYnPpzLRZ25JyQFuxmrluxHPpKcJ79KLZKAsQI1L2korLOSoCZ7hco4vOhlRdT9oE4byY3ZGcH4kmWiPdg07P3hayuprnzw27Gyfjn3hoaFHd/5uzXSaGid5aAO7Q5VFoojm/fZfEeBCpGmrtXJcJVTT/ACoNrEuMm3pLJ3AUjyL8wv1QW/BWuPKjG/8aWCxN74jFYrFYLH7AmA9gnZueyiAiIAAAAABJRU5ErkJggg==\" alt=\"y equals 15\"></span>.<p>Choices A and B are incorrect and may result from incorrectly subtracting the transformed equation. Choice C is incorrect and may result from finding the value of <span class=\"italic\">x</span> instead of the value of <span class=\"italic\">y</span>.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959636,"updateDate":1691007959636}$SATQ$::jsonb, 1691007959636, 1691007959636),
    ($SATQ$5f46fc76$SATQ$, $SATQ$ebe78c3d-d888-4a7c-8973-f50c7ec643f3$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><figure class='image'><svg height="275.22pt" version="1.1" viewBox="0 0 288.918319 275.22" width="288.918319pt" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img" aria-label="Graph of a system of 2 lines in the x y plane with the origin labeled O. The x axis ranges from negative 10 to 0. The y axis ranges from negative 10 to 0. Refer to long description.">
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
    <path clip-path="url(#p9a8873d17d)" d="M 39.986102 255.11539 
L 39.986102 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 60.969208 255.11539 
L 60.969208 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 81.952313 255.11539 
L 81.952313 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 102.935418 255.11539 
L 102.935418 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 123.918524 255.11539 
L 123.918524 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 144.901629 255.11539 
L 144.901629 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 165.884735 255.11539 
L 165.884735 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 186.86784 255.11539 
L 186.86784 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 207.850945 255.11539 
L 207.850945 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 228.834051 255.11539 
L 228.834051 34.792784 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 249.869614 
L 255.062932 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 228.886508 
L 255.062932 228.886508 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 207.903403 
L 255.062932 207.903403 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 186.920298 
L 255.062932 186.920298 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 165.937192 
L 255.062932 165.937192 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 144.954087 
L 255.062932 144.954087 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 123.970981 
L 255.062932 123.970981 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 102.987876 
L 255.062932 102.987876 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 82.004771 
L 255.062932 82.004771 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 61.021665 
L 255.062932 61.021665 
" style="fill:none;stroke:#000000;stroke-width:0.708982;"></path>
   </g>
   <g id="LineCollection_2">
    <path clip-path="url(#p9a8873d17d)" d="M 34.740326 40.03856 
L 260.308709 40.03856 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_1">
    <defs>
     <path d="M 257.443461 -234.196989 
L 260.308709 -235.18144 
L 257.443461 -236.165891 
L 257.443461 -234.196989 
L 260.308709 -235.18144 
" id="m051a913d4d" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p9a8873d17d)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m051a913d4d" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_3">
    <path clip-path="url(#p9a8873d17d)" d="M 249.817156 255.11539 
L 249.817156 29.547007 
" style="fill:none;stroke:#000000;stroke-width:1.949699;"></path>
   </g>
   <g id="PathCollection_2">
    <defs>
     <path d="M 250.831698 -242.098754 
L 249.817156 -245.672993 
L 248.802614 -242.098754 
L 250.831698 -242.098754 
L 249.817156 -245.672993 
" id="m24da031f69" style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;"></path>
    </defs>
    <g clip-path="url(#p9a8873d17d)">
     <use style="stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;" x="0" xlink:href="#m24da031f69" y="275.22"></use>
    </g>
   </g>
   <g id="LineCollection_4">
    <path clip-path="url(#p9a8873d17d)" d="M 39.986102 43.903869 
L 39.986102 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 60.969208 43.903869 
L 60.969208 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 81.952313 43.903869 
L 81.952313 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 102.935418 43.903869 
L 102.935418 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 123.918524 43.903869 
L 123.918524 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 144.901629 43.903869 
L 144.901629 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 165.884735 43.903869 
L 165.884735 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 186.86784 43.903869 
L 186.86784 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 207.850945 43.903869 
L 207.850945 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 228.834051 43.903869 
L 228.834051 36.173251 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="LineCollection_5">
    <path clip-path="url(#p9a8873d17d)" d="M 245.951847 249.869614 
L 253.682465 249.869614 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 245.951847 228.886508 
L 253.682465 228.886508 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 245.951847 207.903403 
L 253.682465 207.903403 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 245.951847 186.920298 
L 253.682465 186.920298 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 245.951847 165.937192 
L 253.682465 165.937192 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 245.951847 144.954087 
L 253.682465 144.954087 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 245.951847 123.970981 
L 253.682465 123.970981 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 245.951847 102.987876 
L 253.682465 102.987876 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 245.951847 82.004771 
L 253.682465 82.004771 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
    <path clip-path="url(#p9a8873d17d)" d="M 245.951847 61.021665 
L 253.682465 61.021665 
" style="fill:none;stroke:#000000;stroke-width:0.886227;"></path>
   </g>
   <g id="PolyCollection_1">
    <path clip-path="url(#p9a8873d17d)" d="M 228.309473 256.164545 
L 228.309473 244.623837 
L 242.997647 244.623837 
L 242.997647 256.164545 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_2">
    <path clip-path="url(#p9a8873d17d)" d="M 219.391653 249.082747 
L 219.391653 253.541657 
L 229.883206 253.541657 
L 229.883206 249.082747 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_1">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(220.999317 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_2">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(228.293382 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_3">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 10 -->
     <g transform="translate(228.293382 254.608792)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_3">
    <path clip-path="url(#p9a8873d17d)" d="M 234.866693 235.18144 
L 234.866693 223.640732 
L 242.735358 223.640732 
L 242.735358 235.18144 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_4">
    <path clip-path="url(#p9a8873d17d)" d="M 226.73574 228.099642 
L 226.73574 232.558552 
L 237.227293 232.558552 
L 237.227293 228.099642 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_4">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(227.556537 233.625687)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_5">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(235.383225 233.625687)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-57"></use>
     </g>
    </g>
   </g>
   <g id="text_6">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 9 -->
     <g transform="translate(235.383225 233.625687)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-57"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_5">
    <path clip-path="url(#p9a8873d17d)" d="M 234.866693 214.198335 
L 234.866693 202.657627 
L 242.735358 202.657627 
L 242.735358 214.198335 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_6">
    <path clip-path="url(#p9a8873d17d)" d="M 226.73574 207.116537 
L 226.73574 211.575447 
L 237.227293 211.575447 
L 237.227293 207.116537 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_7">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(227.556537 212.642582)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_8">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(235.383225 212.642582)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_9">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 8 -->
     <g transform="translate(235.383225 212.642582)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_7">
    <path clip-path="url(#p9a8873d17d)" d="M 234.866693 193.215229 
L 234.866693 181.674521 
L 242.735358 181.674521 
L 242.735358 193.215229 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_8">
    <path clip-path="url(#p9a8873d17d)" d="M 226.73574 186.133431 
L 226.73574 190.592341 
L 237.227293 190.592341 
L 237.227293 186.133431 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_10">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(227.556537 191.659476)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_11">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(235.397288 191.659476)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="text_12">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 7 -->
     <g transform="translate(235.397288 191.659476)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_9">
    <path clip-path="url(#p9a8873d17d)" d="M 234.866693 172.232124 
L 234.866693 160.691416 
L 242.735358 160.691416 
L 242.735358 172.232124 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_10">
    <path clip-path="url(#p9a8873d17d)" d="M 226.73574 165.150326 
L 226.73574 169.609236 
L 237.227293 169.609236 
L 237.227293 165.150326 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_13">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(227.556537 170.676371)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_14">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(235.383225 170.676371)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_15">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 6 -->
     <g transform="translate(235.383225 170.676371)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_11">
    <path clip-path="url(#p9a8873d17d)" d="M 234.866693 151.249019 
L 234.866693 139.708311 
L 242.735358 139.708311 
L 242.735358 151.249019 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_12">
    <path clip-path="url(#p9a8873d17d)" d="M 226.73574 144.16722 
L 226.73574 148.62613 
L 237.227293 148.62613 
L 237.227293 144.16722 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_16">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(227.556537 149.693265)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_17">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(235.369163 149.693265)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_18">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 5 -->
     <g transform="translate(235.369163 149.693265)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_13">
    <path clip-path="url(#p9a8873d17d)" d="M 234.866693 130.265913 
L 234.866693 118.725205 
L 242.735358 118.725205 
L 242.735358 130.265913 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_14">
    <path clip-path="url(#p9a8873d17d)" d="M 226.73574 123.184115 
L 226.73574 127.643025 
L 237.227293 127.643025 
L 237.227293 123.184115 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_19">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(227.556537 128.71016)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_20">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(235.41135 128.71016)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_21">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 4 -->
     <g transform="translate(235.41135 128.71016)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_15">
    <path clip-path="url(#p9a8873d17d)" d="M 234.866693 109.282808 
L 234.866693 97.7421 
L 242.735358 97.7421 
L 242.735358 109.282808 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_16">
    <path clip-path="url(#p9a8873d17d)" d="M 226.73574 102.20101 
L 226.73574 106.65992 
L 237.227293 106.65992 
L 237.227293 102.20101 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_22">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(227.556537 107.727055)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_23">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(235.369163 107.727055)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="text_24">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 3 -->
     <g transform="translate(235.369163 107.727055)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_17">
    <path clip-path="url(#p9a8873d17d)" d="M 234.866693 88.299702 
L 234.866693 76.758994 
L 242.735358 76.758994 
L 242.735358 88.299702 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_18">
    <path clip-path="url(#p9a8873d17d)" d="M 226.73574 81.217904 
L 226.73574 85.676814 
L 237.227293 85.676814 
L 237.227293 81.217904 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_25">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(227.556537 86.743949)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_26">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(235.383225 86.743949)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_27">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 2 -->
     <g transform="translate(235.383225 86.743949)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_19">
    <path clip-path="url(#p9a8873d17d)" d="M 234.866693 67.316597 
L 234.866693 55.775889 
L 242.735358 55.775889 
L 242.735358 67.316597 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_20">
    <path clip-path="url(#p9a8873d17d)" d="M 226.73574 60.234799 
L 226.73574 64.693709 
L 237.227293 64.693709 
L 237.227293 60.234799 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_28">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(227.556537 65.760844)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_29">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 1 -->
     <g transform="translate(235.383225 65.760844)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_30">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 1 -->
     <g transform="translate(235.383225 65.760844)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_21">
    <path clip-path="url(#p9a8873d17d)" d="M 19.527574 48.431802 
L 19.527574 52.628423 
L 224.112852 52.628423 
L 224.112852 48.431802 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="PolyCollection_22">
    <path clip-path="url(#p9a8873d17d)" d="M 31.330571 55.251311 
L 31.330571 43.710603 
L 45.231879 43.710603 
L 45.231879 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_31">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(23.758126 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_32">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 10 -->
     <g transform="translate(31.052191 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="text_33">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 10 -->
     <g transform="translate(31.052191 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
      <use x="47.265625" xlink:href="#CrimsonText-Regular-48"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_23">
    <path clip-path="url(#p9a8873d17d)" d="M 56.248009 55.251311 
L 56.248009 43.710603 
L 64.116673 43.710603 
L 64.116673 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_34">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(49.200141 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_35">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 9 -->
     <g transform="translate(56.502252 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-57"></use>
     </g>
    </g>
   </g>
   <g id="text_36">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 9 -->
     <g transform="translate(56.502252 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-57"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_24">
    <path clip-path="url(#p9a8873d17d)" d="M 77.231114 55.251311 
L 77.231114 43.710603 
L 85.099779 43.710603 
L 85.099779 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_37">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(70.183247 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_38">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 8 -->
     <g transform="translate(77.485357 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="text_39">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 8 -->
     <g transform="translate(77.485357 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-56"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_25">
    <path clip-path="url(#p9a8873d17d)" d="M 98.21422 55.251311 
L 98.21422 43.710603 
L 106.082884 43.710603 
L 106.082884 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_40">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(91.166352 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_41">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 7 -->
     <g transform="translate(98.482525 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="text_42">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 7 -->
     <g transform="translate(98.482525 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-55"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_26">
    <path clip-path="url(#p9a8873d17d)" d="M 119.197325 55.251311 
L 119.197325 43.710603 
L 127.06599 43.710603 
L 127.06599 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_43">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(112.149458 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_44">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 6 -->
     <g transform="translate(119.451568 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="text_45">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 6 -->
     <g transform="translate(119.451568 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-54"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_27">
    <path clip-path="url(#p9a8873d17d)" d="M 140.18043 55.251311 
L 140.18043 43.710603 
L 148.049095 43.710603 
L 148.049095 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_46">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(133.132563 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_47">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 5 -->
     <g transform="translate(140.420611 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="text_48">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 5 -->
     <g transform="translate(140.420611 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-53"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_28">
    <path clip-path="url(#p9a8873d17d)" d="M 161.163536 55.251311 
L 161.163536 43.710603 
L 169.0322 43.710603 
L 169.0322 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_49">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(154.115668 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_50">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 4 -->
     <g transform="translate(161.445904 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="text_51">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 4 -->
     <g transform="translate(161.445904 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-52"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_29">
    <path clip-path="url(#p9a8873d17d)" d="M 182.146641 55.251311 
L 182.146641 43.710603 
L 190.015306 43.710603 
L 190.015306 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_52">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(175.098774 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_53">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 3 -->
     <g transform="translate(182.386822 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="text_54">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 3 -->
     <g transform="translate(182.386822 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-51"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_30">
    <path clip-path="url(#p9a8873d17d)" d="M 203.129747 55.251311 
L 203.129747 43.710603 
L 210.998411 43.710603 
L 210.998411 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_55">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(196.081879 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_56">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 2 -->
     <g transform="translate(203.38399 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="text_57">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 2 -->
     <g transform="translate(203.38399 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-50"></use>
     </g>
    </g>
   </g>
   <g id="PolyCollection_31">
    <path clip-path="url(#p9a8873d17d)" d="M 224.112852 55.251311 
L 224.112852 43.710603 
L 231.981516 43.710603 
L 231.981516 55.251311 
z
" style="fill:#ffffff;"></path>
   </g>
   <g id="text_58">
    <g clip-path="url(#p9a8873d17d)">
     <!-- – -->
     <g transform="translate(217.064985 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-8211"></use>
     </g>
    </g>
   </g>
   <g id="text_59">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 1 -->
     <g transform="translate(224.367095 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_60">
    <g clip-path="url(#p9a8873d17d)">
     <!-- 1 -->
     <g transform="translate(224.367095 53.957847)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Regular-49"></use>
     </g>
    </g>
   </g>
   <g id="text_61">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(238.165046 50.415671)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-79"></use>
     </g>
    </g>
   </g>
   <g id="text_62">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(246.308562 22.350767)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-121"></use>
     </g>
    </g>
   </g>
   <g id="text_63">
    <g clip-path="url(#p9a8873d17d)">
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
     <g transform="translate(262.592735 43.333872)scale(0.15 -0.15)">
      <use xlink:href="#CrimsonText-Italic-120"></use>
     </g>
    </g>
   </g>
   <g id="line2d_1">
    <path clip-path="url(#p9a8873d17d)" d="M 98.015532 35.118674 
L 249.817156 186.920298 
L 249.817156 186.920298 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
   <g id="line2d_2">
    <path clip-path="url(#p9a8873d17d)" d="M 39.986102 228.886508 
L 233.838038 35.034573 
L 233.838038 35.034573 
" style="fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;"></path>
   </g>
  </g>
 </g>
 <defs>
  <clipPath id="p9a8873d17d">
   <rect height="260.82" width="271.206637" x="7.2" y="7.2"></rect>
  </clipPath>
 </defs>
</svg>
<div role="region" aria-label="Long description for graph of a system of 2 lines" class="sr-only"><ul><li>For the first line in the system:<br><ul><li>The line slants gradually down from left to right.</li><li>The line passes through the following points:<br><ul><li>(negative 7 comma 0)</li><li>(negative 4 comma negative 3)</li><li>(0 comma negative 7)</li></ul></li></ul></li><li>For the second line in the system:<br><ul><li>The line slants gradually up from left to right.</li><li>The line passes through the following points:<br><ul><li>(negative 5 comma negative 4)</li><li>(negative 4 comma negative 3)</li><li>(negative 3 comma negative 2)</li></ul></li></ul></li></ul></div></figure></p>
<p style="text-align: left;">The graph of a system of linear equations is shown. What is the solution&nbsp;<math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> to the system?</p>$SATQ$, $SATQ$[{"id":"81f18ff3-c097-49d6-b9ad-936253e46782","content":"<p><math alttext=\"left parenthesis 0 comma negative 7 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mo>-</mo><mn>7</mn></mrow></mrow></mfenced></math></p>"},{"id":"3444b620-2604-4926-9705-f042c0ad2668","content":"<p><math alttext=\"left parenthesis 0 comma negative 3 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mo>-</mo><mn>3</mn></mrow></mrow></mfenced></math></p>"},{"id":"ef0e6064-529b-42e8-8549-2abeb4b95adf","content":"<p><math alttext=\"left parenthesis negative 4 comma negative 3 right parenthesis\"><mfenced><mrow><mrow><mo>-</mo><mn>4</mn></mrow><mo>,</mo><mrow><mo>-</mo><mn>3</mn></mrow></mrow></mfenced></math></p>"},{"id":"5554b465-a889-418c-bd31-a1ef0e3a6df6","content":"<p><math alttext=\"left parenthesis negative 4 comma 0 right parenthesis\"><mfenced><mrow><mrow><mo>-</mo><mn>4</mn></mrow><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["ef0e6064-529b-42e8-8549-2abeb4b95adf"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. The solution to a system of linear equations is represented by the point that lies on the graph of each equation in the system, or the point where the lines intersect on a graph. On the graph shown, the two lines intersect at the point <math alttext="left parenthesis negative 4 comma negative 3 right parenthesis"><mfenced><mrow><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>. Therefore, the solution to the system is <math alttext="left parenthesis negative 4 comma negative 3 right parenthesis"><mfenced><mrow><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>.</p>
<p style="text-align: left;">Choice A is incorrect. This is the <em>y</em>-intercept of the graph of one of the lines shown, not the intersection point of the two lines.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"5f46fc76","external_id":"ebe78c3d-d888-4a7c-8973-f50c7ec643f3","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"e600d01c-14f4-4de9-91bf-97f733528331","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 288.918319 275.22\" width=\"288.918319pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a system of 2 lines in the x y plane with the origin labeled O. The x axis ranges from negative 10 to 0. The y axis ranges from negative 10 to 0. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 288.918319 275.22 \nL 288.918319 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 9.558319 260.46 \nL 281.718319 260.46 \nL 281.718319 10.98 \nL 9.558319 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 278.406637 268.02 \nL 278.406637 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n    <g id=\"ytick_9\"></g>\n    <g id=\"ytick_10\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 39.986102 255.11539 \nL 39.986102 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 60.969208 255.11539 \nL 60.969208 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 81.952313 255.11539 \nL 81.952313 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 102.935418 255.11539 \nL 102.935418 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 123.918524 255.11539 \nL 123.918524 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 144.901629 255.11539 \nL 144.901629 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 165.884735 255.11539 \nL 165.884735 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 186.86784 255.11539 \nL 186.86784 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 207.850945 255.11539 \nL 207.850945 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 228.834051 255.11539 \nL 228.834051 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 249.869614 \nL 255.062932 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 228.886508 \nL 255.062932 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 207.903403 \nL 255.062932 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 186.920298 \nL 255.062932 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 165.937192 \nL 255.062932 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 144.954087 \nL 255.062932 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 123.970981 \nL 255.062932 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 102.987876 \nL 255.062932 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 82.004771 \nL 255.062932 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 61.021665 \nL 255.062932 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 40.03856 \nL 260.308709 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 257.443461 -234.196989 \nL 260.308709 -235.18144 \nL 257.443461 -236.165891 \nL 257.443461 -234.196989 \nL 260.308709 -235.18144 \n\" id=\"m051a913d4d\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m051a913d4d\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 249.817156 255.11539 \nL 249.817156 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 250.831698 -242.098754 \nL 249.817156 -245.672993 \nL 248.802614 -242.098754 \nL 250.831698 -242.098754 \nL 249.817156 -245.672993 \n\" id=\"m24da031f69\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m24da031f69\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 39.986102 43.903869 \nL 39.986102 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 60.969208 43.903869 \nL 60.969208 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 81.952313 43.903869 \nL 81.952313 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 102.935418 43.903869 \nL 102.935418 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 123.918524 43.903869 \nL 123.918524 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 144.901629 43.903869 \nL 144.901629 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 165.884735 43.903869 \nL 165.884735 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 186.86784 43.903869 \nL 186.86784 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 207.850945 43.903869 \nL 207.850945 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 228.834051 43.903869 \nL 228.834051 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 249.869614 \nL 253.682465 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 228.886508 \nL 253.682465 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 207.903403 \nL 253.682465 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 186.920298 \nL 253.682465 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 165.937192 \nL 253.682465 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 144.954087 \nL 253.682465 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 123.970981 \nL 253.682465 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 102.987876 \nL 253.682465 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 82.004771 \nL 253.682465 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 61.021665 \nL 253.682465 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 228.309473 256.164545 \nL 228.309473 244.623837 \nL 242.997647 244.623837 \nL 242.997647 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 219.391653 249.082747 \nL 219.391653 253.541657 \nL 229.883206 253.541657 \nL 229.883206 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(220.999317 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(228.293382 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 10 -->\n     <g transform=\"translate(228.293382 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 235.18144 \nL 234.866693 223.640732 \nL 242.735358 223.640732 \nL 242.735358 235.18144 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 228.099642 \nL 226.73574 232.558552 \nL 237.227293 232.558552 \nL 237.227293 228.099642 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 9 -->\n     <defs>\n      <path d=\"M 34.46875 42.09375 \nQ 34.46875 49.03125 31.203125 54.203125 \nQ 27.9375 59.375 22.75 59.375 \nQ 18.5625 59.375 15.53125 55.46875 \nQ 12.5 51.5625 12.5 45.21875 \nQ 12.5 38.875 15.71875 34.625 \nQ 18.953125 30.375 24.90625 30.375 \nQ 27.546875 30.375 29.984375 31.78125 \nQ 32.421875 33.203125 33.109375 34.765625 \nQ 34.375 37.703125 34.46875 42.09375 \nz\nM 24.3125 63.1875 \nQ 32.328125 63.1875 37.59375 56.890625 \nQ 42.875 50.59375 42.875 42.28125 \nQ 42.875 34.671875 39.75 27.390625 \nQ 36.625 20.125 31.6875 14.703125 \nQ 26.765625 9.28125 21.234375 5.328125 \nQ 15.71875 1.375 10.25 -0.59375 \nQ 9.671875 -0.59375 8.890625 0.578125 \nQ 8.109375 1.765625 8.109375 2.25 \nQ 15.625 5.171875 22.5625 11.859375 \nQ 29.5 18.5625 32.125 28.21875 \nQ 32.328125 29.203125 32.03125 29.203125 \nQ 31.84375 29.109375 31.734375 29 \nQ 30.671875 27.734375 27.25 26.65625 \nQ 23.828125 25.59375 21.1875 25.59375 \nQ 14.15625 25.59375 9.265625 30.859375 \nQ 4.390625 36.140625 4.390625 43.453125 \nQ 4.390625 51.5625 10.390625 57.375 \nQ 16.40625 63.1875 24.3125 63.1875 \nz\n\" id=\"CrimsonText-Regular-57\"></path>\n     </defs>\n     <g transform=\"translate(235.383225 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 9 -->\n     <g transform=\"translate(235.383225 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 214.198335 \nL 234.866693 202.657627 \nL 242.735358 202.657627 \nL 242.735358 214.198335 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 207.116537 \nL 226.73574 211.575447 \nL 237.227293 211.575447 \nL 237.227293 207.116537 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(235.383225 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 8 -->\n     <g transform=\"translate(235.383225 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 193.215229 \nL 234.866693 181.674521 \nL 242.735358 181.674521 \nL 242.735358 193.215229 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 186.133431 \nL 226.73574 190.592341 \nL 237.227293 190.592341 \nL 237.227293 186.133431 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 7 -->\n     <defs>\n      <path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n     </defs>\n     <g transform=\"translate(235.397288 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 7 -->\n     <g transform=\"translate(235.397288 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 172.232124 \nL 234.866693 160.691416 \nL 242.735358 160.691416 \nL 242.735358 172.232124 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 165.150326 \nL 226.73574 169.609236 \nL 237.227293 169.609236 \nL 237.227293 165.150326 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(235.383225 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 6 -->\n     <g transform=\"translate(235.383225 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 151.249019 \nL 234.866693 139.708311 \nL 242.735358 139.708311 \nL 242.735358 151.249019 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 144.16722 \nL 226.73574 148.62613 \nL 237.227293 148.62613 \nL 237.227293 144.16722 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 5 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n     </defs>\n     <g transform=\"translate(235.369163 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 5 -->\n     <g transform=\"translate(235.369163 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 130.265913 \nL 234.866693 118.725205 \nL 242.735358 118.725205 \nL 242.735358 130.265913 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 123.184115 \nL 226.73574 127.643025 \nL 237.227293 127.643025 \nL 237.227293 123.184115 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(235.41135 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 4 -->\n     <g transform=\"translate(235.41135 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 109.282808 \nL 234.866693 97.7421 \nL 242.735358 97.7421 \nL 242.735358 109.282808 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 102.20101 \nL 226.73574 106.65992 \nL 237.227293 106.65992 \nL 237.227293 102.20101 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 3 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(235.369163 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 3 -->\n     <g transform=\"translate(235.369163 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 88.299702 \nL 234.866693 76.758994 \nL 242.735358 76.758994 \nL 242.735358 88.299702 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 81.217904 \nL 226.73574 85.676814 \nL 237.227293 85.676814 \nL 237.227293 81.217904 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(235.383225 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 2 -->\n     <g transform=\"translate(235.383225 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 67.316597 \nL 234.866693 55.775889 \nL 242.735358 55.775889 \nL 242.735358 67.316597 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 60.234799 \nL 226.73574 64.693709 \nL 237.227293 64.693709 \nL 237.227293 60.234799 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 1 -->\n     <g transform=\"translate(235.383225 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 1 -->\n     <g transform=\"translate(235.383225 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 19.527574 48.431802 \nL 19.527574 52.628423 \nL 224.112852 52.628423 \nL 224.112852 48.431802 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_22\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 31.330571 55.251311 \nL 31.330571 43.710603 \nL 45.231879 43.710603 \nL 45.231879 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(23.758126 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_23\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 56.248009 55.251311 \nL 56.248009 43.710603 \nL 64.116673 43.710603 \nL 64.116673 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(49.200141 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 9 -->\n     <g transform=\"translate(56.502252 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 9 -->\n     <g transform=\"translate(56.502252 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_24\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 77.231114 55.251311 \nL 77.231114 43.710603 \nL 85.099779 43.710603 \nL 85.099779 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(70.183247 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 8 -->\n     <g transform=\"translate(77.485357 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 8 -->\n     <g transform=\"translate(77.485357 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_25\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 98.21422 55.251311 \nL 98.21422 43.710603 \nL 106.082884 43.710603 \nL 106.082884 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(91.166352 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 7 -->\n     <g transform=\"translate(98.482525 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 7 -->\n     <g transform=\"translate(98.482525 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_26\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 119.197325 55.251311 \nL 119.197325 43.710603 \nL 127.06599 43.710603 \nL 127.06599 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(112.149458 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_44\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 6 -->\n     <g transform=\"translate(119.451568 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_45\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 6 -->\n     <g transform=\"translate(119.451568 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_27\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 140.18043 55.251311 \nL 140.18043 43.710603 \nL 148.049095 43.710603 \nL 148.049095 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_46\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(133.132563 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_47\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 5 -->\n     <g transform=\"translate(140.420611 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_48\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 5 -->\n     <g transform=\"translate(140.420611 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_28\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 161.163536 55.251311 \nL 161.163536 43.710603 \nL 169.0322 43.710603 \nL 169.0322 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_49\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(154.115668 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_50\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 4 -->\n     <g transform=\"translate(161.445904 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_51\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 4 -->\n     <g transform=\"translate(161.445904 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_29\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 182.146641 55.251311 \nL 182.146641 43.710603 \nL 190.015306 43.710603 \nL 190.015306 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_52\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(175.098774 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_53\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 3 -->\n     <g transform=\"translate(182.386822 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_54\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 3 -->\n     <g transform=\"translate(182.386822 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_30\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 203.129747 55.251311 \nL 203.129747 43.710603 \nL 210.998411 43.710603 \nL 210.998411 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_55\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(196.081879 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_56\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 2 -->\n     <g transform=\"translate(203.38399 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_57\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 2 -->\n     <g transform=\"translate(203.38399 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_31\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 224.112852 55.251311 \nL 224.112852 43.710603 \nL 231.981516 43.710603 \nL 231.981516 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_58\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(217.064985 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_59\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 1 -->\n     <g transform=\"translate(224.367095 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_60\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 1 -->\n     <g transform=\"translate(224.367095 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_61\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(238.165046 50.415671)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_62\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(246.308562 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_63\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(262.592735 43.333872)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 98.015532 35.118674 \nL 249.817156 186.920298 \nL 249.817156 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 39.986102 228.886508 \nL 233.838038 35.034573 \nL 233.838038 35.034573 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p9a8873d17d\">\n   <rect height=\"260.82\" width=\"271.206637\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a system of 2 lines\" class=\"sr-only\"><ul><li>For the first line in the system:<br><ul><li>The line slants gradually down from left to right.</li><li>The line passes through the following points:<br><ul><li>(negative 7 comma 0)</li><li>(negative 4 comma negative 3)</li><li>(0 comma negative 7)</li></ul></li></ul></li><li>For the second line in the system:<br><ul><li>The line slants gradually up from left to right.</li><li>The line passes through the following points:<br><ul><li>(negative 5 comma negative 4)</li><li>(negative 4 comma negative 3)</li><li>(negative 3 comma negative 2)</li></ul></li></ul></li></ul></div></figure></p>\n<p style=\"text-align: left;\">The graph of a system of linear equations is shown. What is the solution&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> to the system?</p>","answerOptions":[{"id":"81f18ff3-c097-49d6-b9ad-936253e46782","content":"<p><math alttext=\"left parenthesis 0 comma negative 7 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mo>-</mo><mn>7</mn></mrow></mrow></mfenced></math></p>"},{"id":"3444b620-2604-4926-9705-f042c0ad2668","content":"<p><math alttext=\"left parenthesis 0 comma negative 3 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mo>-</mo><mn>3</mn></mrow></mrow></mfenced></math></p>"},{"id":"ef0e6064-529b-42e8-8549-2abeb4b95adf","content":"<p><math alttext=\"left parenthesis negative 4 comma negative 3 right parenthesis\"><mfenced><mrow><mrow><mo>-</mo><mn>4</mn></mrow><mo>,</mo><mrow><mo>-</mo><mn>3</mn></mrow></mrow></mfenced></math></p>"},{"id":"5554b465-a889-418c-bd31-a1ef0e3a6df6","content":"<p><math alttext=\"left parenthesis negative 4 comma 0 right parenthesis\"><mfenced><mrow><mrow><mo>-</mo><mn>4</mn></mrow><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"}],"keys":["ef0e6064-529b-42e8-8549-2abeb4b95adf"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. The solution to a system of linear equations is represented by the point that lies on the graph of each equation in the system, or the point where the lines intersect on a graph. On the graph shown, the two lines intersect at the point <math alttext=\"left parenthesis negative 4 comma negative 3 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>. Therefore, the solution to the system is <math alttext=\"left parenthesis negative 4 comma negative 3 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This is the <em>y</em>-intercept of the graph of one of the lines shown, not the intersection point of the two lines.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554988,"pPcc":"SAT#H","questionId":"5f46fc76","skill_cd":"H.D.","score_band_range_cd":1,"skill_desc":"Systems of two linear equations in two variables","createDate":1743430554988,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"ebe78c3d-d888-4a7c-8973-f50c7ec643f3","primary_class_cd":"H","uId":"e600d01c-14f4-4de9-91bf-97f733528331","difficulty":"E"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: center;\"><figure class='image'><svg height=\"275.22pt\" version=\"1.1\" viewBox=\"0 0 288.918319 275.22\" width=\"288.918319pt\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" role=\"img\" aria-label=\"Graph of a system of 2 lines in the x y plane with the origin labeled O. The x axis ranges from negative 10 to 0. The y axis ranges from negative 10 to 0. Refer to long description.\">\n <defs>\n  <style type=\"text/css\">\n*{stroke-linecap:butt;stroke-linejoin:round;}\n  </style>\n </defs>\n <g id=\"figure_1\">\n  <g id=\"patch_1\">\n   <path d=\"M 0 275.22 \nL 288.918319 275.22 \nL 288.918319 0 \nL 0 0 \nz\n\" style=\"fill:none;\"></path>\n  </g>\n  <g id=\"axes_1\">\n   <g id=\"patch_2\">\n    <path d=\"M 9.558319 260.46 \nL 281.718319 260.46 \nL 281.718319 10.98 \nL 9.558319 10.98 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_1\"></g>\n   <g id=\"matplotlib.axis_2\"></g>\n  </g>\n  <g id=\"axes_2\">\n   <g id=\"patch_3\">\n    <path d=\"M 7.2 268.02 \nL 278.406637 268.02 \nL 278.406637 7.2 \nL 7.2 7.2 \nz\n\" style=\"fill:none;\"></path>\n   </g>\n   <g id=\"matplotlib.axis_3\">\n    <g id=\"xtick_1\"></g>\n    <g id=\"xtick_2\"></g>\n    <g id=\"xtick_3\"></g>\n    <g id=\"xtick_4\"></g>\n    <g id=\"xtick_5\"></g>\n    <g id=\"xtick_6\"></g>\n   </g>\n   <g id=\"matplotlib.axis_4\">\n    <g id=\"ytick_1\"></g>\n    <g id=\"ytick_2\"></g>\n    <g id=\"ytick_3\"></g>\n    <g id=\"ytick_4\"></g>\n    <g id=\"ytick_5\"></g>\n    <g id=\"ytick_6\"></g>\n    <g id=\"ytick_7\"></g>\n    <g id=\"ytick_8\"></g>\n    <g id=\"ytick_9\"></g>\n    <g id=\"ytick_10\"></g>\n   </g>\n   <g id=\"LineCollection_1\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 39.986102 255.11539 \nL 39.986102 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 60.969208 255.11539 \nL 60.969208 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 81.952313 255.11539 \nL 81.952313 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 102.935418 255.11539 \nL 102.935418 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 123.918524 255.11539 \nL 123.918524 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 144.901629 255.11539 \nL 144.901629 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 165.884735 255.11539 \nL 165.884735 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 186.86784 255.11539 \nL 186.86784 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 207.850945 255.11539 \nL 207.850945 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 228.834051 255.11539 \nL 228.834051 34.792784 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 249.869614 \nL 255.062932 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 228.886508 \nL 255.062932 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 207.903403 \nL 255.062932 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 186.920298 \nL 255.062932 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 165.937192 \nL 255.062932 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 144.954087 \nL 255.062932 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 123.970981 \nL 255.062932 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 102.987876 \nL 255.062932 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 82.004771 \nL 255.062932 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 61.021665 \nL 255.062932 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.708982;\"></path>\n   </g>\n   <g id=\"LineCollection_2\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 34.740326 40.03856 \nL 260.308709 40.03856 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_1\">\n    <defs>\n     <path d=\"M 257.443461 -234.196989 \nL 260.308709 -235.18144 \nL 257.443461 -236.165891 \nL 257.443461 -234.196989 \nL 260.308709 -235.18144 \n\" id=\"m051a913d4d\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m051a913d4d\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_3\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 249.817156 255.11539 \nL 249.817156 29.547007 \n\" style=\"fill:none;stroke:#000000;stroke-width:1.949699;\"></path>\n   </g>\n   <g id=\"PathCollection_2\">\n    <defs>\n     <path d=\"M 250.831698 -242.098754 \nL 249.817156 -245.672993 \nL 248.802614 -242.098754 \nL 250.831698 -242.098754 \nL 249.817156 -245.672993 \n\" id=\"m24da031f69\" style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\"></path>\n    </defs>\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <use style=\"stroke:#000000;stroke-linejoin:miter;stroke-width:1.949699;\" x=\"0\" xlink:href=\"#m24da031f69\" y=\"275.22\"></use>\n    </g>\n   </g>\n   <g id=\"LineCollection_4\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 39.986102 43.903869 \nL 39.986102 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 60.969208 43.903869 \nL 60.969208 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 81.952313 43.903869 \nL 81.952313 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 102.935418 43.903869 \nL 102.935418 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 123.918524 43.903869 \nL 123.918524 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 144.901629 43.903869 \nL 144.901629 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 165.884735 43.903869 \nL 165.884735 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 186.86784 43.903869 \nL 186.86784 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 207.850945 43.903869 \nL 207.850945 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 228.834051 43.903869 \nL 228.834051 36.173251 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"LineCollection_5\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 249.869614 \nL 253.682465 249.869614 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 228.886508 \nL 253.682465 228.886508 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 207.903403 \nL 253.682465 207.903403 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 186.920298 \nL 253.682465 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 165.937192 \nL 253.682465 165.937192 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 144.954087 \nL 253.682465 144.954087 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 123.970981 \nL 253.682465 123.970981 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 102.987876 \nL 253.682465 102.987876 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 82.004771 \nL 253.682465 82.004771 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 245.951847 61.021665 \nL 253.682465 61.021665 \n\" style=\"fill:none;stroke:#000000;stroke-width:0.886227;\"></path>\n   </g>\n   <g id=\"PolyCollection_1\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 228.309473 256.164545 \nL 228.309473 244.623837 \nL 242.997647 244.623837 \nL 242.997647 256.164545 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_2\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 219.391653 249.082747 \nL 219.391653 253.541657 \nL 229.883206 253.541657 \nL 229.883206 249.082747 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_1\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <defs>\n      <path d=\"M 2.734375 20.40625 \nQ 2.734375 21.390625 3.078125 23.484375 \nQ 3.421875 25.59375 4.109375 25.59375 \nL 45.609375 25.59375 \nQ 46.1875 25.59375 46.1875 24.703125 \nQ 46.1875 23.734375 45.3125 20.21875 \nQ 45.21875 19.921875 45.0625 19.765625 \nQ 44.921875 19.625 44.734375 19.53125 \nL 44.625 19.53125 \nL 3.328125 19.53125 \nQ 3.328125 19.53125 2.9375 19.734375 \nQ 2.734375 20.015625 2.734375 20.40625 \nz\n\" id=\"CrimsonText-Regular-8211\"></path>\n     </defs>\n     <g transform=\"translate(220.999317 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_2\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 10 -->\n     <defs>\n      <path d=\"M 12.796875 48.4375 \nQ 12.203125 48.734375 11.609375 49.5625 \nQ 11.03125 50.390625 11.03125 50.875 \nQ 11.03125 51.265625 11.234375 51.46875 \nQ 27.734375 62.703125 28.125 62.703125 \nL 28.328125 62.703125 \nQ 29.109375 62.703125 29.5 60.84375 \nQ 28.515625 57.625 28.515625 51.65625 \nL 28.515625 13.1875 \nQ 28.515625 7.515625 29.296875 4.5 \nQ 29.5 3.8125 32.171875 3.171875 \nQ 34.859375 2.546875 35.84375 2.546875 \nQ 36.234375 2.546875 36.234375 0.78125 \nQ 36.234375 -0.09375 36.140625 -0.296875 \nQ 26.375 0.203125 24.3125 0.203125 \nQ 22.75 0.203125 12.984375 -0.296875 \nQ 12.59375 0.09375 12.59375 1.3125 \nQ 12.59375 2.546875 12.984375 2.546875 \nQ 14.265625 2.546875 16.9375 3.171875 \nQ 19.625 3.8125 19.828125 4.5 \nQ 20.40625 6.84375 20.40625 10.0625 \nL 20.40625 45.21875 \nQ 20.40625 48.046875 20.203125 49.515625 \nQ 20.015625 50.984375 19.765625 51.3125 \nQ 19.53125 51.65625 19.046875 51.65625 \nQ 18.453125 51.65625 17.328125 51.0625 \nQ 16.21875 50.484375 14.75 49.609375 \nQ 13.28125 48.734375 12.796875 48.4375 \nz\n\" id=\"CrimsonText-Regular-49\"></path>\n      <path d=\"M 10.9375 31.25 \nQ 10.9375 19.53125 14.359375 11.46875 \nQ 17.78125 3.421875 23.140625 3.421875 \nQ 29.390625 3.421875 32.859375 11.515625 \nQ 36.328125 19.625 36.328125 31.734375 \nQ 36.328125 43.359375 32.90625 51.125 \nQ 29.5 58.890625 24.125 58.890625 \nQ 18.171875 58.890625 14.546875 50.96875 \nQ 10.9375 43.0625 10.9375 31.25 \nz\nM 2.34375 31.15625 \nQ 2.34375 44.4375 8.109375 53.515625 \nQ 13.875 62.59375 23.640625 62.59375 \nQ 33.5 62.59375 39.203125 53.5625 \nQ 44.921875 44.53125 44.921875 31.15625 \nQ 44.921875 17.875 39.15625 8.78125 \nQ 33.40625 -0.296875 23.640625 -0.296875 \nQ 13.96875 -0.296875 8.15625 8.828125 \nQ 2.34375 17.96875 2.34375 31.15625 \nz\n\" id=\"CrimsonText-Regular-48\"></path>\n     </defs>\n     <g transform=\"translate(228.293382 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_3\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 10 -->\n     <g transform=\"translate(228.293382 254.608792)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_3\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 235.18144 \nL 234.866693 223.640732 \nL 242.735358 223.640732 \nL 242.735358 235.18144 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_4\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 228.099642 \nL 226.73574 232.558552 \nL 237.227293 232.558552 \nL 237.227293 228.099642 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_4\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_5\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 9 -->\n     <defs>\n      <path d=\"M 34.46875 42.09375 \nQ 34.46875 49.03125 31.203125 54.203125 \nQ 27.9375 59.375 22.75 59.375 \nQ 18.5625 59.375 15.53125 55.46875 \nQ 12.5 51.5625 12.5 45.21875 \nQ 12.5 38.875 15.71875 34.625 \nQ 18.953125 30.375 24.90625 30.375 \nQ 27.546875 30.375 29.984375 31.78125 \nQ 32.421875 33.203125 33.109375 34.765625 \nQ 34.375 37.703125 34.46875 42.09375 \nz\nM 24.3125 63.1875 \nQ 32.328125 63.1875 37.59375 56.890625 \nQ 42.875 50.59375 42.875 42.28125 \nQ 42.875 34.671875 39.75 27.390625 \nQ 36.625 20.125 31.6875 14.703125 \nQ 26.765625 9.28125 21.234375 5.328125 \nQ 15.71875 1.375 10.25 -0.59375 \nQ 9.671875 -0.59375 8.890625 0.578125 \nQ 8.109375 1.765625 8.109375 2.25 \nQ 15.625 5.171875 22.5625 11.859375 \nQ 29.5 18.5625 32.125 28.21875 \nQ 32.328125 29.203125 32.03125 29.203125 \nQ 31.84375 29.109375 31.734375 29 \nQ 30.671875 27.734375 27.25 26.65625 \nQ 23.828125 25.59375 21.1875 25.59375 \nQ 14.15625 25.59375 9.265625 30.859375 \nQ 4.390625 36.140625 4.390625 43.453125 \nQ 4.390625 51.5625 10.390625 57.375 \nQ 16.40625 63.1875 24.3125 63.1875 \nz\n\" id=\"CrimsonText-Regular-57\"></path>\n     </defs>\n     <g transform=\"translate(235.383225 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_6\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 9 -->\n     <g transform=\"translate(235.383225 233.625687)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_5\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 214.198335 \nL 234.866693 202.657627 \nL 242.735358 202.657627 \nL 242.735358 214.198335 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_6\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 207.116537 \nL 226.73574 211.575447 \nL 237.227293 211.575447 \nL 237.227293 207.116537 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_7\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_8\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 8 -->\n     <defs>\n      <path d=\"M 23.53125 2.640625 \nQ 28.421875 2.640625 31.25 5.5625 \nQ 34.078125 8.5 34.078125 13.484375 \nQ 34.078125 16.3125 32.421875 19.09375 \nQ 30.765625 21.875 28.21875 24.015625 \nQ 25.6875 26.171875 24.265625 27.140625 \nQ 22.859375 28.125 21.578125 28.8125 \nQ 21.1875 29 21 29 \nQ 20.703125 29 20.609375 28.90625 \nQ 16.5 26.375 14.6875 23.1875 \nQ 12.890625 20.015625 12.890625 15.328125 \nQ 12.890625 9.671875 16.109375 6.15625 \nQ 19.34375 2.640625 23.53125 2.640625 \nz\nM 23.53125 59.375 \nQ 19.921875 59.375 17.53125 56.25 \nQ 15.140625 53.125 15.140625 48.046875 \nQ 15.140625 41.40625 25.296875 35.546875 \nQ 25.6875 35.359375 25.875 35.359375 \nQ 26.171875 35.359375 26.46875 35.546875 \nQ 33.109375 39.9375 33.109375 47.46875 \nQ 33.109375 52.046875 30.421875 55.703125 \nQ 27.734375 59.375 23.53125 59.375 \nz\nM 24.125 62.796875 \nQ 30.859375 62.796875 35.5 58.734375 \nQ 40.140625 54.6875 40.140625 47.953125 \nQ 40.140625 40.53125 29.203125 33.59375 \nQ 28.515625 33.40625 29.203125 33.015625 \nQ 34.28125 30.078125 38.140625 25.625 \nQ 42 21.1875 42 16.3125 \nQ 42 9.078125 36.375 4.09375 \nQ 30.765625 -0.875 23.34375 -0.875 \nQ 15.234375 -0.875 10.203125 3.515625 \nQ 5.171875 7.90625 5.171875 15.046875 \nQ 5.171875 16.3125 5.46875 17.53125 \nQ 5.765625 18.75 6.109375 19.71875 \nQ 6.453125 20.703125 7.234375 21.828125 \nQ 8.015625 22.953125 8.546875 23.6875 \nQ 9.078125 24.421875 10.15625 25.390625 \nQ 11.234375 26.375 11.71875 26.8125 \nQ 12.203125 27.25 13.46875 28.125 \nQ 14.75 29 15.09375 29.25 \nQ 15.4375 29.5 16.609375 30.28125 \nL 17.875 31.0625 \nQ 18.359375 31.34375 17.875 31.640625 \nQ 14.0625 33.890625 10.984375 37.9375 \nQ 7.90625 42 7.90625 46.875 \nQ 7.90625 53.125 12.78125 57.953125 \nQ 17.671875 62.796875 24.125 62.796875 \nz\n\" id=\"CrimsonText-Regular-56\"></path>\n     </defs>\n     <g transform=\"translate(235.383225 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_9\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 8 -->\n     <g transform=\"translate(235.383225 212.642582)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_7\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 193.215229 \nL 234.866693 181.674521 \nL 242.735358 181.674521 \nL 242.735358 193.215229 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_8\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 186.133431 \nL 226.73574 190.592341 \nL 237.227293 190.592341 \nL 237.227293 186.133431 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_10\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_11\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 7 -->\n     <defs>\n      <path d=\"M 12.984375 54 \nQ 11.328125 54 10 52.625 \nQ 8.6875 51.265625 8.09375 49.890625 \nQ 7.515625 48.53125 6.84375 46.296875 \nQ 6.734375 45.90625 5.46875 45.796875 \nQ 4.203125 45.703125 3.515625 46 \nQ 3.71875 46.875 4.9375 52.484375 \nQ 6.15625 58.109375 6.546875 60.640625 \nQ 6.640625 61.8125 8.109375 61.8125 \nL 36.328125 61.8125 \nQ 37.890625 61.8125 40.328125 61.953125 \nQ 42.78125 62.109375 42.875 62.109375 \nQ 43.5625 62.109375 43.5625 61.234375 \nQ 43.5625 60.640625 43.171875 59.71875 \nQ 42.78125 58.796875 41.9375 57.125 \nQ 41.109375 55.46875 40.71875 54.6875 \nL 15.046875 -0.296875 \nQ 14.75 -0.59375 13.96875 -0.59375 \nQ 12.890625 -0.59375 11.71875 0.4375 \nQ 10.546875 1.46875 10.546875 2.15625 \nL 36.53125 54 \nz\n\" id=\"CrimsonText-Regular-55\"></path>\n     </defs>\n     <g transform=\"translate(235.397288 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_12\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 7 -->\n     <g transform=\"translate(235.397288 191.659476)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_9\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 172.232124 \nL 234.866693 160.691416 \nL 242.735358 160.691416 \nL 242.735358 172.232124 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_10\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 165.150326 \nL 226.73574 169.609236 \nL 237.227293 169.609236 \nL 237.227293 165.150326 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_13\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_14\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 6 -->\n     <defs>\n      <path d=\"M 12.703125 20.515625 \nQ 12.703125 13.671875 15.96875 8.4375 \nQ 19.234375 3.21875 24.125 3.21875 \nQ 28.421875 3.21875 31.640625 6.984375 \nQ 34.859375 10.75 34.859375 17 \nQ 34.859375 23.640625 31.6875 27.9375 \nQ 28.515625 32.234375 22.359375 32.234375 \nQ 19.734375 32.234375 17.28125 30.8125 \nQ 14.84375 29.390625 14.15625 27.828125 \nQ 12.796875 24.703125 12.703125 20.515625 \nz\nM 22.953125 -0.59375 \nQ 14.84375 -0.59375 9.5625 5.703125 \nQ 4.296875 12.015625 4.296875 20.3125 \nQ 4.296875 27.9375 7.328125 34.96875 \nQ 10.359375 42 15.484375 47.3125 \nQ 20.609375 52.640625 26.515625 56.59375 \nQ 32.421875 60.546875 39.0625 63.1875 \nQ 39.65625 63.1875 40.484375 62.109375 \nQ 41.3125 61.03125 41.3125 60.546875 \nQ 31.453125 56.25 24.5625 50.140625 \nQ 17.671875 44.046875 15.046875 34.375 \nQ 14.84375 33.40625 15.140625 33.40625 \nQ 15.328125 33.5 15.4375 33.59375 \nQ 16.796875 34.671875 20.359375 35.9375 \nQ 23.921875 37.203125 26.859375 37.203125 \nQ 33.6875 37.203125 38.328125 31.484375 \nQ 42.96875 25.78125 42.96875 19.046875 \nQ 42.96875 10.9375 36.90625 5.171875 \nQ 30.859375 -0.59375 22.953125 -0.59375 \nz\n\" id=\"CrimsonText-Regular-54\"></path>\n     </defs>\n     <g transform=\"translate(235.383225 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_15\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 6 -->\n     <g transform=\"translate(235.383225 170.676371)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_11\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 151.249019 \nL 234.866693 139.708311 \nL 242.735358 139.708311 \nL 242.735358 151.249019 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_12\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 144.16722 \nL 226.73574 148.62613 \nL 237.227293 148.62613 \nL 237.227293 144.16722 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_16\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_17\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 5 -->\n     <defs>\n      <path d=\"M 13.578125 60.84375 \nQ 32.8125 61.421875 36.53125 62.203125 \nQ 37.015625 61.53125 37.015625 60.15625 \nQ 37.015625 57.71875 36.421875 54.78125 \nQ 33.890625 54 25.390625 53.71875 \nL 16.890625 53.328125 \nQ 16.40625 53.21875 16.21875 52.546875 \nQ 15.140625 47.171875 13.375 36.921875 \nQ 16.609375 38.1875 22.5625 38.1875 \nQ 30.375 38.1875 36.078125 32.8125 \nQ 41.796875 27.4375 41.796875 20.125 \nQ 41.796875 11.140625 35.5 5.328125 \nQ 29.203125 -0.484375 19.625 -0.484375 \nQ 10.9375 -0.484375 6.546875 2.4375 \nQ 5.5625 3.125 5.5625 5.28125 \nQ 5.5625 9.859375 9.1875 9.859375 \nQ 10.0625 9.859375 10.984375 9.125 \nQ 11.921875 8.40625 13.03125 7.234375 \nQ 14.15625 6.0625 14.9375 5.46875 \nQ 17.78125 3.421875 22.75 3.421875 \nQ 26.859375 3.421875 30.125 6.890625 \nQ 33.40625 10.359375 33.40625 17.578125 \nQ 33.40625 20.125 32.71875 22.359375 \nQ 32.03125 24.609375 30.515625 26.796875 \nQ 29 29 26.0625 30.265625 \nQ 23.140625 31.546875 19.140625 31.546875 \nQ 14.0625 31.546875 10.640625 30.46875 \nQ 9.859375 30.859375 8.890625 31.84375 \nz\n\" id=\"CrimsonText-Regular-53\"></path>\n     </defs>\n     <g transform=\"translate(235.369163 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_18\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 5 -->\n     <g transform=\"translate(235.369163 149.693265)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_13\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 130.265913 \nL 234.866693 118.725205 \nL 242.735358 118.725205 \nL 242.735358 130.265913 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_14\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 123.184115 \nL 226.73574 127.643025 \nL 237.227293 127.643025 \nL 237.227293 123.184115 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_19\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_20\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 4 -->\n     <defs>\n      <path d=\"M 35.0625 62.984375 \nQ 36.328125 62.984375 36.328125 62.015625 \nL 36.328125 22.65625 \nL 42.390625 22.65625 \nQ 43.953125 22.65625 43.953125 17.96875 \nQ 43.953125 17.390625 43.359375 17 \nQ 43.359375 17 36.328125 17 \nL 36.328125 -0.09375 \nQ 36.03125 -0.59375 32.234375 -0.59375 \nQ 28.609375 -0.59375 28.609375 0.203125 \nL 28.609375 17 \nL 3.90625 17 \nQ 3.21875 17.875 3.21875 20.015625 \nL 32.8125 61.8125 \nQ 33.6875 62.984375 35.0625 62.984375 \nz\nM 28.609375 22.65625 \nL 28.609375 48.640625 \nQ 28.609375 49.515625 28.125 49.515625 \nQ 28.125 49.421875 28.03125 49.3125 \nL 10.25 23.828125 \nQ 10.15625 23.734375 10.15625 23.53125 \nQ 10.15625 22.65625 10.84375 22.65625 \nz\n\" id=\"CrimsonText-Regular-52\"></path>\n     </defs>\n     <g transform=\"translate(235.41135 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_21\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 4 -->\n     <g transform=\"translate(235.41135 128.71016)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_15\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 109.282808 \nL 234.866693 97.7421 \nL 242.735358 97.7421 \nL 242.735358 109.282808 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_16\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 102.20101 \nL 226.73574 106.65992 \nL 237.227293 106.65992 \nL 237.227293 102.20101 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_22\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_23\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 3 -->\n     <defs>\n      <path d=\"M 24.421875 62.703125 \nQ 28.609375 62.703125 32.46875 59.234375 \nQ 36.328125 55.765625 36.328125 50.203125 \nQ 36.328125 45.90625 34.21875 42.921875 \nQ 32.125 39.9375 28.21875 37.015625 \nQ 33.40625 35.15625 37.640625 30.859375 \nQ 41.890625 26.5625 41.890625 20.125 \nQ 41.890625 10.84375 35.34375 5.171875 \nQ 28.8125 -0.484375 19.140625 -0.484375 \nQ 10.84375 -0.484375 6.453125 2.4375 \nQ 5.46875 3.125 5.46875 5.28125 \nQ 5.46875 9.859375 9.078125 9.859375 \nQ 9.96875 9.859375 10.890625 9.125 \nQ 11.8125 8.40625 12.9375 7.234375 \nQ 14.0625 6.0625 14.84375 5.46875 \nQ 17.671875 3.421875 22.265625 3.421875 \nQ 26.5625 3.421875 30.03125 6.78125 \nQ 33.5 10.15625 33.5 17.578125 \nQ 33.5 23.34375 29.78125 27.34375 \nQ 26.078125 31.34375 21.09375 31.34375 \nQ 17.484375 31.34375 14.75 30.671875 \nQ 14.0625 31.546875 14.0625 33.203125 \nQ 14.0625 33.890625 14.265625 34.1875 \nQ 21 35.359375 25 38.875 \nQ 29 42.390625 29 48.4375 \nQ 29 51.765625 26.40625 54.34375 \nQ 23.828125 56.9375 20.515625 56.9375 \nQ 18.359375 56.9375 16.546875 56.203125 \nQ 14.75 55.46875 13.8125 54.6875 \nQ 12.890625 53.90625 12.015625 52.96875 \nQ 11.140625 52.046875 11.03125 51.953125 \nQ 10.640625 51.953125 10.25 52.875 \nQ 9.859375 53.8125 9.859375 54.5 \nQ 12.5 58.40625 15.8125 60.546875 \nQ 19.140625 62.703125 24.421875 62.703125 \nz\n\" id=\"CrimsonText-Regular-51\"></path>\n     </defs>\n     <g transform=\"translate(235.369163 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_24\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 3 -->\n     <g transform=\"translate(235.369163 107.727055)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_17\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 88.299702 \nL 234.866693 76.758994 \nL 242.735358 76.758994 \nL 242.735358 88.299702 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_18\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 81.217904 \nL 226.73574 85.676814 \nL 237.227293 85.676814 \nL 237.227293 81.217904 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_25\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_26\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 2 -->\n     <defs>\n      <path d=\"M 25 62.703125 \nQ 31.546875 62.703125 35.296875 57.8125 \nQ 39.0625 52.9375 39.0625 46.78125 \nQ 39.0625 43.171875 37.84375 39.3125 \nQ 36.625 35.453125 34.03125 31.4375 \nQ 31.453125 27.4375 29.34375 24.453125 \nQ 27.25 21.484375 23.53125 17.578125 \nQ 19.828125 13.671875 18.40625 12.203125 \nQ 17 10.75 13.875 7.71875 \nQ 13.578125 7.234375 14.0625 7.03125 \nL 32.90625 7.03125 \nQ 35.640625 7.03125 36.859375 8.59375 \nQ 38.09375 10.15625 39.359375 14.546875 \nQ 39.75 15.625 40.71875 15.625 \nQ 42 15.625 42.484375 15.234375 \nQ 40.140625 3.515625 39.84375 1.5625 \nQ 39.65625 0 37.890625 0 \nL 5.859375 0 \nQ 5.46875 0 5.125 1.125 \nQ 4.78125 2.25 4.78125 2.9375 \nQ 15.4375 13.671875 23.046875 25.234375 \nQ 30.671875 36.8125 30.671875 44.828125 \nQ 30.671875 50.09375 28.03125 52.96875 \nQ 25.390625 55.859375 21.09375 55.859375 \nQ 12.984375 55.859375 8.109375 47.75 \nQ 7.515625 47.75 6.875 48.390625 \nQ 6.25 49.03125 6.25 49.3125 \nQ 6.546875 50.484375 7.859375 52.484375 \nQ 9.1875 54.5 11.375 56.890625 \nQ 13.578125 59.28125 17.234375 60.984375 \nQ 20.90625 62.703125 25 62.703125 \nz\n\" id=\"CrimsonText-Regular-50\"></path>\n     </defs>\n     <g transform=\"translate(235.383225 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_27\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 2 -->\n     <g transform=\"translate(235.383225 86.743949)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_19\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 234.866693 67.316597 \nL 234.866693 55.775889 \nL 242.735358 55.775889 \nL 242.735358 67.316597 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_20\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 226.73574 60.234799 \nL 226.73574 64.693709 \nL 237.227293 64.693709 \nL 237.227293 60.234799 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_28\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(227.556537 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_29\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 1 -->\n     <g transform=\"translate(235.383225 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_30\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 1 -->\n     <g transform=\"translate(235.383225 65.760844)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_21\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 19.527574 48.431802 \nL 19.527574 52.628423 \nL 224.112852 52.628423 \nL 224.112852 48.431802 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"PolyCollection_22\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 31.330571 55.251311 \nL 31.330571 43.710603 \nL 45.231879 43.710603 \nL 45.231879 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_31\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(23.758126 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_32\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_33\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 10 -->\n     <g transform=\"translate(31.052191 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n      <use x=\"47.265625\" xlink:href=\"#CrimsonText-Regular-48\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_23\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 56.248009 55.251311 \nL 56.248009 43.710603 \nL 64.116673 43.710603 \nL 64.116673 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_34\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(49.200141 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_35\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 9 -->\n     <g transform=\"translate(56.502252 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_36\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 9 -->\n     <g transform=\"translate(56.502252 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-57\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_24\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 77.231114 55.251311 \nL 77.231114 43.710603 \nL 85.099779 43.710603 \nL 85.099779 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_37\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(70.183247 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_38\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 8 -->\n     <g transform=\"translate(77.485357 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_39\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 8 -->\n     <g transform=\"translate(77.485357 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-56\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_25\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 98.21422 55.251311 \nL 98.21422 43.710603 \nL 106.082884 43.710603 \nL 106.082884 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_40\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(91.166352 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_41\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 7 -->\n     <g transform=\"translate(98.482525 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_42\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 7 -->\n     <g transform=\"translate(98.482525 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-55\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_26\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 119.197325 55.251311 \nL 119.197325 43.710603 \nL 127.06599 43.710603 \nL 127.06599 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_43\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(112.149458 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_44\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 6 -->\n     <g transform=\"translate(119.451568 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_45\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 6 -->\n     <g transform=\"translate(119.451568 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-54\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_27\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 140.18043 55.251311 \nL 140.18043 43.710603 \nL 148.049095 43.710603 \nL 148.049095 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_46\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(133.132563 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_47\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 5 -->\n     <g transform=\"translate(140.420611 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_48\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 5 -->\n     <g transform=\"translate(140.420611 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-53\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_28\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 161.163536 55.251311 \nL 161.163536 43.710603 \nL 169.0322 43.710603 \nL 169.0322 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_49\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(154.115668 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_50\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 4 -->\n     <g transform=\"translate(161.445904 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_51\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 4 -->\n     <g transform=\"translate(161.445904 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-52\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_29\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 182.146641 55.251311 \nL 182.146641 43.710603 \nL 190.015306 43.710603 \nL 190.015306 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_52\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(175.098774 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_53\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 3 -->\n     <g transform=\"translate(182.386822 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_54\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 3 -->\n     <g transform=\"translate(182.386822 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-51\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_30\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 203.129747 55.251311 \nL 203.129747 43.710603 \nL 210.998411 43.710603 \nL 210.998411 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_55\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(196.081879 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_56\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 2 -->\n     <g transform=\"translate(203.38399 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_57\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 2 -->\n     <g transform=\"translate(203.38399 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-50\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"PolyCollection_31\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 224.112852 55.251311 \nL 224.112852 43.710603 \nL 231.981516 43.710603 \nL 231.981516 55.251311 \nz\n\" style=\"fill:#ffffff;\"></path>\n   </g>\n   <g id=\"text_58\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- – -->\n     <g transform=\"translate(217.064985 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-8211\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_59\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 1 -->\n     <g transform=\"translate(224.367095 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_60\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- 1 -->\n     <g transform=\"translate(224.367095 53.957847)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Regular-49\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_61\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- O -->\n     <defs>\n      <path d=\"M 39.9375 61.03125 \nQ 29.390625 61.03125 22.0625 50.140625 \nQ 14.75 39.265625 14.75 26.078125 \nQ 14.75 16.109375 19.09375 9.65625 \nQ 23.4375 3.21875 31.453125 3.21875 \nQ 41.609375 3.21875 49.03125 14.296875 \nQ 56.453125 25.390625 56.453125 38.578125 \nQ 56.453125 48.34375 52.15625 54.6875 \nQ 47.859375 61.03125 39.9375 61.03125 \nz\nM 42.1875 65.140625 \nQ 52.046875 65.140625 58.734375 57.765625 \nQ 65.4375 50.390625 65.4375 39.9375 \nQ 65.4375 29.390625 60.40625 19.921875 \nQ 55.375 10.453125 46.875 4.734375 \nQ 38.375 -0.984375 28.90625 -0.984375 \nQ 18.453125 -0.984375 12.15625 6.484375 \nQ 5.859375 13.96875 5.859375 25.296875 \nQ 5.859375 35.453125 11.234375 44.78125 \nQ 16.609375 54.109375 25 59.625 \nQ 33.40625 65.140625 42.1875 65.140625 \nz\n\" id=\"CrimsonText-Italic-79\"></path>\n     </defs>\n     <g transform=\"translate(238.165046 50.415671)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-79\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_62\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- y -->\n     <defs>\n      <path d=\"M 21.09375 42.484375 \nQ 24.03125 42.484375 25.921875 37.5 \nQ 27.828125 32.515625 28.515625 24.453125 \nQ 29.203125 16.40625 29.390625 11.859375 \nQ 29.59375 7.328125 29.59375 2.734375 \nQ 33.40625 7.421875 37.203125 14.6875 \nQ 41.015625 21.96875 41.015625 27.828125 \nQ 41.015625 33.59375 38.578125 38.28125 \nQ 39.84375 42.484375 43.453125 42.484375 \nQ 47.75 42.484375 47.75 34.765625 \nQ 47.75 24.03125 39.34375 10.109375 \nQ 30.953125 -3.8125 20.359375 -13.28125 \nQ 9.765625 -22.75 3.21875 -22.75 \nQ 0.6875 -22.75 -0.96875 -21.578125 \nQ -2.640625 -20.40625 -2.640625 -18.75 \nQ -2.640625 -15.625 -0.390625 -14.453125 \nQ 1.765625 -15.71875 6.15625 -15.71875 \nQ 14.265625 -15.71875 20.21875 -7.03125 \nQ 22.46875 -3.71875 22.46875 6.0625 \nQ 22.46875 10.84375 22.21875 15.578125 \nQ 21.96875 20.3125 21.328125 25.296875 \nQ 20.703125 30.28125 19.484375 33.34375 \nQ 18.265625 36.421875 16.609375 36.421875 \nQ 15.71875 36.421875 13.953125 34.765625 \nQ 12.203125 33.109375 11.234375 31.84375 \nQ 11.03125 31.84375 10.5 32.765625 \nQ 9.96875 33.6875 9.96875 34.078125 \nQ 10.546875 35.546875 14.59375 39.015625 \nQ 18.65625 42.484375 21.09375 42.484375 \nz\n\" id=\"CrimsonText-Italic-121\"></path>\n     </defs>\n     <g transform=\"translate(246.308562 22.350767)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-121\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"text_63\">\n    <g clip-path=\"url(#p9a8873d17d)\">\n     <!-- x -->\n     <defs>\n      <path d=\"M 20.3125 42.484375 \nQ 24.421875 42.484375 26.953125 33.984375 \nL 29 27.046875 \nL 34.765625 36.921875 \nQ 37.984375 42.484375 42.96875 42.484375 \nQ 46.296875 42.484375 48.640625 40.53125 \nQ 49.421875 38.96875 49.421875 37.984375 \nQ 49.421875 36.53125 48.390625 35.5 \nQ 47.359375 34.46875 46.296875 34.46875 \nQ 45.015625 34.46875 43.40625 35.984375 \nQ 41.796875 37.5 40.4375 37.5 \nQ 39.265625 37.5 37.796875 34.96875 \nL 30.46875 22.46875 \nL 34.671875 8.6875 \nQ 35.640625 5.375 37.3125 5.375 \nQ 38.765625 5.375 40.421875 6.890625 \nQ 42.09375 8.40625 42.78125 9.671875 \nQ 43.171875 9.671875 43.75 8.890625 \nQ 44.34375 8.109375 44.34375 7.71875 \nQ 44.046875 6.0625 40.71875 2.78125 \nQ 37.40625 -0.484375 34.375 -0.484375 \nQ 30.28125 -0.484375 27.734375 8.015625 \nL 25.484375 15.625 \nL 19.34375 4.984375 \nQ 16.109375 -0.59375 11.140625 -0.59375 \nQ 7.8125 -0.59375 5.46875 1.375 \nQ 4.6875 2.734375 4.6875 3.90625 \nQ 4.6875 5.375 5.703125 6.390625 \nQ 6.734375 7.421875 7.8125 7.421875 \nQ 9.078125 7.421875 10.6875 5.90625 \nQ 12.3125 4.390625 13.671875 4.390625 \nQ 14.84375 4.390625 16.3125 6.9375 \nL 24.03125 20.21875 \nL 20.015625 33.296875 \nQ 19.046875 36.625 17.390625 36.625 \nQ 15.921875 36.625 14.25 35.109375 \nQ 12.59375 33.59375 11.921875 32.328125 \nQ 11.53125 32.328125 10.9375 33.109375 \nQ 10.359375 33.890625 10.359375 34.28125 \nQ 10.640625 35.9375 13.953125 39.203125 \nQ 17.28125 42.484375 20.3125 42.484375 \nz\n\" id=\"CrimsonText-Italic-120\"></path>\n     </defs>\n     <g transform=\"translate(262.592735 43.333872)scale(0.15 -0.15)\">\n      <use xlink:href=\"#CrimsonText-Italic-120\"></use>\n     </g>\n    </g>\n   </g>\n   <g id=\"line2d_1\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 98.015532 35.118674 \nL 249.817156 186.920298 \nL 249.817156 186.920298 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n   <g id=\"line2d_2\">\n    <path clip-path=\"url(#p9a8873d17d)\" d=\"M 39.986102 228.886508 \nL 233.838038 35.034573 \nL 233.838038 35.034573 \n\" style=\"fill:none;stroke:#000000;stroke-linecap:square;stroke-width:2.3;\"></path>\n   </g>\n  </g>\n </g>\n <defs>\n  <clipPath id=\"p9a8873d17d\">\n   <rect height=\"260.82\" width=\"271.206637\" x=\"7.2\" y=\"7.2\"></rect>\n  </clipPath>\n </defs>\n</svg>\n<div role=\"region\" aria-label=\"Long description for graph of a system of 2 lines\" class=\"sr-only\"><ul><li>For the first line in the system:<br><ul><li>The line slants gradually down from left to right.</li><li>The line passes through the following points:<br><ul><li>(negative 7 comma 0)</li><li>(negative 4 comma negative 3)</li><li>(0 comma negative 7)</li></ul></li></ul></li><li>For the second line in the system:<br><ul><li>The line slants gradually up from left to right.</li><li>The line passes through the following points:<br><ul><li>(negative 5 comma negative 4)</li><li>(negative 4 comma negative 3)</li><li>(negative 3 comma negative 2)</li></ul></li></ul></li></ul></div></figure></p>\n<p style=\"text-align: left;\">The graph of a system of linear equations is shown. What is the solution&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> to the system?</p>","keys":["ef0e6064-529b-42e8-8549-2abeb4b95adf"],"answerOptions":[{"id":"81f18ff3-c097-49d6-b9ad-936253e46782","content":"<p><math alttext=\"left parenthesis 0 comma negative 7 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mo>-</mo><mn>7</mn></mrow></mrow></mfenced></math></p>"},{"id":"3444b620-2604-4926-9705-f042c0ad2668","content":"<p><math alttext=\"left parenthesis 0 comma negative 3 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mrow><mo>-</mo><mn>3</mn></mrow></mrow></mfenced></math></p>"},{"id":"ef0e6064-529b-42e8-8549-2abeb4b95adf","content":"<p><math alttext=\"left parenthesis negative 4 comma negative 3 right parenthesis\"><mfenced><mrow><mrow><mo>-</mo><mn>4</mn></mrow><mo>,</mo><mrow><mo>-</mo><mn>3</mn></mrow></mrow></mfenced></math></p>"},{"id":"5554b465-a889-418c-bd31-a1ef0e3a6df6","content":"<p><math alttext=\"left parenthesis negative 4 comma 0 right parenthesis\"><mfenced><mrow><mrow><mo>-</mo><mn>4</mn></mrow><mo>,</mo><mn>0</mn></mrow></mfenced></math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice C is correct. The solution to a system of linear equations is represented by the point that lies on the graph of each equation in the system, or the point where the lines intersect on a graph. On the graph shown, the two lines intersect at the point <math alttext=\"left parenthesis negative 4 comma negative 3 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>. Therefore, the solution to the system is <math alttext=\"left parenthesis negative 4 comma negative 3 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>3</mn></mrow></mfenced></math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This is the <em>y</em>-intercept of the graph of one of the lines shown, not the intersection point of the two lines.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"ebe78c3d-d888-4a7c-8973-f50c7ec643f3","correct_answer":["C"]},"createDate":1743430554988,"updateDate":1743430554988}$SATQ$::jsonb, 1743430554988, 1743430554988),
    ($SATQ$606cdce7$SATQ$, $SATQ$efb2f017-fd60-4d55-aa5b-bf7aa344524d$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<figure class="table"><table border="1">
<tbody>
<tr>
<th style="width: 47.6772%; text-align: center;" scope="col"><math alttext="x"><mi>x</mi>
</math></th>
<th style="width: 47.6772%; text-align: center;" scope="col"><math alttext="y"><mi>y</mi>
</math></th>
</tr>
<tr>
<td style="width: 47.6772%; text-align: center;"><math alttext="negative 6"><mo>-</mo><mn>6</mn>
</math></td>
<td style="width: 47.6772%; text-align: center;"><math alttext="65"><mn>65</mn>
</math></td>
</tr>
<tr>
<td style="width: 47.6772%; text-align: center;"><math alttext="negative 3"><mo>-</mo><mn>3</mn>
</math></td>
<td style="width: 47.6772%; text-align: center;"><math alttext="56"><mn>56</mn>
</math></td>
</tr>
<tr>
<td style="width: 47.6772%; text-align: center;"><math alttext="3"><mn>3</mn>
</math></td>
<td style="width: 47.6772%; text-align: center;"><math alttext="38"><mn>38</mn>
</math></td>
</tr>
<tr>
<td style="width: 47.6772%; text-align: center;"><math alttext="6"><mn>6</mn>
</math></td>
<td style="width: 47.6772%; text-align: center;"><math alttext="29"><mn>29</mn>
</math></td>
</tr>
</tbody>
</table></figure>
<p style="text-align: left;">The table shows four values of <math alttext="x"><mi>x</mi>
</math> and their corresponding values of <math alttext="y"><mi>y</mi>
</math>. There is a linear relationship between <math alttext="x"><mi>x</mi>
</math> and <math alttext="y"><mi>y</mi>
</math>. Which of the following equations represents this relationship?</p>$SATQ$, $SATQ$[{"id":"a4562b00-80f3-4ce8-bbc9-313187c616b2","content":"<p><math alttext=\"9 x plus 3 y equals 141\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>141</mn>\n</mrow>\n</math></p>"},{"id":"69dfd322-ca0e-4c1f-a908-e93680a7c9e9","content":"<p><math alttext=\"9 x plus 3 y equals 3\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>3</mn>\n</mrow>\n</math></p>"},{"id":"6fa219ca-13a3-4ccd-a467-e9849233761a","content":"<p><math alttext=\"3 x plus 9 y equals 141\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>141</mn>\n</mrow>\n</math></p>"},{"id":"b48d760f-e7b4-45d8-83cb-b1576b35c18e","content":"<p><math alttext=\"3 x plus 9 y equals 3\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>3</mn>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["a4562b00-80f3-4ce8-bbc9-313187c616b2"]$SATQ$::jsonb, $SATQ$<p>Choice A is correct. An equation representing the linear relationship between&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x"><mi>x</mi></math> and&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y"><mi>y</mi></math> can be written in slope-intercept form <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y equals m x plus b"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="m"><mi>m</mi></math> is the slope of the graph of the equation in the <em>xy</em>-plane and&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis 0 comma b right parenthesis"><mo>(</mo><mn>0</mn><mo>,</mo><mi>b</mi><mo>)</mo></math> is the <em>y</em>-intercept. The slope, <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="m"><mi>m</mi></math>, can be calculated using two ordered pairs,&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis x 1 comma y 1 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis x 2 comma y 2 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, and the formula <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="m equals StartFraction y 2 minus y 1 Over x 2 minus x 1 EndFraction"><mi>m</mi><mo>=</mo><mfrac><mrow><msub><mi>y</mi><mn>2</mn></msub><mo>-</mo><msub><mi>y</mi><mn>1</mn></msub></mrow><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>-</mo><msub><mi>x</mi><mn>1</mn></msub></mrow></mfrac></math>. Substituting the ordered pairs&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis negative 6 comma 65 right parenthesis"><mo>(</mo><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn><mo>)</mo></math> and&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis 6 comma 29 right parenthesis"><mo>(</mo><mn>6</mn><mo>,</mo><mn>29</mn><mo>)</mo></math> from the table for <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis x 1 comma y 1 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math>&nbsp;and <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis x 2 comma y 2 right parenthesis"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, respectively, in this formula yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="m equals StartFraction 29 minus 65 Over 6 minus left parenthesis negative 6 right parenthesis EndFraction"><mi>m</mi><mo>=</mo><mfrac><mrow><mn>29</mn><mo>-</mo><mn>65</mn></mrow><mrow><mn>6</mn><mo>-</mo><mo>(</mo><mo>-</mo><mn>6</mn><mo>)</mo></mrow></mfrac></math>, which is equivalent to <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="m equals StartFraction negative 36 Over 12 EndFraction"><mi>m</mi><mo>=</mo><mfrac><mrow><mo>-</mo><mn>36</mn></mrow><mn>12</mn></mfrac></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="m equals negative 3"><mi>m</mi><mo>=</mo><mo>-</mo><mn>3</mn></math>. Substituting&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="negative 3"><mo>-</mo><mn>3</mn></math> for&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="m"><mi>m</mi></math> in the formula&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y equals m x plus b"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y equals minus 3 x plus b"><mi>y</mi><mo>=</mo><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mi>b</mi></math>. Substituting the point&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis negative 6 comma 65 right parenthesis"><mo>(</mo><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn><mo>)</mo></math> into this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="65 equals minus 3 left parenthesis negative 6 right parenthesis plus b"><mn>65</mn><mo>=</mo><mo>-</mo><mn>3</mn><mo>(</mo><mo>-</mo><mn>6</mn><mo>)</mo><mo>+</mo><mi>b</mi></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="65 equals 18 plus b"><mn>65</mn><mo>=</mo><mn>18</mn><mo>+</mo><mi>b</mi></math>. Subtracting&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="18"><mn>18</mn></math> from both sides of this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="47 equals b"><mn>47</mn><mo>=</mo><mi>b</mi></math>. Substituting&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="47"><mn>47</mn></math> for&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="b"><mi>b</mi></math> in the equation&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y equals minus 3 x plus b"><mi>y</mi><mo>=</mo><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mi>b</mi></math> yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y equals minus 3 x plus 47"><mi>y</mi><mo>=</mo><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>47</mn></math>. Adding&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3 x"><mn>3</mn><mi>x</mi></math> to both sides of this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3 x plus y equals 47"><mn>3</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>47</mn></math>. Multiplying both sides of this equation by&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3"><mn>3</mn></math> yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="9 x plus 3 y equals 141"><mn>9</mn><mi>x</mi><mo>+</mo><mn>3</mn><mi>y</mi><mo>=</mo><mn>141</mn></math>.</p>
<p style="text-align: left;">Choice B is incorrect. Substituting the point <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis negative 6 comma 65 right parenthesis"><mo>(</mo><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn><mo>)</mo></math> from the table into this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="9 left parenthesis negative 6 right parenthesis plus 3 left parenthesis 65 right parenthesis equals 3"><mn>9</mn><mo>(</mo><mo>-</mo><mn>6</mn><mo>)</mo><mo>+</mo><mn>3</mn><mo>(</mo><mn>65</mn><mo>)</mo><mo>=</mo><mn>3</mn></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="141 equals 3"><mn>141</mn><mo>=</mo><mn>3</mn></math>, which is false.</p>
<p style="text-align: left;">Choice C is incorrect. Substituting the point <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis negative 6 comma 65 right parenthesis"><mfenced><mrow><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn></mrow></mfenced></math> from the table into this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3 left parenthesis negative 6 right parenthesis plus 9 left parenthesis 65 right parenthesis equals 141"><mn>3</mn><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mo>+</mo><mn>9</mn><mfenced><mn>65</mn></mfenced><mo>=</mo><mn>141</mn></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="567 equals 141"><mn>567</mn><mo>=</mo><mn>141</mn></math>, which is false.</p>
<p style="text-align: left;">Choice D is incorrect. Substituting the point <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis negative 6 comma 65 right parenthesis"><mfenced><mrow><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn></mrow></mfenced></math> from the table into this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3 left parenthesis negative 6 right parenthesis plus 9 left parenthesis 65 right parenthesis equals 3"><mn>3</mn><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mo>+</mo><mn>9</mn><mfenced><mn>65</mn></mfenced><mo>=</mo><mn>3</mn></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="567 equals 3"><mn>567</mn><mo>=</mo><mn>3</mn></math>, which is false.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"606cdce7","external_id":"efb2f017-fd60-4d55-aa5b-bf7aa344524d","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"587d84a2-4b74-448a-b000-5db2cc1a5664","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<figure class=\"table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"width: 47.6772%; text-align: center;\" scope=\"col\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"width: 47.6772%; text-align: center;\" scope=\"col\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"negative 6\"><mo>-</mo><mn>6</mn>\n</math></td>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"65\"><mn>65</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math></td>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"56\"><mn>56</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"38\"><mn>38</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"6\"><mn>6</mn>\n</math></td>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"29\"><mn>29</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>\n<p style=\"text-align: left;\">The table shows four values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"y\"><mi>y</mi>\n</math>. There is a linear relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>. Which of the following equations represents this relationship?</p>","answerOptions":[{"id":"a4562b00-80f3-4ce8-bbc9-313187c616b2","content":"<p><math alttext=\"9 x plus 3 y equals 141\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>141</mn>\n</mrow>\n</math></p>"},{"id":"69dfd322-ca0e-4c1f-a908-e93680a7c9e9","content":"<p><math alttext=\"9 x plus 3 y equals 3\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>3</mn>\n</mrow>\n</math></p>"},{"id":"6fa219ca-13a3-4ccd-a467-e9849233761a","content":"<p><math alttext=\"3 x plus 9 y equals 141\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>141</mn>\n</mrow>\n</math></p>"},{"id":"b48d760f-e7b4-45d8-83cb-b1576b35c18e","content":"<p><math alttext=\"3 x plus 9 y equals 3\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>3</mn>\n</mrow>\n</math></p>"}],"keys":["a4562b00-80f3-4ce8-bbc9-313187c616b2"],"correct_answer":["A"],"rationale":"<p>Choice A is correct. An equation representing the linear relationship between&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> and&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> can be written in slope-intercept form <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m\"><mi>m</mi></math> is the slope of the graph of the equation in the <em>xy</em>-plane and&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 0 comma b right parenthesis\"><mo>(</mo><mn>0</mn><mo>,</mo><mi>b</mi><mo>)</mo></math> is the <em>y</em>-intercept. The slope, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m\"><mi>m</mi></math>, can be calculated using two ordered pairs,&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, and the formula <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m equals StartFraction y 2 minus y 1 Over x 2 minus x 1 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><msub><mi>y</mi><mn>2</mn></msub><mo>-</mo><msub><mi>y</mi><mn>1</mn></msub></mrow><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>-</mo><msub><mi>x</mi><mn>1</mn></msub></mrow></mfrac></math>. Substituting the ordered pairs&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 6 comma 65 right parenthesis\"><mo>(</mo><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn><mo>)</mo></math> and&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 6 comma 29 right parenthesis\"><mo>(</mo><mn>6</mn><mo>,</mo><mn>29</mn><mo>)</mo></math> from the table for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math>&nbsp;and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, respectively, in this formula yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m equals StartFraction 29 minus 65 Over 6 minus left parenthesis negative 6 right parenthesis EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><mn>29</mn><mo>-</mo><mn>65</mn></mrow><mrow><mn>6</mn><mo>-</mo><mo>(</mo><mo>-</mo><mn>6</mn><mo>)</mo></mrow></mfrac></math>, which is equivalent to <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m equals StartFraction negative 36 Over 12 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><mo>-</mo><mn>36</mn></mrow><mn>12</mn></mfrac></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m equals negative 3\"><mi>m</mi><mo>=</mo><mo>-</mo><mn>3</mn></math>. Substituting&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"negative 3\"><mo>-</mo><mn>3</mn></math> for&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m\"><mi>m</mi></math> in the formula&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals minus 3 x plus b\"><mi>y</mi><mo>=</mo><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mi>b</mi></math>. Substituting the point&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 6 comma 65 right parenthesis\"><mo>(</mo><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn><mo>)</mo></math> into this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"65 equals minus 3 left parenthesis negative 6 right parenthesis plus b\"><mn>65</mn><mo>=</mo><mo>-</mo><mn>3</mn><mo>(</mo><mo>-</mo><mn>6</mn><mo>)</mo><mo>+</mo><mi>b</mi></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"65 equals 18 plus b\"><mn>65</mn><mo>=</mo><mn>18</mn><mo>+</mo><mi>b</mi></math>. Subtracting&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"18\"><mn>18</mn></math> from both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"47 equals b\"><mn>47</mn><mo>=</mo><mi>b</mi></math>. Substituting&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"47\"><mn>47</mn></math> for&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"b\"><mi>b</mi></math> in the equation&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals minus 3 x plus b\"><mi>y</mi><mo>=</mo><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mi>b</mi></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals minus 3 x plus 47\"><mi>y</mi><mo>=</mo><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>47</mn></math>. Adding&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3 x\"><mn>3</mn><mi>x</mi></math> to both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3 x plus y equals 47\"><mn>3</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>47</mn></math>. Multiplying both sides of this equation by&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3\"><mn>3</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9 x plus 3 y equals 141\"><mn>9</mn><mi>x</mi><mo>+</mo><mn>3</mn><mi>y</mi><mo>=</mo><mn>141</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. Substituting the point <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 6 comma 65 right parenthesis\"><mo>(</mo><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn><mo>)</mo></math> from the table into this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9 left parenthesis negative 6 right parenthesis plus 3 left parenthesis 65 right parenthesis equals 3\"><mn>9</mn><mo>(</mo><mo>-</mo><mn>6</mn><mo>)</mo><mo>+</mo><mn>3</mn><mo>(</mo><mn>65</mn><mo>)</mo><mo>=</mo><mn>3</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"141 equals 3\"><mn>141</mn><mo>=</mo><mn>3</mn></math>, which is false.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. Substituting the point <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 6 comma 65 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn></mrow></mfenced></math> from the table into this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3 left parenthesis negative 6 right parenthesis plus 9 left parenthesis 65 right parenthesis equals 141\"><mn>3</mn><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mo>+</mo><mn>9</mn><mfenced><mn>65</mn></mfenced><mo>=</mo><mn>141</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"567 equals 141\"><mn>567</mn><mo>=</mo><mn>141</mn></math>, which is false.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. Substituting the point <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 6 comma 65 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn></mrow></mfenced></math> from the table into this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3 left parenthesis negative 6 right parenthesis plus 9 left parenthesis 65 right parenthesis equals 3\"><mn>3</mn><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mo>+</mo><mn>9</mn><mfenced><mn>65</mn></mfenced><mo>=</mo><mn>3</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"567 equals 3\"><mn>567</mn><mo>=</mo><mn>3</mn></math>, which is false.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1755117017725,"pPcc":"SAT#H","questionId":"606cdce7","skill_cd":"H.C.","score_band_range_cd":4,"skill_desc":"Linear equations in two variables","createDate":1755117017725,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"efb2f017-fd60-4d55-aa5b-bf7aa344524d","primary_class_cd":"H","uId":"587d84a2-4b74-448a-b000-5db2cc1a5664","difficulty":"M"},"raw_detail":{"type":"mcq","stem":"<figure class=\"table\"><table border=\"1\">\n<tbody>\n<tr>\n<th style=\"width: 47.6772%; text-align: center;\" scope=\"col\"><math alttext=\"x\"><mi>x</mi>\n</math></th>\n<th style=\"width: 47.6772%; text-align: center;\" scope=\"col\"><math alttext=\"y\"><mi>y</mi>\n</math></th>\n</tr>\n<tr>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"negative 6\"><mo>-</mo><mn>6</mn>\n</math></td>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"65\"><mn>65</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"negative 3\"><mo>-</mo><mn>3</mn>\n</math></td>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"56\"><mn>56</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"3\"><mn>3</mn>\n</math></td>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"38\"><mn>38</mn>\n</math></td>\n</tr>\n<tr>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"6\"><mn>6</mn>\n</math></td>\n<td style=\"width: 47.6772%; text-align: center;\"><math alttext=\"29\"><mn>29</mn>\n</math></td>\n</tr>\n</tbody>\n</table></figure>\n<p style=\"text-align: left;\">The table shows four values of <math alttext=\"x\"><mi>x</mi>\n</math> and their corresponding values of <math alttext=\"y\"><mi>y</mi>\n</math>. There is a linear relationship between <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"y\"><mi>y</mi>\n</math>. Which of the following equations represents this relationship?</p>","keys":["a4562b00-80f3-4ce8-bbc9-313187c616b2"],"answerOptions":[{"id":"a4562b00-80f3-4ce8-bbc9-313187c616b2","content":"<p><math alttext=\"9 x plus 3 y equals 141\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>141</mn>\n</mrow>\n</math></p>"},{"id":"69dfd322-ca0e-4c1f-a908-e93680a7c9e9","content":"<p><math alttext=\"9 x plus 3 y equals 3\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>3</mn>\n</mrow>\n</math></p>"},{"id":"6fa219ca-13a3-4ccd-a467-e9849233761a","content":"<p><math alttext=\"3 x plus 9 y equals 141\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>141</mn>\n</mrow>\n</math></p>"},{"id":"b48d760f-e7b4-45d8-83cb-b1576b35c18e","content":"<p><math alttext=\"3 x plus 9 y equals 3\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>3</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>9</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>3</mn>\n</mrow>\n</math></p>"}],"rationale":"<p>Choice A is correct. An equation representing the linear relationship between&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> and&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> can be written in slope-intercept form <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m\"><mi>m</mi></math> is the slope of the graph of the equation in the <em>xy</em>-plane and&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 0 comma b right parenthesis\"><mo>(</mo><mn>0</mn><mo>,</mo><mi>b</mi><mo>)</mo></math> is the <em>y</em>-intercept. The slope, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m\"><mi>m</mi></math>, can be calculated using two ordered pairs,&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, and the formula <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m equals StartFraction y 2 minus y 1 Over x 2 minus x 1 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><msub><mi>y</mi><mn>2</mn></msub><mo>-</mo><msub><mi>y</mi><mn>1</mn></msub></mrow><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>-</mo><msub><mi>x</mi><mn>1</mn></msub></mrow></mfrac></math>. Substituting the ordered pairs&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 6 comma 65 right parenthesis\"><mo>(</mo><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn><mo>)</mo></math> and&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis 6 comma 29 right parenthesis\"><mo>(</mo><mn>6</mn><mo>,</mo><mn>29</mn><mo>)</mo></math> from the table for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x 1 comma y 1 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>1</mn></msub><mo>,</mo><msub><mi>y</mi><mn>1</mn></msub></mrow></mfenced></math>&nbsp;and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x 2 comma y 2 right parenthesis\"><mfenced><mrow><msub><mi>x</mi><mn>2</mn></msub><mo>,</mo><msub><mi>y</mi><mn>2</mn></msub></mrow></mfenced></math>, respectively, in this formula yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m equals StartFraction 29 minus 65 Over 6 minus left parenthesis negative 6 right parenthesis EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><mn>29</mn><mo>-</mo><mn>65</mn></mrow><mrow><mn>6</mn><mo>-</mo><mo>(</mo><mo>-</mo><mn>6</mn><mo>)</mo></mrow></mfrac></math>, which is equivalent to <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m equals StartFraction negative 36 Over 12 EndFraction\"><mi>m</mi><mo>=</mo><mfrac><mrow><mo>-</mo><mn>36</mn></mrow><mn>12</mn></mfrac></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m equals negative 3\"><mi>m</mi><mo>=</mo><mo>-</mo><mn>3</mn></math>. Substituting&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"negative 3\"><mo>-</mo><mn>3</mn></math> for&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"m\"><mi>m</mi></math> in the formula&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals minus 3 x plus b\"><mi>y</mi><mo>=</mo><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mi>b</mi></math>. Substituting the point&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 6 comma 65 right parenthesis\"><mo>(</mo><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn><mo>)</mo></math> into this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"65 equals minus 3 left parenthesis negative 6 right parenthesis plus b\"><mn>65</mn><mo>=</mo><mo>-</mo><mn>3</mn><mo>(</mo><mo>-</mo><mn>6</mn><mo>)</mo><mo>+</mo><mi>b</mi></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"65 equals 18 plus b\"><mn>65</mn><mo>=</mo><mn>18</mn><mo>+</mo><mi>b</mi></math>. Subtracting&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"18\"><mn>18</mn></math> from both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"47 equals b\"><mn>47</mn><mo>=</mo><mi>b</mi></math>. Substituting&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"47\"><mn>47</mn></math> for&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"b\"><mi>b</mi></math> in the equation&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals minus 3 x plus b\"><mi>y</mi><mo>=</mo><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mi>b</mi></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals minus 3 x plus 47\"><mi>y</mi><mo>=</mo><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>47</mn></math>. Adding&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3 x\"><mn>3</mn><mi>x</mi></math> to both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3 x plus y equals 47\"><mn>3</mn><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>47</mn></math>. Multiplying both sides of this equation by&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3\"><mn>3</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9 x plus 3 y equals 141\"><mn>9</mn><mi>x</mi><mo>+</mo><mn>3</mn><mi>y</mi><mo>=</mo><mn>141</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. Substituting the point <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 6 comma 65 right parenthesis\"><mo>(</mo><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn><mo>)</mo></math> from the table into this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"9 left parenthesis negative 6 right parenthesis plus 3 left parenthesis 65 right parenthesis equals 3\"><mn>9</mn><mo>(</mo><mo>-</mo><mn>6</mn><mo>)</mo><mo>+</mo><mn>3</mn><mo>(</mo><mn>65</mn><mo>)</mo><mo>=</mo><mn>3</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"141 equals 3\"><mn>141</mn><mo>=</mo><mn>3</mn></math>, which is false.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. Substituting the point <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 6 comma 65 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn></mrow></mfenced></math> from the table into this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3 left parenthesis negative 6 right parenthesis plus 9 left parenthesis 65 right parenthesis equals 141\"><mn>3</mn><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mo>+</mo><mn>9</mn><mfenced><mn>65</mn></mfenced><mo>=</mo><mn>141</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"567 equals 141\"><mn>567</mn><mo>=</mo><mn>141</mn></math>, which is false.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. Substituting the point <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 6 comma 65 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>6</mn><mo>,</mo><mn>65</mn></mrow></mfenced></math> from the table into this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3 left parenthesis negative 6 right parenthesis plus 9 left parenthesis 65 right parenthesis equals 3\"><mn>3</mn><mfenced><mrow><mo>-</mo><mn>6</mn></mrow></mfenced><mo>+</mo><mn>9</mn><mfenced><mn>65</mn></mfenced><mo>=</mo><mn>3</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"567 equals 3\"><mn>567</mn><mo>=</mo><mn>3</mn></math>, which is false.</p>","externalid":"efb2f017-fd60-4d55-aa5b-bf7aa344524d","correct_answer":["A"]},"createDate":1755117017725,"updateDate":1755117017725}$SATQ$::jsonb, 1755117017725, 1755117017725),
    ($SATQ$608eeb6e$SATQ$, $SATQ$632affe2-9dad-466c-b099-d98aa7c13b20$SATQ$::uuid, $SATQ$4ea9acca-0d3e-43d1-a363-0835991f7d86$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$E$SATQ$, 3, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="5 x equals 15"><mrow>
	<mrow>
		<mn>5</mn>
		<mi>x</mi>
	</mrow>
	<mo>=</mo>
	<mn>15</mn>
</mrow>
</math></p>
<p style="text-align: center;"><math alttext="minus 4 x plus y equals negative 2"><mrow>
	<mrow>
		<mrow>
			<mo>-</mo>
			<mn>4</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mi>y</mi>
	</mrow>
	<mo>=</mo>
	<mo>-</mo><mn>2</mn>
</mrow>
</math></p>
<p style="text-align: left;">The solution to the given system of equations is <math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext="x plus y"><mrow>
	<mi>x</mi>
	<mo>+</mo>
	<mi>y</mi>
</mrow>
</math>?</p>$SATQ$, $SATQ$[{"id":"1087ff86-10fb-4df4-b169-1a2f9f97e16d","content":"<p><math alttext=\"negative 17\"><mo>-</mo><mn>17</mn>\n</math></p>"},{"id":"51186499-e3a1-4122-b34a-1f775f3ff93e","content":"<p><math alttext=\"negative 13\"><mo>-</mo><mn>13</mn>\n</math></p>"},{"id":"512066c6-d2c3-4fd2-9d72-94970781f12e","content":"<p><math alttext=\"13\"><mn>13</mn>\n</math></p>"},{"id":"56d4637c-0b4d-4146-8945-c019d723385f","content":"<p><math alttext=\"17\"><mn>17</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["512066c6-d2c3-4fd2-9d72-94970781f12e"]$SATQ$::jsonb, $SATQ$<p>Choice C is correct. Adding the second equation of the given system to the first equation yields&nbsp;<math alttext="5 x plus left parenthesis minus 4 x plus y right parenthesis equals 15 plus left parenthesis negative 2 right parenthesis"><mn>5</mn><mi>x</mi><mo>+</mo><mfenced><mrow><mo>-</mo><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi></mrow></mfenced><mo>=</mo><mn>15</mn><mo>+</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced></math>, which is equivalent to&nbsp;<math alttext="x plus y equals 13"><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>13</mn></math>. So the value of&nbsp;<math alttext="x plus y"><mi>x</mi><mo>+</mo><mi>y</mi></math> is <math alttext="13"><mn>13</mn>
</math>.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice B is incorrect. This is the value of <math alttext="minus left parenthesis x plus y right parenthesis"><mo>-</mo><mo>(</mo><mi>x</mi><mo>+</mo><mi>y</mi><mo>)</mo></math>.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"608eeb6e","external_id":"632affe2-9dad-466c-b099-d98aa7c13b20","disclosed_item_id":null,"source":"qbank","vaultid":"4ea9acca-0d3e-43d1-a363-0835991f7d86","uId":"0e4f8e37-c9cb-4b62-bae8-f6e516dd744b","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"E","score_band_range_cd":3,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"5 x equals 15\"><mrow>\n\t<mrow>\n\t\t<mn>5</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>15</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: center;\"><math alttext=\"minus 4 x plus y equals negative 2\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>4</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>2</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"x plus y\"><mrow>\n\t<mi>x</mi>\n\t<mo>+</mo>\n\t<mi>y</mi>\n</mrow>\n</math>?</p>","answerOptions":[{"id":"1087ff86-10fb-4df4-b169-1a2f9f97e16d","content":"<p><math alttext=\"negative 17\"><mo>-</mo><mn>17</mn>\n</math></p>"},{"id":"51186499-e3a1-4122-b34a-1f775f3ff93e","content":"<p><math alttext=\"negative 13\"><mo>-</mo><mn>13</mn>\n</math></p>"},{"id":"512066c6-d2c3-4fd2-9d72-94970781f12e","content":"<p><math alttext=\"13\"><mn>13</mn>\n</math></p>"},{"id":"56d4637c-0b4d-4146-8945-c019d723385f","content":"<p><math alttext=\"17\"><mn>17</mn>\n</math></p>"}],"keys":["512066c6-d2c3-4fd2-9d72-94970781f12e"],"correct_answer":["C"],"rationale":"<p>Choice C is correct. Adding the second equation of the given system to the first equation yields&nbsp;<math alttext=\"5 x plus left parenthesis minus 4 x plus y right parenthesis equals 15 plus left parenthesis negative 2 right parenthesis\"><mn>5</mn><mi>x</mi><mo>+</mo><mfenced><mrow><mo>-</mo><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi></mrow></mfenced><mo>=</mo><mn>15</mn><mo>+</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced></math>, which is equivalent to&nbsp;<math alttext=\"x plus y equals 13\"><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>13</mn></math>. So the value of&nbsp;<math alttext=\"x plus y\"><mi>x</mi><mo>+</mo><mi>y</mi></math> is <math alttext=\"13\"><mn>13</mn>\n</math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect. This is the value of <math alttext=\"minus left parenthesis x plus y right parenthesis\"><mo>-</mo><mo>(</mo><mi>x</mi><mo>+</mo><mi>y</mi><mo>)</mo></math>.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959817,"pPcc":"SAT#H","questionId":"608eeb6e","skill_cd":"H.D.","score_band_range_cd":3,"skill_desc":"Systems of two linear equations in two variables","createDate":1691007959817,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"632affe2-9dad-466c-b099-d98aa7c13b20","primary_class_cd":"H","uId":"0e4f8e37-c9cb-4b62-bae8-f6e516dd744b","difficulty":"E"},"raw_detail":{"keys":["512066c6-d2c3-4fd2-9d72-94970781f12e"],"rationale":"<p>Choice C is correct. Adding the second equation of the given system to the first equation yields&nbsp;<math alttext=\"5 x plus left parenthesis minus 4 x plus y right parenthesis equals 15 plus left parenthesis negative 2 right parenthesis\"><mn>5</mn><mi>x</mi><mo>+</mo><mfenced><mrow><mo>-</mo><mn>4</mn><mi>x</mi><mo>+</mo><mi>y</mi></mrow></mfenced><mo>=</mo><mn>15</mn><mo>+</mo><mfenced><mrow><mo>-</mo><mn>2</mn></mrow></mfenced></math>, which is equivalent to&nbsp;<math alttext=\"x plus y equals 13\"><mi>x</mi><mo>+</mo><mi>y</mi><mo>=</mo><mn>13</mn></math>. So the value of&nbsp;<math alttext=\"x plus y\"><mi>x</mi><mo>+</mo><mi>y</mi></math> is <math alttext=\"13\"><mn>13</mn>\n</math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect. This is the value of <math alttext=\"minus left parenthesis x plus y right parenthesis\"><mo>-</mo><mo>(</mo><mi>x</mi><mo>+</mo><mi>y</mi><mo>)</mo></math>.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"5 x equals 15\"><mrow>\n\t<mrow>\n\t\t<mn>5</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>15</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: center;\"><math alttext=\"minus 4 x plus y equals negative 2\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>4</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mo>-</mo><mn>2</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">The solution to the given system of equations is <math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math>. What is the value of <math alttext=\"x plus y\"><mrow>\n\t<mi>x</mi>\n\t<mo>+</mo>\n\t<mi>y</mi>\n</mrow>\n</math>?</p>","externalid":"632affe2-9dad-466c-b099-d98aa7c13b20","templateid":"01d6af1f-e527-4949-b437-f2746084f438","vaultid":"4ea9acca-0d3e-43d1-a363-0835991f7d86","type":"mcq","answerOptions":[{"id":"1087ff86-10fb-4df4-b169-1a2f9f97e16d","content":"<p><math alttext=\"negative 17\"><mo>-</mo><mn>17</mn>\n</math></p>"},{"id":"51186499-e3a1-4122-b34a-1f775f3ff93e","content":"<p><math alttext=\"negative 13\"><mo>-</mo><mn>13</mn>\n</math></p>"},{"id":"512066c6-d2c3-4fd2-9d72-94970781f12e","content":"<p><math alttext=\"13\"><mn>13</mn>\n</math></p>"},{"id":"56d4637c-0b4d-4146-8945-c019d723385f","content":"<p><math alttext=\"17\"><mn>17</mn>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959817,"updateDate":1691007959817}$SATQ$::jsonb, 1691007959817, 1691007959817),
    ($SATQ$60f71697$SATQ$, $SATQ$0f1aa9d1-12d4-4e22-b2aa-c753912a2a2e$SATQ$::uuid, $SATQ$6ca13b3e-3d7b-49ff-b5f1-e1246e3bb371$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 1, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="8 x equals 88"><mrow>
	<mrow>
		<mn>8</mn>
		<mi>x</mi>
	</mrow>
	<mo>=</mo>
	<mn>88</mn>
</mrow>
</math></p>
<p style="text-align: left;">What value of <math alttext="x"><mi>x</mi>
</math> is the solution to the given equation?</p>$SATQ$, $SATQ$[{"id":"3f61ff8f-3a9e-4be1-afed-55a01cdde761","content":"<p><math alttext=\"11\"><mn>11</mn>\n</math></p>"},{"id":"949d2b12-5865-41f9-8630-f0233ed84761","content":"<p><math alttext=\"80\"><mn>80</mn>\n</math></p>"},{"id":"3b65487e-8906-47d4-8e56-74515e7dcfb5","content":"<p><math alttext=\"96\"><mn>96</mn>\n</math></p>"},{"id":"aab986d5-f5e9-42a7-87c2-497acebbfcd1","content":"<p><math alttext=\"704\"><mn>704</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["3f61ff8f-3a9e-4be1-afed-55a01cdde761"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. Dividing both sides of the given equation by <math alttext="8"><mn>8</mn>
</math> yields <math alttext="x equals 11"><mrow>
	<mi>x</mi>
	<mo>=</mo>
	<mn>11</mn>
</mrow>
</math>. Therefore, <math alttext="11"><mn>11</mn>
</math> is the solution to the given equation.</p>
<p style="text-align: left;">Choice B is incorrect. This is the solution to the equation <math alttext="x plus 8 equals 88"><mrow>
	<mrow>
		<mi>x</mi>
		<mo>+</mo>
		<mn>8</mn>
	</mrow>
	<mo>=</mo>
	<mn>88</mn>
</mrow>
</math>.</p>
<p style="text-align: left;">Choice C is incorrect. This is the solution to the equation <math alttext="x minus 8 equals 88"><mrow>
	<mrow>
		<mi>x</mi>
		<mo>-</mo>
		<mn>8</mn>
	</mrow>
	<mo>=</mo>
	<mn>88</mn>
</mrow>
</math>.</p>
<p style="text-align: left;">Choice D is incorrect. This is the solution to the equation <math alttext="StartFraction x Over 8 EndFraction equals 88"><mfrac><mi>x</mi><mn>8</mn></mfrac><mo>=</mo><mn>88</mn></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"60f71697","external_id":"0f1aa9d1-12d4-4e22-b2aa-c753912a2a2e","disclosed_item_id":null,"source":"qbank","vaultid":"6ca13b3e-3d7b-49ff-b5f1-e1246e3bb371","uId":"5581ebe8-5ea2-4341-b144-d5219c6e767a","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":1,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"8 x equals 88\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>88</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">What value of <math alttext=\"x\"><mi>x</mi>\n</math> is the solution to the given equation?</p>","answerOptions":[{"id":"3f61ff8f-3a9e-4be1-afed-55a01cdde761","content":"<p><math alttext=\"11\"><mn>11</mn>\n</math></p>"},{"id":"949d2b12-5865-41f9-8630-f0233ed84761","content":"<p><math alttext=\"80\"><mn>80</mn>\n</math></p>"},{"id":"3b65487e-8906-47d4-8e56-74515e7dcfb5","content":"<p><math alttext=\"96\"><mn>96</mn>\n</math></p>"},{"id":"aab986d5-f5e9-42a7-87c2-497acebbfcd1","content":"<p><math alttext=\"704\"><mn>704</mn>\n</math></p>"}],"keys":["3f61ff8f-3a9e-4be1-afed-55a01cdde761"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. Dividing both sides of the given equation by <math alttext=\"8\"><mn>8</mn>\n</math> yields <math alttext=\"x equals 11\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>11</mn>\n</mrow>\n</math>. Therefore, <math alttext=\"11\"><mn>11</mn>\n</math> is the solution to the given equation.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the solution to the equation <math alttext=\"x plus 8 equals 88\"><mrow>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>+</mo>\n\t\t<mn>8</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>88</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This is the solution to the equation <math alttext=\"x minus 8 equals 88\"><mrow>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>-</mo>\n\t\t<mn>8</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>88</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This is the solution to the equation <math alttext=\"StartFraction x Over 8 EndFraction equals 88\"><mfrac><mi>x</mi><mn>8</mn></mfrac><mo>=</mo><mn>88</mn></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959809,"pPcc":"SAT#H","questionId":"60f71697","skill_cd":"H.A.","score_band_range_cd":1,"skill_desc":"Linear equations in one variable","createDate":1691007959809,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"0f1aa9d1-12d4-4e22-b2aa-c753912a2a2e","primary_class_cd":"H","uId":"5581ebe8-5ea2-4341-b144-d5219c6e767a","difficulty":"E"},"raw_detail":{"keys":["3f61ff8f-3a9e-4be1-afed-55a01cdde761"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. Dividing both sides of the given equation by <math alttext=\"8\"><mn>8</mn>\n</math> yields <math alttext=\"x equals 11\"><mrow>\n\t<mi>x</mi>\n\t<mo>=</mo>\n\t<mn>11</mn>\n</mrow>\n</math>. Therefore, <math alttext=\"11\"><mn>11</mn>\n</math> is the solution to the given equation.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the solution to the equation <math alttext=\"x plus 8 equals 88\"><mrow>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>+</mo>\n\t\t<mn>8</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>88</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This is the solution to the equation <math alttext=\"x minus 8 equals 88\"><mrow>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>-</mo>\n\t\t<mn>8</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>88</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This is the solution to the equation <math alttext=\"StartFraction x Over 8 EndFraction equals 88\"><mfrac><mi>x</mi><mn>8</mn></mfrac><mo>=</mo><mn>88</mn></math>.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"8 x equals 88\"><mrow>\n\t<mrow>\n\t\t<mn>8</mn>\n\t\t<mi>x</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>88</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">What value of <math alttext=\"x\"><mi>x</mi>\n</math> is the solution to the given equation?</p>","externalid":"0f1aa9d1-12d4-4e22-b2aa-c753912a2a2e","templateid":"71c28006-479c-41d1-913d-ac7bf5873b10","vaultid":"6ca13b3e-3d7b-49ff-b5f1-e1246e3bb371","type":"mcq","answerOptions":[{"id":"3f61ff8f-3a9e-4be1-afed-55a01cdde761","content":"<p><math alttext=\"11\"><mn>11</mn>\n</math></p>"},{"id":"949d2b12-5865-41f9-8630-f0233ed84761","content":"<p><math alttext=\"80\"><mn>80</mn>\n</math></p>"},{"id":"3b65487e-8906-47d4-8e56-74515e7dcfb5","content":"<p><math alttext=\"96\"><mn>96</mn>\n</math></p>"},{"id":"aab986d5-f5e9-42a7-87c2-497acebbfcd1","content":"<p><math alttext=\"704\"><mn>704</mn>\n</math></p>"}],"correct_answer":["A"]},"createDate":1691007959809,"updateDate":1691007959809}$SATQ$::jsonb, 1691007959809, 1691007959809),
    ($SATQ$6105234d$SATQ$, $SATQ$2870e625-1e5c-4b4d-be09-4cc08fc8d83b$SATQ$::uuid, $SATQ$0912dc61-0829-40e5-9d7c-282e5b609c29$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">John paid a total of <math alttext="dollar sign 165"><mo>$</mo><mn>165</mn>
</math> for a microscope by making a down payment of <math alttext="dollar sign 37"><mo>$</mo><mn>37</mn>
</math> plus <math alttext="p"><mi>p</mi>
</math> monthly payments of <math alttext="dollar sign 16"><mo>$</mo><mn>16</mn>
</math> each. Which of the following equations represents this situation?</p>$SATQ$, $SATQ$[{"id":"164f9645-3396-4a5f-b099-caa4163bdaba","content":"<p><math alttext=\"16 p minus 37 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>16</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>37</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"},{"id":"368dd2ba-929f-48e8-a4aa-0b132e3b6519","content":"<p><math alttext=\"37 p minus 16 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>37</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>16</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"},{"id":"e78a5721-9c99-49a0-bf5f-405d6e0c0633","content":"<p><math alttext=\"16 p plus 37 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>16</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>37</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"},{"id":"a77e4f40-adf2-47e4-a64e-3a399d1ded25","content":"<p><math alttext=\"37 p plus 16 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>37</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>16</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["e78a5721-9c99-49a0-bf5f-405d6e0c0633"]$SATQ$::jsonb, $SATQ$<p>Choice C is correct. It&rsquo;s given that John made a <math alttext="dollar sign 16"><mo>$</mo><mn>16</mn></math> payment each month for <math alttext="p"><mi>p</mi>
</math> months. The total amount of these payments can be represented by the expression <math alttext="16 p"><mrow>
	<mn>16</mn>
	<mi>p</mi>
</mrow>
</math>. The down payment can be added to that amount to find the total amount John paid, yielding the expression <math alttext="16 p plus 37"><mrow>
	<mrow>
		<mn>16</mn>
		<mi>p</mi>
	</mrow>
	<mo>+</mo>
	<mn>37</mn>
</mrow>
</math>. It&rsquo;s given that John paid a total of <math alttext="dollar sign 165"><mo>$</mo><mn>165</mn></math>. Therefore, the expression for the total amount John paid can be set equal to that amount, yielding the equation <math alttext="16 p plus 37 equals 165"><mrow>
	<mrow>
		<mrow>
			<mn>16</mn>
			<mi>p</mi>
		</mrow>
		<mo>+</mo>
		<mn>37</mn>
	</mrow>
	<mo>=</mo>
	<mn>165</mn>
</mrow>
</math>.</p>
<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"6105234d","external_id":"2870e625-1e5c-4b4d-be09-4cc08fc8d83b","disclosed_item_id":null,"source":"qbank","vaultid":"0912dc61-0829-40e5-9d7c-282e5b609c29","uId":"282adec4-e2b5-471c-bfae-63efc8f64354","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">John paid a total of <math alttext=\"dollar sign 165\"><mo>$</mo><mn>165</mn>\n</math> for a microscope by making a down payment of <math alttext=\"dollar sign 37\"><mo>$</mo><mn>37</mn>\n</math> plus <math alttext=\"p\"><mi>p</mi>\n</math> monthly payments of <math alttext=\"dollar sign 16\"><mo>$</mo><mn>16</mn>\n</math> each. Which of the following equations represents this situation?</p>","answerOptions":[{"id":"164f9645-3396-4a5f-b099-caa4163bdaba","content":"<p><math alttext=\"16 p minus 37 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>16</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>37</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"},{"id":"368dd2ba-929f-48e8-a4aa-0b132e3b6519","content":"<p><math alttext=\"37 p minus 16 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>37</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>16</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"},{"id":"e78a5721-9c99-49a0-bf5f-405d6e0c0633","content":"<p><math alttext=\"16 p plus 37 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>16</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>37</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"},{"id":"a77e4f40-adf2-47e4-a64e-3a399d1ded25","content":"<p><math alttext=\"37 p plus 16 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>37</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>16</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"}],"keys":["e78a5721-9c99-49a0-bf5f-405d6e0c0633"],"correct_answer":["C"],"rationale":"<p>Choice C is correct. It&rsquo;s given that John made a <math alttext=\"dollar sign 16\"><mo>$</mo><mn>16</mn></math> payment each month for <math alttext=\"p\"><mi>p</mi>\n</math> months. The total amount of these payments can be represented by the expression <math alttext=\"16 p\"><mrow>\n\t<mn>16</mn>\n\t<mi>p</mi>\n</mrow>\n</math>. The down payment can be added to that amount to find the total amount John paid, yielding the expression <math alttext=\"16 p plus 37\"><mrow>\n\t<mrow>\n\t\t<mn>16</mn>\n\t\t<mi>p</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>37</mn>\n</mrow>\n</math>. It&rsquo;s given that John paid a total of <math alttext=\"dollar sign 165\"><mo>$</mo><mn>165</mn></math>. Therefore, the expression for the total amount John paid can be set equal to that amount, yielding the equation <math alttext=\"16 p plus 37 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>16</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>37</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959808,"pPcc":"SAT#H","questionId":"6105234d","skill_cd":"H.A.","score_band_range_cd":2,"skill_desc":"Linear equations in one variable","createDate":1691007959808,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"2870e625-1e5c-4b4d-be09-4cc08fc8d83b","primary_class_cd":"H","uId":"282adec4-e2b5-471c-bfae-63efc8f64354","difficulty":"E"},"raw_detail":{"keys":["e78a5721-9c99-49a0-bf5f-405d6e0c0633"],"rationale":"<p>Choice C is correct. It&rsquo;s given that John made a <math alttext=\"dollar sign 16\"><mo>$</mo><mn>16</mn></math> payment each month for <math alttext=\"p\"><mi>p</mi>\n</math> months. The total amount of these payments can be represented by the expression <math alttext=\"16 p\"><mrow>\n\t<mn>16</mn>\n\t<mi>p</mi>\n</mrow>\n</math>. The down payment can be added to that amount to find the total amount John paid, yielding the expression <math alttext=\"16 p plus 37\"><mrow>\n\t<mrow>\n\t\t<mn>16</mn>\n\t\t<mi>p</mi>\n\t</mrow>\n\t<mo>+</mo>\n\t<mn>37</mn>\n</mrow>\n</math>. It&rsquo;s given that John paid a total of <math alttext=\"dollar sign 165\"><mo>$</mo><mn>165</mn></math>. Therefore, the expression for the total amount John paid can be set equal to that amount, yielding the equation <math alttext=\"16 p plus 37 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>16</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>37</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math>.</p>\n<p>Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p>Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">John paid a total of <math alttext=\"dollar sign 165\"><mo>$</mo><mn>165</mn>\n</math> for a microscope by making a down payment of <math alttext=\"dollar sign 37\"><mo>$</mo><mn>37</mn>\n</math> plus <math alttext=\"p\"><mi>p</mi>\n</math> monthly payments of <math alttext=\"dollar sign 16\"><mo>$</mo><mn>16</mn>\n</math> each. Which of the following equations represents this situation?</p>","externalid":"2870e625-1e5c-4b4d-be09-4cc08fc8d83b","templateid":"eb6d347d-85a5-45c8-a557-a68536cc73a9","vaultid":"0912dc61-0829-40e5-9d7c-282e5b609c29","type":"mcq","answerOptions":[{"id":"164f9645-3396-4a5f-b099-caa4163bdaba","content":"<p><math alttext=\"16 p minus 37 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>16</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>37</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"},{"id":"368dd2ba-929f-48e8-a4aa-0b132e3b6519","content":"<p><math alttext=\"37 p minus 16 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>37</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mn>16</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"},{"id":"e78a5721-9c99-49a0-bf5f-405d6e0c0633","content":"<p><math alttext=\"16 p plus 37 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>16</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>37</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"},{"id":"a77e4f40-adf2-47e4-a64e-3a399d1ded25","content":"<p><math alttext=\"37 p plus 16 equals 165\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>37</mn>\n\t\t\t<mi>p</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>16</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>165</mn>\n</mrow>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959808,"updateDate":1691007959808}$SATQ$::jsonb, 1691007959808, 1691007959808),
    ($SATQ$620abf36$SATQ$, $SATQ$ff27b3f5-a00f-4258-b4c6-8f41c7c06bf0$SATQ$::uuid, $SATQ$89454dea-46c0-49b8-9759-51a21d6c8244$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p>If <math alttext="5 left parenthesis x plus 4 right parenthesis equals 4 left parenthesis x plus 4 right parenthesis plus 29"><mrow><mn>5</mn></mrow><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mo>=</mo><mrow><mn>4</mn></mrow><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mo>+</mo><mrow><mn>29</mn></mrow></math>, what is the value of <math alttext="x plus 4"><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></math>?</p>$SATQ$, $SATQ$[{"id":"30524e6e-3cff-4fe1-b3d1-86653b471227","content":"<p><math alttext=\"negative 4\"><mo>-</mo><mn>4</mn>\n</math></p>"},{"id":"93b77410-0700-4949-89b1-779636318bd2","content":"<p><math alttext=\"25\"><mn>25</mn>\n</math></p>"},{"id":"c26d16cc-9431-401d-a071-e20e95396a93","content":"<p><math alttext=\"29\"><mn>29</mn>\n</math></p>"},{"id":"3b08d519-9b02-4508-9cf1-3fdb4f51fa1b","content":"<p><math alttext=\"33\"><mn>33</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["c26d16cc-9431-401d-a071-e20e95396a93"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. Subtracting <math alttext="4 left parenthesis x plus 4 right parenthesis"><mn>4</mn><mfenced><mrow><mi>x</mi><mo>+</mo><mn>4</mn></mrow></mfenced></math> from both sides of the given equation yields <math alttext="1 left parenthesis x plus 4 right parenthesis equals 29"><mn>1</mn><mfenced><mrow><mi>x</mi><mo>+</mo><mn>4</mn></mrow></mfenced><mo>=</mo><mn>29</mn></math>, or <math alttext="x plus 4 equals 29"><mrow>
	<mrow>
		<mi>x</mi>
		<mo>+</mo>
		<mn>4</mn>
	</mrow>
	<mo>=</mo>
	<mn>29</mn>
</mrow>
</math>. Therefore, the value of <math alttext="x plus 4"><mrow>
	<mi>x</mi>
	<mo>+</mo>
	<mn>4</mn>
</mrow>
</math> is <math alttext="29"><mn>29</mn>
</math>.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice B is incorrect. This is the value of <math alttext="x"><mi>x</mi>
</math>, not <math alttext="x plus 4"><mrow>
	<mi>x</mi>
	<mo>+</mo>
	<mn>4</mn>
</mrow>
</math>.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"620abf36","external_id":"ff27b3f5-a00f-4258-b4c6-8f41c7c06bf0","disclosed_item_id":null,"source":"qbank","vaultid":"89454dea-46c0-49b8-9759-51a21d6c8244","uId":"8676ca19-ac42-4c5b-a518-163c27c01101","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p>If <math alttext=\"5 left parenthesis x plus 4 right parenthesis equals 4 left parenthesis x plus 4 right parenthesis plus 29\"><mrow><mn>5</mn></mrow><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mo>=</mo><mrow><mn>4</mn></mrow><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mo>+</mo><mrow><mn>29</mn></mrow></math>, what is the value of <math alttext=\"x plus 4\"><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></math>?</p>","answerOptions":[{"id":"30524e6e-3cff-4fe1-b3d1-86653b471227","content":"<p><math alttext=\"negative 4\"><mo>-</mo><mn>4</mn>\n</math></p>"},{"id":"93b77410-0700-4949-89b1-779636318bd2","content":"<p><math alttext=\"25\"><mn>25</mn>\n</math></p>"},{"id":"c26d16cc-9431-401d-a071-e20e95396a93","content":"<p><math alttext=\"29\"><mn>29</mn>\n</math></p>"},{"id":"3b08d519-9b02-4508-9cf1-3fdb4f51fa1b","content":"<p><math alttext=\"33\"><mn>33</mn>\n</math></p>"}],"keys":["c26d16cc-9431-401d-a071-e20e95396a93"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. Subtracting <math alttext=\"4 left parenthesis x plus 4 right parenthesis\"><mn>4</mn><mfenced><mrow><mi>x</mi><mo>+</mo><mn>4</mn></mrow></mfenced></math> from both sides of the given equation yields <math alttext=\"1 left parenthesis x plus 4 right parenthesis equals 29\"><mn>1</mn><mfenced><mrow><mi>x</mi><mo>+</mo><mn>4</mn></mrow></mfenced><mo>=</mo><mn>29</mn></math>, or <math alttext=\"x plus 4 equals 29\"><mrow>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>+</mo>\n\t\t<mn>4</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>29</mn>\n</mrow>\n</math>. Therefore, the value of <math alttext=\"x plus 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>+</mo>\n\t<mn>4</mn>\n</mrow>\n</math> is <math alttext=\"29\"><mn>29</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the value of <math alttext=\"x\"><mi>x</mi>\n</math>, not <math alttext=\"x plus 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>+</mo>\n\t<mn>4</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959808,"pPcc":"SAT#H","questionId":"620abf36","skill_cd":"H.A.","score_band_range_cd":5,"skill_desc":"Linear equations in one variable","createDate":1691007959808,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"ff27b3f5-a00f-4258-b4c6-8f41c7c06bf0","primary_class_cd":"H","uId":"8676ca19-ac42-4c5b-a518-163c27c01101","difficulty":"M"},"raw_detail":{"keys":["c26d16cc-9431-401d-a071-e20e95396a93"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. Subtracting <math alttext=\"4 left parenthesis x plus 4 right parenthesis\"><mn>4</mn><mfenced><mrow><mi>x</mi><mo>+</mo><mn>4</mn></mrow></mfenced></math> from both sides of the given equation yields <math alttext=\"1 left parenthesis x plus 4 right parenthesis equals 29\"><mn>1</mn><mfenced><mrow><mi>x</mi><mo>+</mo><mn>4</mn></mrow></mfenced><mo>=</mo><mn>29</mn></math>, or <math alttext=\"x plus 4 equals 29\"><mrow>\n\t<mrow>\n\t\t<mi>x</mi>\n\t\t<mo>+</mo>\n\t\t<mn>4</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>29</mn>\n</mrow>\n</math>. Therefore, the value of <math alttext=\"x plus 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>+</mo>\n\t<mn>4</mn>\n</mrow>\n</math> is <math alttext=\"29\"><mn>29</mn>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the value of <math alttext=\"x\"><mi>x</mi>\n</math>, not <math alttext=\"x plus 4\"><mrow>\n\t<mi>x</mi>\n\t<mo>+</mo>\n\t<mn>4</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p>If <math alttext=\"5 left parenthesis x plus 4 right parenthesis equals 4 left parenthesis x plus 4 right parenthesis plus 29\"><mrow><mn>5</mn></mrow><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mo>=</mo><mrow><mn>4</mn></mrow><mfenced><mrow><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></mrow></mfenced><mo>+</mo><mrow><mn>29</mn></mrow></math>, what is the value of <math alttext=\"x plus 4\"><mi>x</mi><mo>+</mo><mrow><mn>4</mn></mrow></math>?</p>","externalid":"ff27b3f5-a00f-4258-b4c6-8f41c7c06bf0","templateid":"ab4ffd03-291c-4916-b738-fc709e0c4ffa","vaultid":"89454dea-46c0-49b8-9759-51a21d6c8244","type":"mcq","answerOptions":[{"id":"30524e6e-3cff-4fe1-b3d1-86653b471227","content":"<p><math alttext=\"negative 4\"><mo>-</mo><mn>4</mn>\n</math></p>"},{"id":"93b77410-0700-4949-89b1-779636318bd2","content":"<p><math alttext=\"25\"><mn>25</mn>\n</math></p>"},{"id":"c26d16cc-9431-401d-a071-e20e95396a93","content":"<p><math alttext=\"29\"><mn>29</mn>\n</math></p>"},{"id":"3b08d519-9b02-4508-9cf1-3fdb4f51fa1b","content":"<p><math alttext=\"33\"><mn>33</mn>\n</math></p>"}],"correct_answer":["C"]},"createDate":1691007959808,"updateDate":1691007959808}$SATQ$::jsonb, 1691007959808, 1691007959808),
    ($SATQ$620fe971$SATQ$, NULL, NULL, $SATQ$14854-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, $SATQ$<div class="stimulus_reference " xmlns="http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1"><div class="passage "><div class="prose style:1 "><p class="passage_para ">A team of workers has been moving cargo off of a ship. The equation below models the approximate number of tons of cargo, <span class="italic">y</span>, that remains to be moved <span class="italic">x</span> hours after the team started working.</p><p class="standalone_statement style:1 "><span class="math_expression "><span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/620fe971/img_000_8effed17.png" alt="y equals, 120 minus 25 x"></span></span></p></div></div></div>
$SATQ$, $SATQ$<p class="stem_paragraph ">The graph of this equation in the <span class="italic"><span class="formatted_text font_style:italic ">xy</span></span>-plane is a line. What is the best interpretation of the <span class="italic"><span class="formatted_text font_style:italic ">x</span></span>-intercept in this context?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p class=\"choice_paragraph \">The team will have moved all the cargo in about 4.8 hours.</p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \">The team has been moving about 4.8 tons of cargo per hour.</p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \">The team has been moving about 25 tons of cargo per hour.</p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \">The team started with 120 tons of cargo to move.</p>\n"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice A is correct. The <span class="italic">x</span>-intercept of the line with equation <span class="italic">y&nbsp;</span>= 120 &ndash; 25<span class="italic">x</span> can be found by substituting 0 for<span class="italic"> y</span> and finding the value of <span class="italic">x</span>. When <span class="italic">y</span> = 0, <span class="italic">x</span> = 4.8, so the <span class="italic">x</span>-intercept is at&nbsp;(4.8, 0). Since <span class="italic">y</span>&nbsp;represents the number of tons of cargo remaining to be moved <span class="italic">x</span> hours after the team started working, it follows that the <span class="italic">x</span>-intercept refers to the team having no cargo remaining to be moved after 4.8 hours. In other words, the team will have moved all of the cargo after about 4.8 hours.<p>Choice B is incorrect and may result from incorrectly interpreting the value 4.8. Choices C and D are incorrect and may result from misunderstanding the <span class="italic">x</span>-intercept. These statements are accurate but not directly relevant to the <span class="italic">x</span>-intercept.</p><p>&nbsp;</p></p>
$SATQ$, false, 1, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"620fe971","external_id":null,"disclosed_item_id":"14854-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><div class=\"passage \"><div class=\"prose style:1 \"><p class=\"passage_para \">A team of workers has been moving cargo off of a ship. The equation below models the approximate number of tons of cargo, <span class=\"italic\">y</span>, that remains to be moved <span class=\"italic\">x</span> hours after the team started working.</p><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/620fe971/img_000_8effed17.png\" alt=\"y equals, 120 minus 25 x\"></span></span></p></div></div></div>\n","stem":"<p class=\"stem_paragraph \">The graph of this equation in the <span class=\"italic\"><span class=\"formatted_text font_style:italic \">xy</span></span>-plane is a line. What is the best interpretation of the <span class=\"italic\"><span class=\"formatted_text font_style:italic \">x</span></span>-intercept in this context?</p>\n","answerOptions":[{"id":"a","content":"<p class=\"choice_paragraph \">The team will have moved all the cargo in about 4.8 hours.</p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \">The team has been moving about 4.8 tons of cargo per hour.</p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \">The team has been moving about 25 tons of cargo per hour.</p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \">The team started with 120 tons of cargo to move.</p>\n"}],"keys":null,"correct_answer":["A"],"rationale":"<p>Choice A is correct. The <span class=\"italic\">x</span>-intercept of the line with equation <span class=\"italic\">y&nbsp;</span>= 120 &ndash; 25<span class=\"italic\">x</span> can be found by substituting 0 for<span class=\"italic\"> y</span> and finding the value of <span class=\"italic\">x</span>. When <span class=\"italic\">y</span> = 0, <span class=\"italic\">x</span> = 4.8, so the <span class=\"italic\">x</span>-intercept is at&nbsp;(4.8, 0). Since <span class=\"italic\">y</span>&nbsp;represents the number of tons of cargo remaining to be moved <span class=\"italic\">x</span> hours after the team started working, it follows that the <span class=\"italic\">x</span>-intercept refers to the team having no cargo remaining to be moved after 4.8 hours. In other words, the team will have moved all of the cargo after about 4.8 hours.<p>Choice B is incorrect and may result from incorrectly interpreting the value 4.8. Choices C and D are incorrect and may result from misunderstanding the <span class=\"italic\">x</span>-intercept. These statements are accurate but not directly relevant to the <span class=\"italic\">x</span>-intercept.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":1,"raw_list":{"updateDate":1691007959639,"pPcc":"SAT#H","questionId":"620fe971","skill_cd":"H.B.","score_band_range_cd":5,"skill_desc":"Linear functions","createDate":1691007959639,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"14854-DC","external_id":null,"primary_class_cd":"H","uId":"3f589644-9edc-4ed3-9e3a-c40af604e26e","difficulty":"M"},"raw_detail":{"item_id":"14854-DC","section":"Math","body":"<div class=\"stimulus_reference \" xmlns=\"http://www.imsglobal.org/xsd/apip/apipv1p0/qtiitem/imsqti_v2p1\"><div class=\"passage \"><div class=\"prose style:1 \"><p class=\"passage_para \">A team of workers has been moving cargo off of a ship. The equation below models the approximate number of tons of cargo, <span class=\"italic\">y</span>, that remains to be moved <span class=\"italic\">x</span> hours after the team started working.</p><p class=\"standalone_statement style:1 \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAAAWCAYAAAA/45nkAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB3UlEQVRoQ+2WjY3DIAyFMx4DMQ67ZJVswsUm5sfYhfZIeif5k5CaxEHPfjbp9k12v0UXjnhdZmI8YnAb3M9LjNt9FePiGdLFfMqMhhj36Kvnefm9ifuTUPH6pChxf6aXCirFpnul6Pz6N0xrOEJ0Vcy/4QgOk4HVGYBJ9YVM76RkqUD8XZioFd03owGu0RQXTjULDMDN2Wa5ExaOVOnUNL68iBrpvcsALNAWT1nNu7xAq6k1wPWM4RjD6or3uMF8c6AUq01IPfvY4gWqoT1mDagT0TpUymEljYarOZ332AznY1zdRF95Ui1Sk/Tau7G7o/tr3jEgFbYkoTaGcn8FnQZqwqq7aTLFoxHilOcId+rubpo1gBKvG+EdA3KhBovylpA0aEjHIBkDP9U98kiB+ur39bhhSVITBqRkzr2Y6CePIE2DhtYc6dwfaIMgNOCGRDgjA5Jg+Tl1FDd49Uf4lQYNyYBsomBMAwb68LL7V/HKABKsadAmFAs22akjhhomm4COL9hnqI+C7+5+QDNA+5BxeKdJnfcpMxrynxSh2GQK5UhFH2qcTX4FmgFlXKXVNkYbu6b4wKyGYkJZXfGleG0K+PgYD0KOkYPGQ5RReeboMQzDMAzDMAzjy2zbD1lvsRfz7i6wAAAAAElFTkSuQmCC\" alt=\"y equals, 120 minus 25 x\"></span></span></p></div></div></div>\n","prompt":"<p class=\"stem_paragraph \">The graph of this equation in the <span class=\"italic\"><span class=\"formatted_text font_style:italic \">xy</span></span>-plane is a line. What is the best interpretation of the <span class=\"italic\"><span class=\"formatted_text font_style:italic \">x</span></span>-intercept in this context?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p class=\"choice_paragraph \">The team will have moved all the cargo in about 4.8 hours.</p>\n"},"b":{"body":"<p class=\"choice_paragraph \">The team has been moving about 4.8 tons of cargo per hour.</p>\n"},"c":{"body":"<p class=\"choice_paragraph \">The team has been moving about 25 tons of cargo per hour.</p>\n"},"d":{"body":"<p class=\"choice_paragraph \">The team started with 120 tons of cargo to move.</p>\n"}},"correct_choice":"a","rationale":"<p>Choice A is correct. The <span class=\"italic\">x</span>-intercept of the line with equation <span class=\"italic\">y&nbsp;</span>= 120 &ndash; 25<span class=\"italic\">x</span> can be found by substituting 0 for<span class=\"italic\"> y</span> and finding the value of <span class=\"italic\">x</span>. When <span class=\"italic\">y</span> = 0, <span class=\"italic\">x</span> = 4.8, so the <span class=\"italic\">x</span>-intercept is at&nbsp;(4.8, 0). Since <span class=\"italic\">y</span>&nbsp;represents the number of tons of cargo remaining to be moved <span class=\"italic\">x</span> hours after the team started working, it follows that the <span class=\"italic\">x</span>-intercept refers to the team having no cargo remaining to be moved after 4.8 hours. In other words, the team will have moved all of the cargo after about 4.8 hours.<p>Choice B is incorrect and may result from incorrectly interpreting the value 4.8. Choices C and D are incorrect and may result from misunderstanding the <span class=\"italic\">x</span>-intercept. These statements are accurate but not directly relevant to the <span class=\"italic\">x</span>-intercept.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959639,"updateDate":1691007959639}$SATQ$::jsonb, 1691007959639, 1691007959639),
    ($SATQ$628300a9$SATQ$, NULL, NULL, $SATQ$08060-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.A.$SATQ$, $SATQ$Linear equations in one variable$SATQ$, $SATQ$H$SATQ$, 6, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">A science teacher is preparing the 5&nbsp;stations of a science laboratory. Each station will have either Experiment&nbsp;A materials or Experiment&nbsp;B materials, but not both. Experiment&nbsp;A requires 6&nbsp;teaspoons of salt, and Experiment&nbsp;B requires 4&nbsp;teaspoons of salt. If <span class="italic">x</span> is the number of stations that will be set up for Experiment&nbsp;A and the remaining stations will be set up for Experiment&nbsp;B, which of the following expressions represents the total number of teaspoons of salt required?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/628300a9/img_000_e0124986.png\" alt=\"5 x\"></span></span>\n"},{"id":"b","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/628300a9/img_001_dd503f89.png\" alt=\"10 x\"></span></span>\n"},{"id":"c","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/628300a9/img_002_5d0cc970.png\" alt=\"2 x plus 20\"></span></span>\n"},{"id":"d","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/628300a9/img_003_3d1a2519.png\" alt=\"10 x plus 20\"></span></span>\n"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice C is correct. It is given that <span class="italic">x</span> represents the number of stations that will be set up for Experiment A and that there will be 5 stations total, so it follows that 5 &ndash; <span class="italic">x</span> is the number of stations that will be set up for Experiment B. It is also given that Experiment A requires 6 teaspoons of salt and that Experiment B requires 4 teaspoons of salt, so the total number of teaspoons of salt required is 6<span class="italic">x</span> + 4(5 &ndash; <span class="italic">x</span>), which simplifies to 2<span class="italic">x</span> + 20.<p>Choices A, B, and D are incorrect and may be the result of not understanding the description of the context.</p></p>
$SATQ$, false, 4, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"628300a9","external_id":null,"disclosed_item_id":"08060-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.A.","skill_desc":"Linear equations in one variable","difficulty":"H","score_band_range_cd":6,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">A science teacher is preparing the 5&nbsp;stations of a science laboratory. Each station will have either Experiment&nbsp;A materials or Experiment&nbsp;B materials, but not both. Experiment&nbsp;A requires 6&nbsp;teaspoons of salt, and Experiment&nbsp;B requires 4&nbsp;teaspoons of salt. If <span class=\"italic\">x</span> is the number of stations that will be set up for Experiment&nbsp;A and the remaining stations will be set up for Experiment&nbsp;B, which of the following expressions represents the total number of teaspoons of salt required?</p>\n","answerOptions":[{"id":"a","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/628300a9/img_000_e0124986.png\" alt=\"5 x\"></span></span>\n"},{"id":"b","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/628300a9/img_001_dd503f89.png\" alt=\"10 x\"></span></span>\n"},{"id":"c","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/628300a9/img_002_5d0cc970.png\" alt=\"2 x plus 20\"></span></span>\n"},{"id":"d","content":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/628300a9/img_003_3d1a2519.png\" alt=\"10 x plus 20\"></span></span>\n"}],"keys":null,"correct_answer":["C"],"rationale":"<p>Choice C is correct. It is given that <span class=\"italic\">x</span> represents the number of stations that will be set up for Experiment A and that there will be 5 stations total, so it follows that 5 &ndash; <span class=\"italic\">x</span> is the number of stations that will be set up for Experiment B. It is also given that Experiment A requires 6 teaspoons of salt and that Experiment B requires 4 teaspoons of salt, so the total number of teaspoons of salt required is 6<span class=\"italic\">x</span> + 4(5 &ndash; <span class=\"italic\">x</span>), which simplifies to 2<span class=\"italic\">x</span> + 20.<p>Choices A, B, and D are incorrect and may be the result of not understanding the description of the context.</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":4,"raw_list":{"updateDate":1691007959634,"pPcc":"SAT#H","questionId":"628300a9","skill_cd":"H.A.","score_band_range_cd":6,"skill_desc":"Linear equations in one variable","createDate":1691007959634,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"08060-DC","external_id":null,"primary_class_cd":"H","uId":"e7b34e19-e23c-4910-9a61-8f27abbd0239","difficulty":"H"},"raw_detail":{"item_id":"08060-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">A science teacher is preparing the 5&nbsp;stations of a science laboratory. Each station will have either Experiment&nbsp;A materials or Experiment&nbsp;B materials, but not both. Experiment&nbsp;A requires 6&nbsp;teaspoons of salt, and Experiment&nbsp;B requires 4&nbsp;teaspoons of salt. If <span class=\"italic\">x</span> is the number of stations that will be set up for Experiment&nbsp;A and the remaining stations will be set up for Experiment&nbsp;B, which of the following expressions represents the total number of teaspoons of salt required?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAASCAYAAABrXO8xAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAJufgqOgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAmUlEQVQ4T+2S6w3DIAyEPd4NxDjehVXY5GpsKCZqHv1b9SQUSOzjPivS1RS0R1qFlez7a9UiLFY5js9ENipAbV83VhYBgRlzmYSpEPZi1VqNxRM2JVJx8C7G+B7njuRNnzRdM3NvgOEI1DKcIM14udGusv3NpCfzm9OjBv82+aObc4xIeThucIy6/wBhsk1wyFnHhP/6BYm8ANdcwkJsgnqNAAAAAElFTkSuQmCC\" alt=\"5 x\"></span></span>\n"},"b":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAWCAYAAAAxSueLAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAA00lEQVRIS+2T2xHEIAhFLc+CLMdebMVOWBGJkYebzO6nZ8ZJRPAiaJCUFCDmCmO6ACWhfYwIzc30ewRvZonR2hSQ81fUHDGoDykGUCFHbccqhFTeic0sCyRLrGaI7dP2XeyUYIJm7vYuHnNLbfp1m1UBaGG+mA6gJKcYx3NSlIxTalfM6Y9lv043qiH3uviHGJccf7f9/LWMDPVJ2xf2Yt8vCDJvtU5uwRV7ePXppOQn1xSeGCL7o+YjlgXkumInhtwfvim0PAOqxutHfzgcDgYhfAAO0HxlPdjY/QAAAABJRU5ErkJggg==\" alt=\"10 x\"></span></span>\n"},"c":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADMAAAAWCAYAAABtwKSvAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABM0lEQVRYR+2V2w3DIAxFGY+BGIddsko2ce0YB2JeJpX6UXGkKECJudd2UkcAnBC9AxrK5eNJ959h1QBHKPZ4wC15Tw4S4AD+QR74lSGrBl7LBvTcwRnBa4fIGT3Oc/C3AEYIeAsYKC1VWDSIYZ3gI2ASMHiatmHX2cz1kI8YMh94rTVElFjM9Cg1sOE6jinpWrwWxUHGRohvzJQaetXTSa/gDbWAO3jKkuWdemtGa+B5z0wnqRKk1YdSahr2+lTE03B0jcy1NCyb4dZ5BtHwezLp0YLVyvQ0LLUZixy3zn1Qr6wNVsyMNJg/ACJyZERKT3uuQwfVK7GamWkwfZrF8dBIEiQPdfu0gcWMRQOhz6105NZpXVS+ZKQo5f2PbazOjLmGnIjnXnu7bzabzWaz+U+c+wAvuVR+UjDW9gAAAABJRU5ErkJggg==\" alt=\"2 x plus 20\"></span></span>\n"},"d":{"body":"<span class=\"math_expression \">\n            <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAAWCAYAAACcy/8iAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABVklEQVRYR+2V4RHDIAiFHc+BHMddsko2oaISlYDBNv3nd+c1GiPvIVrHOYIDH0+o3QE4Ao7X5iFNE+f9C4AToqf4pUlazTppor5I+5j3/00zG+CAXsOo16zzjB4HcuOGKRgfx2pw4RgX+gJIFkL6SUupa8EZwQvCi+6SBLPOloUS+GY4B7sL6oNhPy/sYwrb5uWxh0qwGNYo2qtho84LCiwbvovug+U+E14Czc0ivxjuk2zVeaEaVs6BNH4JqNnma0l8a7jEb9+t6My8YZjKCh+1801x8HHWZgkgs32M9wwvlko5t0IJKazu8HXBsoS+V9J117gg6TK4xEgZVVgxXJIpH5UVnRnVsPG6pzLDefzdDKthSqZkFln++9QMI/wc3Pr1W1qYv59hMUy7p5klnnQOzAwjrVyxCWa7sqFsW3f5iTE2b9qxwmZL+maz2Ww2m83mN5z7AAQU8fNffOqcAAAAAElFTkSuQmCC\" alt=\"10 x plus 20\"></span></span>\n"}},"correct_choice":"c","rationale":"<p>Choice C is correct. It is given that <span class=\"italic\">x</span> represents the number of stations that will be set up for Experiment A and that there will be 5 stations total, so it follows that 5 &ndash; <span class=\"italic\">x</span> is the number of stations that will be set up for Experiment B. It is also given that Experiment A requires 6 teaspoons of salt and that Experiment B requires 4 teaspoons of salt, so the total number of teaspoons of salt required is 6<span class=\"italic\">x</span> + 4(5 &ndash; <span class=\"italic\">x</span>), which simplifies to 2<span class=\"italic\">x</span> + 20.<p>Choices A, B, and D are incorrect and may be the result of not understanding the description of the context.</p></p>\n"}},"createDate":1691007959634,"updateDate":1691007959634}$SATQ$::jsonb, 1691007959634, 1691007959634),
    ($SATQ$62ef6f73$SATQ$, $SATQ$2764f11e-ac8f-4a9c-b6b0-db45ba9e4e48$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">A total of <math alttext="2"><mn>2</mn>
</math> squares each have side length <math alttext="r"><mi>r</mi>
</math>. A total of <math alttext="6"><mn>6</mn>
</math> equilateral triangles each have side length <math alttext="t"><mi>t</mi>
</math>. None of these squares and triangles shares a side. The sum of the perimeters of all these squares and triangles is <math alttext="210"><mn>210</mn>
</math>. Which equation represents this situation?</p>$SATQ$, $SATQ$[{"id":"dc2c45c2-7c90-42af-9efe-ca5ccb3acd17","content":"<p><math alttext=\"6 r plus 24 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>24</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>"},{"id":"bef58b73-49fb-405e-8998-a4b281583628","content":"<p><math alttext=\"2 r plus 6 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>"},{"id":"45f2c10e-266a-4715-ba17-e36faf0834af","content":"<p><math alttext=\"8 r plus 18 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>18</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>"},{"id":"7a1b454e-2db7-4201-bc43-0d650664fbce","content":"<p><math alttext=\"6 r plus 2 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["45f2c10e-266a-4715-ba17-e36faf0834af"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. It&rsquo;s given that a total of <math alttext="2"><mn>2</mn>
</math> squares each have side length <math alttext="r"><mi>r</mi>
</math>. Therefore, each of the squares has perimeter <math alttext="4 r"><mrow>
	<mn>4</mn>
	<mi>r</mi>
</mrow>
</math>. Since there are a total of <math alttext="2"><mn>2</mn>
</math> squares, the sum of the perimeters of these squares is <math alttext="4 r plus 4 r"><mn>4</mn><mi>r</mi><mo>+</mo><mn>4</mn><mi>r</mi></math>, which is equivalent to <math alttext="2 left parenthesis 4 r right parenthesis"><mn>2</mn><mfenced><mrow><mn>4</mn><mi>r</mi></mrow></mfenced></math>, or <math alttext="8 r"><mrow>
	<mn>8</mn>
	<mi>r</mi>
</mrow>
</math>. It&rsquo;s also given that a total of <math alttext="6"><mn>6</mn>
</math> equilateral triangles each have side length <math alttext="t"><mi>t</mi>
</math>. Therefore, each of the equilateral triangles has perimeter <math alttext="3 t"><mrow>
	<mn>3</mn>
	<mi>t</mi>
</mrow>
</math>. Since there are a total of <math alttext="6"><mn>6</mn>
</math> equilateral triangles, the sum of the perimeters of these triangles is <math alttext="3 t plus 3 t plus 3 t plus 3 t plus 3 t plus 3 t"><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi></math>, which is equivalent to <math alttext="6 left parenthesis 3 t right parenthesis"><mn>6</mn><mfenced><mrow><mn>3</mn><mi>t</mi></mrow></mfenced></math>, or <math alttext="18 t"><mrow>
	<mn>18</mn>
	<mi>t</mi>
</mrow>
</math>. Since the sum of the perimeters of the squares is <math alttext="8 r"><mrow>
	<mn>8</mn>
	<mi>r</mi>
</mrow>
</math> and the sum of the perimeters of the triangles is <math alttext="18 t"><mrow>
	<mn>18</mn>
	<mi>t</mi>
</mrow>
</math>, the sum of the perimeters of all these squares and triangles is <math alttext="8 r plus 18 t"><mn>8</mn><mi>r</mi><mo>+</mo><mn>18</mn><mi>t</mi></math>. It&rsquo;s given that the sum of the perimeters of all these squares and triangles is <math alttext="210"><mn>210</mn>
</math>. Therefore, the equation <math alttext="8 r plus 18 t equals 210"><mrow>
	<mrow>
		<mrow>
			<mn>8</mn>
			<mi>r</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>18</mn>
			<mi>t</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>210</mn>
</mrow>
</math> represents this situation.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"62ef6f73","external_id":"2764f11e-ac8f-4a9c-b6b0-db45ba9e4e48","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"a1a1c510-76a3-44ab-b9ae-99dd07b80e21","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">A total of <math alttext=\"2\"><mn>2</mn>\n</math> squares each have side length <math alttext=\"r\"><mi>r</mi>\n</math>. A total of <math alttext=\"6\"><mn>6</mn>\n</math> equilateral triangles each have side length <math alttext=\"t\"><mi>t</mi>\n</math>. None of these squares and triangles shares a side. The sum of the perimeters of all these squares and triangles is <math alttext=\"210\"><mn>210</mn>\n</math>. Which equation represents this situation?</p>","answerOptions":[{"id":"dc2c45c2-7c90-42af-9efe-ca5ccb3acd17","content":"<p><math alttext=\"6 r plus 24 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>24</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>"},{"id":"bef58b73-49fb-405e-8998-a4b281583628","content":"<p><math alttext=\"2 r plus 6 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>"},{"id":"45f2c10e-266a-4715-ba17-e36faf0834af","content":"<p><math alttext=\"8 r plus 18 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>18</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>"},{"id":"7a1b454e-2db7-4201-bc43-0d650664fbce","content":"<p><math alttext=\"6 r plus 2 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>"}],"keys":["45f2c10e-266a-4715-ba17-e36faf0834af"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It&rsquo;s given that a total of <math alttext=\"2\"><mn>2</mn>\n</math> squares each have side length <math alttext=\"r\"><mi>r</mi>\n</math>. Therefore, each of the squares has perimeter <math alttext=\"4 r\"><mrow>\n\t<mn>4</mn>\n\t<mi>r</mi>\n</mrow>\n</math>. Since there are a total of <math alttext=\"2\"><mn>2</mn>\n</math> squares, the sum of the perimeters of these squares is <math alttext=\"4 r plus 4 r\"><mn>4</mn><mi>r</mi><mo>+</mo><mn>4</mn><mi>r</mi></math>, which is equivalent to <math alttext=\"2 left parenthesis 4 r right parenthesis\"><mn>2</mn><mfenced><mrow><mn>4</mn><mi>r</mi></mrow></mfenced></math>, or <math alttext=\"8 r\"><mrow>\n\t<mn>8</mn>\n\t<mi>r</mi>\n</mrow>\n</math>. It&rsquo;s also given that a total of <math alttext=\"6\"><mn>6</mn>\n</math> equilateral triangles each have side length <math alttext=\"t\"><mi>t</mi>\n</math>. Therefore, each of the equilateral triangles has perimeter <math alttext=\"3 t\"><mrow>\n\t<mn>3</mn>\n\t<mi>t</mi>\n</mrow>\n</math>. Since there are a total of <math alttext=\"6\"><mn>6</mn>\n</math> equilateral triangles, the sum of the perimeters of these triangles is <math alttext=\"3 t plus 3 t plus 3 t plus 3 t plus 3 t plus 3 t\"><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi></math>, which is equivalent to <math alttext=\"6 left parenthesis 3 t right parenthesis\"><mn>6</mn><mfenced><mrow><mn>3</mn><mi>t</mi></mrow></mfenced></math>, or <math alttext=\"18 t\"><mrow>\n\t<mn>18</mn>\n\t<mi>t</mi>\n</mrow>\n</math>. Since the sum of the perimeters of the squares is <math alttext=\"8 r\"><mrow>\n\t<mn>8</mn>\n\t<mi>r</mi>\n</mrow>\n</math> and the sum of the perimeters of the triangles is <math alttext=\"18 t\"><mrow>\n\t<mn>18</mn>\n\t<mi>t</mi>\n</mrow>\n</math>, the sum of the perimeters of all these squares and triangles is <math alttext=\"8 r plus 18 t\"><mn>8</mn><mi>r</mi><mo>+</mo><mn>18</mn><mi>t</mi></math>. It&rsquo;s given that the sum of the perimeters of all these squares and triangles is <math alttext=\"210\"><mn>210</mn>\n</math>. Therefore, the equation <math alttext=\"8 r plus 18 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>18</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math> represents this situation.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1730147357390,"pPcc":"SAT#H","questionId":"62ef6f73","skill_cd":"H.C.","score_band_range_cd":5,"skill_desc":"Linear equations in two variables","createDate":1730147357390,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"2764f11e-ac8f-4a9c-b6b0-db45ba9e4e48","primary_class_cd":"H","uId":"a1a1c510-76a3-44ab-b9ae-99dd07b80e21","difficulty":"M"},"raw_detail":{"answerOptions":[{"content":"<p><math alttext=\"6 r plus 24 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>24</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>","id":"dc2c45c2-7c90-42af-9efe-ca5ccb3acd17"},{"content":"<p><math alttext=\"2 r plus 6 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>","id":"bef58b73-49fb-405e-8998-a4b281583628"},{"content":"<p><math alttext=\"8 r plus 18 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>18</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>","id":"45f2c10e-266a-4715-ba17-e36faf0834af"},{"content":"<p><math alttext=\"6 r plus 2 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>2</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math></p>","id":"7a1b454e-2db7-4201-bc43-0d650664fbce"}],"externalid":"2764f11e-ac8f-4a9c-b6b0-db45ba9e4e48","keys":["45f2c10e-266a-4715-ba17-e36faf0834af"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It&rsquo;s given that a total of <math alttext=\"2\"><mn>2</mn>\n</math> squares each have side length <math alttext=\"r\"><mi>r</mi>\n</math>. Therefore, each of the squares has perimeter <math alttext=\"4 r\"><mrow>\n\t<mn>4</mn>\n\t<mi>r</mi>\n</mrow>\n</math>. Since there are a total of <math alttext=\"2\"><mn>2</mn>\n</math> squares, the sum of the perimeters of these squares is <math alttext=\"4 r plus 4 r\"><mn>4</mn><mi>r</mi><mo>+</mo><mn>4</mn><mi>r</mi></math>, which is equivalent to <math alttext=\"2 left parenthesis 4 r right parenthesis\"><mn>2</mn><mfenced><mrow><mn>4</mn><mi>r</mi></mrow></mfenced></math>, or <math alttext=\"8 r\"><mrow>\n\t<mn>8</mn>\n\t<mi>r</mi>\n</mrow>\n</math>. It&rsquo;s also given that a total of <math alttext=\"6\"><mn>6</mn>\n</math> equilateral triangles each have side length <math alttext=\"t\"><mi>t</mi>\n</math>. Therefore, each of the equilateral triangles has perimeter <math alttext=\"3 t\"><mrow>\n\t<mn>3</mn>\n\t<mi>t</mi>\n</mrow>\n</math>. Since there are a total of <math alttext=\"6\"><mn>6</mn>\n</math> equilateral triangles, the sum of the perimeters of these triangles is <math alttext=\"3 t plus 3 t plus 3 t plus 3 t plus 3 t plus 3 t\"><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi><mo>+</mo><mn>3</mn><mi>t</mi></math>, which is equivalent to <math alttext=\"6 left parenthesis 3 t right parenthesis\"><mn>6</mn><mfenced><mrow><mn>3</mn><mi>t</mi></mrow></mfenced></math>, or <math alttext=\"18 t\"><mrow>\n\t<mn>18</mn>\n\t<mi>t</mi>\n</mrow>\n</math>. Since the sum of the perimeters of the squares is <math alttext=\"8 r\"><mrow>\n\t<mn>8</mn>\n\t<mi>r</mi>\n</mrow>\n</math> and the sum of the perimeters of the triangles is <math alttext=\"18 t\"><mrow>\n\t<mn>18</mn>\n\t<mi>t</mi>\n</mrow>\n</math>, the sum of the perimeters of all these squares and triangles is <math alttext=\"8 r plus 18 t\"><mn>8</mn><mi>r</mi><mo>+</mo><mn>18</mn><mi>t</mi></math>. It&rsquo;s given that the sum of the perimeters of all these squares and triangles is <math alttext=\"210\"><mn>210</mn>\n</math>. Therefore, the equation <math alttext=\"8 r plus 18 t equals 210\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>8</mn>\n\t\t\t<mi>r</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>18</mn>\n\t\t\t<mi>t</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>210</mn>\n</mrow>\n</math> represents this situation.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","stem":"<p style=\"text-align: left;\">A total of <math alttext=\"2\"><mn>2</mn>\n</math> squares each have side length <math alttext=\"r\"><mi>r</mi>\n</math>. A total of <math alttext=\"6\"><mn>6</mn>\n</math> equilateral triangles each have side length <math alttext=\"t\"><mi>t</mi>\n</math>. None of these squares and triangles shares a side. The sum of the perimeters of all these squares and triangles is <math alttext=\"210\"><mn>210</mn>\n</math>. Which equation represents this situation?</p>","type":"mcq","correct_answer":["C"]},"createDate":1730147357390,"updateDate":1730147357390}$SATQ$::jsonb, 1730147357390, 1730147357390),
    ($SATQ$637022d2$SATQ$, $SATQ$eb660cfe-6d9e-465b-a9a3-9b5a5ae60195$SATQ$::uuid, $SATQ$b2f01f53-6c04-4a97-9221-7f87684c58f8$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="2.5 b plus 5 r equals 80"><mn>2.5</mn><mi>b</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>=</mo><mn>80</mn></math></p>
<p style="text-align: left;">The given equation describes the relationship between the number of birds, <math alttext="b"><mi>b</mi>
</math>, and the number of reptiles, <math alttext="r"><mi>r</mi>
</math>, that can be cared for at a pet care business on a given day. If the business cares for <math alttext="16"><mn>16</mn>
</math> reptiles on a given day, how many birds can it care for on this day?</p>$SATQ$, $SATQ$[{"id":"369944c4-3321-4f86-9391-4eda6ae0a768","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"42eb7433-7e43-40c1-a2dd-32e600540cc1","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"08d48f03-35bc-4692-981d-bb8cd13e13d2","content":"<p><math alttext=\"40\"><mn>40</mn>\n</math></p>"},{"id":"988c6865-52f3-418c-ad3a-8010b02b5a95","content":"<p><math alttext=\"80\"><mn>80</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["369944c4-3321-4f86-9391-4eda6ae0a768"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. The number of birds can be found by calculating the value of <math alttext="b"><mi>b</mi>
</math> when <math alttext="r equals 16"><mrow>
	<mi>r</mi>
	<mo>=</mo>
	<mn>16</mn>
</mrow>
</math> in the given equation. Substituting <math alttext="16"><mn>16</mn>
</math> for <math alttext="r"><mi>r</mi>
</math> in the given equation yields <math alttext="2.5 b plus 5 left parenthesis 16 right parenthesis equals 80"><mn>2.5</mn><mi>b</mi><mo>+</mo><mn>5</mn><mfenced><mn>16</mn></mfenced><mo>=</mo><mn>80</mn></math>, or <math alttext="2.5 b plus 80 equals 80"><mrow>
	<mrow>
		<mrow>
			<mn>2.5</mn>
			<mi>b</mi>
		</mrow>
		<mo>+</mo>
		<mn>80</mn>
	</mrow>
	<mo>=</mo>
	<mn>80</mn>
</mrow>
</math>. Subtracting <math alttext="80"><mn>80</mn>
</math> from both sides of this equation yields <math alttext="2.5 b equals 0"><mrow>
	<mrow>
		<mn>2.5</mn>
		<mi>b</mi>
	</mrow>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>. Dividing both sides of this equation by <math alttext="2.5"><mn>2.5</mn>
</math> yields <math alttext="b equals 0"><mrow>
	<mi>b</mi>
	<mo>=</mo>
	<mn>0</mn>
</mrow>
</math>. Therefore, if the business cares for <math alttext="16"><mn>16</mn>
</math> reptiles on a given day, it can care for <math alttext="0"><mn>0</mn>
</math> birds on this day.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"637022d2","external_id":"eb660cfe-6d9e-465b-a9a3-9b5a5ae60195","disclosed_item_id":null,"source":"qbank","vaultid":"b2f01f53-6c04-4a97-9221-7f87684c58f8","uId":"c750517a-f0ef-4435-b4da-d8c2a0974000","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"2.5 b plus 5 r equals 80\"><mn>2.5</mn><mi>b</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>=</mo><mn>80</mn></math></p>\n<p style=\"text-align: left;\">The given equation describes the relationship between the number of birds, <math alttext=\"b\"><mi>b</mi>\n</math>, and the number of reptiles, <math alttext=\"r\"><mi>r</mi>\n</math>, that can be cared for at a pet care business on a given day. If the business cares for <math alttext=\"16\"><mn>16</mn>\n</math> reptiles on a given day, how many birds can it care for on this day?</p>","answerOptions":[{"id":"369944c4-3321-4f86-9391-4eda6ae0a768","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"42eb7433-7e43-40c1-a2dd-32e600540cc1","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"08d48f03-35bc-4692-981d-bb8cd13e13d2","content":"<p><math alttext=\"40\"><mn>40</mn>\n</math></p>"},{"id":"988c6865-52f3-418c-ad3a-8010b02b5a95","content":"<p><math alttext=\"80\"><mn>80</mn>\n</math></p>"}],"keys":["369944c4-3321-4f86-9391-4eda6ae0a768"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. The number of birds can be found by calculating the value of <math alttext=\"b\"><mi>b</mi>\n</math> when <math alttext=\"r equals 16\"><mrow>\n\t<mi>r</mi>\n\t<mo>=</mo>\n\t<mn>16</mn>\n</mrow>\n</math> in the given equation. Substituting <math alttext=\"16\"><mn>16</mn>\n</math> for <math alttext=\"r\"><mi>r</mi>\n</math> in the given equation yields <math alttext=\"2.5 b plus 5 left parenthesis 16 right parenthesis equals 80\"><mn>2.5</mn><mi>b</mi><mo>+</mo><mn>5</mn><mfenced><mn>16</mn></mfenced><mo>=</mo><mn>80</mn></math>, or <math alttext=\"2.5 b plus 80 equals 80\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2.5</mn>\n\t\t\t<mi>b</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>80</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>80</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"80\"><mn>80</mn>\n</math> from both sides of this equation yields <math alttext=\"2.5 b equals 0\"><mrow>\n\t<mrow>\n\t\t<mn>2.5</mn>\n\t\t<mi>b</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. Dividing both sides of this equation by <math alttext=\"2.5\"><mn>2.5</mn>\n</math> yields <math alttext=\"b equals 0\"><mrow>\n\t<mi>b</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. Therefore, if the business cares for <math alttext=\"16\"><mn>16</mn>\n</math> reptiles on a given day, it can care for <math alttext=\"0\"><mn>0</mn>\n</math> birds on this day.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959815,"pPcc":"SAT#H","questionId":"637022d2","skill_cd":"H.C.","score_band_range_cd":4,"skill_desc":"Linear equations in two variables","createDate":1691007959815,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"eb660cfe-6d9e-465b-a9a3-9b5a5ae60195","primary_class_cd":"H","uId":"c750517a-f0ef-4435-b4da-d8c2a0974000","difficulty":"M"},"raw_detail":{"keys":["369944c4-3321-4f86-9391-4eda6ae0a768"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. The number of birds can be found by calculating the value of <math alttext=\"b\"><mi>b</mi>\n</math> when <math alttext=\"r equals 16\"><mrow>\n\t<mi>r</mi>\n\t<mo>=</mo>\n\t<mn>16</mn>\n</mrow>\n</math> in the given equation. Substituting <math alttext=\"16\"><mn>16</mn>\n</math> for <math alttext=\"r\"><mi>r</mi>\n</math> in the given equation yields <math alttext=\"2.5 b plus 5 left parenthesis 16 right parenthesis equals 80\"><mn>2.5</mn><mi>b</mi><mo>+</mo><mn>5</mn><mfenced><mn>16</mn></mfenced><mo>=</mo><mn>80</mn></math>, or <math alttext=\"2.5 b plus 80 equals 80\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>2.5</mn>\n\t\t\t<mi>b</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>80</mn>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>80</mn>\n</mrow>\n</math>. Subtracting <math alttext=\"80\"><mn>80</mn>\n</math> from both sides of this equation yields <math alttext=\"2.5 b equals 0\"><mrow>\n\t<mrow>\n\t\t<mn>2.5</mn>\n\t\t<mi>b</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. Dividing both sides of this equation by <math alttext=\"2.5\"><mn>2.5</mn>\n</math> yields <math alttext=\"b equals 0\"><mrow>\n\t<mi>b</mi>\n\t<mo>=</mo>\n\t<mn>0</mn>\n</mrow>\n</math>. Therefore, if the business cares for <math alttext=\"16\"><mn>16</mn>\n</math> reptiles on a given day, it can care for <math alttext=\"0\"><mn>0</mn>\n</math> birds on this day.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"2.5 b plus 5 r equals 80\"><mn>2.5</mn><mi>b</mi><mo>+</mo><mn>5</mn><mi>r</mi><mo>=</mo><mn>80</mn></math></p>\n<p style=\"text-align: left;\">The given equation describes the relationship between the number of birds, <math alttext=\"b\"><mi>b</mi>\n</math>, and the number of reptiles, <math alttext=\"r\"><mi>r</mi>\n</math>, that can be cared for at a pet care business on a given day. If the business cares for <math alttext=\"16\"><mn>16</mn>\n</math> reptiles on a given day, how many birds can it care for on this day?</p>","externalid":"eb660cfe-6d9e-465b-a9a3-9b5a5ae60195","templateid":"07a5a3c3-78c1-45e6-88fd-0d783ec2771b","vaultid":"b2f01f53-6c04-4a97-9221-7f87684c58f8","type":"mcq","answerOptions":[{"id":"369944c4-3321-4f86-9391-4eda6ae0a768","content":"<p><math alttext=\"0\"><mn>0</mn>\n</math></p>"},{"id":"42eb7433-7e43-40c1-a2dd-32e600540cc1","content":"<p><math alttext=\"5\"><mn>5</mn>\n</math></p>"},{"id":"08d48f03-35bc-4692-981d-bb8cd13e13d2","content":"<p><math alttext=\"40\"><mn>40</mn>\n</math></p>"},{"id":"988c6865-52f3-418c-ad3a-8010b02b5a95","content":"<p><math alttext=\"80\"><mn>80</mn>\n</math></p>"}],"correct_answer":["A"]},"createDate":1691007959815,"updateDate":1691007959815}$SATQ$::jsonb, 1691007959815, 1691007959815),
    ($SATQ$63be6c9a$SATQ$, $SATQ$b0ba00cd-ad0e-4693-864f-2a0283cf64f7$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$M$SATQ$, 5, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">In the&nbsp;<em>xy</em>-plane, line <math alttext="s"><mi>s</mi>
</math> passes through the point <math alttext="left parenthesis 0 comma 0 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math> and is parallel to the line represented by the equation <math alttext="y equals 18 x plus 2"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mn>18</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>2</mn>
	</mrow>
</mrow>
</math>. If line <math alttext="s"><mi>s</mi>
</math> also passes through the point&nbsp;<math alttext="left parenthesis 4 comma d right parenthesis"><mfenced><mrow><mrow><mn>4</mn></mrow><mo>,</mo><mi>d</mi></mrow></mfenced></math>, what is the value of <math alttext="d"><mi>d</mi>
</math>?</p>$SATQ$, $SATQ$[{"id":"1ffc3167-ea91-46b6-b88e-83cc68a11934","content":"<p><math alttext=\"2\"><mn>2</mn>\n</math></p>"},{"id":"11ce3d33-a624-443b-80f3-708ca379e6ba","content":"<p><math alttext=\"18\"><mn>18</mn>\n</math></p>"},{"id":"0de667c5-1700-4739-b351-24c05d583649","content":"<p><math alttext=\"72\"><mn>72</mn>\n</math></p>"},{"id":"2b915057-9173-4a38-bd49-c559db033a5e","content":"<p><math alttext=\"74\"><mn>74</mn>\n</math></p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["0de667c5-1700-4739-b351-24c05d583649"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. A line in the <em>xy</em>-plane can be represented by an equation of the form <math alttext="y equals m x plus b"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext="m"><mi>m</mi>
</math> is the slope and <math alttext="b"><mi>b</mi>
</math> is the <em>y</em>-coordinate of the <em>y</em>-intercept of the line. It's given that line <math alttext="s"><mi>s</mi>
</math> passes through the point <math alttext="left parenthesis 0 comma 0 right parenthesis"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Therefore, the <em>y</em>-coordinate of the <em>y</em>-intercept of line <math alttext="s"><mi>s</mi>
</math> is <math alttext="0"><mn>0</mn>
</math>. It's also given that line <math alttext="s"><mi>s</mi>
</math> is parallel to the line represented by the equation <math alttext="y equals 18 x plus 2"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>. Since parallel lines have the same slope, it follows that the slope of line <math alttext="s"><mi>s</mi>
</math> is <math alttext="18"><mn>18</mn>
</math>. Therefore, line <math alttext="s"><mi>s</mi>
</math> can be represented by the equation <math alttext="y equals m x plus b"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext="m equals 18"><mrow>
<mi>m</mi>
<mo>=</mo>
<mn>18</mn>
</mrow>
</math> and <math alttext="b equals 0"><mrow>
<mi>b</mi>
<mo>=</mo>
<mn>0</mn>
</mrow>
</math>. Substituting <math alttext="18"><mn>18</mn>
</math> for <math alttext="m"><mi>m</mi>
</math> and <math alttext="0"><mn>0</mn>
</math> for <math alttext="b"><mi>b</mi>
</math> in <math alttext="y equals m x plus b"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields the equation <math alttext="y equals 18 x plus 0"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>0</mn></math>, or <math alttext="y equals 18 x"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi></math>. If line <math alttext="s"><mi>s</mi>
</math> passes through the point <math alttext="left parenthesis 4 comma d right parenthesis"><mfenced><mrow><mn>4</mn><mo>,</mo><mi>d</mi></mrow></mfenced></math>, then when <math alttext="x equals 4"><mrow>
<mi>x</mi>
<mo>=</mo>
<mn>4</mn>
</mrow>
</math>, <math alttext="y equals d"><mrow>
<mi>y</mi>
<mo>=</mo>
<mi>d</mi>
</mrow>
</math> for the equation <math alttext="y equals 18 x"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi></math>. Substituting <math alttext="4"><mn>4</mn>
</math> for <math alttext="x"><mi>x</mi>
</math> and <math alttext="d"><mi>d</mi>
</math> for <math alttext="y"><mi>y</mi>
</math> in this equation yields <math alttext="d equals 18 left parenthesis 4 right parenthesis"><mi>d</mi><mo>=</mo><mn>18</mn><mfenced><mn>4</mn></mfenced></math>, or <math alttext="d equals 72"><mrow>
<mi>d</mi>
<mo>=</mo>
<mn>72</mn>
</mrow>
</math>.</p>
<p style="text-align: left;">Choice A is incorrect. This is the <em>y</em>-coordinate of the <em>y</em>-intercept of the line represented by the equation <math alttext="y equals 18 x plus 2"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>.</p>
<p style="text-align: left;">Choice B is incorrect. This is the slope of the line represented by the equation <math alttext="y equals 18 x plus 2"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>.</p>
<p style="text-align: left;">Choice D is incorrect. The line represented by the equation <math alttext="y equals 18 x plus 2"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>, not line <math alttext="s"><mi>s</mi>
</math>, passes through the point <math alttext="left parenthesis 4 comma 74 right parenthesis"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>74</mn></mrow></mfenced></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"63be6c9a","external_id":"b0ba00cd-ad0e-4693-864f-2a0283cf64f7","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"f4166e28-3e78-42a2-9a70-a59ff8d9cf60","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"M","score_band_range_cd":5,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">In the&nbsp;<em>xy</em>-plane, line <math alttext=\"s\"><mi>s</mi>\n</math> passes through the point <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math> and is parallel to the line represented by the equation <math alttext=\"y equals 18 x plus 2\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>18</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>2</mn>\n\t</mrow>\n</mrow>\n</math>. If line <math alttext=\"s\"><mi>s</mi>\n</math> also passes through the point&nbsp;<math alttext=\"left parenthesis 4 comma d right parenthesis\"><mfenced><mrow><mrow><mn>4</mn></mrow><mo>,</mo><mi>d</mi></mrow></mfenced></math>, what is the value of <math alttext=\"d\"><mi>d</mi>\n</math>?</p>","answerOptions":[{"id":"1ffc3167-ea91-46b6-b88e-83cc68a11934","content":"<p><math alttext=\"2\"><mn>2</mn>\n</math></p>"},{"id":"11ce3d33-a624-443b-80f3-708ca379e6ba","content":"<p><math alttext=\"18\"><mn>18</mn>\n</math></p>"},{"id":"0de667c5-1700-4739-b351-24c05d583649","content":"<p><math alttext=\"72\"><mn>72</mn>\n</math></p>"},{"id":"2b915057-9173-4a38-bd49-c559db033a5e","content":"<p><math alttext=\"74\"><mn>74</mn>\n</math></p>"}],"keys":["0de667c5-1700-4739-b351-24c05d583649"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. A line in the <em>xy</em>-plane can be represented by an equation of the form <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope and <math alttext=\"b\"><mi>b</mi>\n</math> is the <em>y</em>-coordinate of the <em>y</em>-intercept of the line. It's given that line <math alttext=\"s\"><mi>s</mi>\n</math> passes through the point <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Therefore, the <em>y</em>-coordinate of the <em>y</em>-intercept of line <math alttext=\"s\"><mi>s</mi>\n</math> is <math alttext=\"0\"><mn>0</mn>\n</math>. It's also given that line <math alttext=\"s\"><mi>s</mi>\n</math> is parallel to the line represented by the equation <math alttext=\"y equals 18 x plus 2\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>. Since parallel lines have the same slope, it follows that the slope of line <math alttext=\"s\"><mi>s</mi>\n</math> is <math alttext=\"18\"><mn>18</mn>\n</math>. Therefore, line <math alttext=\"s\"><mi>s</mi>\n</math> can be represented by the equation <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext=\"m equals 18\"><mrow>\n<mi>m</mi>\n<mo>=</mo>\n<mn>18</mn>\n</mrow>\n</math> and <math alttext=\"b equals 0\"><mrow>\n<mi>b</mi>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math>. Substituting <math alttext=\"18\"><mn>18</mn>\n</math> for <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"0\"><mn>0</mn>\n</math> for <math alttext=\"b\"><mi>b</mi>\n</math> in <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields the equation <math alttext=\"y equals 18 x plus 0\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>0</mn></math>, or <math alttext=\"y equals 18 x\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi></math>. If line <math alttext=\"s\"><mi>s</mi>\n</math> passes through the point <math alttext=\"left parenthesis 4 comma d right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mi>d</mi></mrow></mfenced></math>, then when <math alttext=\"x equals 4\"><mrow>\n<mi>x</mi>\n<mo>=</mo>\n<mn>4</mn>\n</mrow>\n</math>, <math alttext=\"y equals d\"><mrow>\n<mi>y</mi>\n<mo>=</mo>\n<mi>d</mi>\n</mrow>\n</math> for the equation <math alttext=\"y equals 18 x\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi></math>. Substituting <math alttext=\"4\"><mn>4</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"d\"><mi>d</mi>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in this equation yields <math alttext=\"d equals 18 left parenthesis 4 right parenthesis\"><mi>d</mi><mo>=</mo><mn>18</mn><mfenced><mn>4</mn></mfenced></math>, or <math alttext=\"d equals 72\"><mrow>\n<mi>d</mi>\n<mo>=</mo>\n<mn>72</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This is the <em>y</em>-coordinate of the <em>y</em>-intercept of the line represented by the equation <math alttext=\"y equals 18 x plus 2\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the slope of the line represented by the equation <math alttext=\"y equals 18 x plus 2\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. The line represented by the equation <math alttext=\"y equals 18 x plus 2\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>, not line <math alttext=\"s\"><mi>s</mi>\n</math>, passes through the point <math alttext=\"left parenthesis 4 comma 74 right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>74</mn></mrow></mfenced></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554985,"pPcc":"SAT#H","questionId":"63be6c9a","skill_cd":"H.C.","score_band_range_cd":5,"skill_desc":"Linear equations in two variables","createDate":1743430554985,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"b0ba00cd-ad0e-4693-864f-2a0283cf64f7","primary_class_cd":"H","uId":"f4166e28-3e78-42a2-9a70-a59ff8d9cf60","difficulty":"M"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">In the&nbsp;<em>xy</em>-plane, line <math alttext=\"s\"><mi>s</mi>\n</math> passes through the point <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math> and is parallel to the line represented by the equation <math alttext=\"y equals 18 x plus 2\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>18</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>2</mn>\n\t</mrow>\n</mrow>\n</math>. If line <math alttext=\"s\"><mi>s</mi>\n</math> also passes through the point&nbsp;<math alttext=\"left parenthesis 4 comma d right parenthesis\"><mfenced><mrow><mrow><mn>4</mn></mrow><mo>,</mo><mi>d</mi></mrow></mfenced></math>, what is the value of <math alttext=\"d\"><mi>d</mi>\n</math>?</p>","keys":["0de667c5-1700-4739-b351-24c05d583649"],"answerOptions":[{"id":"1ffc3167-ea91-46b6-b88e-83cc68a11934","content":"<p><math alttext=\"2\"><mn>2</mn>\n</math></p>"},{"id":"11ce3d33-a624-443b-80f3-708ca379e6ba","content":"<p><math alttext=\"18\"><mn>18</mn>\n</math></p>"},{"id":"0de667c5-1700-4739-b351-24c05d583649","content":"<p><math alttext=\"72\"><mn>72</mn>\n</math></p>"},{"id":"2b915057-9173-4a38-bd49-c559db033a5e","content":"<p><math alttext=\"74\"><mn>74</mn>\n</math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice C is correct. A line in the <em>xy</em>-plane can be represented by an equation of the form <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext=\"m\"><mi>m</mi>\n</math> is the slope and <math alttext=\"b\"><mi>b</mi>\n</math> is the <em>y</em>-coordinate of the <em>y</em>-intercept of the line. It's given that line <math alttext=\"s\"><mi>s</mi>\n</math> passes through the point <math alttext=\"left parenthesis 0 comma 0 right parenthesis\"><mfenced><mrow><mn>0</mn><mo>,</mo><mn>0</mn></mrow></mfenced></math>. Therefore, the <em>y</em>-coordinate of the <em>y</em>-intercept of line <math alttext=\"s\"><mi>s</mi>\n</math> is <math alttext=\"0\"><mn>0</mn>\n</math>. It's also given that line <math alttext=\"s\"><mi>s</mi>\n</math> is parallel to the line represented by the equation <math alttext=\"y equals 18 x plus 2\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>. Since parallel lines have the same slope, it follows that the slope of line <math alttext=\"s\"><mi>s</mi>\n</math> is <math alttext=\"18\"><mn>18</mn>\n</math>. Therefore, line <math alttext=\"s\"><mi>s</mi>\n</math> can be represented by the equation <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math>, where <math alttext=\"m equals 18\"><mrow>\n<mi>m</mi>\n<mo>=</mo>\n<mn>18</mn>\n</mrow>\n</math> and <math alttext=\"b equals 0\"><mrow>\n<mi>b</mi>\n<mo>=</mo>\n<mn>0</mn>\n</mrow>\n</math>. Substituting <math alttext=\"18\"><mn>18</mn>\n</math> for <math alttext=\"m\"><mi>m</mi>\n</math> and <math alttext=\"0\"><mn>0</mn>\n</math> for <math alttext=\"b\"><mi>b</mi>\n</math> in <math alttext=\"y equals m x plus b\"><mi>y</mi><mo>=</mo><mi>m</mi><mi>x</mi><mo>+</mo><mi>b</mi></math> yields the equation <math alttext=\"y equals 18 x plus 0\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>0</mn></math>, or <math alttext=\"y equals 18 x\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi></math>. If line <math alttext=\"s\"><mi>s</mi>\n</math> passes through the point <math alttext=\"left parenthesis 4 comma d right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mi>d</mi></mrow></mfenced></math>, then when <math alttext=\"x equals 4\"><mrow>\n<mi>x</mi>\n<mo>=</mo>\n<mn>4</mn>\n</mrow>\n</math>, <math alttext=\"y equals d\"><mrow>\n<mi>y</mi>\n<mo>=</mo>\n<mi>d</mi>\n</mrow>\n</math> for the equation <math alttext=\"y equals 18 x\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi></math>. Substituting <math alttext=\"4\"><mn>4</mn>\n</math> for <math alttext=\"x\"><mi>x</mi>\n</math> and <math alttext=\"d\"><mi>d</mi>\n</math> for <math alttext=\"y\"><mi>y</mi>\n</math> in this equation yields <math alttext=\"d equals 18 left parenthesis 4 right parenthesis\"><mi>d</mi><mo>=</mo><mn>18</mn><mfenced><mn>4</mn></mfenced></math>, or <math alttext=\"d equals 72\"><mrow>\n<mi>d</mi>\n<mo>=</mo>\n<mn>72</mn>\n</mrow>\n</math>.</p>\n<p style=\"text-align: left;\">Choice A is incorrect. This is the <em>y</em>-coordinate of the <em>y</em>-intercept of the line represented by the equation <math alttext=\"y equals 18 x plus 2\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the slope of the line represented by the equation <math alttext=\"y equals 18 x plus 2\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. The line represented by the equation <math alttext=\"y equals 18 x plus 2\"><mi>y</mi><mo>=</mo><mn>18</mn><mi>x</mi><mo>+</mo><mn>2</mn></math>, not line <math alttext=\"s\"><mi>s</mi>\n</math>, passes through the point <math alttext=\"left parenthesis 4 comma 74 right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>74</mn></mrow></mfenced></math>.</p>","externalid":"b0ba00cd-ad0e-4693-864f-2a0283cf64f7","correct_answer":["C"]},"createDate":1743430554985,"updateDate":1743430554985}$SATQ$::jsonb, 1743430554985, 1743430554985),
    ($SATQ$63d03c0b$SATQ$, $SATQ$4c14e865-e027-430a-9613-c80acd0346bf$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: left;">For a particular car, the linear function <math alttext="f"><mi>f</mi>
</math> gives the predicted power, in brake horsepower <math alttext="left parenthesis bhp right parenthesis"><mfenced><mtext>bhp</mtext></mfenced></math>, for engine speeds between <math alttext="1,000 revolutions per minute left parenthesis rpm right parenthesis"><mrow><mn>1,000</mn></mrow><mo>&#160;</mo><mtext>revolutions</mtext><mo>&#160;</mo><mtext>per</mtext><mo>&#160;</mo><mtext>minute</mtext><mo>&#160;</mo><mfenced><mtext>rpm</mtext></mfenced></math> and <math alttext="6,000 rpm"><mrow><mn>6,000</mn></mrow><mo>&#160;</mo><mtext>rpm</mtext></math>. According to this function, the car's predicted power is <math alttext="433 bhp"><mrow><mn>433</mn></mrow><mo>&#160;</mo><mtext>bhp</mtext></math> at an engine speed of <math alttext="3,331 rpm"><mrow><mn>3,331</mn></mrow><mo>&#160;</mo><mtext>rpm</mtext></math> and <math alttext="600 bhp"><mn>600</mn><mo>&#160;</mo><mtext>bhp</mtext></math> at an engine speed of <math alttext="4,500 rpm"><mrow><mn>4,500</mn></mrow><mo>&#160;</mo><mtext>rpm</mtext></math>. The equation <math alttext="f left parenthesis x right parenthesis equals one seventh left parenthesis x minus a right parenthesis plus 433"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mfenced><mrow><mi>x</mi><mo>-</mo><mi>a</mi></mrow></mfenced><mo>+</mo><mrow><mn>433</mn></mrow></math> defines <math alttext="f"><mi>f</mi>
</math>, where <math alttext="x"><mi>x</mi>
</math> is the engine speed, <math alttext="in rpm"><mtext>in</mtext><mo>&#160;</mo><mtext>rpm</mtext></math>, and <math alttext="a"><mi>a</mi>
</math> is a constant. What is the value of <math alttext="a"><mi>a</mi>
</math>?</p>$SATQ$, NULL, $SATQ$["3331"]$SATQ$::jsonb, $SATQ$["3331"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3,331"><mn>3,331</mn></math>. For engine speeds between <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="1,000 revolutions per minute left parenthesis rpm right parenthesis"><mn>1,000</mn><mo>&#160;</mo><mtext>revolutions&#160;per&#160;minute</mtext><mo>&#160;</mo><mo>(</mo><mtext>rpm</mtext><mo>)</mo></math> and <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="6,000 rpm"><mn>6,000</mn><mo>&#160;</mo><mtext>rpm</mtext></math>, it&rsquo;s given that the equation <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="f left parenthesis x right parenthesis equals one seventh left parenthesis x minus a right parenthesis plus 433"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mo>(</mo><mi>x</mi><mo>&#8722;</mo><mi>a</mi><mo>)</mo><mo>+</mo><mn>433</mn></math> defines the linear function <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="f"><mi>f</mi></math> and gives the predicted power, in brake horsepower <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis bhp right parenthesis"><mo>(</mo><mtext>bhp</mtext><mo>)</mo></math>, at an engine speed of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x rpm"><mi>x</mi><mo>&#160;</mo><mtext>rpm</mtext></math>, where <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="a"><mi>a</mi></math> is a constant. It&rsquo;s also given that the car's predicted power is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="433 bhp"><mn>433</mn><mo>&#160;</mo><mtext>bhp</mtext></math>&nbsp;at an engine speed of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3,331 rpm"><mn>3,331</mn><mo>&#160;</mo><mtext>rpm</mtext></math>. Substituting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3,331"><mn>3,331</mn></math> for <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x"><mi>x</mi></math> and <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="433"><mn>433</mn></math> for <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="f left parenthesis x right parenthesis"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> in the equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="433 equals one seventh left parenthesis 3,331 minus a right parenthesis plus 433"><mn>433</mn><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mo>(</mo><mn>3,331</mn><mo>&#8722;</mo><mi>a</mi><mo>)</mo><mo>+</mo><mn>433</mn></math>. Subtracting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="433"><mn>433</mn></math> from both sides of this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="0 equals one seventh left parenthesis 3,331 minus a right parenthesis"><mn>0</mn><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mo>(</mo><mn>3,331</mn><mo>&#8722;</mo><mi>a</mi><mo>)</mo></math>. Multiplying both sides of this equation by <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="7"><mn>7</mn></math> yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="0 equals 3,331 minus a"><mn>0</mn><mo>=</mo><mn>3,331</mn><mo>&#8722;</mo><mi>a</mi></math>. Adding <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="a"><mi>a</mi></math> to both sides of this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="a equals 3,331"><mi>a</mi><mo>=</mo><mn>3,331</mn></math>. Thus, the value of <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="a"><mi>a</mi></math> is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="3,331"><mn>3,331</mn></math>.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"63d03c0b","external_id":"4c14e865-e027-430a-9613-c80acd0346bf","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"b3c42b2a-d669-4dcd-8ee3-ccedb0a88f54","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"H","score_band_range_cd":7,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: left;\">For a particular car, the linear function <math alttext=\"f\"><mi>f</mi>\n</math> gives the predicted power, in brake horsepower <math alttext=\"left parenthesis bhp right parenthesis\"><mfenced><mtext>bhp</mtext></mfenced></math>, for engine speeds between <math alttext=\"1,000 revolutions per minute left parenthesis rpm right parenthesis\"><mrow><mn>1,000</mn></mrow><mo>&#160;</mo><mtext>revolutions</mtext><mo>&#160;</mo><mtext>per</mtext><mo>&#160;</mo><mtext>minute</mtext><mo>&#160;</mo><mfenced><mtext>rpm</mtext></mfenced></math> and <math alttext=\"6,000 rpm\"><mrow><mn>6,000</mn></mrow><mo>&#160;</mo><mtext>rpm</mtext></math>. According to this function, the car's predicted power is <math alttext=\"433 bhp\"><mrow><mn>433</mn></mrow><mo>&#160;</mo><mtext>bhp</mtext></math> at an engine speed of <math alttext=\"3,331 rpm\"><mrow><mn>3,331</mn></mrow><mo>&#160;</mo><mtext>rpm</mtext></math> and <math alttext=\"600 bhp\"><mn>600</mn><mo>&#160;</mo><mtext>bhp</mtext></math> at an engine speed of <math alttext=\"4,500 rpm\"><mrow><mn>4,500</mn></mrow><mo>&#160;</mo><mtext>rpm</mtext></math>. The equation <math alttext=\"f left parenthesis x right parenthesis equals one seventh left parenthesis x minus a right parenthesis plus 433\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mfenced><mrow><mi>x</mi><mo>-</mo><mi>a</mi></mrow></mfenced><mo>+</mo><mrow><mn>433</mn></mrow></math> defines <math alttext=\"f\"><mi>f</mi>\n</math>, where <math alttext=\"x\"><mi>x</mi>\n</math> is the engine speed, <math alttext=\"in rpm\"><mtext>in</mtext><mo>&#160;</mo><mtext>rpm</mtext></math>, and <math alttext=\"a\"><mi>a</mi>\n</math> is a constant. What is the value of <math alttext=\"a\"><mi>a</mi>\n</math>?</p>","answerOptions":null,"keys":["3331"],"correct_answer":["3331"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3,331\"><mn>3,331</mn></math>. For engine speeds between <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"1,000 revolutions per minute left parenthesis rpm right parenthesis\"><mn>1,000</mn><mo>&#160;</mo><mtext>revolutions&#160;per&#160;minute</mtext><mo>&#160;</mo><mo>(</mo><mtext>rpm</mtext><mo>)</mo></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6,000 rpm\"><mn>6,000</mn><mo>&#160;</mo><mtext>rpm</mtext></math>, it&rsquo;s given that the equation <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis equals one seventh left parenthesis x minus a right parenthesis plus 433\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mo>(</mo><mi>x</mi><mo>&#8722;</mo><mi>a</mi><mo>)</mo><mo>+</mo><mn>433</mn></math> defines the linear function <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f\"><mi>f</mi></math> and gives the predicted power, in brake horsepower <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis bhp right parenthesis\"><mo>(</mo><mtext>bhp</mtext><mo>)</mo></math>, at an engine speed of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x rpm\"><mi>x</mi><mo>&#160;</mo><mtext>rpm</mtext></math>, where <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> is a constant. It&rsquo;s also given that the car's predicted power is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"433 bhp\"><mn>433</mn><mo>&#160;</mo><mtext>bhp</mtext></math>&nbsp;at an engine speed of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3,331 rpm\"><mn>3,331</mn><mo>&#160;</mo><mtext>rpm</mtext></math>. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3,331\"><mn>3,331</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"433\"><mn>433</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> in the equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"433 equals one seventh left parenthesis 3,331 minus a right parenthesis plus 433\"><mn>433</mn><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mo>(</mo><mn>3,331</mn><mo>&#8722;</mo><mi>a</mi><mo>)</mo><mo>+</mo><mn>433</mn></math>. Subtracting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"433\"><mn>433</mn></math> from both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0 equals one seventh left parenthesis 3,331 minus a right parenthesis\"><mn>0</mn><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mo>(</mo><mn>3,331</mn><mo>&#8722;</mo><mi>a</mi><mo>)</mo></math>. Multiplying both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7\"><mn>7</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0 equals 3,331 minus a\"><mn>0</mn><mo>=</mo><mn>3,331</mn><mo>&#8722;</mo><mi>a</mi></math>. Adding <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> to both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a equals 3,331\"><mi>a</mi><mo>=</mo><mn>3,331</mn></math>. Thus, the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3,331\"><mn>3,331</mn></math>.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1776362727992,"pPcc":"SAT#H","questionId":"63d03c0b","skill_cd":"H.B.","score_band_range_cd":7,"skill_desc":"Linear functions","createDate":1776362727992,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"4c14e865-e027-430a-9613-c80acd0346bf","primary_class_cd":"H","uId":"b3c42b2a-d669-4dcd-8ee3-ccedb0a88f54","difficulty":"H"},"raw_detail":{"type":"spr","stem":"<p style=\"text-align: left;\">For a particular car, the linear function <math alttext=\"f\"><mi>f</mi>\n</math> gives the predicted power, in brake horsepower <math alttext=\"left parenthesis bhp right parenthesis\"><mfenced><mtext>bhp</mtext></mfenced></math>, for engine speeds between <math alttext=\"1,000 revolutions per minute left parenthesis rpm right parenthesis\"><mrow><mn>1,000</mn></mrow><mo>&#160;</mo><mtext>revolutions</mtext><mo>&#160;</mo><mtext>per</mtext><mo>&#160;</mo><mtext>minute</mtext><mo>&#160;</mo><mfenced><mtext>rpm</mtext></mfenced></math> and <math alttext=\"6,000 rpm\"><mrow><mn>6,000</mn></mrow><mo>&#160;</mo><mtext>rpm</mtext></math>. According to this function, the car's predicted power is <math alttext=\"433 bhp\"><mrow><mn>433</mn></mrow><mo>&#160;</mo><mtext>bhp</mtext></math> at an engine speed of <math alttext=\"3,331 rpm\"><mrow><mn>3,331</mn></mrow><mo>&#160;</mo><mtext>rpm</mtext></math> and <math alttext=\"600 bhp\"><mn>600</mn><mo>&#160;</mo><mtext>bhp</mtext></math> at an engine speed of <math alttext=\"4,500 rpm\"><mrow><mn>4,500</mn></mrow><mo>&#160;</mo><mtext>rpm</mtext></math>. The equation <math alttext=\"f left parenthesis x right parenthesis equals one seventh left parenthesis x minus a right parenthesis plus 433\"><mi>f</mi><mfenced><mi>x</mi></mfenced><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mfenced><mrow><mi>x</mi><mo>-</mo><mi>a</mi></mrow></mfenced><mo>+</mo><mrow><mn>433</mn></mrow></math> defines <math alttext=\"f\"><mi>f</mi>\n</math>, where <math alttext=\"x\"><mi>x</mi>\n</math> is the engine speed, <math alttext=\"in rpm\"><mtext>in</mtext><mo>&#160;</mo><mtext>rpm</mtext></math>, and <math alttext=\"a\"><mi>a</mi>\n</math> is a constant. What is the value of <math alttext=\"a\"><mi>a</mi>\n</math>?</p>","keys":["3331"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3,331\"><mn>3,331</mn></math>. For engine speeds between <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"1,000 revolutions per minute left parenthesis rpm right parenthesis\"><mn>1,000</mn><mo>&#160;</mo><mtext>revolutions&#160;per&#160;minute</mtext><mo>&#160;</mo><mo>(</mo><mtext>rpm</mtext><mo>)</mo></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6,000 rpm\"><mn>6,000</mn><mo>&#160;</mo><mtext>rpm</mtext></math>, it&rsquo;s given that the equation <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis equals one seventh left parenthesis x minus a right parenthesis plus 433\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mo>(</mo><mi>x</mi><mo>&#8722;</mo><mi>a</mi><mo>)</mo><mo>+</mo><mn>433</mn></math> defines the linear function <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f\"><mi>f</mi></math> and gives the predicted power, in brake horsepower <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis bhp right parenthesis\"><mo>(</mo><mtext>bhp</mtext><mo>)</mo></math>, at an engine speed of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x rpm\"><mi>x</mi><mo>&#160;</mo><mtext>rpm</mtext></math>, where <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> is a constant. It&rsquo;s also given that the car's predicted power is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"433 bhp\"><mn>433</mn><mo>&#160;</mo><mtext>bhp</mtext></math>&nbsp;at an engine speed of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3,331 rpm\"><mn>3,331</mn><mo>&#160;</mo><mtext>rpm</mtext></math>. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3,331\"><mn>3,331</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> and <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"433\"><mn>433</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"f left parenthesis x right parenthesis\"><mi>f</mi><mo>(</mo><mi>x</mi><mo>)</mo></math> in the equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"433 equals one seventh left parenthesis 3,331 minus a right parenthesis plus 433\"><mn>433</mn><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mo>(</mo><mn>3,331</mn><mo>&#8722;</mo><mi>a</mi><mo>)</mo><mo>+</mo><mn>433</mn></math>. Subtracting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"433\"><mn>433</mn></math> from both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0 equals one seventh left parenthesis 3,331 minus a right parenthesis\"><mn>0</mn><mo>=</mo><mfrac><mn>1</mn><mn>7</mn></mfrac><mo>(</mo><mn>3,331</mn><mo>&#8722;</mo><mi>a</mi><mo>)</mo></math>. Multiplying both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"7\"><mn>7</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"0 equals 3,331 minus a\"><mn>0</mn><mo>=</mo><mn>3,331</mn><mo>&#8722;</mo><mi>a</mi></math>. Adding <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> to both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a equals 3,331\"><mi>a</mi><mo>=</mo><mn>3,331</mn></math>. Thus, the value of <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"a\"><mi>a</mi></math> is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"3,331\"><mn>3,331</mn></math>.</p>","externalid":"4c14e865-e027-430a-9613-c80acd0346bf","correct_answer":["3331"]},"createDate":1776362727992,"updateDate":1776362727992}$SATQ$::jsonb, 1776362727992, 1776362727992),
    ($SATQ$64c85440$SATQ$, NULL, NULL, $SATQ$022207-DC$SATQ$, $SATQ$disclosed$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.E.$SATQ$, $SATQ$Linear inequalities in one or two variables$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p class="stem_paragraph ">In North America, the standard width of a parking space is at least 7.5 feet and no more than 9.0 feet. A restaurant owner recently resurfaced the restaurant&rsquo;s parking lot and wants to determine the number of parking spaces, <span class="italic">n</span>, in the parking lot that could be placed perpendicular to a curb that is 135 feet long, based on the standard width of a parking space. Which of the following describes all the possible values of <span class="italic">n</span> ?</p>
$SATQ$, $SATQ$[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_000_51d1b1e6.png\" alt=\"18 is less than or equal to n, which is less than or equal to 135\"></span></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_001_12aab161.png\" alt=\"7 point 5 is less than or equal to n, which is less than or equal to 9\"></span></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_002_19e797ab.png\" alt=\"15 is less than or equal to n, which is less than or equal to 135\"></span></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_003_e9b9cfb2.png\" alt=\"15 is less than or equal to n, which is less than or equal to 18\"></span></span></p>\n"}]$SATQ$::jsonb, $SATQ$["D"]$SATQ$::jsonb, NULL, $SATQ$<p>Choice D is correct. Placing the parking spaces with the minimum width of 7.5 feet gives the maximum possible number of parking spaces. Thus, the maximum number that can be placed perpendicular to a 135-foot-long curb is <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_004_f18673a1.png" alt="135 over 7 point 5 equals 18"></span>. Placing the parking spaces with the maximum width of 9 feet gives the minimum number of parking spaces. Thus, the minimum number that can be placed perpendicular to a 135-foot-long curb is <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_005_89f568ab.png" alt="135 over 9 equals 15"></span>. Therefore, if <span class="italic">n</span> is the number of parking spaces in the lot, the range of possible values for <span class="italic">n</span> is <span class="math-container"><img align="middle" role="math" class="math-img" src="https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_006_362d47ea.png" alt="15 is less than or equal to n, which is less than or equal to 18"></span>.<p>Choices A and C are incorrect. These choices equate the length of the curb with the maximum possible number of parking spaces. Choice B is incorrect. This is the range of possible values for the width of a parking space instead of the range of possible values for the number of parking spaces.</p><p>&nbsp;</p></p>
$SATQ$, false, 7, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ$Multiple Choice$SATQ$, $SATQ$Math$SATQ$, $SATQ${"questionId":"64c85440","external_id":null,"disclosed_item_id":"022207-DC","source":"disclosed","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.E.","skill_desc":"Linear inequalities in one or two variables","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p class=\"stem_paragraph \">In North America, the standard width of a parking space is at least 7.5 feet and no more than 9.0 feet. A restaurant owner recently resurfaced the restaurant&rsquo;s parking lot and wants to determine the number of parking spaces, <span class=\"italic\">n</span>, in the parking lot that could be placed perpendicular to a curb that is 135 feet long, based on the standard width of a parking space. Which of the following describes all the possible values of <span class=\"italic\">n</span> ?</p>\n","answerOptions":[{"id":"a","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_000_51d1b1e6.png\" alt=\"18 is less than or equal to n, which is less than or equal to 135\"></span></span></p>\n"},{"id":"b","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_001_12aab161.png\" alt=\"7 point 5 is less than or equal to n, which is less than or equal to 9\"></span></span></p>\n"},{"id":"c","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_002_19e797ab.png\" alt=\"15 is less than or equal to n, which is less than or equal to 135\"></span></span></p>\n"},{"id":"d","content":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_003_e9b9cfb2.png\" alt=\"15 is less than or equal to n, which is less than or equal to 18\"></span></span></p>\n"}],"keys":null,"correct_answer":["D"],"rationale":"<p>Choice D is correct. Placing the parking spaces with the minimum width of 7.5 feet gives the maximum possible number of parking spaces. Thus, the maximum number that can be placed perpendicular to a 135-foot-long curb is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_004_f18673a1.png\" alt=\"135 over 7 point 5 equals 18\"></span>. Placing the parking spaces with the maximum width of 9 feet gives the minimum number of parking spaces. Thus, the minimum number that can be placed perpendicular to a 135-foot-long curb is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_005_89f568ab.png\" alt=\"135 over 9 equals 15\"></span>. Therefore, if <span class=\"italic\">n</span> is the number of parking spaces in the lot, the range of possible values for <span class=\"italic\">n</span> is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/64c85440/img_006_362d47ea.png\" alt=\"15 is less than or equal to n, which is less than or equal to 18\"></span>.<p>Choices A and C are incorrect. These choices equate the length of the curb with the maximum possible number of parking spaces. Choice B is incorrect. This is the range of possible values for the width of a parking space instead of the range of possible values for the number of parking spaces.</p><p>&nbsp;</p></p>\n","answer_style":"Multiple Choice","section":"Math","image_count":7,"raw_list":{"updateDate":1691007959617,"pPcc":"SAT#H","questionId":"64c85440","skill_cd":"H.E.","score_band_range_cd":4,"skill_desc":"Linear inequalities in one or two variables","createDate":1691007959617,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"022207-DC","external_id":null,"primary_class_cd":"H","uId":"2f9afc7f-72a6-4c6b-acba-9a0eefedf3eb","difficulty":"M"},"raw_detail":{"item_id":"022207-DC","section":"Math","prompt":"<p class=\"stem_paragraph \">In North America, the standard width of a parking space is at least 7.5 feet and no more than 9.0 feet. A restaurant owner recently resurfaced the restaurant&rsquo;s parking lot and wants to determine the number of parking spaces, <span class=\"italic\">n</span>, in the parking lot that could be placed perpendicular to a curb that is 135 feet long, based on the standard width of a parking space. Which of the following describes all the possible values of <span class=\"italic\">n</span> ?</p>\n","answer":{"style":"Multiple Choice","choices":{"a":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFoAAAAWCAYAAABAMosVAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAByUlEQVRoQ+2WDW7DIAyFc7wciOPkLrlKbuIBjsEhNhiqTerkT0LtVpfn9/hJtx5n2GA/Lrj/fJA+iy9lhBPEum/C7neHWPaoAzghlM/ZiMHEVx04Qy6UhFE0xKlRjGq/Oex5v8+w4TpgZzUmrmNPxXm0wrRybai5mdHqNeBck80tMNLp+s0BPv0CXHDsz9oc/n7ET4xe6mphoBbhxEzQ9Zj1Q8ZeUg3Vj7/DseiM/EpQ0NzvykbLUJOS8OrVYQ2YqDsN6yWDErM6iZ7fFuyrXh1lh4eQN2H6VxqWuYbC/LhJDwfOmvE71OY49nbOig5hCZp75puq6LJe6eQPw9aESwDMTG9SnGfduGhICHpVh9D8SpDf0cnChRn0pAlrd3Rv0hLQRBD17qz1mjaxokPMBJ1orw8JycMLNWjly5ZJZ4LIRpprw9R4ZGlhFb8aJr8fBa3sKpzUZmwUhPbQy/fzxE+omcBVv9lX/wSvnPJCb4VfvzpuIetuIFDj3Qhp88bLk31SI6HpcNSgadH5g+4On2rF55ayQC96QScw7DpWAtCQjtzofv6Unt8aZB1tH5aaX4UMpLfyGBwtI3+l4ziO4ziO4ziO88/Yth+MntK8gj4w6gAAAABJRU5ErkJggg==\" alt=\"18 is less than or equal to n, which is less than or equal to 135\"></span></span></p>\n"},"b":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAAAWCAYAAABjadrAAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABiklEQVRYR+2WiQ3DIAxFGY+BGIddsko2cTGOgYDNkR5SJZ6E1Kbg49s4NXA4MMYoy4I/AT/fADjANXvDckez9x84vS3ykHO+kQRQEobTgzUu7BoY+gMOdxeFGyakrudGh3QBohHrIdjUjUxAhfi+0JofKrQBG9S5HkViR2n58aGeglHAN65TvqJ9caiauKe80vOCjvyQ/fZKac8jMflOd0D4xdugunNRSHyEq66CxKwwTJ4NtJ99j4qzVoAFgbSWK0nOCxFH51aFQZIYVbF63bvqR7stVBhBIPphPokS7SwFvW6Tky2DTwIIAj31U89bFq0RaLZ9NXr3drWyiGRvNB+f+EFIJF7hbPTTCETGZ2aJRHewXawkIL1JZnwgT4ViyE91lqoz4bx7b+cCGiWgdfPoBVIz9iM3hTjnRNUuKHkylIIv9tLZ/l8DCQqw9cmBl/bY75MO1/wgzQzSurTXAaVA+D2LlNeqOD2kIEfz5x2aGSRo8DVym2vrMwH9ys9ms9lsNpvNZhMw5gX9sAPpshBbgwAAAABJRU5ErkJggg==\" alt=\"7 point 5 is less than or equal to n, which is less than or equal to 9\"></span></span></p>\n"},"c":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFoAAAAWCAYAAABAMosVAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABrUlEQVRoQ+2WiY3EIAxFKY+CKCe9pJV0wmKIORIbDOysNCs/Cc1l2f4fTMb0OJ3x9rj8/THj/eldeIG3zXLnK/ab4PQC8Ft4uZf1IayJW/bEny4GkkZfh7fGhdRtsW+mpzeZXPSm2NbsJU+uw0JwXKTRUMgePtSRJyVIp+DzGzaq09ObDDQ+HMz8vQ/KD9vGTntSdiuNArvDG9dEGbO+yakXiKnHUr4xkjoSvU/Q6NqDZU+wydcO4246F3cavoIla1BmMFJOWoqnBFLM1gE4vRSpr3J17HjCFs4iqjHB8eISrwm/TX2MY+/krNRBJEbXV0xoIceteJKRFK5JTbwFpjzrwklBhNGrdZAZvWjiaLI4TxpmCgPlrnsnzQZNGEHlox5MNSt1kFm9z+uDoudJ5jeNRmaMiEIe14ao8cDSxn5C747R3KkSjcnNyAjuoRfv54m/UDOGs3qjWX29W56whdGEKgHXzIhU490I1q7z5Sf7ox8JXJ2aod76QXfrxdgtT7jCQElc1qzJPaiRG93Pu+zq/bQnQ1AAvKXXYLSE/FUdRVEURVEURVGUf4YxPwDduN18PA4EAAAAAElFTkSuQmCC\" alt=\"15 is less than or equal to n, which is less than or equal to 135\"></span></span></p>\n"},"d":{"body":"<p class=\"choice_paragraph \"><span class=\"math_expression \"><span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFEAAAAWCAYAAAC40nDiAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABmElEQVRYR+2WjQ0DIQiFHc+BHMddbhU3sYccak8R9domTfgS0z8LvIfYmhGHM9H6EK+XmRiP6M4HePq23NHs/Sc4vQB8dj7kdUqVtcbDpc1dE4OP1rjTyolAf8JILxpY9NLeoZHB27QJVtdECGJ9DA9NxBP9/WZIeUZ6aeruhiVjuclDl230Ab/MdubB6JbrYGwg1gJ7aL/8nZqZPJJenLpFEwkqoO1MiN6e7zuXgsNbsHpm35k1jygnBPdTbqn41TwApxfYGmeAN/EqsBpn6hZn5J6oy7DbtTE6ATt5iJGJQD3yeHIn4ktB72CStniMsy+q7nY2qWPibh6C05ubWcWWDk2GC8pR7pZWRBa/ILIXj7ufiJ08BGsik5M7NG980kRiRWQq8jbKMzmAraYxermcU7V8pTMXkkjuByTdhwt/rVbMXNWLJgpx2aC9OyIF5MeMA3O0hVDuOh7lnZ2MGi5PDacXaH6dP3EnFiPLWjVwRG9UpPvwKSO9ABpZ1k4zt6Hi4Gl/CSMxya/yKIqiKIqiKIryM4x5AYxbTn6VWFqXAAAAAElFTkSuQmCC\" alt=\"15 is less than or equal to n, which is less than or equal to 18\"></span></span></p>\n"}},"correct_choice":"d","rationale":"<p>Choice D is correct. Placing the parking spaces with the minimum width of 7.5 feet gives the maximum possible number of parking spaces. Thus, the maximum number that can be placed perpendicular to a 135-foot-long curb is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAAAsCAYAAADGiP4LAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAB60lEQVRoQ+2ZAZKDIAxFPR4H4jjexat4E5YQgwEB46zdLYE3k2m3Mp3NNz+EukjY7OLMurvjzwS45l+OMM4vS9Y5tzkbr7OwW7KuW9xmQ0IlgVAc6yVAUXBtKpLbV2fYGlXsq4GkQuQCYeKL84VwiuF2t5p0bRDNrP6KMoHOakCL1CzGIYG4fUKVabFTCeohEoGw4k6LxYqyNlQbfAQh+a5ukAjErZha7mjQzGJkTTUiPakgSv7OUiioksb9RCAgt1mJ0m7XLU8FkiQ/hECYZNpzAG6f0igADGGxuKXzBnyIRmvjmssweRWtW1oWOwU4I09csuYvkB+XFN08KXllc8rHpYFE4jPatU2gO3Ix1E//BFYD7JaVPlrZRLoSiO4yvG1FyxKtPjq8xYCWQAC3YWs+Y4v+LT5CTaDiGNLbWfGTFhtikJVQFSg28VSI2udqeVpBKNCsoMBlF+utB71BSyAARTpDLA7NBOVoe5T+KXibhK9n/6qXmPhNoliqA/mYyD1bI1Sfxsc9LWpdv0RX55m3CEkLqoImVNWPe3KebH+xT2l+3JPzxvitdoSPh7pf9hS1I/zdoCVFr0Chf8gTq+12ei12c3ijH5yowoq/sxxTuWRE6I67O58LBHzL457JZDKZTCaTyeQDLMsPF5unfFzdqhYAAAAASUVORK5CYII=\" alt=\"135 over 7 point 5 equals 18\"></span>. Placing the parking spaces with the maximum width of 9 feet gives the minimum number of parking spaces. Thus, the minimum number that can be placed perpendicular to a 135-foot-long curb is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAAAsCAYAAADGiP4LAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAAWNPAnzwAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABtUlEQVRoQ+2ZgW3EIAwAGY+BGCe7ZJVs4gKGYAJO/NKnLeCT0Pc/VlVOtjF9I2F3Bux2QHpbEZ75l7Qs+LAqDmAHdz4ny+1V3LDA7uKGeoJQjvMKUArG1pLg2MCSmKk4Nhs2FddVEG7cgE+EIgMO2GwdG6XZzT+ZTFDJBiwRrsQoWRAtn5hls5RTj9xDJIIw40qJnRnlXMy28FFYkt81DBJBtBTrkksNmpRYLs1pJH2SQXnzTyWFQidp3J8IClzLrEfvtBuWTwVJNr+EINxk3XMCtHx6o0BgiRI7j3TagJO0HHvGNMNkK21Y7kqsCCjrunFJzG/AXZfy/sKP1fJ/pH9dg2tmU6a+CkmgM1pXUJA341VIAmZOOC35NjH8VYjtEZd119eeDpqpr0ISeEFJvvAqFO398XoFThDHUHPamyXGUXrXIo1bBT3ACVriKiSBFXRO+S9ehegg9l/T8q7EXr0K4bcaRcrX7Y8MNy/EjFp1dKdwnX65E4BDBT1wf0SqoEjz1XOSpoIIKCkvLytKUkEs2IMWmkI5uOFr+H9AfZOmB+kJ1tL0oNVLS1EURVEURVEUY8wPvHY3GdZYYIIAAAAASUVORK5CYII=\" alt=\"135 over 9 equals 15\"></span>. Therefore, if <span class=\"italic\">n</span> is the number of parking spaces in the lot, the range of possible values for <span class=\"italic\">n</span> is <span class=\"math-container\"><img align=\"middle\" role=\"math\" class=\"math-img\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAE4AAAAWCAYAAABud6qHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAABGJhU0UAAAALV/ZLFgAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAABlUlEQVRYR+2WjY3DIAyFMx4DMQ67ZBU24WIcBw78+GvvpKp8EmqaEpv3jEmPktMewTgf7q8PIZzBXh90+WvYs5r7SSC9BP12fTzjkqprDaeNE1TjvAvmsJd94OEPpKWXTUt6ZW5lnncm/kBDNY4eNC74F43jnfv3BejlaemV7ipNimbmHcZumuA8PwAr8EJbplZvm8ZroTkyv/9Mzkienl7urgHjBElaV8AHZ6771saAdIuGZnDJqGFC2gk8X3L3ijabh0B6ieFWJbBx96KyVpWqIPPWhNwmFUdCa7ev5BFaxhF5O/MOBfF7gUo4cL1gjrMuJK/qY4xi3GoeAel9CpjFbm4UFAiRzop64Y/gCWFaPHTeCCt5BGgcyIk2yluNE2aExYUVbTqSg1gqFNCLcsK1vK0CCj1h6CUQz7eJv0EzBs7qZeOUuDCQ1vMxCG4hBOeok0vuPJ7kHe2AHJQnB+klqrfq6hmXzEtj1rQWWhv0zrdXaekl2Lw0Vgo4hSyILvXR3gmj/FeezWaz2Ww2m83myzmOH17ITn5GrFaxAAAAAElFTkSuQmCC\" alt=\"15 is less than or equal to n, which is less than or equal to 18\"></span>.<p>Choices A and C are incorrect. These choices equate the length of the curb with the maximum possible number of parking spaces. Choice B is incorrect. This is the range of possible values for the width of a parking space instead of the range of possible values for the number of parking spaces.</p><p>&nbsp;</p></p>\n"}},"createDate":1691007959617,"updateDate":1691007959617}$SATQ$::jsonb, 1691007959617, 1691007959617),
    ($SATQ$65833256$SATQ$, $SATQ$572fa74d-4b79-415a-8241-a2848bbba074$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.D.$SATQ$, $SATQ$Systems of two linear equations in two variables$SATQ$, $SATQ$M$SATQ$, 4, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="y equals 6 x plus 16"><mrow>
	<mi>y</mi>
	<mo>=</mo>
	<mrow>
		<mrow>
			<mn>6</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mn>16</mn>
	</mrow>
</mrow>
</math></p>
<p style="text-align: center;"><math alttext="minus 7 x minus y equals 36"><mrow>
	<mrow>
		<mrow>
			<mo>-</mo>
			<mn>7</mn>
			<mi>x</mi>
		</mrow>
		<mo>-</mo>
		<mi>y</mi>
	</mrow>
	<mo>=</mo>
	<mn>36</mn>
</mrow>
</math></p>
<p style="text-align: left;">What is the solution&nbsp;<math alttext="left parenthesis x comma y right parenthesis"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> to the given system of equations?</p>$SATQ$, $SATQ$[{"id":"9c08ab36-6940-4116-9fe6-2e8306e00b5a","content":"<p><math alttext=\"left parenthesis negative 4 comma negative 8 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>8</mn></mrow></mfenced></math></p>"},{"id":"d26ffea6-e620-4329-8d96-fb322d1407af","content":"<p><math alttext=\"left parenthesis negative StartFraction 20 Over 13 EndFraction comma negative StartFraction 80 Over 13 EndFraction right parenthesis\"><mfenced><mrow><mrow><mo>-</mo><mfrac><mn>20</mn><mn>13</mn></mfrac></mrow><mo>,</mo><mrow><mo>-</mo><mfrac><mn>80</mn><mn>13</mn></mfrac></mrow></mrow></mfenced></math></p>"},{"id":"5bb6a5a6-bbfb-4a7c-bf6f-26d3c183680f","content":"<p><math alttext=\"left parenthesis 4 comma 40 right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>40</mn></mrow></mfenced></math></p>"},{"id":"81436706-1322-49dc-aae4-2a4a7f06dfab","content":"<p><math alttext=\"left parenthesis 20 comma 136 right parenthesis\"><mfenced><mrow><mn>20</mn><mo>,</mo><mn>136</mn></mrow></mfenced></math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["9c08ab36-6940-4116-9fe6-2e8306e00b5a"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. The given system of linear equations can be solved by the substitution method. The first equation in the given system of equations defines <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y"><mi>y</mi></math> as <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="6 x plus 16"><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn></math>. Substituting&nbsp;<math xmlns="http://www.w3.org/1998/Math/MathML" alttext="6 x plus 16"><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn></math> for <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y"><mi>y</mi></math> in the second equation of the given system of equations yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="minus 7 x minus left parenthesis 6 x plus 16 right parenthesis equals 36"><mo>-</mo><mn>7</mn><mi>x</mi><mo>-</mo><mo>(</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn><mo>)</mo><mo>=</mo><mn>36</mn></math>. Applying the distributive property on the left-hand side of this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="minus 7 x minus 6 x minus 16 equals 36"><mo>-</mo><mn>7</mn><mi>x</mi><mo>-</mo><mn>6</mn><mi>x</mi><mo>-</mo><mn>16</mn><mo>=</mo><mn>36</mn></math>, or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="minus 13 x minus 16 equals 36"><mo>-</mo><mn>13</mn><mi>x</mi><mo>-</mo><mn>16</mn><mo>=</mo><mn>36</mn></math>. Adding <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="16"><mn>16</mn></math> to both sides of this equation yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="minus 13 x equals 52"><mo>-</mo><mn>13</mn><mi>x</mi><mo>=</mo><mn>52</mn></math>. Dividing both sides of this equation by <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="negative 13"><mo>-</mo><mn>13</mn></math> yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x equals negative 4"><mi>x</mi><mo>=</mo><mo>-</mo><mn>4</mn></math>. Substituting <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="negative 4"><mo>-</mo><mn>4</mn></math> for <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="x"><mi>x</mi></math> in the first equation of the given system of equations, <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y equals 6 x plus 16"><mi>y</mi><mo>=</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn></math>, yields <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y equals 6 left parenthesis negative 4 right parenthesis plus 16"><mi>y</mi><mo>=</mo><mn>6</mn><mo>(</mo><mo>-</mo><mn>4</mn><mo>)</mo><mo>+</mo><mn>16</mn></math>,&nbsp;or <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="y equals negative 8"><mi>y</mi><mo>=</mo><mo>-</mo><mn>8</mn></math>. Therefore, the solution <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis x comma y right parenthesis"><mo>(</mo><mi>x</mi><mo>,</mo><mi>y</mi><mo>)</mo></math> to the given system of equations is <math xmlns="http://www.w3.org/1998/Math/MathML" alttext="left parenthesis negative 4 comma negative 8 right parenthesis"><mo>(</mo><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>8</mn><mo>)</mo></math>.</p>
<p style="text-align: left;">Choice B is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice C is incorrect and may result from conceptual or calculation errors.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual or calculation errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"65833256","external_id":"572fa74d-4b79-415a-8241-a2848bbba074","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"f6311fe0-32dc-4843-a7a5-d4f6a5154cd1","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.D.","skill_desc":"Systems of two linear equations in two variables","difficulty":"M","score_band_range_cd":4,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"y equals 6 x plus 16\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>16</mn>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: center;\"><math alttext=\"minus 7 x minus y equals 36\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>7</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>36</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">What is the solution&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> to the given system of equations?</p>","answerOptions":[{"id":"9c08ab36-6940-4116-9fe6-2e8306e00b5a","content":"<p><math alttext=\"left parenthesis negative 4 comma negative 8 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>8</mn></mrow></mfenced></math></p>"},{"id":"d26ffea6-e620-4329-8d96-fb322d1407af","content":"<p><math alttext=\"left parenthesis negative StartFraction 20 Over 13 EndFraction comma negative StartFraction 80 Over 13 EndFraction right parenthesis\"><mfenced><mrow><mrow><mo>-</mo><mfrac><mn>20</mn><mn>13</mn></mfrac></mrow><mo>,</mo><mrow><mo>-</mo><mfrac><mn>80</mn><mn>13</mn></mfrac></mrow></mrow></mfenced></math></p>"},{"id":"5bb6a5a6-bbfb-4a7c-bf6f-26d3c183680f","content":"<p><math alttext=\"left parenthesis 4 comma 40 right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>40</mn></mrow></mfenced></math></p>"},{"id":"81436706-1322-49dc-aae4-2a4a7f06dfab","content":"<p><math alttext=\"left parenthesis 20 comma 136 right parenthesis\"><mfenced><mrow><mn>20</mn><mo>,</mo><mn>136</mn></mrow></mfenced></math></p>"}],"keys":["9c08ab36-6940-4116-9fe6-2e8306e00b5a"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. The given system of linear equations can be solved by the substitution method. The first equation in the given system of equations defines <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> as <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6 x plus 16\"><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn></math>. Substituting&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6 x plus 16\"><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> in the second equation of the given system of equations yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 7 x minus left parenthesis 6 x plus 16 right parenthesis equals 36\"><mo>-</mo><mn>7</mn><mi>x</mi><mo>-</mo><mo>(</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn><mo>)</mo><mo>=</mo><mn>36</mn></math>. Applying the distributive property on the left-hand side of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 7 x minus 6 x minus 16 equals 36\"><mo>-</mo><mn>7</mn><mi>x</mi><mo>-</mo><mn>6</mn><mi>x</mi><mo>-</mo><mn>16</mn><mo>=</mo><mn>36</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 13 x minus 16 equals 36\"><mo>-</mo><mn>13</mn><mi>x</mi><mo>-</mo><mn>16</mn><mo>=</mo><mn>36</mn></math>. Adding <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"16\"><mn>16</mn></math> to both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 13 x equals 52\"><mo>-</mo><mn>13</mn><mi>x</mi><mo>=</mo><mn>52</mn></math>. Dividing both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"negative 13\"><mo>-</mo><mn>13</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals negative 4\"><mi>x</mi><mo>=</mo><mo>-</mo><mn>4</mn></math>. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"negative 4\"><mo>-</mo><mn>4</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> in the first equation of the given system of equations, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals 6 x plus 16\"><mi>y</mi><mo>=</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn></math>, yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals 6 left parenthesis negative 4 right parenthesis plus 16\"><mi>y</mi><mo>=</mo><mn>6</mn><mo>(</mo><mo>-</mo><mn>4</mn><mo>)</mo><mo>+</mo><mn>16</mn></math>,&nbsp;or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals negative 8\"><mi>y</mi><mo>=</mo><mo>-</mo><mn>8</mn></math>. Therefore, the solution <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x comma y right parenthesis\"><mo>(</mo><mi>x</mi><mo>,</mo><mi>y</mi><mo>)</mo></math> to the given system of equations is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 4 comma negative 8 right parenthesis\"><mo>(</mo><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>8</mn><mo>)</mo></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1755117017718,"pPcc":"SAT#H","questionId":"65833256","skill_cd":"H.D.","score_band_range_cd":4,"skill_desc":"Systems of two linear equations in two variables","createDate":1755117017718,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"572fa74d-4b79-415a-8241-a2848bbba074","primary_class_cd":"H","uId":"f6311fe0-32dc-4843-a7a5-d4f6a5154cd1","difficulty":"M"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: center;\"><math alttext=\"y equals 6 x plus 16\"><mrow>\n\t<mi>y</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>6</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mn>16</mn>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: center;\"><math alttext=\"minus 7 x minus y equals 36\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mo>-</mo>\n\t\t\t<mn>7</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>-</mo>\n\t\t<mi>y</mi>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>36</mn>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">What is the solution&nbsp;<math alttext=\"left parenthesis x comma y right parenthesis\"><mfenced><mrow><mi>x</mi><mo>,</mo><mi>y</mi></mrow></mfenced></math> to the given system of equations?</p>","keys":["9c08ab36-6940-4116-9fe6-2e8306e00b5a"],"answerOptions":[{"id":"9c08ab36-6940-4116-9fe6-2e8306e00b5a","content":"<p><math alttext=\"left parenthesis negative 4 comma negative 8 right parenthesis\"><mfenced><mrow><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>8</mn></mrow></mfenced></math></p>"},{"id":"d26ffea6-e620-4329-8d96-fb322d1407af","content":"<p><math alttext=\"left parenthesis negative StartFraction 20 Over 13 EndFraction comma negative StartFraction 80 Over 13 EndFraction right parenthesis\"><mfenced><mrow><mrow><mo>-</mo><mfrac><mn>20</mn><mn>13</mn></mfrac></mrow><mo>,</mo><mrow><mo>-</mo><mfrac><mn>80</mn><mn>13</mn></mfrac></mrow></mrow></mfenced></math></p>"},{"id":"5bb6a5a6-bbfb-4a7c-bf6f-26d3c183680f","content":"<p><math alttext=\"left parenthesis 4 comma 40 right parenthesis\"><mfenced><mrow><mn>4</mn><mo>,</mo><mn>40</mn></mrow></mfenced></math></p>"},{"id":"81436706-1322-49dc-aae4-2a4a7f06dfab","content":"<p><math alttext=\"left parenthesis 20 comma 136 right parenthesis\"><mfenced><mrow><mn>20</mn><mo>,</mo><mn>136</mn></mrow></mfenced></math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice A is correct. The given system of linear equations can be solved by the substitution method. The first equation in the given system of equations defines <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> as <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6 x plus 16\"><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn></math>. Substituting&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"6 x plus 16\"><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y\"><mi>y</mi></math> in the second equation of the given system of equations yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 7 x minus left parenthesis 6 x plus 16 right parenthesis equals 36\"><mo>-</mo><mn>7</mn><mi>x</mi><mo>-</mo><mo>(</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn><mo>)</mo><mo>=</mo><mn>36</mn></math>. Applying the distributive property on the left-hand side of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 7 x minus 6 x minus 16 equals 36\"><mo>-</mo><mn>7</mn><mi>x</mi><mo>-</mo><mn>6</mn><mi>x</mi><mo>-</mo><mn>16</mn><mo>=</mo><mn>36</mn></math>, or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 13 x minus 16 equals 36\"><mo>-</mo><mn>13</mn><mi>x</mi><mo>-</mo><mn>16</mn><mo>=</mo><mn>36</mn></math>. Adding <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"16\"><mn>16</mn></math> to both sides of this equation yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"minus 13 x equals 52\"><mo>-</mo><mn>13</mn><mi>x</mi><mo>=</mo><mn>52</mn></math>. Dividing both sides of this equation by <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"negative 13\"><mo>-</mo><mn>13</mn></math> yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x equals negative 4\"><mi>x</mi><mo>=</mo><mo>-</mo><mn>4</mn></math>. Substituting <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"negative 4\"><mo>-</mo><mn>4</mn></math> for <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"x\"><mi>x</mi></math> in the first equation of the given system of equations, <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals 6 x plus 16\"><mi>y</mi><mo>=</mo><mn>6</mn><mi>x</mi><mo>+</mo><mn>16</mn></math>, yields <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals 6 left parenthesis negative 4 right parenthesis plus 16\"><mi>y</mi><mo>=</mo><mn>6</mn><mo>(</mo><mo>-</mo><mn>4</mn><mo>)</mo><mo>+</mo><mn>16</mn></math>,&nbsp;or <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"y equals negative 8\"><mi>y</mi><mo>=</mo><mo>-</mo><mn>8</mn></math>. Therefore, the solution <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis x comma y right parenthesis\"><mo>(</mo><mi>x</mi><mo>,</mo><mi>y</mi><mo>)</mo></math> to the given system of equations is <math xmlns=\"http://www.w3.org/1998/Math/MathML\" alttext=\"left parenthesis negative 4 comma negative 8 right parenthesis\"><mo>(</mo><mo>-</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>8</mn><mo>)</mo></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice C is incorrect and may result from conceptual or calculation errors.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual or calculation errors.</p>","externalid":"572fa74d-4b79-415a-8241-a2848bbba074","correct_answer":["A"]},"createDate":1755117017718,"updateDate":1755117017718}$SATQ$::jsonb, 1755117017718, 1755117017718),
    ($SATQ$67d63e19$SATQ$, $SATQ$6ea75b24-df55-4b56-a799-54ee041ec141$SATQ$::uuid, NULL, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: left;">The cost of renting a carpet cleaner is <math alttext="dollar sign 52"><mo>$</mo><mn>52</mn>
</math> for the first day and <math alttext="dollar sign 26"><mo>$</mo><mn>26</mn>
</math> for each additional day. Which of the following functions gives the cost <math alttext="upper C left parenthesis d right parenthesis"><mi>C</mi><mfenced><mi>d</mi></mfenced></math>, in dollars, of renting the carpet cleaner for <math alttext="d"><mi>d</mi>
</math> days, where <math alttext="d"><mi>d</mi>
</math> is a positive integer?</p>$SATQ$, $SATQ$[{"id":"019e7fbf-2d01-4a9b-b1b4-375a6da75c66","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 26 d plus 26\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>26</mn><mi>d</mi><mo>+</mo><mn>26</mn></math></p>"},{"id":"93d5418d-1fad-4ee2-a72f-03ff127a190d","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 26 d plus 52\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>26</mn><mi>d</mi><mo>+</mo><mn>52</mn></math></p>"},{"id":"67c8c978-c1b6-498a-8644-283a6ce87d64","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 52 d minus 26\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>52</mn><mi>d</mi><mo>-</mo><mn>26</mn></math></p>"},{"id":"20a5816b-d3c0-46cf-b8b2-ba33366976e4","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 52 d plus 78\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>52</mn><mi>d</mi><mo>+</mo><mn>78</mn></math></p>"}]$SATQ$::jsonb, $SATQ$["A"]$SATQ$::jsonb, $SATQ$["019e7fbf-2d01-4a9b-b1b4-375a6da75c66"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice A is correct. It's given that the cost of renting a carpet cleaner is&nbsp;<math alttext="dollar sign 52"><mo>$</mo><mn>52</mn></math> for the first day and&nbsp;<math alttext="dollar sign 26"><mo>$</mo><mn>26</mn></math> for each additional day. Therefore, the cost <math alttext="upper C left parenthesis d right parenthesis"><mi>C</mi><mfenced><mi>d</mi></mfenced></math>, in dollars, of renting the carpet cleaner for <math alttext="d"><mi>d</mi>
</math> days is the sum of the cost for the first day, <math alttext="dollar sign 52"><mo>$</mo><mn>52</mn></math>, and the cost for the additional <math alttext="d minus 1"><mrow>
<mi>d</mi>
<mo>-</mo>
<mn>1</mn>
</mrow>
</math> days, <math alttext="dollar sign 26 left parenthesis d minus 1 right parenthesis"><mo>$</mo><mn>26</mn><mfenced><mrow><mi>d</mi><mo>-</mo><mn>1</mn></mrow></mfenced></math>. It follows that <math alttext="upper C left parenthesis d right parenthesis equals 52 plus 26 left parenthesis d minus 1 right parenthesis"><mi>C</mi><mfenced><mi>d</mi></mfenced><mo>=</mo><mn>52</mn><mo>+</mo><mn>26</mn><mfenced><mrow><mi>d</mi><mo>-</mo><mn>1</mn></mrow></mfenced></math>, which is equivalent to <math alttext="upper C left parenthesis d right parenthesis equals 52 plus 26 d minus 26"><mi>C</mi><mfenced><mi>d</mi></mfenced><mo>=</mo><mn>52</mn><mo>+</mo><mn>26</mn><mi>d</mi><mo>-</mo><mn>26</mn></math>, or <math alttext="upper C left parenthesis d right parenthesis equals 26 d plus 26"><mi>C</mi><mfenced><mi>d</mi></mfenced><mo>=</mo><mn>26</mn><mi>d</mi><mo>+</mo><mn>26</mn></math>.</p>
<p style="text-align: left;">Choice B is incorrect. This function gives the cost of renting a carpet cleaner for <math alttext="d"><mi>d</mi>
</math> days if the cost is <math alttext="dollar sign 78"><mo>$</mo><mn>78</mn></math>, not <math alttext="dollar sign 52"><mo>$</mo><mn>52</mn></math>, for the first day and&nbsp;<math alttext="dollar sign 26"><mo>$</mo><mn>26</mn></math> for each additional day.</p>
<p style="text-align: left;">Choice C is incorrect. This function gives the cost of renting a carpet cleaner for <math alttext="d"><mi>d</mi>
</math> days if the cost is <math alttext="dollar sign 26"><mo>$</mo><mn>26</mn></math>, not <math alttext="dollar sign 52"><mo>$</mo><mn>52</mn></math>, for the first day and <math alttext="dollar sign 52"><mo>$</mo><mn>52</mn></math>, not <math alttext="dollar sign 26"><mo>$</mo><mn>26</mn></math>, for each additional day.</p>
<p style="text-align: left;">Choice D is incorrect. This function gives the cost of renting a carpet cleaner for <math alttext="d"><mi>d</mi>
</math> days if the cost is <math alttext="dollar sign 130"><mo>$</mo><mn>130</mn></math>, not <math alttext="dollar sign 52"><mo>$</mo><mn>52</mn></math>, for the first day and <math alttext="dollar sign 52"><mo>$</mo><mn>52</mn></math>, not <math alttext="dollar sign 26"><mo>$</mo><mn>26</mn></math>, for each additional day.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, $SATQ${"questionId":"67d63e19","external_id":"6ea75b24-df55-4b56-a799-54ee041ec141","disclosed_item_id":null,"source":"qbank","vaultid":null,"uId":"f1f2ed5b-f6e0-4437-b4d2-a550193be84c","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"H","score_band_range_cd":7,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: left;\">The cost of renting a carpet cleaner is <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn>\n</math> for the first day and <math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn>\n</math> for each additional day. Which of the following functions gives the cost <math alttext=\"upper C left parenthesis d right parenthesis\"><mi>C</mi><mfenced><mi>d</mi></mfenced></math>, in dollars, of renting the carpet cleaner for <math alttext=\"d\"><mi>d</mi>\n</math> days, where <math alttext=\"d\"><mi>d</mi>\n</math> is a positive integer?</p>","answerOptions":[{"id":"019e7fbf-2d01-4a9b-b1b4-375a6da75c66","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 26 d plus 26\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>26</mn><mi>d</mi><mo>+</mo><mn>26</mn></math></p>"},{"id":"93d5418d-1fad-4ee2-a72f-03ff127a190d","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 26 d plus 52\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>26</mn><mi>d</mi><mo>+</mo><mn>52</mn></math></p>"},{"id":"67c8c978-c1b6-498a-8644-283a6ce87d64","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 52 d minus 26\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>52</mn><mi>d</mi><mo>-</mo><mn>26</mn></math></p>"},{"id":"20a5816b-d3c0-46cf-b8b2-ba33366976e4","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 52 d plus 78\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>52</mn><mi>d</mi><mo>+</mo><mn>78</mn></math></p>"}],"keys":["019e7fbf-2d01-4a9b-b1b4-375a6da75c66"],"correct_answer":["A"],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that the cost of renting a carpet cleaner is&nbsp;<math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math> for the first day and&nbsp;<math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn></math> for each additional day. Therefore, the cost <math alttext=\"upper C left parenthesis d right parenthesis\"><mi>C</mi><mfenced><mi>d</mi></mfenced></math>, in dollars, of renting the carpet cleaner for <math alttext=\"d\"><mi>d</mi>\n</math> days is the sum of the cost for the first day, <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, and the cost for the additional <math alttext=\"d minus 1\"><mrow>\n<mi>d</mi>\n<mo>-</mo>\n<mn>1</mn>\n</mrow>\n</math> days, <math alttext=\"dollar sign 26 left parenthesis d minus 1 right parenthesis\"><mo>$</mo><mn>26</mn><mfenced><mrow><mi>d</mi><mo>-</mo><mn>1</mn></mrow></mfenced></math>. It follows that <math alttext=\"upper C left parenthesis d right parenthesis equals 52 plus 26 left parenthesis d minus 1 right parenthesis\"><mi>C</mi><mfenced><mi>d</mi></mfenced><mo>=</mo><mn>52</mn><mo>+</mo><mn>26</mn><mfenced><mrow><mi>d</mi><mo>-</mo><mn>1</mn></mrow></mfenced></math>, which is equivalent to <math alttext=\"upper C left parenthesis d right parenthesis equals 52 plus 26 d minus 26\"><mi>C</mi><mfenced><mi>d</mi></mfenced><mo>=</mo><mn>52</mn><mo>+</mo><mn>26</mn><mi>d</mi><mo>-</mo><mn>26</mn></math>, or <math alttext=\"upper C left parenthesis d right parenthesis equals 26 d plus 26\"><mi>C</mi><mfenced><mi>d</mi></mfenced><mo>=</mo><mn>26</mn><mi>d</mi><mo>+</mo><mn>26</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This function gives the cost of renting a carpet cleaner for <math alttext=\"d\"><mi>d</mi>\n</math> days if the cost is <math alttext=\"dollar sign 78\"><mo>$</mo><mn>78</mn></math>, not <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, for the first day and&nbsp;<math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn></math> for each additional day.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This function gives the cost of renting a carpet cleaner for <math alttext=\"d\"><mi>d</mi>\n</math> days if the cost is <math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn></math>, not <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, for the first day and <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, not <math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn></math>, for each additional day.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This function gives the cost of renting a carpet cleaner for <math alttext=\"d\"><mi>d</mi>\n</math> days if the cost is <math alttext=\"dollar sign 130\"><mo>$</mo><mn>130</mn></math>, not <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, for the first day and <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, not <math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn></math>, for each additional day.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":null,"position":null,"image_count":0,"raw_list":{"updateDate":1743430554983,"pPcc":"SAT#H","questionId":"67d63e19","skill_cd":"H.B.","score_band_range_cd":7,"skill_desc":"Linear functions","createDate":1743430554983,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":"","external_id":"6ea75b24-df55-4b56-a799-54ee041ec141","primary_class_cd":"H","uId":"f1f2ed5b-f6e0-4437-b4d2-a550193be84c","difficulty":"H"},"raw_detail":{"type":"mcq","stem":"<p style=\"text-align: left;\">The cost of renting a carpet cleaner is <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn>\n</math> for the first day and <math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn>\n</math> for each additional day. Which of the following functions gives the cost <math alttext=\"upper C left parenthesis d right parenthesis\"><mi>C</mi><mfenced><mi>d</mi></mfenced></math>, in dollars, of renting the carpet cleaner for <math alttext=\"d\"><mi>d</mi>\n</math> days, where <math alttext=\"d\"><mi>d</mi>\n</math> is a positive integer?</p>","keys":["019e7fbf-2d01-4a9b-b1b4-375a6da75c66"],"answerOptions":[{"id":"019e7fbf-2d01-4a9b-b1b4-375a6da75c66","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 26 d plus 26\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>26</mn><mi>d</mi><mo>+</mo><mn>26</mn></math></p>"},{"id":"93d5418d-1fad-4ee2-a72f-03ff127a190d","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 26 d plus 52\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>26</mn><mi>d</mi><mo>+</mo><mn>52</mn></math></p>"},{"id":"67c8c978-c1b6-498a-8644-283a6ce87d64","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 52 d minus 26\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>52</mn><mi>d</mi><mo>-</mo><mn>26</mn></math></p>"},{"id":"20a5816b-d3c0-46cf-b8b2-ba33366976e4","content":"<p><math alttext=\"upper C left parenthesis d right parenthesis equals 52 d plus 78\"><mi>C</mi><mo>(</mo><mi>d</mi><mo>)</mo><mo>=</mo><mn>52</mn><mi>d</mi><mo>+</mo><mn>78</mn></math></p>"}],"rationale":"<p style=\"text-align: left;\">Choice A is correct. It's given that the cost of renting a carpet cleaner is&nbsp;<math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math> for the first day and&nbsp;<math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn></math> for each additional day. Therefore, the cost <math alttext=\"upper C left parenthesis d right parenthesis\"><mi>C</mi><mfenced><mi>d</mi></mfenced></math>, in dollars, of renting the carpet cleaner for <math alttext=\"d\"><mi>d</mi>\n</math> days is the sum of the cost for the first day, <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, and the cost for the additional <math alttext=\"d minus 1\"><mrow>\n<mi>d</mi>\n<mo>-</mo>\n<mn>1</mn>\n</mrow>\n</math> days, <math alttext=\"dollar sign 26 left parenthesis d minus 1 right parenthesis\"><mo>$</mo><mn>26</mn><mfenced><mrow><mi>d</mi><mo>-</mo><mn>1</mn></mrow></mfenced></math>. It follows that <math alttext=\"upper C left parenthesis d right parenthesis equals 52 plus 26 left parenthesis d minus 1 right parenthesis\"><mi>C</mi><mfenced><mi>d</mi></mfenced><mo>=</mo><mn>52</mn><mo>+</mo><mn>26</mn><mfenced><mrow><mi>d</mi><mo>-</mo><mn>1</mn></mrow></mfenced></math>, which is equivalent to <math alttext=\"upper C left parenthesis d right parenthesis equals 52 plus 26 d minus 26\"><mi>C</mi><mfenced><mi>d</mi></mfenced><mo>=</mo><mn>52</mn><mo>+</mo><mn>26</mn><mi>d</mi><mo>-</mo><mn>26</mn></math>, or <math alttext=\"upper C left parenthesis d right parenthesis equals 26 d plus 26\"><mi>C</mi><mfenced><mi>d</mi></mfenced><mo>=</mo><mn>26</mn><mi>d</mi><mo>+</mo><mn>26</mn></math>.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This function gives the cost of renting a carpet cleaner for <math alttext=\"d\"><mi>d</mi>\n</math> days if the cost is <math alttext=\"dollar sign 78\"><mo>$</mo><mn>78</mn></math>, not <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, for the first day and&nbsp;<math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn></math> for each additional day.</p>\n<p style=\"text-align: left;\">Choice C is incorrect. This function gives the cost of renting a carpet cleaner for <math alttext=\"d\"><mi>d</mi>\n</math> days if the cost is <math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn></math>, not <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, for the first day and <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, not <math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn></math>, for each additional day.</p>\n<p style=\"text-align: left;\">Choice D is incorrect. This function gives the cost of renting a carpet cleaner for <math alttext=\"d\"><mi>d</mi>\n</math> days if the cost is <math alttext=\"dollar sign 130\"><mo>$</mo><mn>130</mn></math>, not <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, for the first day and <math alttext=\"dollar sign 52\"><mo>$</mo><mn>52</mn></math>, not <math alttext=\"dollar sign 26\"><mo>$</mo><mn>26</mn></math>, for each additional day.</p>","externalid":"6ea75b24-df55-4b56-a799-54ee041ec141","correct_answer":["A"]},"createDate":1743430554983,"updateDate":1743430554983}$SATQ$::jsonb, 1743430554983, 1743430554983),
    ($SATQ$6863c7ce$SATQ$, $SATQ$a58102d0-5605-4f3b-91b2-44ba46a14ee3$SATQ$::uuid, $SATQ$cab68f42-2f5c-4edc-9801-29734e5743f8$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.B.$SATQ$, $SATQ$Linear functions$SATQ$, $SATQ$E$SATQ$, 2, $SATQ$mcq$SATQ$, NULL, $SATQ$<p style="text-align: center;"><math alttext="d equals 16 t"><mrow>
	<mi>d</mi>
	<mo>=</mo>
	<mrow>
		<mn>16</mn>
		<mi>t</mi>
	</mrow>
</mrow>
</math></p>
<p style="text-align: left;">The given equation represents the distance <math alttext="d"><mi>d</mi>
</math>, in inches, where <math alttext="t"><mi>t</mi>
</math> represents the number of seconds since an object started moving. Which of the following is the best interpretation of <math alttext="16"><mn>16</mn>
</math> in this context?</p>$SATQ$, $SATQ$[{"id":"eb34797a-6506-4dc4-a21e-65461b37c54f","content":"<p style=\"text-align: left;\">The object moved a total of <math alttext=\"16\"><mn>16</mn>\n</math> inches.</p>"},{"id":"6c976deb-5a3f-4d42-adaa-4b30bfb21a21","content":"<p style=\"text-align: left;\">The object moved a total of <math alttext=\"16 t\"><mrow>\n\t<mn>16</mn>\n\t<mi>t</mi>\n</mrow>\n</math> inches.</p>"},{"id":"2a7ec752-fc82-4844-9803-1213cc2b9847","content":"<p style=\"text-align: left;\">The object is moving at a rate of <math alttext=\"16\"><mn>16</mn>\n</math> inches per second.</p>"},{"id":"40a3ced1-10b4-40a8-8eff-c9a36651251e","content":"<p style=\"text-align: left;\">The object is moving at a rate of <math alttext=\"one sixteenth\"><mfrac>\n\t<mn>1</mn>\n\t<mn>16</mn>\n</mfrac>\n</math> inches per second.</p>"}]$SATQ$::jsonb, $SATQ$["C"]$SATQ$::jsonb, $SATQ$["2a7ec752-fc82-4844-9803-1213cc2b9847"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">Choice C is correct. It&rsquo;s given that in the equation <math alttext="d equals 16 t"><mrow>
	<mi>d</mi>
	<mo>=</mo>
	<mrow>
		<mn>16</mn>
		<mi>t</mi>
	</mrow>
</mrow>
</math>, <math alttext="d"><mi>d</mi>
</math> represents the distance, in inches, and <math alttext="t"><mi>t</mi>
</math> represents the number of seconds since an object started moving. In this equation, <math alttext="t"><mi>t</mi>
</math> is being multiplied by <math alttext="16"><mn>16</mn>
</math>. This means that the object&rsquo;s distance increases by <math alttext="16"><mn>16</mn>
</math> inches each second. Therefore, the best interpretation of <math alttext="16"><mn>16</mn>
</math> in this context is that the object is moving at a rate of <math alttext="16"><mn>16</mn>
</math> inches per second.</p>
<p style="text-align: left;">Choice A is incorrect and may result from conceptual errors.</p>
<p style="text-align: left;">Choice B is incorrect. This is the best interpretation of <math alttext="16 t"><mrow>
	<mn>16</mn>
	<mi>t</mi>
</mrow>
</math>, rather than <math alttext="16"><mn>16</mn>
</math>, in this context.</p>
<p style="text-align: left;">Choice D is incorrect and may result from conceptual errors.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"6863c7ce","external_id":"a58102d0-5605-4f3b-91b2-44ba46a14ee3","disclosed_item_id":null,"source":"qbank","vaultid":"cab68f42-2f5c-4edc-9801-29734e5743f8","uId":"1c148ac9-2544-47d1-8819-792b9d53fd90","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.B.","skill_desc":"Linear functions","difficulty":"E","score_band_range_cd":2,"type":"mcq","stimulus":null,"stem":"<p style=\"text-align: center;\"><math alttext=\"d equals 16 t\"><mrow>\n\t<mi>d</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>16</mn>\n\t\t<mi>t</mi>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">The given equation represents the distance <math alttext=\"d\"><mi>d</mi>\n</math>, in inches, where <math alttext=\"t\"><mi>t</mi>\n</math> represents the number of seconds since an object started moving. Which of the following is the best interpretation of <math alttext=\"16\"><mn>16</mn>\n</math> in this context?</p>","answerOptions":[{"id":"eb34797a-6506-4dc4-a21e-65461b37c54f","content":"<p style=\"text-align: left;\">The object moved a total of <math alttext=\"16\"><mn>16</mn>\n</math> inches.</p>"},{"id":"6c976deb-5a3f-4d42-adaa-4b30bfb21a21","content":"<p style=\"text-align: left;\">The object moved a total of <math alttext=\"16 t\"><mrow>\n\t<mn>16</mn>\n\t<mi>t</mi>\n</mrow>\n</math> inches.</p>"},{"id":"2a7ec752-fc82-4844-9803-1213cc2b9847","content":"<p style=\"text-align: left;\">The object is moving at a rate of <math alttext=\"16\"><mn>16</mn>\n</math> inches per second.</p>"},{"id":"40a3ced1-10b4-40a8-8eff-c9a36651251e","content":"<p style=\"text-align: left;\">The object is moving at a rate of <math alttext=\"one sixteenth\"><mfrac>\n\t<mn>1</mn>\n\t<mn>16</mn>\n</mfrac>\n</math> inches per second.</p>"}],"keys":["2a7ec752-fc82-4844-9803-1213cc2b9847"],"correct_answer":["C"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It&rsquo;s given that in the equation <math alttext=\"d equals 16 t\"><mrow>\n\t<mi>d</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>16</mn>\n\t\t<mi>t</mi>\n\t</mrow>\n</mrow>\n</math>, <math alttext=\"d\"><mi>d</mi>\n</math> represents the distance, in inches, and <math alttext=\"t\"><mi>t</mi>\n</math> represents the number of seconds since an object started moving. In this equation, <math alttext=\"t\"><mi>t</mi>\n</math> is being multiplied by <math alttext=\"16\"><mn>16</mn>\n</math>. This means that the object&rsquo;s distance increases by <math alttext=\"16\"><mn>16</mn>\n</math> inches each second. Therefore, the best interpretation of <math alttext=\"16\"><mn>16</mn>\n</math> in this context is that the object is moving at a rate of <math alttext=\"16\"><mn>16</mn>\n</math> inches per second.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the best interpretation of <math alttext=\"16 t\"><mrow>\n\t<mn>16</mn>\n\t<mi>t</mi>\n</mrow>\n</math>, rather than <math alttext=\"16\"><mn>16</mn>\n</math>, in this context.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual errors.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959811,"pPcc":"SAT#H","questionId":"6863c7ce","skill_cd":"H.B.","score_band_range_cd":2,"skill_desc":"Linear functions","createDate":1691007959811,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"a58102d0-5605-4f3b-91b2-44ba46a14ee3","primary_class_cd":"H","uId":"1c148ac9-2544-47d1-8819-792b9d53fd90","difficulty":"E"},"raw_detail":{"keys":["2a7ec752-fc82-4844-9803-1213cc2b9847"],"rationale":"<p style=\"text-align: left;\">Choice C is correct. It&rsquo;s given that in the equation <math alttext=\"d equals 16 t\"><mrow>\n\t<mi>d</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>16</mn>\n\t\t<mi>t</mi>\n\t</mrow>\n</mrow>\n</math>, <math alttext=\"d\"><mi>d</mi>\n</math> represents the distance, in inches, and <math alttext=\"t\"><mi>t</mi>\n</math> represents the number of seconds since an object started moving. In this equation, <math alttext=\"t\"><mi>t</mi>\n</math> is being multiplied by <math alttext=\"16\"><mn>16</mn>\n</math>. This means that the object&rsquo;s distance increases by <math alttext=\"16\"><mn>16</mn>\n</math> inches each second. Therefore, the best interpretation of <math alttext=\"16\"><mn>16</mn>\n</math> in this context is that the object is moving at a rate of <math alttext=\"16\"><mn>16</mn>\n</math> inches per second.</p>\n<p style=\"text-align: left;\">Choice A is incorrect and may result from conceptual errors.</p>\n<p style=\"text-align: left;\">Choice B is incorrect. This is the best interpretation of <math alttext=\"16 t\"><mrow>\n\t<mn>16</mn>\n\t<mi>t</mi>\n</mrow>\n</math>, rather than <math alttext=\"16\"><mn>16</mn>\n</math>, in this context.</p>\n<p style=\"text-align: left;\">Choice D is incorrect and may result from conceptual errors.</p>","origin":"manifold","stem":"<p style=\"text-align: center;\"><math alttext=\"d equals 16 t\"><mrow>\n\t<mi>d</mi>\n\t<mo>=</mo>\n\t<mrow>\n\t\t<mn>16</mn>\n\t\t<mi>t</mi>\n\t</mrow>\n</mrow>\n</math></p>\n<p style=\"text-align: left;\">The given equation represents the distance <math alttext=\"d\"><mi>d</mi>\n</math>, in inches, where <math alttext=\"t\"><mi>t</mi>\n</math> represents the number of seconds since an object started moving. Which of the following is the best interpretation of <math alttext=\"16\"><mn>16</mn>\n</math> in this context?</p>","externalid":"a58102d0-5605-4f3b-91b2-44ba46a14ee3","templateid":"24f9b57f-fc58-47ee-9498-2d8b529f0231","vaultid":"cab68f42-2f5c-4edc-9801-29734e5743f8","type":"mcq","answerOptions":[{"id":"eb34797a-6506-4dc4-a21e-65461b37c54f","content":"<p style=\"text-align: left;\">The object moved a total of <math alttext=\"16\"><mn>16</mn>\n</math> inches.</p>"},{"id":"6c976deb-5a3f-4d42-adaa-4b30bfb21a21","content":"<p style=\"text-align: left;\">The object moved a total of <math alttext=\"16 t\"><mrow>\n\t<mn>16</mn>\n\t<mi>t</mi>\n</mrow>\n</math> inches.</p>"},{"id":"2a7ec752-fc82-4844-9803-1213cc2b9847","content":"<p style=\"text-align: left;\">The object is moving at a rate of <math alttext=\"16\"><mn>16</mn>\n</math> inches per second.</p>"},{"id":"40a3ced1-10b4-40a8-8eff-c9a36651251e","content":"<p style=\"text-align: left;\">The object is moving at a rate of <math alttext=\"one sixteenth\"><mfrac>\n\t<mn>1</mn>\n\t<mn>16</mn>\n</mfrac>\n</math> inches per second.</p>"}],"correct_answer":["C"]},"createDate":1691007959811,"updateDate":1691007959811}$SATQ$::jsonb, 1691007959811, 1691007959811),
    ($SATQ$686b7244$SATQ$, $SATQ$d4043654-05ea-4067-80ff-0c1687134c44$SATQ$::uuid, $SATQ$335494fa-bdea-4036-9783-4daaf47124f6$SATQ$::uuid, NULL, $SATQ$qbank$SATQ$, $SATQ$SAT$SATQ$, 2, $SATQ$Math$SATQ$, $SATQ$Algebra$SATQ$, $SATQ$H$SATQ$, $SATQ$H.C.$SATQ$, $SATQ$Linear equations in two variables$SATQ$, $SATQ$H$SATQ$, 7, $SATQ$spr$SATQ$, NULL, $SATQ$<p style="text-align: left;">A certain apprentice has enrolled in <math alttext="85"><mn>85</mn>
</math> hours of training courses. The equation <math alttext="10 x plus 15 y equals 85"><mrow>
	<mrow>
		<mrow>
			<mn>10</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>15</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>85</mn>
</mrow>
</math> represents this situation, where <math alttext="x"><mi>x</mi>
</math> is the number of on-site training courses and <math alttext="y"><mi>y</mi>
</math> is the number of online training courses this apprentice has enrolled in. How many more hours does each online training course take than each on-site training course?</p>$SATQ$, $SATQ$[]$SATQ$::jsonb, $SATQ$["5"]$SATQ$::jsonb, $SATQ$["5"]$SATQ$::jsonb, $SATQ$<p style="text-align: left;">The correct answer is <math alttext="5"><mn>5</mn>
</math>. It's given that the equation <math alttext="10 x plus 15 y equals 85"><mrow>
	<mrow>
		<mrow>
			<mn>10</mn>
			<mi>x</mi>
		</mrow>
		<mo>+</mo>
		<mrow>
			<mn>15</mn>
			<mi>y</mi>
		</mrow>
	</mrow>
	<mo>=</mo>
	<mn>85</mn>
</mrow>
</math> represents the situation, where <math alttext="x"><mi>x</mi>
</math> is the number of on-site training courses, <math alttext="y"><mi>y</mi>
</math> is the number of online training courses, and <math alttext="85"><mn>85</mn>
</math> is the total number of hours of training courses the apprentice has enrolled in. Therefore, <math alttext="10 x"><mrow>
	<mn>10</mn>
	<mi>x</mi>
</mrow>
</math> represents the number of hours the apprentice has enrolled in on-site training courses, and <math alttext="15 y"><mrow>
	<mn>15</mn>
	<mi>y</mi>
</mrow>
</math> represents the number of hours the apprentice has enrolled in online training courses. Since <math alttext="x"><mi>x</mi>
</math> is the number of on-site training courses and <math alttext="y"><mi>y</mi>
</math> is the number of online training courses the apprentice has enrolled in, <math alttext="10"><mn>10</mn>
</math> is the number of hours each on-site course takes and <math alttext="15"><mn>15</mn>
</math> is the number of hours each online course takes. Subtracting these numbers gives <math alttext="15 minus 10"><mn>15</mn><mo>-</mo><mn>10</mn></math>, or <math alttext="5"><mn>5</mn>
</math> more hours each online training course takes than each on-site training course.</p>$SATQ$, false, 0, NULL, NULL, NULL, NULL, $SATQ$manifold$SATQ$, NULL, NULL, NULL, $SATQ${"questionId":"686b7244","external_id":"d4043654-05ea-4067-80ff-0c1687134c44","disclosed_item_id":null,"source":"qbank","vaultid":"335494fa-bdea-4036-9783-4daaf47124f6","uId":"0b746561-2736-4f1e-abf9-351fea4e81f6","program":"SAT","test_type":2,"test_type_desc":"Math","primary_class_cd":"H","domain":"Algebra","skill_cd":"H.C.","skill_desc":"Linear equations in two variables","difficulty":"H","score_band_range_cd":7,"type":"spr","stimulus":null,"stem":"<p style=\"text-align: left;\">A certain apprentice has enrolled in <math alttext=\"85\"><mn>85</mn>\n</math> hours of training courses. The equation <math alttext=\"10 x plus 15 y equals 85\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>10</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>15</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>85</mn>\n</mrow>\n</math> represents this situation, where <math alttext=\"x\"><mi>x</mi>\n</math> is the number of on-site training courses and <math alttext=\"y\"><mi>y</mi>\n</math> is the number of online training courses this apprentice has enrolled in. How many more hours does each online training course take than each on-site training course?</p>","answerOptions":[],"keys":["5"],"correct_answer":["5"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"5\"><mn>5</mn>\n</math>. It's given that the equation <math alttext=\"10 x plus 15 y equals 85\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>10</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>15</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>85</mn>\n</mrow>\n</math> represents the situation, where <math alttext=\"x\"><mi>x</mi>\n</math> is the number of on-site training courses, <math alttext=\"y\"><mi>y</mi>\n</math> is the number of online training courses, and <math alttext=\"85\"><mn>85</mn>\n</math> is the total number of hours of training courses the apprentice has enrolled in. Therefore, <math alttext=\"10 x\"><mrow>\n\t<mn>10</mn>\n\t<mi>x</mi>\n</mrow>\n</math> represents the number of hours the apprentice has enrolled in on-site training courses, and <math alttext=\"15 y\"><mrow>\n\t<mn>15</mn>\n\t<mi>y</mi>\n</mrow>\n</math> represents the number of hours the apprentice has enrolled in online training courses. Since <math alttext=\"x\"><mi>x</mi>\n</math> is the number of on-site training courses and <math alttext=\"y\"><mi>y</mi>\n</math> is the number of online training courses the apprentice has enrolled in, <math alttext=\"10\"><mn>10</mn>\n</math> is the number of hours each on-site course takes and <math alttext=\"15\"><mn>15</mn>\n</math> is the number of hours each online course takes. Subtracting these numbers gives <math alttext=\"15 minus 10\"><mn>15</mn><mo>-</mo><mn>10</mn></math>, or <math alttext=\"5\"><mn>5</mn>\n</math> more hours each online training course takes than each on-site training course.</p>","parenttemplatename":null,"parenttemplateid":null,"templateclusterid":null,"templateclustername":null,"origin":"manifold","position":null,"image_count":0,"raw_list":{"updateDate":1691007959814,"pPcc":"SAT#H","questionId":"686b7244","skill_cd":"H.C.","score_band_range_cd":7,"skill_desc":"Linear equations in two variables","createDate":1691007959814,"program":"SAT","primary_class_cd_desc":"Algebra","ibn":null,"external_id":"d4043654-05ea-4067-80ff-0c1687134c44","primary_class_cd":"H","uId":"0b746561-2736-4f1e-abf9-351fea4e81f6","difficulty":"H"},"raw_detail":{"keys":["5"],"rationale":"<p style=\"text-align: left;\">The correct answer is <math alttext=\"5\"><mn>5</mn>\n</math>. It's given that the equation <math alttext=\"10 x plus 15 y equals 85\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>10</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>15</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>85</mn>\n</mrow>\n</math> represents the situation, where <math alttext=\"x\"><mi>x</mi>\n</math> is the number of on-site training courses, <math alttext=\"y\"><mi>y</mi>\n</math> is the number of online training courses, and <math alttext=\"85\"><mn>85</mn>\n</math> is the total number of hours of training courses the apprentice has enrolled in. Therefore, <math alttext=\"10 x\"><mrow>\n\t<mn>10</mn>\n\t<mi>x</mi>\n</mrow>\n</math> represents the number of hours the apprentice has enrolled in on-site training courses, and <math alttext=\"15 y\"><mrow>\n\t<mn>15</mn>\n\t<mi>y</mi>\n</mrow>\n</math> represents the number of hours the apprentice has enrolled in online training courses. Since <math alttext=\"x\"><mi>x</mi>\n</math> is the number of on-site training courses and <math alttext=\"y\"><mi>y</mi>\n</math> is the number of online training courses the apprentice has enrolled in, <math alttext=\"10\"><mn>10</mn>\n</math> is the number of hours each on-site course takes and <math alttext=\"15\"><mn>15</mn>\n</math> is the number of hours each online course takes. Subtracting these numbers gives <math alttext=\"15 minus 10\"><mn>15</mn><mo>-</mo><mn>10</mn></math>, or <math alttext=\"5\"><mn>5</mn>\n</math> more hours each online training course takes than each on-site training course.</p>","origin":"manifold","stem":"<p style=\"text-align: left;\">A certain apprentice has enrolled in <math alttext=\"85\"><mn>85</mn>\n</math> hours of training courses. The equation <math alttext=\"10 x plus 15 y equals 85\"><mrow>\n\t<mrow>\n\t\t<mrow>\n\t\t\t<mn>10</mn>\n\t\t\t<mi>x</mi>\n\t\t</mrow>\n\t\t<mo>+</mo>\n\t\t<mrow>\n\t\t\t<mn>15</mn>\n\t\t\t<mi>y</mi>\n\t\t</mrow>\n\t</mrow>\n\t<mo>=</mo>\n\t<mn>85</mn>\n</mrow>\n</math> represents this situation, where <math alttext=\"x\"><mi>x</mi>\n</math> is the number of on-site training courses and <math alttext=\"y\"><mi>y</mi>\n</math> is the number of online training courses this apprentice has enrolled in. How many more hours does each online training course take than each on-site training course?</p>","externalid":"d4043654-05ea-4067-80ff-0c1687134c44","templateid":"df3e32fa-106a-463b-86ee-fd39012ba9d5","vaultid":"335494fa-bdea-4036-9783-4daaf47124f6","type":"spr","answerOptions":[],"correct_answer":["5"]},"createDate":1691007959814,"updateDate":1691007959814}$SATQ$::jsonb, 1691007959814, 1691007959814)
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
