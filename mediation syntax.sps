get file='C:\Users\annma\Documents\processv34' 

COMPUTE immipt=(immipt1+immipt2+immipt3+immipt4)/4. 
VARIABLE LABELS immipt 'perceived thought'.
EXECUTE.

insert file='C:\Users\annma\Documents\processv34'. 
execute. 
process y = immicertchange 
/ x = DCtotalc  
/ m = immipt  
/total=1  
/boot=10000  
/seed=10000  
/model=4
/stand=1. 

insert file='C:\Users\annma\Documents\processv34'. 
execute. 
process y = immicertchange 
/ x = DCtotalc  
/ m = immipsrelevance  
/total=1  
/boot=10000  
/seed=10000  
/model=4
/stand=1. 

COMPUTE immipsinvl=(immipsinvl1+immipsinvl2)/2. 
VARIABLE LABELS immipsinvl 'post-message involvement'.
EXECUTE.

insert file='C:\Users\annma\Documents\processv34'. 
execute. 
process y = immicertchange 
/ x = DCtotalc  
/ m = immipsinvl  
/total=1  
/boot=10000  
/seed=10000  
/model=4
/stand=1. 

COMPUTE immipsimpt=(immipsimpt1+immipsimpt2)/2. 
VARIABLE LABELS immipsimpt 'post-message importance'.
EXECUTE.

insert file='C:\Users\annma\Documents\processv34'. 
execute. 
process y = immicertchange 
/ x = DCtotalc  
/ m = immipsimpt  
/total=1  
/boot=10000  
/seed=10000  
/model=4
/stand=1. 
