* Encoding: UTF-8.
COMPUTE attsnk = (snkatt1 + snkatt2 + snkatt3 + snkatt4) / 4 .
VARIABLE LABELS attsnk 'mean attitude for snakes' .
EXECUTE .

COMPUTE afstrlbsnk = (snkaff1 + snkaff2 + snkaff3 + snkaff4 +snkaff5 + snkcog6 + snkaff7 +snkaff8) / 8 .
VARIABLE LABELS afstrlbsnk 'mean affect for snakes' .
EXECUTE .

COMPUTE cgstrlbsnk = (snkcog1 + snkcog2 + snkcog3 + snkcog4 +snkcog5 + snkcog6 + snkcog7) / 7 .
VARIABLE LABELS cgstrlbsnk 'mean cognition for snakes' .
EXECUTE .

FREQUENCIES VARIABLES=attsnk afstrlbsnk cgstrlbsnk 
  /STATISTICS=STDDEV MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

RELIABILITY
  /VARIABLES=snkaff1 snkaff2 snkaff3 snkaff4 snkaff5 snkaff6 snkaff7 snkaff8
  /SCALE('snakes affect reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=snkcog1 snkcog2 snkcog3 snkcog4 snkcog5 snkcog6 snkcog7 
  /SCALE('snakes cognition reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=snkatt1 snkatt2 snkatt3 snkatt4  
  /SCALE('snakes attitudes reliability') ALL
  /MODEL=ALPHA.

