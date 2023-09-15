* calculating more interaction terms

COMPUTE DCtotalcXfcorrd7=DCtotalc *  fcorrd7.
VARIABLE LABELS  DCtotalcXfcorrd7 'DCtotalc *  fcorrd7'.
EXECUTE.


COMPUTE msgXfcorrd7=msg *  fcorrd7.
VARIABLE LABELS  msgXfcorrd7 'msg *  fcorrd7'.
EXECUTE.


COMPUTE msgXDCtotalcXfcorrd7=msg *  DCtotalc * fcorrd7.
VARIABLE LABELS  msgXDCtotalcXfcorrd7 'msg * DCtotalc * fcorrd7'.
EXECUTE.

*for bc

COMPUTE DCtotalcXfcorrd7bc=DCtotalc *  fcorrd7bc.
VARIABLE LABELS  DCtotalcXfcorrd7bc 'DCtotalc *  fcorrd7bc'.
EXECUTE.


COMPUTE msgXfcorrd7bc=msg *  fcorrd7bc.
VARIABLE LABELS  msgXfcorrd7bc 'msg *  fcorrd7bc'.
EXECUTE.


COMPUTE msgXDCtotalcXfcorrd7bc=msg *  DCtotalc * fcorrd7bc.
VARIABLE LABELS  msgXDCtotalcXfcorrd7bc 'msg * DCtotalc * fcorrd7bc'.
EXECUTE.



*running the 3-way reg
immigration  

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immicertchange
  /METHOD=ENTER msg DCtotalc fcorrd7
  /METHOD=ENTER DCtotalcXmsg msgXfcorrd7 DCtotalcXfcorrd7
  /METHOD=ENTER msgXDCtotalcXfcorrd7

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immicertchange
   /METHOD=ENTER immipstatt
  /METHOD=ENTER msg DCtotalc fcorrd7
  /METHOD=ENTER DCtotalcXmsg msgXfcorrd7 DCtotalcXfcorrd7
  /METHOD=ENTER msgXDCtotalcXfcorrd7

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immipt
  /METHOD=ENTER msg DCtotalc fcorrd7
  /METHOD=ENTER DCtotalcXmsg msgXfcorrd7 DCtotalcXfcorrd7
  /METHOD=ENTER msgXDCtotalcXfcorrd7

*breaking down to simple slopes 

COMPUTE DCtotalc_belowXfcorrd7=DCtotalc_below * fcorrd7.

VARIABLE LABELS  DCtotalc_belowXfcorrd7 'DCtotalc_below * fcorrd7'.

EXECUTE .

COMPUTE msgXDCtotalc_belowXfcorrd7=msg * DCtotalc_below * fcorrd7. 
VARIABLE LABELS   msgXDCtotalc_belowXfcorrd7 'msg * DCtotalc_below * fcorrd7'.

EXECUTE. 

COMPUTE DCtotalc_aboveXfcorrd7=DCtotalc_above * fcorrd7.

VARIABLE LABELS  DCtotalc_aboveXfcorrd7 'DCtotalc_above * fcorrd7'.

EXECUTE .

COMPUTE msgXDCtotalc_aboveXfcorrd7=msg * DCtotalc_above * fcorrd7. 
VARIABLE LABELS   msgXDCtotalc_aboveXfcorrd7 'msg * DCtotalc_above * fcorrd7'.

EXECUTE. 

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immicertchange
  /METHOD=ENTER msg DCtotalc_above fcorrd7
  /METHOD=ENTER DCtotalc_aboveXmsg msgXfcorrd7 DCtotalc_aboveXfcorrd7
  /METHOD=ENTER msgXDCtotalc_aboveXfcorrd7


REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immicertchange
  /METHOD=ENTER msg DCtotalc_below fcorrd7
  /METHOD=ENTER DCtotalc_belowXmsg msgXfcorrd7 DCtotalc_belowXfcorrd7
  /METHOD=ENTER msgXDCtotalc_belowXfcorrd7

*bc

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT bccertchange
  /METHOD=ENTER msg DCtotalc fcorrd7bc
  /METHOD=ENTER DCtotalcXmsg msgXfcorrd7bc DCtotalcXfcorrd7bc
  /METHOD=ENTER msgXDCtotalcXfcorrd7bc

* calculating more interaction terms for mb 

COMPUTE DCtotalcXmtbz7=DCtotalc *  mtbz7.
VARIABLE LABELS  DCtotalcXmtbz7 'DCtotalc *  mtbz7'.
EXECUTE.


COMPUTE msgXmtbz7=msg *  mtbz7.
VARIABLE LABELS  msgXmtbz7 'msg *  mtbz7'.
EXECUTE.


COMPUTE msgXDCtotalcXmtbz7=msg *  DCtotalc * mtbz7.
VARIABLE LABELS  msgXDCtotalcXmtbz7 'msg * DCtotalc * mtbz7'.
EXECUTE.

*running the 3-way reg for mb
immigration  

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immicertchange
  /METHOD=ENTER msg DCtotalc mtbz7
  /METHOD=ENTER DCtotalcXmsg msgXmtbz7 DCtotalcXmtbz7
  /METHOD=ENTER msgXDCtotalcXmtbz7

*bc mb

* calculating more interaction terms for mb 

COMPUTE DCtotalcXmtbz7bc=DCtotalc *  mtbz7bc.
VARIABLE LABELS  DCtotalcXmtbz7bc 'DCtotalc *  mtbz7bc'.
EXECUTE.


COMPUTE msgXmtbz7bc=msg *  mtbz7bc.
VARIABLE LABELS  msgXmtbz7bc 'msg *  mtbz7bc'.
EXECUTE.


COMPUTE msgXDCtotalcXmtbz7bc=msg *  DCtotalc * mtbz7bc.
VARIABLE LABELS  msgXDCtotalcXmtbz7bc 'msg * DCtotalc * mtbz7bc'.
EXECUTE.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT bccertchange
  /METHOD=ENTER msg DCtotalc mtbz7bc
  /METHOD=ENTER DCtotalcXmsg msgXmtbz7bc DCtotalcXmtbz7bc
  /METHOD=ENTER msgXDCtotalcXmtbz7bc

