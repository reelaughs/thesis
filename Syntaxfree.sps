* Encoding: UTF-8.
COMPUTE attfree = (freeatt1 + freeatt2 + freeatt3 + freeatt4) / 4 .
VARIABLE LABELS attfree 'mean attitude for freedom of speech' .
EXECUTE .

COMPUTE afstrlbfree = (freeaff1 + freeaff2 + freeaff3 + freeaff4 +freeaff5 + freecog6 + freeaff7 +freeaff8) / 8 .
VARIABLE LABELS afstrlbfree 'mean affect for freedom of speech' .
EXECUTE .

COMPUTE cgstrlbfree = (freecog1 + freecog2 + freecog3 + freecog4 +freecog5 + freecog6 + freecog7) / 7 .
VARIABLE LABELS cgstrlbfree 'mean cognition for freedom of speech' .
EXECUTE .

FREQUENCIES VARIABLES=attfree afstrlbfree cgstrlbfree 
  /STATISTICS=STDDEV MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

RELIABILITY
  /VARIABLES=freeaff1 freeaff2 freeaff3 freeaff4 freeaff5 freeaff6 freeaff7 freeaff8
  /SCALE('freedom of speech affect reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=freecog1 freecog2 freecog3 freecog4 freecog5 freecog6 freecog7 
  /SCALE('freedom of speech cognition reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=freeatt1 freeatt2 freeatt3 freeatt4  
  /SCALE('freedom of speech attitudes reliability') ALL
  /MODEL=ALPHA.

