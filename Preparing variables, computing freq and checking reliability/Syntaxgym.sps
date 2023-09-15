* Encoding: UTF-8.
COMPUTE attgym = (gymatt1 + gymatt2 + gymatt3 + gymatt4) / 4 .
VARIABLE LABELS attgym 'mean attitude for going to the gym' .
EXECUTE .

COMPUTE afstrlbgym = (gymaff1 + gymaff2 + gymaff3 + gymaff4 +gymaff5 + gymcog6 + gymaff7 +gymaff8) / 8 .
VARIABLE LABELS afstrlbgym 'mean affect for going to the gym' .
EXECUTE .

COMPUTE cgstrlbgym = (gymcog1 + gymcog2 + gymcog3 + gymcog4 +gymcog5 + gymcog6 + gymcog7) / 7 .
VARIABLE LABELS cgstrlbgym 'mean cognition for going to the gym' .
EXECUTE .

FREQUENCIES VARIABLES=attgym afstrlbgym cgstrlbgym
  /STATISTICS=STDDEV MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

RELIABILITY
  /VARIABLES=gymaff1 gymaff2 gymaff3 gymaff4 gymaff5 gymaff6 gymaff7 gymaff8
  /SCALE('going to the gym affect reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=gymcog1 gymcog2 gymcog3 gymcog4 gymcog5 gymcog6 gymcog7 
  /SCALE('going to the gym cognition reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=gymatt1 gymatt2 gymatt3 gymatt4  
  /SCALE('going to the gym attitudes reliability') ALL
  /MODEL=ALPHA.

