mov ax, 5117 ;[convert]: 13FD(hex) | [result]: ax = 13FD(hex) | [flag]: IF = 1
mov cl, 4 ;[result]: cl = 4
rcr ax, cl ;[result]: ax = 41279(dec) = A13F(hex) | [flag]: CF = 1

mov bx, 49907 ;[convert]: C2F3(hex) | [result]: ax = C2F3(hex) | [flag]: IF = 1
and ax, bx ;[result]: ax = 32899(dec) = 8033(hex) | [flag]: SF = 1 , PF = 1 et CF = 0

push ax ;[stack]: pile[0] = 8033(hex)
mov ah, 222 ;[convert]: DE(hex) | [result]: ax = DE33(hex)
mov dx, 8
mul dx ;[result]: ax = 61848(dec) = F198(hex) | [flag]: OF = 1 et CF = 1

pop bx ;[result]: bc = 8083(hex)
xor bx, ax ;[result]: bx = 29099(bin) = 71AB(hex) | [flag]: CF = 0 , SF = 0 , OF = 0 et PF = 0

shl bx, 2 ;[result]: bx = 58198(dec) = E356(hex) | [flag]: SF = 1 , OF = 1 et PF = 1
