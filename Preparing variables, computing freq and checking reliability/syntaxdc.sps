* Encoding: UTF-8.
DATASET ACTIVATE DataSet1.
COMPUTE dc10r=6-dc10.
EXECUTE.

DATASET ACTIVATE DataSet1.
COMPUTE dc12r=6-dc12.
EXECUTE.

DATASET ACTIVATE DataSet1.
COMPUTE dc3r=6-dc3.
EXECUTE.

DATASET ACTIVATE DataSet1.
COMPUTE dc4r=6-dc4.
EXECUTE.


COMPUTE dcavg = (dc1 + dc2 + dc3r+ dc4r+ dc5+ dc6+ dc7+ dc8+ dc9+ dc10r + dc11 + dc12r) / 12 .
VARIABLE LABELS dcavg 'average of defensive confidence scale items' .
EXECUTE .

FREQUENCIES VARIABLES=dcavg
  /STATISTICS=STDDEV MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.


RELIABILITY /VARIABLES=dc1 dc2 dc3r dc4r dc5 dc6 dc7 dc8 dc9 dc10r dc11 dc12r. 
