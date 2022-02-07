
format	binary
org 0x100
use16

	les     bp, [bx]	; 0x9FFF is close enough to 0xA000 (vga mem address)
	adc	al, 0x13	; Set video mode
	int	0x10		;

@@:
	add	ax, bp
	adc	al, ah
	aaa
	and	al, 0x01	; Select the interesting bit
	stosb
	jmp	@b
