*simple slopes 

DATASET ACTIVATE DataSet1. 

FREQUENCIES VARIABLES=DCc
  /STATISTICS=STDDEV MEAN
  /ORDER=ANALYSIS.


COMPUTE DCc_below=DCc-(0-.63704).

VARIABLE LABELS  DCc_below ' defensive confidence centered (1 SD below)'.

EXECUTE.

COMPUTE DCc_above=DCc-(0+.63704).

VARIABLE LABELS  DCc_above ' defensive confidence centered (1 SD above)'.

EXECUTE.

 

COMPUTE DCc_belowXmsg=DCc_below * msg.

VARIABLE LABELS  DCc_belowXmsg 'DCc_below * message'.

EXECUTE .


 

COMPUTE DCc_aboveXmsg=DCc_above * msg.

VARIABLE LABELS  DCc_aboveXmsg 'DCc_above * message'.

EXECUTE. 

*Sg only 

COMPUTE DCc_below=DCc-(0-.64316).

VARIABLE LABELS  DCc_below ' defensive confidence centered (1 SD below)'.

EXECUTE.

COMPUTE DCc_above=DCc-(0+.64316).

VARIABLE LABELS  DCc_above ' defensive confidence centered (1 SD above)'.

EXECUTE.

 

COMPUTE DCc_belowXmsg=DCc_below * msg.

VARIABLE LABELS  DCc_belowXmsg 'DCc_below * message'.

EXECUTE .

COMPUTE DCc_aboveXmsg=DCc_above * msg.

VARIABLE LABELS  DCc_aboveXmsg 'DCc_above * message'.

EXECUTE. 



REGRESSION 
   /DESCRIPTIVES MEAN STDDEV CORR SIG N
   /MISSING LISTWISE 
  /STATISTICS COEFF OUTS CI(95)R ANOVA CHANGE ZPP 
   /CRITERIA=PIN(.005)POUT(.10)
   /NOORIGIN
   /DEPENDENT immicertchange
   /METHOD=ENTER msg DCc_below
  /METHOD=ENTER DCc_belowXmsg

REGRESSION 
   /DESCRIPTIVES MEAN STDDEV CORR SIG N
   /MISSING LISTWISE 
  /STATISTICS COEFF OUTS CI(95)R ANOVA CHANGE ZPP 
   /CRITERIA=PIN(.05)POUT(.10)
   /NOORIGIN
   /DEPENDENT immicertchange
   /METHOD=ENTER msg DCc_above
  /METHOD=ENTER DCc_aboveXmsg

*simple slopes for DCtotalc

DATASET ACTIVATE DataSet1. 

FREQUENCIES VARIABLES=DCtotalc
  /STATISTICS=STDDEV MEAN
  /ORDER=ANALYSIS.


COMPUTE DCtotalc_below=DCtotalc-(0-7.64453).

VARIABLE LABELS  DCtotalc_below ' defensive confidence centered (1 SD below)'.

EXECUTE.

COMPUTE DCtotalc_above=DCtotalc-(0+7.6445304).

VARIABLE LABELS  DCtotalc_above ' defensive confidence centered (1 SD above)'.

EXECUTE.

 

COMPUTE DCtotalc_belowXmsg=DCtotalc_below * msg.

VARIABLE LABELS  DCtotalc_belowXmsg 'DCtotalc_below * message'.

EXECUTE .


 

COMPUTE DCtotalc_aboveXmsg=DCtotalc_above * msg.

VARIABLE LABELS  DCtotalc_aboveXmsg 'DCtotalc_above * message'.

EXECUTE. 

*Sg only 

COMPUTE DCc_below=DCc-(0-.64316).

VARIABLE LABELS  DCc_below ' defensive confidence centered (1 SD below)'.

EXECUTE.

COMPUTE DCc_above=DCc-(0+.64316).

VARIABLE LABELS  DCc_above ' defensive confidence centered (1 SD above)'.


*yep correct
EXECUTE.
COMPUTE DCtotalc_below=DCtotalc-(0-7.71788).

VARIABLE LABELS  DCtotalc_below ' defensive confidence centered (1 SD below)'.

EXECUTE.

COMPUTE DCtotalc_above=DCtotalc-(0+7.71788).

VARIABLE LABELS  DCtotalc_above ' defensive confidence centered (1 SD above)'.

EXECUTE.


** just immi 

COMPUTE DCtotalc_below=DCtotalc-(0-7.57783).

VARIABLE LABELS  DCtotalc_below ' defensive confidence centered (1 SD below)'.

EXECUTE.

COMPUTE DCtotalc_above=DCtotalc-(0+7.57783).

VARIABLE LABELS  DCtotalc_above ' defensive confidence centered (1 SD above)'.

EXECUTE.
 

COMPUTE DCc_belowXmsg=DCc_below * msg.

VARIABLE LABELS  DCc_belowXmsg 'DCc_below * message'.

EXECUTE .

COMPUTE DCc_aboveXmsg=DCc_above * msg.

VARIABLE LABELS  DCc_aboveXmsg 'DCc_above * message'.

EXECUTE. 



REGRESSION 
   /DESCRIPTIVES MEAN STDDEV CORR SIG N
   /MISSING LISTWISE 
  /STATISTICS COEFF OUTS CI(95)R ANOVA CHANGE ZPP 
   /CRITERIA=PIN(.005)POUT(.10)
   /NOORIGIN
   /DEPENDENT immicertchange
   /METHOD=ENTER msg DCtotalc_below
  /METHOD=ENTER DCtotalc_belowXmsg

REGRESSION 
   /DESCRIPTIVES MEAN STDDEV CORR SIG N
   /MISSING LISTWISE 
  /STATISTICS COEFF OUTS CI(95)R ANOVA CHANGE ZPP 
   /CRITERIA=PIN(.05)POUT(.10)
   /NOORIGIN
   /DEPENDENT immicertchange
   /METHOD=ENTER msg DCtotalc_above
  /METHOD=ENTER DCtotalc_aboveXmsg

COMPUTE DCtotalc_aboveXimmiprecert_c=DCtotalc_above*immiprecert_c.

VARIABLE LABELS  DCtotalc_aboveXimmiprecert_c 'DCtotalc_aboveXimmiprecert_c '.

EXECUTE.

COMPUTE msgXDCtotalc_aboveXimmiprecert_c=msg*DCtotalc_above*immiprecert_c.

VARIABLE LABELS   msgXDCtotalc_aboveXimmiprecert_c ' msg*DCtotalc_aboveXimmiprecert_c'.

COMPUTE DCtotalc_belowXimmiprecert_c=DCtotalc_below*immiprecert_c.

VARIABLE LABELS  DCtotalc_belowXimmiprecert_c 'DCtotalc_belowXimmiprecert_c '.

EXECUTE.
COMPUTE msgXDCtotalc_belowXimmiprecert_c=msg*DCtotalc_below*immiprecert_c.

VARIABLE LABELS   msgXDCtotalc_belowXimmiprecert_c ' msg*DCtotalc_belowXimmiprecert_c'.

EXECUTE.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immipscert
  /METHOD=ENTER immiprecert_c
  /METHOD=ENTER msg DCtotalc_above 
  /METHOD=ENTER DCtotalc_aboveXmsg DCtotalc_aboveXimmiprecert_c msgXimmiprecert_c
  /METHOD=ENTER msgXDCtotalc_aboveXimmiprecert_c


REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immipscert
  /METHOD=ENTER immiprecert_c
  /METHOD=ENTER msg DCtotalc_below 
  /METHOD=ENTER DCtotalc_belowXmsg DCtotalc_belowXimmiprecert_c msgXimmiprecert_c
  /METHOD=ENTER msgXDCtotalc_belowXimmiprecert_c
