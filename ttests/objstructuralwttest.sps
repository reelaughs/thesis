* Encoding: UTF-8.
*----------------spiders----------------.
 
COMPUTE afatdspd = attspd - afstrlbspd .
EXECUTE .
 
IF (afatdspd < 0) afatdspdr = afatdspd *  (- 1) .
VARIABLE LABELS afatdspdr 'recoded affect-attitude discrepancy for spiders'.
EXECUTE .
 
IF (afatdspd  >=  0) afatdspdr = afatdspd.
EXECUTE .
 
COMPUTE cgatdspd = attspd - cgstrlbspd .
EXECUTE .
 
IF (cgatdspd < 0) cgatdspdr = cgatdspd *  (- 1) .
VARIABLE LABELS cgatdspdr 'recoded cognition-attitude discrepancy for spiders'.
EXECUTE .
 
IF (cgatdspd  >=  0) cgatdspdr = cgatdspd.
EXECUTE .
 
*----------------snakes----------------.
 
COMPUTE afatdsnk = attsnk - afstrlbsnk .
EXECUTE .
 
IF (afatdsnk < 0) afatdsnkr = afatdsnk *  (- 1) .
VARIABLE LABELS afatdsnkr 'recoded affect-attitude discrepancy for snakes'.
EXECUTE .
 
IF (afatdsnk  >=  0) afatdsnkr = afatdsnk.
EXECUTE .
 
COMPUTE cgatdsnk = attsnk - cgstrlbsnk .
EXECUTE .
 
IF (cgatdsnk < 0) cgatdsnkr = cgatdsnk *  (- 1) .
VARIABLE LABELS cgatdsnkr 'recoded cognition-attitude discrepancy for snakes'.
EXECUTE .
 
IF (cgatdsnk  >=  0) cgatdsnkr = cgatdsnk.
EXECUTE .
 
*----------------birth control----------------.
 
COMPUTE afatdbct = attbct - afstrlbbct .
EXECUTE .
 
IF (afatdbct < 0) afatdbctr = afatdbct *  (- 1) .
VARIABLE LABELS afatdbctr 'recoded affect-attitude discrepancy for birth control'.
EXECUTE .
 
IF (afatdbct  >=  0) afatdbctr = afatdbct.
EXECUTE .
 
COMPUTE cgatdbct = attbct - cgstrlbbct .
EXECUTE .
 
IF (cgatdbct < 0) cgatdbctr = cgatdbct *  (- 1) .
VARIABLE LABELS cgatdbctr 'recoded cognition-attitude discrepancy for birth control'.
EXECUTE .
 
IF (cgatdbct  >=  0) cgatdbctr = cgatdbct.
EXECUTE .
 
*----------------blood donation----------------.
 
COMPUTE afatdbld = attbld - afstrlbbld .
EXECUTE .
 
IF (afatdbld < 0) afatdbldr = afatdbld *  (- 1) .
VARIABLE LABELS afatdbldr 'recoded affect-attitude discrepancy for blood donation'.
EXECUTE .
 
IF (afatdbld  >=  0) afatdbldr = afatdbld.
EXECUTE .
 
COMPUTE cgatdbld = attbld - cgstrlbbld .
EXECUTE .
 
IF (cgatdbld < 0) cgatdbldr = cgatdbld *  (- 1) .
VARIABLE LABELS cgatdbldr 'recoded cognition-attitude discrepancy for blood donation'.
EXECUTE .
 
IF (cgatdbld  >=  0) cgatdbldr = cgatdbld.
EXECUTE .
*----------------freedom of speech----------------.
 
COMPUTE afatdchc = attchc - afstrlbchc .
EXECUTE .
 
IF (afatdchc < 0) afatdchcr = afatdchc *  (- 1) .
VARIABLE LABELS afatdchcr 'recoded affect-attitude discrepancy for freedom of speech'.
EXECUTE .
 
IF (afatdchc  >=  0) afatdchcr = afatdchc.
EXECUTE .
 
COMPUTE cgatdchc = attchc - cgstrlbchc .
EXECUTE .
 
IF (cgatdchc < 0) cgatdchcr = cgatdchc *  (- 1) .
VARIABLE LABELS cgatdchcr 'recoded cognition-attitude discrepancy for freedom of speech'.
EXECUTE .
 
IF (cgatdchc  >=  0) cgatdchcr = cgatdchc.
EXECUTE .
*----------------going to the gym----------------.
 
COMPUTE afatdgym = attgym - afstrlbgym .
EXECUTE .
 
IF (afatdgym < 0) afatdgymr = afatdgym *  (- 1) .
VARIABLE LABELS afatdgymr 'recoded affect-attitude discrepancy for going to the gym'.
EXECUTE .
 
IF (afatdgym  >=  0) afatdgymr = afatdgym.
EXECUTE .
 
COMPUTE cgatdgym = attgym - cgstrlbgym .
EXECUTE .
 
IF (cgatdgym < 0) cgatdgymr = cgatdgym *  (- 1) .
VARIABLE LABELS cgatdgymr 'recoded cognition-attitude discrepancy for going to the gym'.
EXECUTE .
 
IF (cgatdgym  >=  0) cgatdgymr = cgatdgym.
EXECUTE .
 
*----------------freedom of speech----------------.
 
COMPUTE afatdfree = attfree - afstrlbfree .
EXECUTE .
 
IF (afatdfree < 0) afatdfreer = afatdfree *  (- 1) .
VARIABLE LABELS afatdfreer 'recoded affect-attitude discrepancy for freedom of speech'.
EXECUTE .
 
IF (afatdfree  >=  0) afatdfreer = afatdfree.
EXECUTE .
 
COMPUTE cgatdfree = attfree - cgstrlbfree .
EXECUTE .
 
IF (cgatdfree < 0) cgatdfreer = cgatdfree *  (- 1) .
VARIABLE LABELS cgatdfreer 'recoded cognition-attitude discrepancy for freedom of speech'.
EXECUTE .
 
IF (cgatdfree  >=  0) cgatdfreer = cgatdfree.
EXECUTE .
*----------------immigration in Singapore----------------.
 
COMPUTE afatdimmi  = attimmi  - afstrlbimmi  .
EXECUTE .
 
IF (afatdimmi  < 0) afatdimmir = afatdimmi  *  (- 1) .
VARIABLE LABELS afatdimmi r 'recoded affect-attitude discrepancy for immigration in Singapore'.
EXECUTE .
 
IF (afatdimmi   >=  0) afatdimmir = afatdimmi .
EXECUTE .
 
COMPUTE cgatdimmi  = attimmi  - cgstrlbimmi  .
EXECUTE .
 
IF (cgatdimmi  < 0) cgatdimmir = cgatdimmi  *  (- 1) .
VARIABLE LABELS cgatdimmir 'recoded cognition-attitude discrepancy for immigration in Singapore'.
EXECUTE .
 
IF (cgatdimmi  >=  0) cgatdimmir = cgatdimmi.
EXECUTE .

DATASET ACTIVATE DataSet1.
T-TEST PAIRS=afatdimmir WITH 
    cgatdimmir (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

DATASET ACTIVATE DataSet1.
T-TEST PAIRS=afatdspdr afatdsnkr afatdbctr afatdbldr afatdchcr afatdgymr afatdfreer afatdimmir WITH 
    cgatdspdr cgatdsnkr cgatdbctr cgatdbldr cgatdchcr cgatdgymr cgatdfreer cgatdimmir (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.
