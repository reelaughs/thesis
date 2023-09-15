COMPUTE DCtotal = (dc1 + dc2 + dc3r+ dc4r+ dc5+ dc6+ dc7+ dc8+ dc9+ dc10r + dc11 + dc12r). 
VARIABLE LABELS DCtotal 'total of defensive confidence scale items' .
EXECUTE .

DATASET ACTIVATE DataSet1.
FREQUENCIES VARIABLES=DCtotal
  /STATISTICS=STDDEV MEAN
  /ORDER=ANALYSIS.

COMPUTE DCtotalsd=SD
VARIABLE LABELS  DCtotalc 'defensive confidence centered'.
EXECUTE.

COMPUTE DCtotalc=DCtotal-39.5502. 
VARIABLE LABELS  DCtotalc 'defensive confidence centered'.
EXECUTE.


COMPUTE DCmean = DCtotal/12. 
VARIABLE LABELS DCmean 'avg of defensive confidence scale items' .
EXECUTE 

COMPUTE DCc=DCmean-3.2959. 
VARIABLE LABELS  DCc 'dc centered'.
EXECUTE.

*24 feb and 12 march 

COMPUTE DCtotalc=DCtotal-39.4805. 
VARIABLE LABELS  DCtotalc 'defensive confidence centered'.
EXECUTE.


COMPUTE DCc=DCmean-3.29. 
VARIABLE LABELS  DCc 'dc centered'.
EXECUTE.
.


*sg only 

COMPUTE DCtotalc=DCtotal-39.0294.  
VARIABLE LABELS  DCtotalc 'defensive confidence centered'.
EXECUTE.

COMPUTE DCc=DCmean-3.2525. 
VARIABLE LABELS  DCc 'dc centered'.
EXECUTE.

*pro immi only 13 mar 

COMPUTE DCtotalc=DCtotal-39.2216. 
VARIABLE LABELS  DCtotalc 'defensive confidence centered'.
EXECUTE.

*sg only 13 mar 

COMPUTE DCtotalc=DCtotal-39.0294. 
VARIABLE LABELS  DCtotalc 'defensive confidence centered'.
EXECUTE.

*anti immi only 13 mar 

COMPUTE DCtotalc=DCtotal-40.1549. 
VARIABLE LABELS  DCtotalc 'defensive confidence centered'.
EXECUTE.

*nonsg only 13 mar 

COMPUTE DCtotalc=DCtotal-41.25. 
VARIABLE LABELS  DCtotalc 'defensive confidence centered'.
EXECUTE.



