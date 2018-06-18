;密码未加密
;6.11	add a function to display matrix
org 8400h

jmp uboot

rex_start	        db	00000000b,00000000b,01111111b,11111100b		;37line*4byte
			db	00000000b,00000000b,01111111b,11111100b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11100111b,11111111b
			db	00000000b,00000001b,11100111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111110b,00000000b
			db	11000000b,00000001b,11111111b,11111000b
			db	11000000b,00000001b,11111111b,11111000b
			db	11100000b,00000001b,11111000b,00000000b
			db	11100000b,00000111b,11111000b,00000000b
			db	11110000b,00000111b,11111000b,00000000b
			db	11110000b,00011111b,11111111b,11000000b
			db	11111000b,01111111b,11111111b,11000000b
			db	11111000b,01111111b,11111000b,11000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	01111111b,11111111b,11100000b,00000000b
			db	00111111b,11111111b,11100000b,00000000b
			db	00011111b,11111111b,11100000b,00000000b
			db	00001111b,11111111b,10000000b,00000000b
			db	00000111b,11111111b,10000000b,00000000b
			db	00000111b,11111110b,00000000b,00000000b
			db	00000111b,10011110b,00000000b,00000000b
			db	00000111b,10011110b,00000000b,00000000b
			db	00000110b,00000110b,00000000b,00000000b
			db	00000110b,00000110b,00000000b,00000000b
			db	00000111b,10000111b,10000000b,00000000b
			db	00000111b,10000111b,10000000b,00000000b

rex_runl	        db	00000000b,00000000b,01111111b,11111100b		;37line*4byte
			db	00000000b,00000000b,01111111b,11111100b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11100111b,11111111b
			db	00000000b,00000001b,11100111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111110b,00000000b
			db	11000000b,00000001b,11111111b,11111000b
			db	11000000b,00000001b,11111111b,11111000b
			db	11100000b,00000001b,11111000b,00000000b
			db	11100000b,00000111b,11111000b,00000000b
			db	11110000b,00000111b,11111000b,00000000b
			db	11110000b,00011111b,11111111b,11000000b
			db	11111000b,01111111b,11111111b,11000000b
			db	11111000b,01111111b,11111000b,11000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	01111111b,11111111b,11100000b,00000000b
			db	00111111b,11111111b,11100000b,00000000b
			db	00011111b,11111111b,11100000b,00000000b
			db	00001111b,11111111b,10000000b,00000000b
			db	00000111b,11111111b,10000000b,00000000b
			db	00000011b,11111110b,00000000b,00000000b
			db	00000011b,00011110b,00000000b,00000000b
			db	00000011b,10011110b,00000000b,00000000b
			db	00000011b,10000110b,00000000b,00000000b
			db	00000000b,00000110b,00000000b,00000000b
			db	00000000b,00000111b,10000000b,00000000b
			db	00000000b,00000111b,10000000b,00000000b

rex_runr	        db	00000000b,00000000b,01111111b,11111100b		;37line*4byte
			db	00000000b,00000000b,01111111b,11111100b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11100111b,11111111b
			db	00000000b,00000001b,11100111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111110b,00000000b
			db	11000000b,00000001b,11111111b,11111000b
			db	11000000b,00000001b,11111111b,11111000b
			db	11100000b,00000001b,11111000b,00000000b
			db	11100000b,00000111b,11111000b,00000000b
			db	11110000b,00000111b,11111000b,00000000b
			db	11110000b,00011111b,11111111b,11000000b
			db	11111000b,01111111b,11111111b,11000000b
			db	11111000b,01111111b,11111000b,11000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	01111111b,11111111b,11100000b,00000000b
			db	00111111b,11111111b,11100000b,00000000b
			db	00011111b,11111111b,11100000b,00000000b
			db	00001111b,11111111b,10000000b,00000000b
			db	00000111b,11111111b,10000000b,00000000b
			db	00000111b,11111110b,00000000b,00000000b
			db	00000111b,10001110b,00000000b,00000000b
			db	00000111b,10001111b,10000000b,00000000b
			db	00000110b,00000000b,00000000b,00000000b
			db	00000110b,00000000b,00000000b,00000000b
			db	00000111b,10000000b,00000000b,00000000b
			db	00000111b,10000000b,00000000b,00000000b

rex_die		        db	00000000b,00000000b,01111111b,11111100b		;37line*4byte
			db	00000000b,00000000b,01111111b,11111100b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11100011b,11111111b
			db	00000000b,00000001b,11101011b,11111111b
			db	00000000b,00000001b,11100011b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	00000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111111b,11111111b
			db	11000000b,00000001b,11111110b,00000000b
			db	11000000b,00000001b,11111111b,11111000b
			db	11000000b,00000001b,11111111b,11111000b
			db	11100000b,00000001b,11111000b,00000000b
			db	11100000b,00000111b,11111000b,00000000b
			db	11110000b,00000111b,11111000b,00000000b
			db	11110000b,00011111b,11111111b,11000000b
			db	11111000b,01111111b,11111111b,11000000b
			db	11111000b,01111111b,11111000b,11000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	11111111b,11111111b,11111000b,00000000b
			db	01111111b,11111111b,11100000b,00000000b
			db	00111111b,11111111b,11100000b,00000000b
			db	00011111b,11111111b,11100000b,00000000b
			db	00001111b,11111111b,10000000b,00000000b
			db	00000111b,11111111b,10000000b,00000000b
			db	00000111b,11111110b,00000000b,00000000b
			db	00000111b,10011110b,00000000b,00000000b
			db	00000111b,10011110b,00000000b,00000000b
			db	00000110b,00000110b,00000000b,00000000b
			db	00000110b,00000110b,00000000b,00000000b
			db	00000111b,10000111b,10000000b,00000000b
			db	00000111b,10000111b,10000000b,00000000b

newposition	dw	0000h
point1		dw	30d,48d			;save point1's position
point2		dw	60d,96d
point3		dw	90d,144d
matrix1		dw	140d,224d				;save matrix1's  high and wide
matrix2		dw	80d,128d
matrix3		dw	20d,32d
display_matrix_option	dw	0h,0h,0h,0h;,0100h
						db	0h
keyin 		db 	'000000000000000000000000000000000000000'	;用来存放输入内容的空间
hint		db 	'Please put in you personal password.#'
errors 		db 	'error!#'
welcomes 	db 	'You are welcome Mark!#'
secret  	db 	'i.miss.you'
rex_site	dw	130d,80d
rex_site_before	dw	130d,80d
i8			db	0
j8			db	0
s8			db	01101110b
i16			dw	0h
rex_state	db	1h
rex_picture	db	1h				;1:normal	2:left foot		3:right foot	4:die
rex_picture_next	db	2h
timer1		dw	0h
timer2		dw	0h
timer3		dw	0h
timer4		dw	0h
timers		dw	0h
v_init		dw	14d
rex_v		dw	0h
v_flag		db	0h				;0:the rex_v is -   1:the rex_v is +
g			dw	1h
god         dw      1h
god1        dw      1h
god2        dw      1h
god3        dw      1h
queue_O_length	dw	4h			;when you change the roadblock's(queue_O) number this option must been change to fit it
queue_I_length	dw	0h
queue_O		dw		20d,330d,	22d,350d,	24d,360d,	26d,400d,		;high,position
			dw		28d,410d,	430d,30d,	450d,32d,	470d,34d
			dw		490d,36d,	510d,38d,	530d,40d,	550d,42d
			dw		490d,36d,	510d,38d,	530d,40d,	550d,42d
queue_I		dw		10d,50d,	20d,100d,   30d,150d,	40d,200d		;high,position
			dw		50d,250d,	60d,30d,	450d,32d,	470d,34d
			dw		490d,36d,	510d,38d,	530d,40d,	550d,42d
co_detection	dw	0h			;control collision detection


;give the point(line,row)  return the address in newposition
%macro find_site 2		
	mov cx,%1
	dec cx
	mov ax,320d					;if you want 8 bit mul. al*()=ax   if you want 16 bit mul ax*()=dx.ax
	mul cx
	add ax,%2
	dec ax
	mov [newposition],ax
%endmacro

;%1:the point's line number   %2:the point's row number
;%3:the matrix's high		  %4:the matrix's wide		%5:coular
display_matrix:
	;local matrixloop1,matrixloop1_in,matrixloop2,matrixloop2_in,matrixoutloop2,matrixoutloop1	
	mov ax,[display_matrix_option]
	add ax,[display_matrix_option+4]
	cmp ax,200d
	jbe matrix_noting
	mov ax,200d
	sub ax,[display_matrix_option]
	inc ax
	mov [display_matrix_option+4],ax
	matrix_noting:
	mov ax,[display_matrix_option+2]
	add ax,[display_matrix_option+6]
	cmp ax,320d
	jbe matrix_noting_
	mov ax,320d
	sub ax,[display_matrix_option+2]
	inc ax
	mov [display_matrix_option+6],ax
	matrix_noting_:

	find_site [display_matrix_option],[display_matrix_option+2]	;top left corner's position
	mov si,[newposition]		

	mov ax,0
	cmp ax,[display_matrix_option+4]
	je matrixoutloop1
	jmp matrixloop1_in
	matrixloop1:
	inc ax
	cmp ax,[display_matrix_option+4]
	je matrixoutloop1
	matrixloop1_in:

		mov bx,0
		cmp bx,[display_matrix_option+6]
		je matrixoutloop2
		jmp matrixloop2_in
		matrixloop2:
		inc bx
		cmp bx,[display_matrix_option+6]
		je matrixoutloop2
		matrixloop2_in:
			mov dx,[co_detection]
			cmp dx,1
			jne no_detection
			mov dl,[es:si]
			cmp dl,3
			je game_over
			no_detection:
			mov cl,byte[display_matrix_option+8]
			mov byte[es:si],cl
			inc si
			jmp matrixloop2
		matrixoutloop2:

		add si,320d
		sub si,[display_matrix_option+6]
		jmp matrixloop1

	matrixoutloop1:
	ret

%macro display_matrix_  5
	assigndw [display_matrix_option],%1
	assigndw [display_matrix_option+2],%2
	assigndw [display_matrix_option+4],%3
	assigndw [display_matrix_option+6],%4
	assigndb [display_matrix_option+8],%5
	call display_matrix
%endmacro


;0 background coular
%macro setcoular 4
	mov dx,0x3c8
	mov al,%1
	out dx,al
	mov dx,0x3c9
	mov al,%2
	out dx,al
	mov dx,0x3c9
	mov al,%3
	out dx,al
	mov dx,0x3c9
	mov al,%4
	out dx,al	
%endmacro


%macro assigndw	2
	mov ax,%2
	mov %1,ax
%endmacro

%macro assigndb	2
	mov al,%2
	mov %1,al
%endmacro



print_byte:			;	mov bh,%1 	printf a byte from s8
	mov bl,10000000b
	mov al,0
	dec si
	print_byte_start:
	cmp al,8
	je print_byte_end
	inc al
	mov bh,[s8]
	and bh,bl
	inc si
	shr bl,1
	cmp bh,0
	je print_byte_start
	mov cl,3
	mov byte[es:si],cl
	jmp print_byte_start
	print_byte_end:
	ret

display_rex:
	assigndb [i8],0
	rex_loop1:
	mov al,[i8]
	cmp al,37d
	je rex_loop1_out
		assigndb [j8],0
		rex_loop2:
		mov al,[j8]
		cmp al,4d
		je rex_loop2_out
			assigndb [s8],[di]
			call print_byte
			inc di
			mov al,[j8]
			inc al
			mov [j8],al
			jmp rex_loop2
		rex_loop2_out:
		add si,320d
		sub si,28d	
		mov al,[i8]
		inc al
		mov [i8],al
		jmp rex_loop1
	rex_loop1_out:
	ret 

%macro display_rex_	3
	find_site %1,%2
	mov si,[newposition]
	mov di,%3
	call display_rex
%endmacro

show_picture:
	display_matrix_ [rex_site_before],[rex_site_before+2],37,32,0		;delete the old picture
	mov al,[rex_picture]
	cmp al,1
	jne not_picture1
	display_rex_ [rex_site],[rex_site+2],rex_start
	ret
	not_picture1:
	cmp al,2
	jne not_picture2
	display_rex_ [rex_site],[rex_site+2],rex_runl
	ret
	not_picture2:
	cmp al,3
	jne not_picture3
	display_rex_ [rex_site],[rex_site+2],rex_runr
	ret
	not_picture3:
	display_rex_ [rex_site],[rex_site+2],rex_die
	ret

delay_:
	assigndw [timer3],0
	assigndw [timer4],0
	delay_loop1:
	mov ax,[timer3]
	cmp ax,50000d
	je delay_end
		mov ax,[timer3]
		inc ax
		mov [timer3],ax
		mov ax,[timer4]
		cmp ax,50000d
		je delay_loop2_out
			mov ax,[timer4]
			inc ax
			mov [timer4],ax
		delay_loop2_out:
	jmp delay_loop1
	delay_end:
	ret

delay__:
	assigndb [i8],0
	delay__start:
	mov al,[i8]
	inc al
	mov [i8],al
	cmp al,7d
	je delay__end
		call delay_
	jmp delay__start
	delay__end:
	ret

god___:
        mov ax,[di]
        cmp ax,1
        je god_
        mov ax,1
        mov [di],ax
        jmp god__
        god_:
        mov ax,3
        mov [di],ax
        god__:
        ; mov bh,1
        ; mov bl,5
        mov cl,[di]
        call displaypoint
        ret

;it set for check whether the system is run or not
;%1:the line	%2:the row	%3:the address of the point you want show
%macro mygod 3			
        mov dx,%1
        mov bx,%2
        mov di,%3
        call god___
%endmacro

updata_position:
	mov al,[v_flag]
	cmp al,0
	je v_negative
	mov cx,[g]
	mov bx,[rex_v]
	mov ax,[rex_site]
	add bx,cx
	mov [rex_v],bx
	add ax,bx
	mov [rex_site],ax
	mov ax,[v_init]
	mov bx,[rex_v]
	cmp bx,ax
	jne updata_position_end
	assigndb [rex_state],1
	ret
	v_negative:
	mygod 1,[rex_v],god3
	mov cx,[g]
	mov bx,[rex_v]
	mov ax,[rex_site]
	sub ax,bx
	mov [rex_site],ax
	sub bx,cx
	mov [rex_v],bx
	mov bx,[rex_v]
	cmp bx,0
	jne updata_position_end
	assigndb [v_flag],1
	updata_position_end:
	ret

updata_queue_O:
	mov di,queue_O+2				;di save the address
	mov cx,[queue_O_length]
	cmp cx,0
	je queue_O_not_show
	queue_O_loop1_start:
	cmp cx,0
	je queue_O_loop1_end
		mov bx,[di]
		dec bx
		mov [di],bx
		add di,4
		dec cx
		jmp queue_O_loop1_start
	queue_O_loop1_end:				;dec the position
	mov ax,word[queue_O+2]			;check the limit
	cmp ax,320d
	ja queue_O_not_show
	mov cx,[queue_I_length]			;updata the length
	inc cx
	mov [queue_I_length],cx
	mov cx,[queue_O_length]
	dec cx
	mov [queue_O_length],cx
	mov di,queue_O					;take out the first element to queue_I
	mov ax,[queue_I_length]
	dec ax
	mov cx,4
	mul cx
	mov si,ax
	assigndw word[queue_I+si],[di]
	assigndw word[queue_I+si+2],[di+2]
	mov di,queue_O
	mov cx,[queue_O_length]
	queue_O_loop2_start:
	cmp cx,0
	je queue_O_loop2_end
		assigndw [di],[di+4]
		assigndw [di+2],[di+6]
		add di,4
		dec cx
		jmp queue_O_loop2_start
	queue_O_loop2_end:
	queue_O_not_show:
	ret

updata_queue_I:
	mov di,queue_I+2				;di save the address
	mov cx,[queue_I_length]
	cmp cx,0
	je queue_I_not_show
	queue_I_loop1_start:
	cmp cx,0
	je queue_I_loop1_end
		mov bx,[di]
		dec bx
		mov [di],bx
		add di,4
		dec cx
		jmp queue_I_loop1_start
	queue_I_loop1_end:				;dec the position
	mov ax,word[queue_I+2]			;check the limit
	cmp ax,0d
	ja queue_I_not_show
	mov cx,[queue_I_length]			;updata the length
	dec cx
	mov [queue_I_length],cx
	mov cx,[queue_O_length]
	inc cx
	mov [queue_O_length],cx
	mov di,queue_I					;take out the first element to queue_O
	mov ax,[queue_O_length]
	dec ax
	mov cx,4
	mul cx
	mov si,ax
	assigndw word[queue_O+si],[di]
	assigndw word[queue_O+si+2],1000d
	mov di,queue_I
	mov cx,[queue_I_length]
	queue_I_loop2_start:
	cmp cx,0
	je queue_I_loop2_end
		assigndw [di],[di+4]
		assigndw [di+2],[di+6]
		add di,4
		dec cx
		jmp queue_I_loop2_start
	queue_I_loop2_end:
	queue_I_not_show:
	ret

show_roadblock:
	mov di,queue_I			
	assigndw [i16],[queue_I_length]
	show_roadblock_loop1_start:
	mov cx,[i16]
	cmp cx,0
	je show_roadblock_loop1_end
		mov ax,167d
		sub ax,[di]
		mov [display_matrix_option],ax
		assigndw [display_matrix_option+2],[di+2]
		assigndw [display_matrix_option+4],[di]
		assigndw [display_matrix_option+6],2d
		assigndb [display_matrix_option+8],[i8]
		call display_matrix
		add di,4
		mov cx,[i16]
		dec cx
		mov [i16],cx
		jmp show_roadblock_loop1_start
	show_roadblock_loop1_end:	
	ret			

%macro show_roadblock_ 1
	assigndb [i8],%1
	call show_roadblock
%endmacro

uboot:
	;VGA320*200*8 display mode  320row 200line
	;start memory: a000h 0xa000
	mov al,0x13
	mov ah,0x00
	int 0x10		;go into display mode

	mov ax,0xa000	
  	mov es,ax		;es as the video memory sector address
	mov ax,0
	mov ds,ax		

	setcoular 0,255d,255d,255d		;set the background coular as white
	setcoular 1,255d,0,0			;1 represent red
	setcoular 2,0,255d,0			;2 represent green
	setcoular 3,0,0,255d			;3 represent blue


;to check whether the int16 is effective or not
;         mov bl,0
; begin:
;         mov ah,01h
; 	    int 16h
;         cmp al,' '
;         jne end
;         inc bl
;         mov bh,1
;         ;mov bl,1
;         mov cl,3
;         call displaypoint
;         mov ax,0
; end:
; 		call delay__
; 		jmp begin


;if add can use for a negative			no
	; mov bx,0
	; mov bl,20d
	; start:
	; add,bl,-1
	; mov bh,10
	; mov cl,3
	; call displaypoint
	; call delay__
	; call delay__
	; jmp start

;if display_matrix_ be usefull
; mygod 100,320,god1
; display_matrix_  150,300,100,100,3
; mygod 200,180,god

	; mov ax,[rex_site]
	; add ax,37d						
	; display_matrix_  ax,1,3,320d,2	;display the road
	; call show_roadblock

;--------------------------------------------------main opration----------------------------------------------------
	;timer3 and timer4 are set for timekeeping,and main opration is in the loop.
	;timer1 and timer2 are set for different request of diferent length of time.
	mov ax,[rex_site]
	add ax,37d						
	display_matrix_  ax,1,3,320d,2	;display the road
	mov ax,0						;when system run,timer1 add 1 every 100*100 update
	mov [timer1],ax
	mov [timer2],ax
	mov [timers],ax
	;hear can add timer
	timer1_:
	;mov ax,[timer1]				;there is no compare, because the system should run except the rex die
	;cmp ax,50000d
	;je timer1_out
		mov ax,0
		mov [timer3],ax
		timer3_:
		mov ax,[timer3]
		cmp ax,50d
		je timer3_out
			mov ax,0
			mov [timer4],ax
			timer4_:
			mov ax,[timer4]
			cmp ax,50d
			je timer4_out

				;timer4 loop,hear to add main opration to updata picture    
				mov al,[rex_state]
				cmp al,1
				je rex_state1
                ;mygod 1,20,god3
				mov ax,[timer2]
				cmp ax,20d					;change here to change time's length
				jb out_updata
                    assigndw [timer2],0
					assigndb [rex_picture],1
					assigndb [rex_picture_next],1
					call updata_position
					call show_picture
					assigndb [rex_picture],[rex_picture_next]
					assigndw [rex_site_before],[rex_site]
					assigndw [rex_site_before+2],[rex_site+2]
				jmp out_updata

				rex_state1:
				mov ah,1h
				int 16h
				cmp al,' '
				jne notblank
				assigndb [rex_state],0
				assigndw [rex_v],[v_init]
				assigndb [v_flag],0d
				assigndb [rex_picture],1
                assigndb [rex_picture_next],1
				notblank:
				;call delay__
				mov ax,[timer1]
				cmp ax,4
				jb out_updata
					mygod 2,20,god1
					assigndw [timer1],0
					mov al,[rex_picture]
					cmp al,2
					jne rex_picture_next3
					assigndb [rex_picture_next],3
					jmp rex_picture_next_
					rex_picture_next3:
					cmp al,3
					jne rex_picture_next_
					assigndb [rex_picture_next],2
					rex_picture_next_:
					call show_picture
					assigndb [rex_picture],[rex_picture_next]
					assigndw [rex_site_before],[rex_site]
					assigndw [rex_site_before+2],[rex_site+2]
				out_updata:
				
				mov ax,[timers]
				cmp ax,2
				jb next_check
					assigndw [timers],0
					show_roadblock_ 0
					call updata_queue_O
					call updata_queue_I
					assigndw [co_detection],1h			;open the function of detection
					show_roadblock_ 1					;game over when detection
					assigndw [co_detection],0h			;close the function of detection
				next_check:
				;timer4 loop,hear to add main opration to updata picture

				mov ax,[timer4]
				inc ax
				mov [timer4],ax
				jmp timer4_
			timer4_out:		
			mov ax,[timer3]
			inc ax
			mov [timer3],ax
			jmp timer3_
		timer3_out:		
		;hear can add timer
		mov ax,[timer1]
		inc ax
		mov [timer1],ax
		mov ax,[timer2]
		inc ax
		mov [timer2],ax
		mov ax,[timers]
		inc ax
		mov [timers],ax
		jmp timer1_
	timer1_out:	

	game_over:
	assigndw [co_detection],0h
	assigndb [rex_picture],4
	call show_picture












	

	; display_matrix_ [point1],[point1+2],[matrix1],[matrix1+2],1
	; display_matrix_ [point2],[point2+2],[matrix2],[matrix2+2],2
	; display_matrix_ [point3],[point3+2],[matrix3],[matrix3+2],3

; 	mov bh,2
; 	mov bl,5
; 	mov [i8],bh
; 	mov [j8],bl
; 	mov al,10000000b

; 	ssss:
; 	mov bl,[j8]
; 	cmp bl,20
; 	je endss
; 	inc bl
; 	mov [j8],bl
; 	mov ah,[ps]
; 	and ah,al
; 	cmp ah,0
; 	je sss
; 	mov cl,1
; 	mov bh,[i8]
; 	call displaypoint
; 	shr al,1
; 	jmp ssss
; 	sss:
; 	mov cl,3
; 	mov bh,[i8]
; 	call displaypoint
; 	shr al,1
; 	jmp ssss
; endss:
	; mov bh,1
	; mov bl,1
	; mov cl,0x01
	; call displaypoint
	; mov bh,2
	; mov bl,1
	; mov cl,0x01
	; call displaypoint
	; mov bh,1
	; mov bl,1
	; mov cl,0x01
	; call displaypoint

jmp $	











displaypoint:		;bh represent line   bl represent row  cl represent colour  No zero!!!!
	mov si,0
	dec dx

	displaypoint2:
	cmp dx,0x00
	je displaypoint1
	add si,320d
	dec dx
	jmp displaypoint2

	displaypoint1:
	cmp bx,0x00
	je displaypointend
	add si,1d
	dec bx
	jmp displaypoint1

	displaypointend:
	dec si
	mov byte[es:si],cl
	ret



; judgesecret:
; 	;默认进入80*25的文本模式，起始地址0xB8000
; 	;es 显存地址
; 	;ds 数据地址
; 	mov ax,0xb800    ;指向文本模式的显示缓冲区
;   	mov es,ax
; 	mov ax,0
; 	mov ds,ax

; 	mov di,hint			;确定要显示的字符串
; 	mov si,0x00			;在第一行第一位显示字符串1
; 	mov bl,0x09			;字符串1的颜色
; 	call string			;写入显存，显示字符串

; 	mov di,keyin			;存放输入数据的位置
; 	mov si,0xa0				;显示输入的位置
; 	call input
	
; 	mov si,secret			;si指向密码
; 	mov di,keyin			;di指向输入的数据
; 	mov bh,0x00
; 	loop1:
; 	cmp bh,0x0a
; 	jnb welcome
; 	mov al,[ds:si]
; 	cmp al,[ds:di]
; 	jne error
; 	inc bh
; 	inc si
; 	inc di
; 	jmp loop1

; 	welcome:
; 	mov di,welcomes		
; 	mov si,320d			
; 	mov bl,0x09			
; 	call string		
; 	jmp $

; 	error:
; 	mov di,errors		
; 	mov si,320d			
; 	mov bl,0x0c			
; 	call string		
; 	jmp $
; 	ret







; ;用到的寄存器al bl ds es di si
; string:
; 	string1begin:
; 	mov al,[ds:di]
; 	cmp al,'#'
; 	je stringend

; 	mov byte[es:si],al
; 	inc si
; 	mov byte[es:si],bl
; 	inc si
; 	inc di
; 	jmp string1begin

; 	stringend:	
; 	ret


; character:
; 	mov byte[es:si],bl		;将显示的内容放在bl中
; 	inc si
; 	mov byte[es:si],0x09	;颜色默认是淡蓝色
; 	inc si
; 	ret


; input:
; 	mov al,0x00
; 	inputbegin:
; 	mov ah,0x00
; 	int 16h
; 	cmp al,0x0d
; 	je inputend
; 	cmp al,8d
; 	je backspace
; 	mov byte[ds:di],al
; 	inc di
; 	mov bl,'*'
; 	call character
; 	jmp inputbegin
; 	backspace:
; 	dec di
; 	dec si
; 	dec si
; 	mov bl,' '
; 	call character
; 	dec si
; 	dec si
; 	jmp inputbegin

; 	inputend:
; 	ret





; ;outDelay equ 5000		for example, this statement is the same to 'define outDelay 5000' in C.And it don't need space.

; ; %macro SINGLE 4
; ; 	;pos	dw	0000h	;from 0,0
; ; 	;vel	dw	0101h	;v = (1,1)
; ; 	;char db '*' 
; ; 	;color db 07H

; ; 	mov ax, [%1]
; ; 	mov [pos], ax 
; ; 	mov ax, [%2]
; ; 	mov [vel], ax 
; ; 	mov al, [%3]
; ; 	mov [char], al
; ; 	mov al, [%4]
; ; 	mov [color], al

; ; 	call PLAY

; ; 	mov ax, [pos]
; ; 	mov [%1], ax
; ; 	mov ax, [vel]
; ; 	mov [%2], ax
; ; %endmacro

; ;The code above is like a function in C.
; ; %macro function_name option_number
; ; 	code.......
; ; %endmacro
; ; %1 represent the first option
; ; The function can be used like 'SINGLE pos1,vel1,char1,color1'

; ;high in before  low display behind





	




