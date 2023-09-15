*immi

COMPUTE precert=(cert1+cert2+cert3)/3. 
VARIABLE LABELS precert 'initial attitude certainty average for immi'.
EXECUTE.

COMPUTE immipscert=(immipscert1+immipscert2+immipscert3)/3. 
VARIABLE LABELS immipscert 'post attitude certainty average for immi'.
EXECUTE.

COMPUTE immicertchange=immipscert-precert.  
VARIABLE LABELS immicertchange 'change in attitude certainty for immi'.
EXECUTE.

*running the two-way reg 

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immicertchange
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.


REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immicertchange
  /METHOD=ENTER fcorrd7 DCtotalc
  /METHOD=ENTER DCtotalcXfcorrd7.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immipt
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.


*control for psatt

COMPUTE immipstatt=(immipstatt1+immipstatt2+immipstatt3+immipstatt4)/4. 
VARIABLE LABELS immipstatt 'post-message attitudes'.
EXECUTE.

COMPUTE immipstatt_c=immipstatt-1.83377. 
VARIABLE LABELS immipstatt 'post-message attitudes centered'.
EXECUTE.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immicertchange
  /METHOD=ENTER immipstatt_c
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT precert
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.


*control for pre cert, dv post cert 
okay already done all the defining 

*for sg only 

COMPUTE immiprecert_c=precert-1.72805. 
VARIABLE LABELS immiprecert_c 'pre-message attitudes certainty'.
EXECUTE.
COMPUTE DCtotalcXimmiprecert_c=DCtotalc*immiprecert_c.

* for just immi 

COMPUTE immiprecert_c=precert-1.78791. 
VARIABLE LABELS immiprecert_c 'pre-message attitudes certainty'.
EXECUTE.
COMPUTE DCtotalcXimmiprecert_c=DCtotalc*immiprecert_c.

**

VARIABLE LABELS  DCtotalcXimmiprecert_c 'DCtotalcXimmiprecert_c '.

EXECUTE.

COMPUTE msgXimmiprecert_c=msg*immiprecert_c.

VARIABLE LABELS  msgXimmiprecert_c 'msgXimmiprecert_c '.

EXECUTE.

COMPUTE msgXDCtotalcXimmiprecert_c=msg*DCtotalc*immiprecert_c.

VARIABLE LABELS  msgXDCtotalcXimmiprecert_c 'msgXDCtotalcXimmiprecert_c '.

EXECUTE.
* blab 


REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT immipscert
  /METHOD=ENTER immiprecert_c
  /METHOD=ENTER msg DCtotalc 
  /METHOD=ENTER DCtotalcXmsg DCtotalcXimmiprecert_c msgXimmiprecert_c
  /METHOD=ENTER msgXDCtotalcXimmiprecert_c

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
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg DCtotalcXimmiprecert_c msgXimmiprecert_c
  /METHOD=ENTER msgXDCtotalcXimmiprecert_c






*birth control 

COMPUTE bcprecert=(bccert1+bccert2+bccert3)/3. 
VARIABLE LABELS bcprecert 'initial attitude certainty average for bc'.
EXECUTE.

COMPUTE bcpscert=(bcpscert1+bcpscert2+bcpscert3)/3. 
VARIABLE LABELS bcpscert 'post attitude certainty average for bc'.
EXECUTE.

COMPUTE bccertchange=bcpscert-bcprecert.  
VARIABLE LABELS bccertchange 'change in attitude certainty for bc'.
EXECUTE.


REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT bccertchange
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

*control for pstatt

COMPUTE bcpstatt=(bcpstatt1+bcpstatt2+bcpstatt3+bcpstatt4)/4. 
VARIABLE LABELS bcpstatt 'post-message attitudes for bc'.
EXECUTE.

COMPUTE bcpstatt_c=bcpstatt-2.41217. 
VARIABLE LABELS bcpstatt_c 'post-message bc attitudes centered'.
EXECUTE.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS CI(95) R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT bccertchange
  /METHOD=ENTER bcpstatt_c
  /METHOD=ENTER msg DCtotalc
  /METHOD=ENTER DCtotalcXmsg.

