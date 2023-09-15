*for discrete variable 

IF  (cond=1) msg=0.
VARIABLE LABELS  msg 'message_dummy coded'.
EXECUTE.

IF  (cond=2) msg=1.
VARIABLE LABELS  msg 'message_dummy coded'.
EXECUTE.


* calculating interaction term 

COMPUTE DCtotalcXmsg=DCtotalc *  msg.
VARIABLE LABELS  DCtotalcXmsg 'DCtotalc *  msg'.
EXECUTE.

*coming up with DV 

COMPUTE precert=(cert1+cert2+cert3)/3. 
VARIABLE LABELS precert 'initial attitude certainty average for ttfees'.
EXECUTE.

COMPUTE pscert=(pscert1+pscert2+pscert3)/3. 
VARIABLE LABELS pscert 'post attitude certainty average for ttfees'.
EXECUTE.

COMPUTE certchange=pscert-precert.  
VARIABLE LABELS certchange 'change in attitude certainty for ttfees'.
EXECUTE.

*running the two-way reg 

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT certchange
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

