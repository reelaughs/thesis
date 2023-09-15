COMPUTE immipreobjamb=(immiobjamb1+immiobjamb2+immiobjamb3+immiobjamb4+immiobjamb5+immiobjamb6). 
EXECUTE.

COMPUTE immipsoamb=(immipsoamb1+immipsoamb2+immipsoamb3+immipsoamb4+immiobjamb5+immiobjamb6). 
EXECUTE.

COMPUTE immiobjambchange=immipsoamb-immipreobjamb.  
VARIABLE LABELS immiobjambchange 'change in obj amb for immi'.
EXECUTE.


REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immiobjambchange
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

*birth control obj amb 

COMPUTE bcpreobjamb=(bcobjamb1+bcobjamb2+bcobjamb3+bcobjamb4+bcobjamb5+bcobjamb6). 
EXECUTE.

COMPUTE bcpsoamb=(bcpsoamb1+bcpsoamb2+bcpsoamb3+bcpsoamb4+bcpsoamb5+bcpsoamb6). 
EXECUTE.

COMPUTE bcobjambchange=bcpsoamb-bcpreobjamb.  
VARIABLE LABELS bcobjambchange 'change in obj amb for bc'.
EXECUTE.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT bcobjambchange
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

*immi sub amb 

COMPUTE immipresubamb=(subamb1+subamb2+subamb3). 
EXECUTE.

COMPUTE immipssubamb=(immipssamb1+immipssamb2+immipssamb3). 
EXECUTE.

COMPUTE immisubambchange=immipssubamb-immipresubamb.  
VARIABLE LABELS immisubambchange 'change in sub amb for immi'.
EXECUTE.


REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immisubambchange
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

*bc sub amb 

COMPUTE bcpresubamb=(bcsubamb1+bcsubamb2+bcsubamb3). 
EXECUTE.

COMPUTE bcpssubamb=(bcpssamb1+bcpssamb2+bcpssamb3). 
EXECUTE.

COMPUTE bcsubambchange=bcpssubamb-bcpresubamb.  
VARIABLE LABELS bcsubambchange 'change in sub amb for bc'.
EXECUTE.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT bcsubambchange
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

