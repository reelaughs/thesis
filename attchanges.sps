COMPUTE immipreatt=(preatt1+preatt2+preatt3+preatt4)/4. 
VARIABLE LABELS immipreatt 'pre-message attitudes'.
EXECUTE.

COMPUTE immiattchange=immipstatt-immipreatt.  
VARIABLE LABELS immiattchange 'change in attitudes for immi'.
EXECUTE.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immiattchange
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immipstatt
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immipreeatt
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.



COMPUTE bcpreatt=(bcpreatt1+bcpreatt2+bcpreatt3+bcpreatt4)/4. 
VARIABLE LABELS bcpreatt 'bc pre-message attitudes'.
EXECUTE.

COMPUTE bcattchange=bcpstatt-bcpreatt.  
VARIABLE LABELS bcattchange 'change in attitudes for bc'.
EXECUTE.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT bcattchange
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

