* Encoding: UTF-8.
COMPUTE attbct = (bctatt1 + bctatt2 + bctatt3 + bctatt4) / 4 .
VARIABLE LABELS attbct 'mean attitude for birth control' .
EXECUTE .

COMPUTE afstrlbbct = (bctaff1 + bctaff2 + bctaff3 + bctaff4 +bctaff5 + bctcog6 + bctaff7 +bctaff8) / 8 .
VARIABLE LABELS afstrlbbct 'mean affect for birth control' .
EXECUTE .

COMPUTE cgstrlbbct = (bctcog1 + bctcog2 + bctcog3 + bctcog4 +bctcog5 + bctcog6 + bctcog7) / 7 .
VARIABLE LABELS cgstrlbbct 'mean cognition for birth control' .
EXECUTE .

FREQUENCIES VARIABLES=attbct afstrlbbct cgstrlbbct 
  /STATISTICS=STDDEV MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

RELIABILITY
  /VARIABLES=bctaff1 bctaff2 bctaff3 bctaff4 bctaff5 bctaff6 bctaff7 bctaff8
  /SCALE('Birth Control Affect reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=bctcog1 bctcog2 bctcog3 bctcog4 bctcog5 bctcog6 bctcog7 
  /SCALE('Birth Control cognition reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=bctatt1 bctatt2 bctatt3 bctatt4  
  /SCALE('Birth Control cognition attitudes') ALL
  /MODEL=ALPHA.

