;	I write annotation in english because I was suffered from change input method
;	I will show you my code style below
;	1.I always manage line data first than row in follow code. 
;	2.function name:   A:function(call)
;					   A_ or A__:macro
;	3.I am sorry for that I don't distinguish variable name and label name.
;	4.I have a terrible retract, please don't care about it.
;
;
;6.11	add a function to display matrix
;6.25 	change interrupt vector table for timer
;7.5 	add some annotations
org 8400h

jmp uboot

;--------------------------------------------------------------data segment--------------------------------------------------
rex_start	db	00000000b,00000000b,01111111b,11111100b		;37line*4byte  the picture is showed when rex jump or stop
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

rex_runl	db	00000000b,00000000b,01111111b,11111100b		;37line*4byte
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

rex_runr	db	00000000b,00000000b,01111111b,11111100b		;37line*4byte
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

rex_die		db	00000000b,00000000b,01111111b,11111100b		;37line*4byte  the picture is showed when rex die
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

apple		DB  001h,080h,000h,000h,0C0h,000h,000h,060h,000h,000h,020h,000h,000h,078h,000h,003h
			DB  0FFh,000h,00Fh,0FFh,0C0h,01Fh,0FFh,0E0h,03Fh,0FFh,0F0h,07Fh,0FFh,0F8h,07Fh,0FFh
			DB  088h,0FFh,0FFh,000h,0FFh,0FEh,000h,0FFh,0FCh,000h,0FFh,0FCh,000h,0FFh,0FCh,000h
			DB  0FFh,0FCh,000h,0FFh,0FEh,000h,0FFh,0FFh,000h,0FFh,0FFh,088h,07Fh,0FFh,0F0h,03Fh
			DB  0FFh,0E0h,01Fh,0FFh,0E0h,00Fh,0FFh,080h,007h,0FFh,000h,003h,0FEh,000h,000h,000h
			DB  000h

fire		DB  000h,000h,000h,000h,080h,000h,001h,080h,000h,001h,0C0h,000h,001h,0E4h,000h,003h
			DB  0F6h,000h,003h,0F7h,000h,003h,0F7h,080h,013h,0F7h,080h,01Bh,0FFh,080h,01Fh,0FFh
			DB  080h,01Fh,0FFh,0C0h,01Fh,0FFh,0C0h,01Fh,0FFh,0C0h,03Fh,0FFh,0E0h,03Fh,0FFh,0E0h
			DB  03Fh,0FFh,0E0h,03Fh,0FFh,0E0h,03Fh,0FFh,0E0h,03Fh,0FFh,0E0h,01Fh,0FFh,0C0h,01Fh
			DB  0FFh,0C0h,00Fh,0FFh,080h,00Fh,0FFh,080h,007h,0FFh,000h,003h,0FFh,000h,000h,0FCh
			DB  000h


apple16			dw	0h
p16				dw  0h
s16				dw  0h
i16				dw	0h											;temporary variable
j16				dw	0h
f16				dw  0h
d16				dw  0h
score			dw  0h
fire_flag		dw  0h
en_fire_check	dw  0h
rex_site		dw	130d,80d									;main option when display rex
rex_site_before	dw	130d,80d
timer1			dw	0h
timer2			dw	0h
timer3			dw	0h
timer4			dw	0h
timers			dw	0h
timer_flag1		dw	0h
timer_flag2		dw	0h
timer_flag3		dw	0h
timer_flag4		dw	0h
timer_flag5		dw	0h
timer_flag6		dw	0h
v_init			dw	14d
rex_v			dw	0h
g				dw	1h
co_detection	dw	0h											;control collision detection
queue_O_length	dw	6h											;when you change the roadblock's(queue_O) number this option must been change to fit it
queue_I_length	dw	0h
queue_O			dw		20d,330d,0h,	22d,600d,0h,	24d,1000d,0h,	26d,1500d,0h,		;high,position,flag
				dw		28d,2000d,0h,	20d,2100d,0h,	450d,32d,0h,	470d,34d,0h,
				dw		490d,36d,0h,	510d,38d,0h,	530d,40d,0h,	550d,42d,0h,
			
queue_I			dw		20d,330d,0h,	22d,600d,0h,	24d,1000d,0h,	26d,1500d,0h,		;high,position
				dw		28d,2000d,0h,	20d,2100d,0h,	450d,32d,0h,	470d,34d,0h,
				dw		490d,36d,0h,	510d,38d,0h,	530d,40d,0h,	550d,42d,0h,

apple_queue_O_length	dw	5h											;when you change the roadblock's(queue_O) number this option must been change to fit it
apple_queue_I_length	dw	0h
apple_queue_O			dw		40d,200d,0d,	50d,450d,0d,		40d,500d,0d,	50d,540d,0d,	50d,790d,2d,		20d,520d,0d			;line,row,flag
apple_queue_I			dw		10d,50d,0d,		20d,100d,0d,		20d,520d,0d,	20d,330d,0d,	20d,480d,0d,		20d,520d,0d

bullet_queue_length		dw  0h
bullet_queue	dw  0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0

newposition		dw	0000h										;use to transfer parameters
point1			dw	30d,48d										;save point1's position
point2			dw	60d,96d
point3			dw	90d,144d
matrix1			dw	140d,224d									;save matrix1's  high and wide
matrix2			dw	80d,128d
matrix3			dw	20d,32d
god         	dw	1h
god1        	dw  1h
god2        	dw  1h
god3        	dw  1h
queue_option1	dw  0h
queue_option2	dw  0h
queue_option3	dw  0h
queue_option4	dw  0h
display_matrix_option	dw	0h,0h,0h,0h
						db	0h


i8				db	0											;temporary variable
j8				db	0
s8				db	01101110b
n8				db  0h
p8				db  0h
b8            	db  0h
keyin 			db 	'000000000000000000000000000000000000000'	;use to save the characters you input
hint			db 	'Please put in you personal password.#'		;show the marked words
errors 			db 	'error!#'
welcomes 		db 	'You are welcome Mark!#'
secret  		db 	'i.miss.you'								;the secret length should been changed if secret change
rex_state		db	1h
rex_picture		db	1h											;1:normal	2:left foot		3:right foot	4:die
v_flag			db	0h											;0:the rex_v is -   1:the rex_v is +
rex_picture_next	db	2h




;-------------------------------------------------------function for text mode-----------------------------------------------
;the code below is not used after I want to write code of rex
judgesecret:
	;默认进入80*25的文本模式，起始地址0xB8000
	;es 显存地址
	;ds 数据地址
	mov ax,0xb800    ;指向文本模式的显示缓冲区
  	mov es,ax
	mov ax,0
	mov ds,ax

	mov di,hint			;确定要显示的字符串
	mov si,0x00			;在第一行第一位显示字符串1
	mov bl,0x09			;字符串1的颜色
	call string			;写入显存，显示字符串

	mov di,keyin			;存放输入数据的位置
	mov si,0xa0				;显示输入的位置
	call input
	
	mov si,secret			;si指向密码
	mov di,keyin			;di指向输入的数据
	mov bh,0x00
	loop1:
	cmp bh,0x0a
	jnb welcome
	mov al,[ds:si]
	cmp al,[ds:di]
	jne error
	inc bh
	inc si
	inc di
	jmp loop1


	welcome:
	mov di,welcomes		
	mov si,320d			
	mov bl,0x09			
	call string		
	jmp $


	error:
	mov di,errors		
	mov si,320d			
	mov bl,0x0c			
	call string		
	jmp $
	ret


;用到的寄存器al bl ds es di si
string:
	string1begin:
	mov al,[ds:di]
	cmp al,'#'
	je stringend

	mov byte[es:si],al
	inc si
	mov byte[es:si],bl
	inc si
	inc di
	jmp string1begin

	stringend:	
	ret


character:
	mov byte[es:si],bl		;将显示的内容放在bl中
	inc si
	mov byte[es:si],0x09	;颜色默认是淡蓝色
	inc si
	ret


input:
	mov al,0x00
	inputbegin:
	mov ah,0x00
	int 16h
	cmp al,0x0d
	je inputend
	cmp al,8d
	je backspace
	mov byte[ds:di],al
	inc di
	mov bl,'*'
	call character
	jmp inputbegin
	backspace:
	dec di
	dec si
	dec si
	mov bl,' '
	call character
	dec si
	dec si
	jmp inputbegin

	inputend:
	ret




;-----------------------------------------------------------public function-----------------------------------------------------------
%macro add8 2
	mov ax,0
	mov al,byte%1
	add ax,%2
	mov byte%1,al
%endmacro


%macro add16 2
	mov ax,%1
	add ax,%2
	mov %1,ax
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


delay_:								;delay short time
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


delay__:							;delay long time
	assigndb [i8],0
	delay__start:
	mov al,[i8]
	inc al
	mov [i8],al
	cmp al,dl
	je delay__end
		call delay_
	jmp delay__start
	delay__end:
	ret


;change the option can change the time you want dalay
%macro delay___ 1				
	mov dl,%1
	call delay__
%endmacro


displaypoint:						;dx represent line   bx represent row  cl represent colour  No zero!!!!
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


god___:								;the name seemed funny, I use it to debug that trouble me for some hours
        mov ax,[di]					;it can show if the procedure is running by showing point in screen
        cmp ax,1
        je god_
        mov ax,1
        mov [di],ax
        jmp god__
        god_:
        mov ax,3
        mov [di],ax
        god__:
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






;---------------------------------------------------------------set for display-----------------------------------------------------------
;%1:the point's line number   %2:the point's row number
;%3:the matrix's high		  %4:the matrix's wide		%5:coular
display_matrix:
	;local matrixloop1,matrixloop1_in,matrixloop2,matrixloop2_in,matrixoutloop2,matrixoutloop1	
	mov ax,[display_matrix_option]		;too check if point's position is out of limit
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
			mov dx,[co_detection]				;collision detection 
			cmp dx,1
			jne no_detection
			mov dl,[es:si]
			cmp dl,3
			je game_over
			jmp no_detection

			mov dx,[en_fire_check]				;collision detection 
			cmp dx,1
			jne no_detection
			mov dl,[es:si]
			; cmp dl,7
			; jne no_detection
			mov di,[d16]
			assigndw [di+4],1
			
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


;show matrix 
;for example   display_matrix_ 3,4,6,7,3  show matrix that high 6 wide 7 in 3 line 4 row with colure 3
%macro display_matrix_  5
	assigndw [display_matrix_option],%1
	assigndw [display_matrix_option+2],%2
	assigndw [display_matrix_option+4],%3
	assigndw [display_matrix_option+6],%4
	assigndb [display_matrix_option+8],%5
	call display_matrix
%endmacro

;clear the screen
%macro cls 0
	display_matrix_ 1,1,200,320,0
%endmacro

;printf 8 pixel from a byte data
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
	;mov cl,3
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
			mov cl,3							;if want change rex's coular, you should change the value of cl. And you must change the collision detection
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



;show prop such as fire and apple
display_prop:
	assigndb [i8],0
	prop_loop1:
	mov al,[i8]
	cmp al,27d
	je prop_loop1_out
		assigndb [j8],0
		prop_loop2:
		mov al,[j8]
		cmp al,3d
		je prop_loop2_out
			assigndb [s8],[di]
			mov cl,[p8]							;if want change rex's coular, you should change the value of cl. And you must change the collision detection
			call print_byte
			inc di
			mov al,[j8]
			inc al
			mov [j8],al
			jmp prop_loop2
		prop_loop2_out:
		add si,320d
		sub si,21d	
		mov al,[i8]
		inc al
		mov [i8],al
		jmp prop_loop1
	prop_loop1_out:
	ret 

%macro display_prop_	4
	find_site %1,%2
	mov si,[newposition]
	mov di,%3
	assigndb [p8],%4
	call display_prop
%endmacro


;------------------------------------------------------------contral algorithm------------------------------------------------------------
updata_position:	;when rex is off the ground, this function will find the position that rex fit
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
	;mygod 7,20,god				;use 'mygod' you can check if you system is running
	mov ax,[v_init]
	mov bx,[rex_v]
	cmp bx,ax
	jne updata_position_end
	assigndb [rex_state],1
	assigndb [rex_picture],2
	assigndb [rex_picture_next],3
	ret
	v_negative:
	;mygod 1,[rex_v],god3
	;mygod 7,20,god
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


updata_queue_O:						;queue to cotrol the roadblock
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
		add di,6
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
	mov cx,6
	mul cx
	mov si,ax
	assigndw word[queue_I+si],[di]
	assigndw word[queue_I+si+2],[di+2]
	assigndw word[queue_I+si+4],[di+4]
	mov di,queue_O
	mov cx,[queue_O_length]
	queue_O_loop2_start:
	cmp cx,0
	je queue_O_loop2_end
		assigndw [di],[di+6]
		assigndw [di+2],[di+8]
		assigndw [di+4],[di+10]
		add di,6
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
		add di,6
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
	mov cx,6
	mul cx
	mov si,ax
	assigndw word[queue_O+si],[di]
	assigndw word[queue_O+si+2],2500d			;cahnge here to change position
	assigndw word[queue_O+si+4],0d
	mov di,queue_I
	mov cx,[queue_I_length]
	queue_I_loop2_start:
	cmp cx,0
	je queue_I_loop2_end
		assigndw [di],[di+6]
		assigndw [di+2],[di+8]
		assigndw [di+4],[di+10]
		add di,6
		dec cx
		jmp queue_I_loop2_start
	queue_I_loop2_end:
	queue_I_not_show:
	ret


show_roadblock:					;check queue_I and display the roadblock
	mov di,queue_I			
	assigndw [i16],[queue_I_length]
	show_roadblock_loop1_start:
	mov cx,[i16]
	cmp cx,0
	je show_roadblock_loop1_end
		mov ax,[di+4]
		cmp ax,1
		je not_show_roadblock
		mov ax,167d
		sub ax,[di]
		mov [display_matrix_option],ax
		;assigndw [d16],di
		assigndw [display_matrix_option+2],[di+2]
		assigndw [display_matrix_option+4],[di]
		assigndw [display_matrix_option+6],2d
		assigndb [display_matrix_option+8],[i8]
		call display_matrix
		;assigndw [di+4],1
		add di,6
		mov cx,[i16]
		dec cx
		mov [i16],cx
		jmp show_roadblock_loop1_start
		jmp show_roadblock_loop1_end
		not_show_roadblock:
	show_roadblock_loop1_end:	
	ret			


%macro show_roadblock_ 1
	assigndb [i8],%1
	call show_roadblock
%endmacro

;------------------------------------------------------------------------------------
apple_updata_queue_O:						;queue to cotrol the roadblock
	mov di,apple_queue_O+2				;di save the address
	mov cx,[apple_queue_O_length]
	cmp cx,0
	je apple_queue_O_not_show
	apple_queue_O_loop1_start:
	cmp cx,0
	je apple_queue_O_loop1_end
		mov bx,[di]
		dec bx
		mov [di],bx
		add di,6							;这里因为每个数据的大小不一样
		dec cx
		jmp apple_queue_O_loop1_start
	apple_queue_O_loop1_end:				;dec the position
	mov ax,word[apple_queue_O+2]			;check the limit
	cmp ax,294d								;不是一进入屏幕就要显示
	ja apple_queue_O_not_show
	mov cx,[apple_queue_I_length]			;updata the length
	inc cx
	mov [apple_queue_I_length],cx
	mov cx,[apple_queue_O_length]
	dec cx
	mov [apple_queue_O_length],cx
	mov di,apple_queue_O					;take out the first element to queue_I
	mov ax,[apple_queue_I_length]
	dec ax
	mov cx,6								;数据的大小不一样
	mul cx
	mov si,ax
	assigndw word[apple_queue_I+si],[di]
	assigndw word[apple_queue_I+si+2],[di+2]
	assigndw word[apple_queue_I+si+4],[di+4];数据的大小不一样
	mov di,apple_queue_O
	mov cx,[apple_queue_O_length]
	apple_queue_O_loop2_start:
	cmp cx,0
	je apple_queue_O_loop2_end
		assigndw [di],[di+6]
		assigndw [di+2],[di+8]
		assigndw [di+4],[di+10]				;数据的大小不一样
		add di,6							;数据的大小不一样
		dec cx
		jmp apple_queue_O_loop2_start
	apple_queue_O_loop2_end:
	apple_queue_O_not_show:
	ret


apple_updata_queue_I:
	mov di,apple_queue_I+2				;di save the address
	mov cx,[apple_queue_I_length]
	cmp cx,0
	je apple_queue_I_not_show
	apple_queue_I_loop1_start:
	cmp cx,0
	je apple_queue_I_loop1_end
		mov bx,[di]
		dec bx
		mov [di],bx
		add di,6							;改
		dec cx
		jmp apple_queue_I_loop1_start
	apple_queue_I_loop1_end:				;dec the position
	mov ax,word[apple_queue_I+2]			;check the limit
	cmp ax,0d								;改这里
	ja apple_queue_I_not_show
	mov cx,[apple_queue_I_length]			;updata the length
	dec cx
	mov [apple_queue_I_length],cx
	mov cx,[apple_queue_O_length]
	inc cx
	mov [apple_queue_O_length],cx
	mov di,apple_queue_I					;take out the first element to queue_O
	mov ax,[apple_queue_O_length]
	dec ax
	mov cx,6								;改
	mul cx
	mov si,ax
	assigndw word[apple_queue_O+si],[di]
	assigndw word[apple_queue_O+si+2],800d			;cahnge here to change position
	mov ax,word[di+4]
	cmp ax,2
	je fire_init
	cmp ax,3
	je fire_init
	assigndw word[apple_queue_O+si+4],0d
	jmp out_fire_init
	fire_init:
	assigndw word[apple_queue_O+si+4],2d
	out_fire_init:
	mov di,apple_queue_I
	mov cx,[apple_queue_I_length]
	apple_queue_I_loop2_start:
	cmp cx,0
	je apple_queue_I_loop2_end
		assigndw [di],[di+6]						;改
		assigndw [di+2],[di+8]
		assigndw [di+4],[di+10]
		add di,6									;改
		dec cx
		jmp apple_queue_I_loop2_start
	apple_queue_I_loop2_end:
	apple_queue_I_not_show:
	ret


show_apple:					;check queue_I and display the roadblock
	mov di,apple_queue_I
	mov [apple16],di			
	assigndw [i16],[apple_queue_I_length]
	;add16 [i16],2
	show_apple_loop1_start:
	mov cx,[i16]
	cmp cx,0
	je show_apple_loop1_end

		mov di,[apple16]
		mov ax,[di+4]
		cmp ax,1
		je eat_apple
		cmp ax,3
		je eat_apple

		cmp ax,2
		jne is_apple
		mov al,[b8]
		cmp al,0
		je clear_fire
		add8 [b8],1
		display_prop_ [di],[di+2],fire,[b8]
		jmp check_co
		clear_fire:
		display_prop_ [di],[di+2],fire,0
		jmp check_co
		is_apple:
		mov di,[apple16]
		display_prop_ [di],[di+2],apple,[b8]
		check_co:
		mov di,[apple16]
		mov ax,[di]
		add ax,27d
		mov [s16],ax
		assigndw [p16],[di+2]
		find_site [s16],[p16]
		mov di,[newposition]
		mov al,[es:di]
		cmp al,3
		jne eat_apple
		mov di,[apple16]
		mov ax,word[di+4]
		cmp ax,2
		je is_fire
		mov word[di+4],1
		display_prop_ [di],[di+2],apple,0
		add16 [score],1
		jmp eat_apple
		is_fire:
		mov word[di+4],3
		display_prop_ [di],[di+2],fire,0
		assigndw [fire_flag],1000d
	

		eat_apple:
		add16 [apple16],6
		mov cx,[i16]
		dec cx
		mov [i16],cx
		jmp show_apple_loop1_start
	show_apple_loop1_end:	
	ret			


%macro show_apple_ 1
	assigndb [b8],%1
	call show_apple
%endmacro

show_fire:
	mov di,bullet_queue			
	assigndw [i16],[bullet_queue_length]
	show_fire_loop1_start:
	mov cx,[i16]
	cmp cx,0
	je show_fire_loop1_end
		assigndw [display_matrix_option],[di]
		assigndw [display_matrix_option+2],[di+2]
		assigndw [display_matrix_option+4],2d
		assigndw [display_matrix_option+6],2d
		assigndb [display_matrix_option+8],[f16]
		call display_matrix
		add di,4
		mov cx,[i16]
		dec cx
		mov [i16],cx
		jmp show_fire_loop1_start
	show_fire_loop1_end:	
	ret




updata_fire:
	assigndw [f16],0
	call show_fire
	mov di,bullet_queue+2				;di save the address
	mov cx,[bullet_queue_length]
	cmp cx,0
	je bullet_queue_not_show
	bullet_queue_loop1_start:
	cmp cx,0
	je bullet_queue_loop1_end
		mov bx,[di]
		inc bx
		mov [di],bx
		add di,4
		dec cx
		jmp bullet_queue_loop1_start
	bullet_queue_loop1_end:				;dec the position
	mov ax,word[bullet_queue+2]			;check the limit
	cmp ax,310d
	jb bullet_queue_show
	mov cx,[bullet_queue_length]			;updata the length
	dec cx
	mov [bullet_queue_length],cx
	mov di,bullet_queue
	mov cx,[bullet_queue_length]
	bullet_queue_loop2_start:
	cmp cx,0
	je bullet_queue_loop2_end
		assigndw [di],[di+4]
		assigndw [di+2],[di+6]
		add di,4
		dec cx
		jmp bullet_queue_loop2_start
	bullet_queue_show:
	assigndw [f16],7
	call show_fire
	bullet_queue_loop2_end:
	bullet_queue_not_show:
	ret

;--------------------------------------------------function for show string and character-----------------------------------------
display_character:                  
	assigndb [i8],0
	display_character_loop1:
	mov al,[i8]
	cmp al,17d                       ;please change the option when you change matrix's line
	je display_character_loop1_out
		assigndb [j8],0
		display_character_loop2:
		mov al,[j8]
		cmp al,1d                   ;this option is (matrix's line/4)
		je display_character_loop2_out
			assigndb [s8],[di]
			call print_byte
			inc di
			mov al,[j8]
			inc al
			mov [j8],al
			jmp display_character_loop2
		display_character_loop2_out:
		add si,320d
		sub si,7d					;this option is (matrix's line*7/8)
		mov al,[i8]
		inc al
		mov [i8],al
		jmp display_character_loop1
	display_character_loop1_out:
	ret 

;%1 %2:position %3:coular %4:data
;for example    display_character_ 5,20h,1,character_m
%macro display_character_	4	
	find_site %1,%2
	mov si,[newposition]
	mov di,%4
	mov cl,%3
	call display_character
%endmacro

display_string:
	mov bx,[display_option4]
	mov ax,0
	mov al,byte[bx]
	cmp al,'#'
	je display_string_end
	cmp al,' '
	je display_block
		sub ax,'a'
		mov cx,17d
		mul cx
		add ax,character_a
		mov [i16],ax
		display_character_ [display_option1],[display_option2],[display_option3],[i16]
		display_block:
		mov ax,[display_option2]
		add ax,9d
		mov [display_option2],ax
		cmp ax,311d
		jb display_string_not_limit
		assigndw [display_option2],1
		mov ax,[display_option1]
		add ax,18d
		mov [display_option1],ax
		cmp ax,182d
		ja display_string_end
		display_string_not_limit:
		mov ax,[display_option4]
		add ax,1d
		mov [display_option4],ax
		jmp display_string
	display_string_end:
	ret

;for example   display_string_ 100d,50d,1,stringp1   will show stringp1 in 100,50 position with NO1 coular
%macro display_string_	4	
	assigndw [display_option1],%1
	assigndw [display_option2],%2
	assigndb [display_option3],%3
	assigndw [display_option4],%4
	call display_string
%endmacro

%macro display_num 1
	mov ax,%1
	mov bl,100d
	div bl
	mov al,ah
	mov ah,0
	mov bl,10d
	div bl
	mov [n8],ah

	mov ah,0
	mov cx,17d
	mul cx
	add ax,character_0
	mov di,ax
	display_matrix_ 10,250,27,8,0
	display_character_ 10,250,4,di
	mov ah,0
	mov al,[n8]
	mov cx,17d
	mul cx
	add ax,character_0
	mov di,ax
	display_matrix_ 10,260,27,8,0
	display_character_ 10,260,4,di
%endmacro



;-----------------------------------------------------------interrupt function-----------------------------------------------------
int_8_timer:
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	push es

	add16 [timer_flag1],1
	add16 [timer_flag2],1
	add16 [timer_flag3],1
	add16 [timer_flag4],1
	add16 [timer_flag5],1
	mov ax,[fire_flag]
	cmp ax,0
	je no_fire
	dec ax
	mov [fire_flag],ax
	no_fire:

	mov al,0x20			
	mov dx,0x20
	out dx,al

	pop es
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	iret


key_put_in:
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	push es

	mov dx,0x20			;中断响应，退出优先级,中断芯片的端口20
	mov al,0x61
	out dx,al
	mov dx,0x60			;键盘地址60
	in al,dx

	cmp al,0x1e
	je A
	cmp al,0x1f
	je S
	jmp key_put_in_end

	A:
	mov al,[rex_state]
	cmp al,0
	je key_put_in_end
	assigndb [rex_state],0
	assigndw [rex_v],[v_init]
	assigndb [v_flag],0d
	assigndb [rex_picture],1
	assigndb [rex_picture_next],1
	jmp key_put_in_end

	S:
	mov ax,[fire_flag]
	cmp ax,0
	je key_put_in_end
	mov di,bullet_queue					
	mov ax,[bullet_queue_length]
	mov cx,4
	mul cx
	add di,ax
	assigndw [di],12
	add16 [di],[rex_site]
	assigndw [di+2],32
	add16 [di+2],[rex_site+2]
	add16 [bullet_queue_length],1
	jmp key_put_in_end

	key_put_in_end:

	pop es
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	iret



;----------------------------------------------------------------main-------------------------------------------------------------
uboot:
	;VGA320*200*8 display mode  320row 200line
	;start memory: a000h 0xa000
	mov al,0x13
	mov ah,0x00
	int 0x10						;go into display mode

	mov ax,0xa000	
  	mov es,ax						;es as the video memory sector address
	mov ax,0
	mov ds,ax		

									
	mov word[ds:0x20],int_8_timer;enable the interrupt
	mov word[ds:0x22],0
	mov word[ds:0x24],key_put_in
	mov word[ds:0x26],0
	sti

	setcoular 0,255d,255d,255d		;set the background coular as white
	setcoular 1,255d,0,0			;1 represent red
	setcoular 2,0,255d,0			;2 represent green
	setcoular 3,0,0d,255d			;3 represent blue
	setcoular 4,88d,88d,88d	
	setcoular 5,255d,10d,10d	
	setcoular 6,63d,72d,204d
	setcoular 7,96d,204d,63d
	
	display_string_ 100d,50d,1,stringp3		;show welcome page
	display_string_ 50d,50d,1,stringp1		;show welcome page
	delay___ 100
	cls
	;display_matrix_  5,5,24,27,3


;---------------------------------------------------------------main opration-------------------------------------------------------------
	;timer3 and timer4 are set for timekeeping,and main opration is in the loop.
	;timer1 and timer2 are set for different request of diferent length of time.
	mov ax,[rex_site]
	add ax,37d						
	display_matrix_  ax,1,3,320d,2	;display the road
	
	main_opration:   
	mov al,[rex_state]
	cmp al,1
	je rex_state1
	mov ax,[timer_flag1]
	cmp ax,10d					;change here to change time's length
	jb out_updata
		assigndw [timer_flag1],0
		assigndb [rex_picture],1
		assigndb [rex_picture_next],1
		call updata_position
		call show_picture
		assigndb [rex_picture],[rex_picture_next]
		assigndw [rex_site_before],[rex_site]
		assigndw [rex_site_before+2],[rex_site+2]
	jmp out_updata

	rex_state1:
	mov ax,[timer_flag2]
	cmp ax,15d				;change here to change time's length
	jb out_updata
		assigndw [timer_flag2],0
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
	
	mov ax,[timer_flag3]
	cmp ax,2d				;change here to change time's length
	jb next_check
		assigndw [timer_flag3],0
		show_roadblock_ 0					;clear
		call updata_queue_O
		call updata_queue_I
		assigndw [co_detection],1h			;open the function of detection
		;assigndw [en_fire_check],1h
		show_roadblock_ 1					;game over when detection
		assigndw [co_detection],0h			;close the function of detection
		;assigndw [en_fire_check],0h
	next_check:

	mov ax,[timer_flag4]
	cmp ax,4d				
	jb next_check_apple
		assigndw [timer_flag4],0
		show_apple_ 0
		call apple_updata_queue_O
		call apple_updata_queue_I
		;assigndw [co_detection],1h			;open the function of detection
		show_apple_ 5					;game over when detection
		;assigndw [co_detection],0h			;close the function of detection
		display_num [score]
	next_check_apple:

	
	mov ax,[timer_flag5]
	cmp ax,2d				
	jb next_check_fire
		assigndw [timer_flag5],0
		call updata_fire
	next_check_fire:


	jmp main_opration

	

	game_over:								;when rex die,here will show the die picture
	assigndw [co_detection],0h
	assigndb [rex_picture],4
	call show_picture
	delay___ 50d
	cls 
	display_string_ 50d,50d,1,stringp2


jmp $	



;--------------------------------------------------------character library----------------------------------------------------------
character_a	DB  000,000,000,000,000,000,000,07Ch,06Eh,00Eh,07Eh,0EEh,0EEh,0FEh,000,000
			DB  000
character_b DB  000,000,000,000,0E0h,0E0h,0E0h,0FEh,0F7h,0E7h,0E3h,0E7h,0E7h,0FEh,000,000
			DB  000           
character_c	DB  000,000,000,000,000,000,000,07Ch,0E4h,0E0h,0E0h,0E0h,0E4h,07Ch,000,000
			DB  000
character_d	DB  000,000,000,000,007h,007h,007h,07Fh,0E7h,0E7h,0E7h,0E7h,0EFh,07Fh,000,000
			DB  000
character_e	DB  000,000,000,000,000,000,000,07Ch,0EEh,0E6h,0FEh,0E0h,0E0h,07Eh,000,000
			DB  000
character_f	DB  000,000,000,000,070h,060h,060h,0F0h,060h,060h,060h,060h,060h,060h,000,000
			DB  000
character_g	DB  000,000,000,000,000,000,000,07Fh,0EFh,0E7h,0E7h,0E7h,0EFh,07Fh,006h,00Eh
			DB  0FCh
character_h	DB  000,000,000,000,0E0h,0E0h,0E0h,0FEh,0F6h,0E7h,0E7h,0E7h,0E7h,0E7h,000,000
			DB  000
character_i	DB  000,000,000,000,0E0h,000,000,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h,000,000
			DB  000
character_j	DB  000,000,000,000,0E0h,000,000,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h,0C0h
			DB  0C0h
character_k	DB  000,000,000,000,0E0h,0E0h,0E0h,0EEh,0FCh,0F8h,0F0h,0F8h,0FCh,0EEh,000,000
			DB  000
character_l	DB  000,000,000,000,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h,0E0h,000,000
			DB  000
character_m	DB  000,000,000,000,000,000,0FFh,0DBh,0DBh,0DBh,0DBh,0DBh,0C3h,0C3h,000,000
			DB  000
character_n	DB  000,000,000,000,000,000,000,0FEh,0F6h,0E7h,0E7h,0E7h,0E7h,0E7h,000,000
			DB  000
character_o	DB  000,000,000,000,000,000,000,07Eh,0E7h,0E7h,0E7h,0E7h,0E6h,07Eh,000,000
			DB  000
character_p	DB  000,000,000,000,000,000,000,0FEh,0F7h,0E7h,0E3h,0E7h,0E7h,0FEh,0E0h,0E0h
			DB  0E0h
character_q	DB  000,000,000,000,000,000,000,07Fh,0EFh,0E7h,0E7h,0E7h,0EFh,07Fh,007h,007h
			DB  007h
character_r	DB  000,000,000,000,000,000,000,0F8h,0F0h,0E0h,0E0h,0E0h,0E0h,0E0h,000,000
			DB  000
character_s	DB  000,000,000,000,000,000,000,07Ch,0ECh,0E0h,078h,01Ch,0DCh,0F8h,000,000
			DB  000
character_t	DB  000,000,000,000,000,060h,060h,0F8h,060h,060h,060h,060h,060h,078h,000,000
			DB  000
character_u	DB  000,000,000,000,000,000,000,0E6h,0E6h,0E6h,0E6h,0E6h,0EEh,07Eh,000,000
			DB  000
character_v	DB  000,000,000,000,000,000,000,0C6h,0EEh,0EEh,06Ch,07Ch,038h,038h,000,000
			DB  000
character_w	DB  000,000,000,000,000,000,000,0C3h,0C3h,0DBh,0DBh,0DBh,0FFh,0FFh,000,000
			DB  000
character_x	DB  000,000,000,000,000,000,000,0ECh,07Ch,078h,030h,078h,0FCh,0CCh,000,000
			DB  000
character_y	DB  000,000,000,000,000,000,000,0C6h,0EEh,0EEh,06Ch,07Ch,038h,038h,038h,070h
			DB  0E0h
character_z	DB  000,000,000,000,000,000,000,0FCh,01Ch,038h,030h,070h,0E0h,0FCh,000,000
			DB  000
character_block	DB 000,000,000,000,000,000,000,0h,0h,0h,00,0h,0h,0h,000,000
			DB  000
character_0 DB  000,000,000,000,03Eh,07Eh,0E7h,0E7h,0E7h,0E7h,0E7h,0E7h,0E7h,07Eh,03Ch,000
			DB  000
character_1 DB  000,000,000,000,01Ch,03Ch,07Ch,01Ch,01Ch,01Ch,01Ch,01Ch,01Ch,01Ch,01Ch,000
			DB  000
character_2 DB  000,000,000,000,07Ch,0EEh,007h,007h,006h,00Eh,01Ch,070h,060h,0E0h,0FFh,000
			DB  000
character_3	DB  000,000,000,000,07Ch,06Eh,006h,006h,00Eh,07Ch,00Eh,007h,007h,0CEh,0FCh,000
			DB  000
character_4	DB  000,000,000,000,00Eh,01Eh,01Eh,03Eh,07Eh,06Eh,0EEh,0FFh,00Eh,00Eh,00Eh,000
			DB  000
character_5	DB  000,000,000,000,07Eh,060h,060h,060h,07Ch,00Eh,007h,007h,007h,0EEh,0FCh,000
			DB  000
character_6	DB  000,000,000,000,03Fh,070h,060h,0E0h,0FEh,0F7h,0E7h,0E7h,0E7h,077h,03Eh,000
			DB  000
character_7	DB  000,000,000,000,0FFh,007h,00Eh,00Eh,00Ch,01Ch,018h,038h,038h,038h,030h,000
			DB  000
character_8	DB  000,000,000,000,03Eh,076h,0E7h,0E7h,076h,03Ch,0E7h,0E7h,0E7h,0E7h,07Eh,000
			DB  000
character_9	DB  000,000,000,000,07Ch,0EEh,0E7h,0E7h,0E7h,0E7h,07Fh,007h,006h,00Eh,0FCh,000
			DB  000


stringp1	db 'press a to jump#'				;you can show string
stringp2	db 'all designed by mark#'
stringp3	db 'press s to attack#'



;-----------------------------------------set as option-------------------------------
display_option1	dw 	0
display_option2	dw 	0
display_option3	db 	0
display_option4	dw 	0

	


;-----------------------------------------grammar example-----------------------------------------------
;outDelay equ 5000		for example, this statement is the same to 'define outDelay 5000' in C.And it don't need space.

; %macro SINGLE 4
; 	;pos	dw	0000h	;from 0,0
; 	;vel	dw	0101h	;v = (1,1)
; 	;char db '*' 
; 	;color db 07H

; 	mov ax, [%1]
; 	mov [pos], ax 
; 	mov ax, [%2]
; 	mov [vel], ax 
; 	mov al, [%3]
; 	mov [char], al
; 	mov al, [%4]
; 	mov [color], al

; 	call PLAY

; 	mov ax, [pos]
; 	mov [%1], ax
; 	mov ax, [vel]
; 	mov [%2], ax
; %endmacro

;The code above is like a function in C.
; %macro function_name option_number
; 	code.......
; %endmacro
; %1 represent the first option
; The function can be used like 'SINGLE pos1,vel1,char1,color1'

;high in before  low display behind








