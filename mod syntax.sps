COMPUTE immiptc=immipt-5.4792.

VARIABLE LABELS  immiptc 'centered perceived thought'.

EXECUTE.

COMPUTE DCtotalcXimmiptc=DCtotalc*immiptc.

VARIABLE LABELS  DCtotalcXimmiptc 'DCtotalcXimmiptc '.

EXECUTE.

REGRESSION
/MISSING LISTWISE
/STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE
/CRITERIA=PIN(.05) POUT(.10)
/NOORIGIN
/DEPENDENT immicertchange
/METHOD=ENTER DCtotalc immiptc
/METHOD=ENTER DCtotalcXimmiptc


COMPUTE immiimpt=(impt1+impt2)/2. 
VARIABLE LABELS immiimpt 'pre message importance'.
EXECUTE.

COMPUTE immiimptchange=immipsimpt-immiimpt. 
VARIABLE LABELS immiimptchange 'change in importance'.
EXECUTE.

**sig but I won't use this, too complicated 

COMPUTE immipreinvl=involv1+involv2. 
VARIABLE LABELS immipreinvl 'involv pre message'.
EXECUTE.
*not sig, can rule out invl


