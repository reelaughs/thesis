* Encoding: UTF-8.
COMPUTE attbld = (bldatt1 + bldatt2 + bldatt3 + bldatt4) / 4 .
VARIABLE LABELS attbld 'mean attitude for blood donation' .
EXECUTE .

COMPUTE afstrlbbld = (bldaff1 + bldaff2 + bldaff3 + bldaff4 +bldaff5 + bldcog6 + bldaff7 +bldaff8) / 8 .
VARIABLE LABELS afstrlbbld 'mean affect for blood donation' .
EXECUTE .

COMPUTE cgstrlbbld = (bldcog1 + bldcog2 + bldcog3 + bldcog4 +bldcog5 + bldcog6 + bldcog7) / 7 .
VARIABLE LABELS cgstrlbbld 'mean cognition for blood donation' .
EXECUTE .

FREQUENCIES VARIABLES=attbld afstrlbbld cgstrlbbld 
  /STATISTICS=STDDEV MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

RELIABILITY
  /VARIABLES=bldaff1 bldaff2 bldaff3 bldaff4 bldaff5 bldaff6 bldaff7 bldaff8
  /SCALE('blood donation Affect reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=bldcog1 bldcog2 bldcog3 bldcog4 bldcog5 bldcog6 bldcog7 
  /SCALE('blood donation cognition reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=bldatt1 bldatt2 bldatt3 bldatt4  
  /SCALE('blood donation attitudes reliability') ALL
  /MODEL=ALPHA.







