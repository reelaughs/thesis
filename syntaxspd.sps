* Encoding: UTF-8.
COMPUTE attspd = (spdatt1 + spdatt2 + spdatt3 + spdatt4) / 4 .
VARIABLE LABELS attspd 'mean attitude for spiders' .
EXECUTE .

COMPUTE afstrlbspd = (spdaff1 + spdaff2 + spdaff3 + spdaff4 +spdaff5 + spdcog6 + spdaff7 +spdaff8) / 8 .
VARIABLE LABELS afstrlbspd 'mean affect for spiders' .
EXECUTE .

COMPUTE cgstrlbspd = (spdcog1 + spdcog2 + spdcog3 + spdcog4 +spdcog5 + spdcog6 + spdcog7) / 7 .
VARIABLE LABELS cgstrlbspd 'mean cognition for spiders' .
EXECUTE .

FREQUENCIES VARIABLES=attspd afstrlbspd cgstrlbspd 
  /STATISTICS=STDDEV MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

RELIABILITY
  /VARIABLES=spdaff1 spdaff2 spdaff3 spdaff4 spdaff5 spdaff6 spdaff7 spdaff8
  /SCALE('spiders affect reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=spdcog1 spdcog2 spdcog3 spdcog4 spdcog5 spdcog6 spdcog7 
  /SCALE('spiders cognition reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=spdatt1 spdatt2 spdatt3 spdatt4  
  /SCALE('spiders attitudes reliability') ALL
  /MODEL=ALPHA.


