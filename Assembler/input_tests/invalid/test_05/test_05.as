.entry ANOTHERLIST
.extern X
.define sz=3
.define qw = 7
ANOTHERLIST: add #+1, r1
START:	mov r2, ANOTHERLIST[sz]  
    	mov r1,r6
	mov #+2,   X[4]   
	mov     #-2222, ANOTHERLIST[sz]  
	mov r2, ANOTHERLIST[2]  
	mov r2, ANOTHERLIST[1] 
	mov #789 , ANOTHERLIST[1]
LOOP1:	jmp X
	mcr  m_mcr1
		cmp K,#sz
		bne X
	endmcr 
		prn #-6
		prn r5
		mov STR[6],STR[3]
		sub r2,r5 
	m_mcr1  
L2:     inc L4
.entry  LOOP1
		bne LOOP1
		mov #-2  ,  r5
		cmp  #qw		,   #67
		add #-200,r2
		sub #2,STR[qw]
		not r1
		clr  r2
		inc r2 
		dec r2 
		jmp END1
		bne  LOOP1
		red  r5
		prn  r1
		jsr r3
		rts 
		hlt
		
		mov  #15 ,X
		add  #qw ,STR[6]
		sub  #-2 ,r2
		mov  ANOTHERLIST,X
		add  ANOTHERLIST,STR[6]
		sub  X,r2
		mov  STR[4],X
		add  STR[6],STR[6]
		sub  STR[sz],r2
		mov   r1,X
		add   r2,STR[6]
		sub   r6,r2

		cmp  #15 ,X
		cmp  #qw ,STR[6]
		cmp  #-2 ,r2
		cmp  #-1 ,#sz
		cmp  ANOTHERLIST,X
		cmp  ANOTHERLIST,STR[6]
		cmp  X,r2
		cmp  X,#-456
		cmp  STR[4],X
		cmp  STR[6],STR[6]
		cmp  STR[sz],r2
		cmp  STR[sz],#2048
		cmp   r1,X
		cmp   r2,STR[6]
		cmp   r6,r2
		cmp   r6,#2222


		not  X
		clr  STR[4]
		inc  r3
		dec  r2

		lea  STR ,X
		lea  STR ,STR[6]
		lea  STR ,r2
		lea  STR[sz] ,X
		lea  STR[6] ,STR[6]
		lea  STR[6],r2

		jmp X
		bne r3

		prn   X
		prn   STR[6]
		prn   r2
		prn   #2222


		lea LOOP1 , r6
END1:    hlt
.define  len1 = 5
STR:	.string "ghijkl"
NEWDATA:	.data 7,-8, len1
LIST2:	.data len1,-8, len1, sz
K:		.data 33
.extern L4
