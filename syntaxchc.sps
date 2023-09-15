* Encoding: UTF-8.
COMPUTE attchc = (chcatt1 + chcatt2 + chcatt3 + chcatt4) / 4 .
VARIABLE LABELS attchc 'mean attitude for chocolate' .
EXECUTE .

COMPUTE afstrlbchc = (chcaff1 + chcaff2 + chcaff3 + chcaff4 +chcaff5 + chccog6 + chcaff7 +chcaff8) / 8 .
VARIABLE LABELS afstrlbchc 'mean affect for chocolate' .
EXECUTE .

COMPUTE cgstrlbchc = (chccog1 + chccog2 + chccog3 + chccog4 +chccog5 + chccog6 + chccog7) / 7 .
VARIABLE LABELS cgstrlbchc 'mean cognition for chocolate' .
EXECUTE .

FREQUENCIES VARIABLES=attchc afstrlbchc cgstrlbchc 
  /STATISTICS=STDDEV MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

RELIABILITY
  /VARIABLES=chcaff1 chcaff2 chcaff3 chcaff4 chcaff5 chcaff6 chcaff7 chcaff8
  /SCALE('chocolate affect reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=chccog1 chccog2 chccog3 chccog4 chccog5 chccog6 chccog7 
  /SCALE('chocolate cognition reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=chcatt1 chcatt2 chcatt3 chcatt4  
  /SCALE('chocolate attitudes reliability') ALL
  /MODEL=ALPHA.





