;high in before  low display behind
;密码未加密
org 7c00h

jmp uboot

newposition	dw	0000h
point1		dw	100d,160d			;save point1's position
matrix1		dw	20d,40d		;save matrix1's  high and wide
keyin 		db 	'000000000000000000000000000000000000000'	;用来存放输入内容的空间
hint		db 	'Please put in you personal password.#'
errors 		db 	'error!#'
welcomes 	db 	'You are welcome Mark!#'
secret  	db 	'i.miss.you'



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


displaypoint:		;bh represent line   bl represent row  cl represent colour  No zero!!!!
	mov si,0
	dec bh

	displaypoint2:
	cmp bh,0x00
	je displaypoint1
	add si,320d
	dec bh
	jmp displaypoint2

	displaypoint1:
	cmp bl,0x00
	je displaypointend
	add si,1d
	dec bl
	jmp displaypoint1

	displaypointend:
	dec si
	mov byte[es:si],cl
	ret


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
;%3:the matrix's high		  %4:the matrix's wide
%macro display_matrix 4				
	find_site %1,%2	;top left corner's position
	mov si,[newposition]		

	mov ax,0
	cmp ax,%3
	je matrixoutloop1
	jmp matrixloop1_in
	matrixloop1:
	inc ax
	cmp ax,%3
	je matrixoutloop1
	matrixloop1_in:

		mov bx,0
		cmp bx,%4
		je matrixoutloop2
		jmp matrixloop2_in
		matrixloop2:
		inc bx
		cmp bx,%4
		je matrixoutloop2
		matrixloop2_in:
			mov byte[es:si],0x09
			inc si
			jmp matrixloop2
		matrixoutloop2:

		add si,320d
		sub si,%4
		jmp matrixloop1

	matrixoutloop1:
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

	display_matrix [point1],[point1+2],[matrix1],[matrix1+2]


	; mov dx,0x3c8
	; mov al,0
	; out dx,al
	; mov dx,0x3c9
	; mov al,0
	; out dx,al
	; mov dx,0x3c9
	; mov al,0
	; out dx,al
	; mov dx,0x3c9
	; mov al,255
	; out dx,al						;dx ax  0 background coular


	; mov bh,1
	; mov bl,1
	; mov cl,0x01
	; call displaypoint
	; mov bh,2
	; mov bl,1
	; mov cl,0x01
	; call displaypoint
	; mov bh,3
	; mov bl,1
	; mov cl,0x01
	; call displaypoint

jmp $	

















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






