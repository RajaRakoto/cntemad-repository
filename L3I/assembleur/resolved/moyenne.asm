 ;*** CACLUL MOYENNE ***

;** Segmentation (definition des donnees)**
data segment
    somme dw 0
    moyenne dw 0
    notes dw 5 dup(0) ;5valeurs en entrEes
    i dw 5 ;nombre d'iteration
ends

stack segment
    dw 128 dup(0)
ends

;** MAIN **
code segment
    mov AX, data
    mov DS, AX
    mov AX, stack
    mov SS, AX

    mov AX, 0 ;reinitialiser la valeur de AX
    mov SI, 0 ;initialiser l'index
    mov CX, i ;initialiser le counter

    ;lecture de valeur
    INPUT:
        read notes[SI]
        add AX, notes[SI] ;AX += notes[SI]
        inc SI ;SI++
        loop INPUT

    ;output
    mov somme, AX
    DIV SI ;AX /= SI (AX = AX / SI)
    mov moyenne, AX
    write moyenne
ends
