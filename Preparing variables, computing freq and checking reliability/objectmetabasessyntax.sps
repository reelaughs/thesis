
T-TEST PAIRS=chcmaff bldmaff snkmaff gymmaff freemaff immimaff bctmaff spdmaff WITH chcmcog bldmcog 
    snkmcog gymmcog freemcog immimcog bctmcog spdmcog (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

T-TEST PAIRS=immimaff  WITH  immimcog (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

