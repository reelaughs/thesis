* Encoding: UTF-8.
COMPUTE attimmi = (immiatt1 + immiatt2 + immiatt3 + immiatt4) / 4 .
VARIABLE LABELS attimmi 'mean attitude for immigration in Singapore' .
EXECUTE .

COMPUTE afstrlbimmi = (immiaff1 + immiaff2 + immiaff3 + immiaff4 +immiaff5 + immicog6 + immiaff7 +immiaff8) / 8 .
VARIABLE LABELS afstrlbimmi 'mean affect for immigration in Singapore' .
EXECUTE .

COMPUTE cgstrlbimmi = (immicog1 + immicog2 + immicog3 + immicog4 +immicog5 + immicog6 + immicog7) / 7 .
VARIABLE LABELS cgstrlbimmi 'mean cognition for immigration in Singapore' .
EXECUTE .

FREQUENCIES VARIABLES=attimmi afstrlbimmi cgstrlbimmi
  /STATISTICS=STDDEV MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

RELIABILITY
  /VARIABLES=immiaff1 immiaff2 immiaff3 immiaff4 immiaff5 immiaff6 immiaff7 immiaff8
  /SCALE('immigration in Singapore affect reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=immicog1 immicog2 immicog3 immicog4 immicog5 immicog6 immicog7 
  /SCALE('immigration in Singapore cognition reliability') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=immiatt1 immiatt2 immiatt3 immiatt4  
  /SCALE('immigration in Singapore attitudes reliability') ALL
  /MODEL=ALPHA.


DATASET ACTIVATE DataSet1.
T-TEST
  /TESTVAL=6
  /MISSING=ANALYSIS
  /VARIABLES=attimmi
  /CRITERIA=CI(.95).

DESCRIPTIVES VARIABLES=immiop
  /STATISTICS=MEAN STDDEV VARIANCE MIN MAX SEMEAN.

FREQUENCIES VARIABLES=immiop
  /STATISTICS=SEMEAN MEAN MEDIAN MODE
  /BARCHART FREQ
  /ORDER=ANALYSIS.
