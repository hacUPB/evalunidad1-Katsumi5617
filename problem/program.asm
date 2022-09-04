// Samuel Kerguelen Garcia
// 000165673
// samuel.kerguelen@upb.edu.co

 (STR)
      @KBD
      D=M
      @84
      D=D-A
      @DLINE
      D;JEQ

      @KBD
      D=M
      @67
      D=D-A
      @CLEAR
      D;JEQ


      @STR
      0;JMP

CLEAR
     @16384
     D=A
     @coord1
     M=D
     @8192
     D=A
     @cont1
     M=D
     @1
     D=A
     @salto1
     M=D
     @color1
     M=0
     @DRAWR
     0;JMP

(DLINE)
    @16400 //16384 (pantalla completa) + fila * 32 + columna/16
    D=A
    @coord
    M=D
    @265
    D=A
    @cont
    M=D
    @32
    D=A
    @salto
    M=D
    @265
    D=A
    @color
    M=D


    @DRAW
    0;JMP

(DLINE)
    
    @20480
    D=A
    @coord1
    M=D
    @32
    D=A
    @cont1
    M=D
    @1
    D=A
    @salto1
    M=D
    @color1
    M=-1


    @DRAW
    0;JMP

(DRAW)
    
    @coord
    D=M
    @pscreen
    M=D

(DRAWL)

    @cont
    D=M
    @CLINE
    D;JEQ

    @color
    D=M
    @pscreen
    A=M
    M=D

    @cont
    M=M-1

    @salto
    D=M

    @pscreen
    M=M+D

    @DRAWL
    0;JMP

(DRAWR)

    @coord1
    D=M
    @pscreen
    M=D

(DRAWR)

    @cont1
    D=M
    @END
    D;JEQ

    @color1
    D=M
    @pscreen
    A=M
    M=D

    @cont1
    M=M-1

    @salto1
    D=M

    @pscreen
    M=M+D

    @DRAWL
    0;KMP

(END)
    @STR
    0;JMP




