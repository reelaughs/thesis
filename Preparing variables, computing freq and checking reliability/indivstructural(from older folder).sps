* Encoding: UTF-8.

**8 items first **


**sum of affect x attitude** 

Compute sumafat8 = sum (afstrlbbct*attbct + afstrlbchc*attchc + afstrlbspd*attspd + afstrlbbld*attbld + afstrlbsnk*attsnk + afstrlbgym*attgym + afstrlbfree*attfree + afstrlbimmi*attimmi).  
Execute.  

**sum of affect scores** 

Compute sumaf8 = sum (afstrlbbct, afstrlbchc, afstrlbsnk, afstrlbbld, afstrlbspd, afstrlbfree, afstrlbgym, afstrlbimmi).
Execute.

**sum of attitude scores**

compute sumat8 = sum (attbct, attchc, attsnk, attbld, attspd, attfree, attgym, attimmi).
execute. 

**sum of affect squared**

compute sumafsq8 = sum (afstrlbbct**2, afstrlbchc**2, afstrlbspd**2, afstrlbbld**2, afstrlbsnk**2, afstrlbfree**2, afstrlbgym**2, afstrlbimmi**2).
execute. 

**sum of attitude squared** 

compute sumatsq8 = sum (attbct**2, attchc**2, attspd**2, attbld**2, attsnk**2, attfree**2, attgym**2, attimmi**2).
execute. 

**correlation between affect and attitudes**

compute corrafat8 = (sumafat8 - sumaf8*sumat8/8)/ sqrt((sumafsq8 - (sumaf8**2)/8)*(sumatsq8-(sumat8**2)/8)).
execute. 

**sum of cognition x attitude**

compute sumcgat8 = sum (cgstrlbbct*attbct + cgstrlbchc*attchc + cgstrlbsnk*attsnk + cgstrlbbld*attbld + cgstrlbspd*attspd + cgstrlbgym*attgym + cgstrlbfree*attfree + cgstrlbimmi*attimmi). 
execute. 

**sum of cog**

compute sumcg8 = sum (cgstrlbbct, cgstrlbchc, cgstrlbsnk, cgstrlbbld, cgstrlbspd, cgstrlbfree, cgstrlbimmi, cgstrlbgym).
execute. 

**sum of cog squared**

compute sumcgsq8 = sum (cgstrlbbct**2, cgstrlbchc**2, cgstrlbsnk**2, cgstrlbbld**2, cgstrlbspd**2, cgstrlbfree**2, cgstrlbimmi**2, cgstrlbgym**2).
execute. 

**corrl between cog and attitude**

compute corrcgat8 = (sumcgat8 - sumcg8*sumat8/8)/ sqrt((sumcgsq8 - (sumcg8**2)/8)*(sumatsq8-(sumat8**2)/8)). 
execute. 

**diff between corr? is the subtraction between the two **

COMPUTE corrd8 = corrafat8 - corrcgat8 .
VARIABLE LABELS corrd8 'corrafat8 - corrcgat8' .
EXECUTE .

COMPUTE fishcgat8 = .5 * (LN(1+corrcgat8) - LN(1-corrcgat8)) .
EXECUTE .

COMPUTE fishafat8 = .5 * (LN(1+corrafat8) - LN(1-corrafat8)) .
EXECUTE .

compute fcorrd8 = fishafat8 - fishcgat8.
execute.

FREQUENCIES VARIABLES= fcorrd8
  /STATISTICS=STDDEV MEAN
  /ORDER=ANALYSIS.


**7 items**

**sum of affect x attitude** 

Compute sumafat7 = sum (afstrlbbct*attbct + afstrlbchc*attchc + afstrlbspd*attspd + afstrlbbld*attbld + afstrlbsnk*attsnk + afstrlbgym*attgym + afstrlbfree*attfree).  
Execute.  

**sum of affect scores** 

Compute sumaf7 = sum (afstrlbbct, afstrlbchc, afstrlbsnk, afstrlbbld, afstrlbspd, afstrlbfree, afstrlbgym).
Execute.

**sum of attitude scores**

compute sumat7 = sum (attbct, attchc, attsnk, attbld, attspd, attfree, attgym).
execute. 

**sum of affect squared**

compute sumafsq7 = sum (afstrlbbct**2, afstrlbchc**2, afstrlbspd**2, afstrlbbld**2, afstrlbsnk**2, afstrlbfree**2, afstrlbgym**2).
execute. 

**sum of attitude squared** 

compute sumatsq7 = sum (attbct**2, attchc**2, attspd**2, attbld**2, attsnk**2, attfree**2, attgym**2).
execute. 

**correlation between affect and attitudes**

compute corrafat7 = (sumafat7 - sumaf7*sumat7/7)/ sqrt((sumafsq7 - (sumaf7**2)/7)*(sumatsq7-(sumat7**2)/7)).
execute. 

**sum of cognition x attitude**

compute sumcgat7 = sum (cgstrlbbct*attbct + cgstrlbchc*attchc + cgstrlbsnk*attsnk + cgstrlbbld*attbld + cgstrlbspd*attspd + cgstrlbgym*attgym + cgstrlbfree*attfree). 
execute. 

**sum of cog**

compute sumcg7 = sum (cgstrlbbct, cgstrlbchc, cgstrlbsnk, cgstrlbbld, cgstrlbspd, cgstrlbfree, cgstrlbgym).
execute. 

**sum of cog squared**

compute sumcgsq7 = sum (cgstrlbbct**2, cgstrlbchc**2, cgstrlbsnk**2, cgstrlbbld**2, cgstrlbspd**2, cgstrlbfree**2, cgstrlbgym**2).
execute. 

**corrl between cog and attitude**

compute corrcgat7 = (sumcgat7 - sumcg7*sumat7/7)/ sqrt((sumcgsq7 - (sumcg7**2)/7)*(sumatsq7-(sumat7**2)/7)). 
execute. 

**diff between corr? is the subtraction between the two **

COMPUTE corrd7 = corrafat7 - corrcgat7 .
VARIABLE LABELS corrd7 'corrafat7 - corrcgat7' .
EXECUTE .

COMPUTE fishcgat7 = .5 * (LN(1+corrcgat7) - LN(1-corrcgat7)) .
EXECUTE .

COMPUTE fishafat7 = .5 * (LN(1+corrafat7) - LN(1-corrafat7)) .
EXECUTE .

compute fcorrd7 = fishafat7 - fishcgat7.
execute.

FREQUENCIES VARIABLES= fcorrd7
  /STATISTICS=STDDEV MEAN
  /ORDER=ANALYSIS.