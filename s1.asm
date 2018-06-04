;密码未加密
org 7c00h

jmp uboot

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
	mov byte[ds:di],al
	inc di
	mov bl,'*'
	call character
	jmp inputbegin

	inputend:
	ret






uboot:
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
jmp $	