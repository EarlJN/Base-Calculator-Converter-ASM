.MODEL SMALL
.STACK 100h
.DATA
.386       
 ; required for shifting and rotating


;MAIN MENU
    m_dis1 db       "Title: BASE 8,10,16 CALCULATOR & CONVERSION$"
    m_dis2 db       "Name: Ignacio, Mary Catherine & Ofracio, Earl John$"
    m_dis3 db       "MAIN MENU$"
    m_dis4 db       "[1] Calculator $"
    m_dis5 db       "[2] Conversion $"
    m_dis6 db       "[9] Exit$"
    m_dis10 db      "Pick your choice: $"

;CALCULATOR SUB-MENU
    cal_menu1 db        "CALCULATOR$"
    cal_menu2 db        "[1] Addition $"
    cal_menu3 db        "[2] Subtraction $"
    cal_menu4 db        "[3] Multiplication $"
    cal_menu5 db        "[4] Division $"
    cal_menu6 db        "[5] Modulo $"
    cal_menu7 db        "[9] Back to Main Menu$"

;CALCULATOR MENU
    cal_header_add db       "Calculator : ADDITION$"
    cal_header_sub db       "Calculator : SUBTRACTION$"
    cal_header_mul db       "Calculator : MULTIPLICATION$"
    cal_header_div db       "Calculator : DIVISION$"
    cal_header_mod db       "Calculator : MODULO$"
    cal_choice1 db          "[1] Base 08$"
    cal_choice2 db          "[2] Base 10$"
    cal_choice3 db          "[3] Base 16$"
    cal_choice4 db          "[9] Back to Sub Menu$"

;ADDITION
    add_header_base8 db     "BASE 8 ADDITION$"
    add_header_base10 db    "BASE 10 ADDITION$"
    add_header_base16 db    "BASE 16 ADDITION$"
    add_input_1_8 db        "Addend [0-0.777]: 0.$"
    add_input_2_8 db        "Augend [0-0.777]: 0.$"
    add_input_1_10 db       "Addend [0-0.999]: 0.$"
    add_input_2_10 db       "Augend [0-0.999]: 0.$"
    add_input_1_16 db       "Addend [0-0.FFF]: 0.$"
    add_input_2_16 db       "Augend [0-0.FFF]: 0.$"
    add_ans db              "Sum is : $"
    add_again db            "Add Again? [Y/N]: $"

;SUBTRACTION
    sub_header_base8 db         "BASE 8 SUBTRACTION$"
    sub_header_base10 db        "BASE 10 SUBTRACTION$"
    sub_header_base16 db        "BASE 16 SUBTRACTION$"
    sub_input_1_8 db            "Minuend [0-0.777]: 0.$"
    sub_input_2_8 db            "Subtrahend [0-0.777]: 0.$"
    sub_input_1_10 db           "Minuend [0-0.999]: 0.$"
    sub_input_2_10 db           "Subtrahend [0-0.999]: 0.$"
    sub_input_1_16 db           "Minuend [0-0.FFF]: 0.$"
    sub_input_2_16 db           "Subtrahend [0-0.FFF]: 0.$"
    sub_ans db                  "Difference is : $"
    sub_again db                "Subtract Again?[Y/N]: $"

;MULTIPLICATION
    mul_header_base8 db         "BASE 8 MULTIPLICATION$"
    mul_header_base10 db        "BASE 10 MULTIPLICATION$"
    mul_header_base16 db        "BASE 16 MULTIPLICATION$"
    mul_input_1_8 db            "Multiplicand [0-0.777]: 0.$"
    mul_input_2_8 db            "Multiplier [0-0.777]: 0.$"
    mul_input_1_10 db           "Multiplicand [0-0.999]: 0.$"
    mul_input_2_10 db           "Multiplier [0-0.999]: 0.$"
    mul_input_1_16 db           "Multiplicand [0-0.FFF]: 0.$"
    mul_input_2_16 db           "Multiplier [0-0.FFF]: 0.$"
    mul_ans db                  "Product is: 0.$"
    mul_again db                "Multiply Again? [Y/N]: $"

;DIVISION
    div_header_base8 db         "BASE 8 DIVISION$"
    div_header_base10 db        "BASE 10 DIVISION$"
    div_header_base16 db        "BASE 16 DIVISION$"
    div_input_1_8 db            "Dividend [0-0.777]: 0.$"
    div_input_2_8 db            "Divisor [0-0.777]: 0.$"
    div_input_1_10 db           "Dividend [0-0.999]: 0.$"
    div_input_2_10 db           "Divisor [0-0.999]: 0.$"
    div_input_1_16 db           "Dividend [0-0.FFF]: 0.$"
    div_input_2_16 db           "Divisor [0-0.FFF]: 0.$"
    div_ans db                  "Qoutient is : $"
    div_again db                "Divide Again? [Y/N]: $"                        
;MODULO
	mod_header_base8 db         "BASE 8 MODULO$"
    mod_header_base10 db        "BASE 10 MODULO$"
    mod_header_base16 db        "BASE 16 MODULO$"
    mod_input_1_8 db            "Dividend [0-0.777] : 0.$"
    mod_input_2_8 db            "Divisor [0-0.777] : 0.$"
    mod_input_1_10 db           "Dividend [0-0.999] : 0.$"
    mod_input_2_10 db           "Divisor [0-0.999] : 0.$"
    mod_input_1_16 db           "Dividend [0-0.FFF] : 0.$"
    mod_input_2_16 db           "Divisor [0-0.FFF] : 0.$"
    mod_ans db                  "Remainder is: $"
    mod_again db                "Divide Again? [Y/N]: $"
;CONVERSION SUB-MENU
    con_menu1 db            "CONVERSION SUB-MENU$"
    con_menu2 db            "[1] Base 08 to Base 10 $"
    con_menu3 db            "[2] Base 08 to Base 16$"
    con_menu4 db            "[3] Base 10 to Base 08 $"
    con_menu5 db            "[4] Base 10 to Base 16 $"
    con_menu6 db            "[5] Base 16 to Base 08 $"
    con_menu7 db            "[6] Base 16 to Base 10 $"
    con_menu8 db            "[9] Back to Main Menu$"
    con_menu9 db            "Enter a Choice: $"

;CONVERSION 08 TO 10
    con_header_08_10 db         "CONVERSION: BASE 08 TO BASE 10 $"
    con_input_08_10 db          "Base 08 [0-0.777] : 0.$"
    con_ans_08_10 db            "Base 10 Equivalent : 0.$"
    con_again db                "Convert Again? [Y/N] : $"

;CONVERSION 08 TO 16
    con_header_08_16 db         "CONVERSION: BASE 08 TO BASE 16 $"
    con_input_08_16 db          "Base 08 [0-0.777] : 0.$"
    con_ans_08_16 db            "Base 16 Equivalent : 0.$"

;CONVERSION 10 TO 08
    con_header_10_08 db         "CONVERSION: BASE 10 TO BASE 08 $"
    con_input_10_08 db          "Base 10 [0-0.999] : 0.$"
    con_ans_10_08 db            "Base 08 Equivalent : 0.$"

;CONVERSION 10 TO 16
    con_header_10_16 db         "CONVERSION: BASE 10 TO BASE 16 $"
    con_input_10_16 db          "Base 10 [0-0.999] : 0.$"
    con_ans_10_16 db            "Base 16 Equivalent : 0.$"

;CONVERSION 16 TO 08
    con_header_16_08 db     "CONVERSION: BASE 16 TO BASE 08 $"
    con_input_16_08 db      "Base 16 [0-0.FFF] : 0.$"
    con_ans_16_08 db        "Base 08 Equivalent : 0.$"

;CONVERSION 16 TO 10
    con_header_16_10 db     "CONVERSION: BASE 16 TO BASE 10 $"
    con_input_16_10 db      "Base 16 [0-0.FFF] : 0.$"
    con_ans_16_10 db        "Base 10 Equivalent : 0.$"

;EXIT
    exit_dis1 db        "THANK YOUR FOR USING THE SYSTEM$"
    exit_dis2 db        "BASE 8,10,16 CALCULATOR & CONVERSION$"
    exit_dis3 db        "CREATED By:$"
    exit_dis4 db        "Ignacio, Mary Catherine$"
    exit_dis5 db        "Ofracio, Earl John$"

;LINES
    line_1 db           "====================================================$"
    line_3 db           "____________________________________________________$"
    line_2 db           "----------------------------------------------------$"
;WARNINGS
    war_invalid db      "Invalid input $"
    war_press db        "Press any key to continue.$"
    war_input db        "There is an error in your inputted number$"

.code
main proc

mov ax,@data
mov ds,ax

call CENTER_CLEAR
mov ah,02h     
mov dx,010Fh        
int 10h         
mov ah,09h
lea dx, line_1
int 21h

mov ah,02h     
mov dx,020Fh        
int 10h         
mov ah,09h
lea dx, m_dis1
int 21h

mov ah,02h
mov dx,040Fh        
int 10h         
mov ah,09h
lea dx, m_dis2
int 21h

mov ah,02h     
mov dx,050Fh        
int 10h         
mov ah,09h
lea dx, line_1
int 21h

mov ah,02h
mov dx,0625h        
int 10h         
mov ah,09h
lea dx, m_dis3
int 21h

mov ah,02h     
mov dx,070Fh        
int 10h         
mov ah,09h
lea dx, line_1
int 21h

mov ah,02h
mov dx,0923h        
int 10h         
mov ah,09h
lea dx, m_dis4
int 21h

mov ah,02h
mov dx,0A23h        
int 10h         
mov ah,09h
lea dx, m_dis5
int 21h

mov ah,02h
mov dx,0B23h        
int 10h         
mov ah,09h
lea dx, m_dis6
int 21h

mov ah,02h
mov dx,0D0Fh        
int 10h         
mov ah,09h
lea dx, line_2
int 21h

mov ah,02h
mov dx,0F23h        
int 10h         
mov ah,09h
lea dx, m_dis10
int 21h

main_menu_conf:
mov ah,08h 
int 21h
cmp al,'1'
je open_cal
cmp al,'2'
je open_con 
cmp al,'9'
je close_app 
jmp main_menu_conf

open_cal: call CAL_MENU
open_con: call CON_MENU
close_app: call TERMINATE

endp main

CAL_MENU proc
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0225h        
    int 10h         
    mov ah,09h
    lea dx, cal_menu1
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0522h        
    int 10h         
    mov ah,09h
    lea dx, cal_menu2
    int 21h

    mov ah,02h     
    mov dx,0622h        
    int 10h         
    mov ah,09h
    lea dx, cal_menu3
    int 21h

    mov ah,02h     
    mov dx,0722h        
    int 10h         
    mov ah,09h
    lea dx, cal_menu4
    int 21h

    mov ah,02h     
    mov dx,0822h        
    int 10h         
    mov ah,09h
    lea dx, cal_menu5
    int 21h

    mov ah,02h     
    mov dx,0922h        
    int 10h         
    mov ah,09h
    lea dx, cal_menu6
    int 21h

    mov ah,02h     
    mov dx,0A22h        
    int 10h         
    mov ah,09h
    lea dx, cal_menu7
    int 21h

    mov ah,02h     
    mov dx,0C0Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0E22h        
    int 10h         
    mov ah,09h
    lea dx, m_dis10
    int 21h

    cal_menu_conf:
    mov ah,08h
    int 21h
    cmp al,'1'
    je go_menu_add
    cmp al, '2'
    je go_menu_sub
    cmp al, '3'
    je go_menu_mul
    cmp al, '4'
    je go_menu_div
    cmp al, '5'
    je go_menu_mod
    cmp al, '9'
    je go_menu
    jmp cal_menu_conf


    go_menu_add: call CAL_MENU_ADD
    go_menu_sub: call CAL_MENU_SUB
    go_menu_mul: call CAL_MENU_MUL
    go_menu_div: call CAL_MENU_DIV
    go_menu_mod: call CAL_MENU_MOD
    go_menu: call main

CAL_MENU endp
; Calculator Functions - Addition
CAL_MENU_ADD proc
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Eh        
    int 10h         
    mov ah,09h
    lea dx, cal_header_add
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0523h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice1
    int 21h

    mov ah,02h     
    mov dx,0623h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice2
    int 21h

    mov ah,02h     
    mov dx,0723h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice3
    int 21h

    mov ah,02h     
    mov dx,0823h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice4
    int 21h

    mov ah,02h     
    mov dx,0A0Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0C22h        
    int 10h         
    mov ah,09h
    lea dx, m_dis10
    int 21h

    cal_add_conf:
    mov ah,08h
    int 21h
    cmp al,'1'
    je add_base8
    cmp al, '2'
    je add_base10
    cmp al, '3'
    je add_base16
    cmp al, '9'
    je add_back
    
    jmp cal_add_conf

    add_base8: call CAL_ADD_8
    add_base10: call CAL_ADD_10 
    add_base16: call CAL_ADD_16
    add_back: call CAL_MENU

CAL_MENU_ADD endp

CAL_ADD_8 proc

    start_input_8:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, add_header_base8
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, add_input_1_8
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    add_8_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl start_input_8
    cmp al, '8'
    jge start_input_8
    call DEC_AL
    push ax
    loop add_8_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, add_input_2_8
    int 21h

    ;2nd 3 Inputs
    mov cl,03h
    add_8_input_2:
    mov ah,01
    int 21h
    cmp al, '0'
    jl start_input_8
    cmp al, '8'
    jge start_input_8
    call DEC_AL
    push ax
    loop add_8_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, add_ans
    int 21h

    ;Logic FOR BASE 8 Addition
        pop bx
        pop cx
        pop dx
        mov dh,dl

        pop ax  
        add bl, al  

        pop ax
        add cl, al

        pop ax
        add dh, al

        cmp bl, 08h
        jge cr_ones

        chk_tens:
        cmp cl, 08h
        jge cr_tens

        chk_hunds:
        cmp dl, 08h
        jge cr_hunds

        cmp dh, 08h
        jge cr_hunds

        mov dl, 30h

        out_ans:

        mov ah,02h

        add bl, 30h
        add cl, 30h
        add dh, 30h

        int 21h
        mov dl, 2Eh
        int 21h
        mov dl, dh
        int 21h
        mov dl, cl
        int 21h
        mov dl, bl
        int 21h

        jmp add_8_confirm

        cr_ones:
        inc cl
        sub bl, 08h
        jmp chk_tens 

        cr_tens:
        inc dh
        sub cl, 08h
        jmp chk_hunds

        cr_hunds:
        sub dh,08h
        mov dl,31h
        jmp out_ans

    
    ;/ Ask input to confirm if to try again.

    add_8_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, add_again
    int 21h
    
    add_8_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je add_start_8
    cmp al, 'y'
    je add_start_8
    cmp al, 'N'
    je add_end_8
    cmp al, 'n'
    je add_end_8
    jmp add_8_yn_filter

    add_start_8: call CAL_ADD_8
    add_end_8: call CAL_MENU_ADD

CAL_ADD_8 endp

CAL_ADD_10 proc

    start_input_10:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, add_header_base10
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, add_input_1_10
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    add_10_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl start_input_10
    cmp al, '9'
    jg start_input_10
    call DEC_AL
    push ax
    loop add_10_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, add_input_2_10
    int 21h

    ;2nd 3 Inputs
    mov cl,03h
    add_10_input_2:
    mov ah,01
    int 21h
    cmp al, '0'
    jl start_input_10
    cmp al, '9'
    jg start_input_10
    call DEC_AL
    push ax
    loop add_10_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, add_ans
    int 21h

    ;Logic FOR BASE 10 Addition
        pop bx
        pop cx
        pop dx
        mov dh,dl

        pop ax  
        add bl, al  

        pop ax
        add cl, al

        pop ax
        add dh, al

        cmp bl, 0Ah
        jge cr_ones_10

        chk_tens_10:
        cmp cl, 0Ah
        jge cr_tens_10

        chk_hunds_10:
        cmp dl, 0Ah
        jge cr_hunds_10

        cmp dh, 0Ah
        jge cr_hunds_10

        mov dl, 30h

        out_ans_10:

        mov ah,02h

        add bl, 30h
        add cl, 30h
        add dh, 30h

        int 21h
        mov dl, 2Eh
        int 21h
        mov dl, dh
        int 21h
        mov dl, cl
        int 21h
        mov dl, bl
        int 21h

        jmp add_10_confirm


        cr_ones_10:
        inc cl
        sub bl, 0Ah
        jmp chk_tens_10 

        cr_tens_10:
        inc dh
        sub cl, 0Ah
        jmp chk_hunds_10

        cr_hunds_10:
        sub dh,0Ah
        mov dl,31h
        jmp out_ans_10
     
    
    ;/ Ask input to confirm if to try again.

    add_10_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, add_again
    int 21h
    
    add_10_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je add_start_10
    cmp al, 'y'
    je add_start_10
    cmp al, 'N'
    je add_end_10
    cmp al, 'n'
    je add_end_10
    jmp add_10_yn_filter

    add_start_10: call CAL_ADD_10
    add_end_10: call CAL_MENU_ADD

CAL_ADD_10 endp

CAL_ADD_16 proc

    start_input_add_16:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, add_header_base16
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, add_input_1_16
    int 21h

    ;1st 3 Inputs
    mov cl, 03h
    add_16_input_1:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_add_16
    cmp al, '9'
    jle valid_add_1
    cmp al, 'A'
    jl check_lower_add_1
    cmp al, 'F'
    jle valid_add_1
    cmp al, 'a'
    jl start_input_add_16
    cmp al, 'f'
    jle valid_add_1
    jmp start_input_add_16

    check_lower_add_1:
    cmp al, 'a'
    jl start_input_add_16
    cmp al, 'f'
    jle valid_add_1
    jmp start_input_add_16

    valid_add_1:
    call DEC_AL
    push ax
    loop add_16_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, add_input_2_16
    int 21h

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, add_input_2_16
    int 21h

    ;2nd 3 Inputs
    mov cl, 03h
    add_16_input_2:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_add_16
    cmp al, '9'
    jle valid_add_2
    cmp al, 'A'
    jl check_lower_add_2
    cmp al, 'F'
    jle valid_add_2
    cmp al, 'a'
    jl start_input_add_16
    cmp al, 'f'
    jle valid_add_2
    jmp start_input_add_16

    check_lower_add_2:
    cmp al, 'a'
    jl start_input_add_16
    cmp al, 'f'
    jle valid_add_2
    jmp start_input_add_16

    valid_add_2:
    call DEC_AL
    push ax
    loop add_16_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, add_ans
    int 21h

    ;Logic FOR BASE 16 Addition
        pop ax
        mov bl,al
        pop ax
        mov bh,al
        pop ax
        mov cl,al

        SHL BH, 4
        OR BL, BH
        MOV BH, CL

        pop ax
        mov dl,al
        pop ax
        mov dh,al
        pop ax
        mov cl,al

        SHL DH, 4
        OR DL,DH
        MOV DH, CL
                
        clc
        adc bx,dx
        mov dx,0000

        mov dh, bh ; will be used for comparison

        and bh,0Fh ; Left over will be the hundreds
        mov al,bh
        call ASCII_AL
        mov bh,al

        mov dl, bl
        SHR dl, 4
        mov al,dl
        call ASCII_AL
        mov cl,al

        and BL, 0Fh
        mov al,bl
        call ASCII_AL
        mov bl,al

        cmp dh, 0Fh
        jg has_carry
        jle no_carry 

        has_carry:
        mov ah,02h
        mov dl,31h
        int 21h 
        mov dl,2Eh
        int 21h
        mov dl,bh
        int 21h
        mov dl,cl
        int 21h
        mov dl,bl
        int 21h
        jmp add_16_confirm

        no_carry:
        mov ah,02h
        mov dl,30h
        int 21h 
        mov dl,2Eh
        int 21h
        mov dl,bh
        int 21h
        mov dl,cl
        int 21h
        mov dl,bl
        int 21h
        jmp add_16_confirm

    ;/ Ask input to confirm if to try again.

    add_16_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, add_again
    int 21h
    
    add_16_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je add_start_16
    cmp al, 'y'
    je add_start_16
    cmp al, 'N'
    je add_end_16
    cmp al, 'n'
    je add_end_16
    jmp add_16_yn_filter

    add_start_16: call CAL_ADD_16
    add_end_16: call CAL_MENU_ADD

CAL_ADD_16 endp

; Calculator Functions - Subtraction
CAL_MENU_SUB proc
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Eh        
    int 10h         
    mov ah,09h
    lea dx, cal_header_sub
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0523h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice1
    int 21h

    mov ah,02h     
    mov dx,0623h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice2
    int 21h

    mov ah,02h     
    mov dx,0723h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice3
    int 21h

    mov ah,02h     
    mov dx,0823h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice4
    int 21h

    mov ah,02h     
    mov dx,0A0Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0C22h        
    int 10h         
    mov ah,09h
    lea dx, m_dis10
    int 21h

    cal_sub_conf:
    mov ah,08h
    int 21h
    cmp al,'1'
    je sub_base8
    cmp al, '2'
    je sub_base10
    cmp al, '3'
    je sub_base16
    cmp al, '9'
    je sub_back
    
    jmp cal_sub_conf

    sub_base8: call CAL_SUB_8
    sub_base10: call CAL_SUB_10 
    sub_base16: call CAL_SUB_16
    sub_back: call CAL_MENU

CAL_MENU_SUB endp

CAL_SUB_8 proc

    sub_start_input_8:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, sub_header_base8
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, sub_input_1_8
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    sub_8_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl sub_start_input_8
    cmp al, '8'
    jge sub_start_input_8
    call DEC_AL
    push ax
    loop sub_8_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, sub_input_2_8
    int 21h

    ;2nd 3 Inputs
    mov cl,03h
    sub_8_input_2:
    mov ah,01
    int 21h
    cmp al, '0'
    jl sub_start_input_8
    cmp al, '8'
    jge sub_start_input_8
    call DEC_AL
    push ax
    loop sub_8_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, sub_ans
    int 21h

    ;Logic FOR BASE 8 Subtraction
        ; CODE: Turn the subtrahend to hex

            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0040h ; 64 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0008h ; 8 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
        
        ; CODE: Turn the minuend to hex
            pop bx
            pop cx
            pop dx
            
            push ax     ; push the divisor to be used later
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0040h ; 64 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0008h ; 8 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh 
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx

        pop bx      ;get the subtrahend       
        cmp ax,bx
        jge pos_8   ; prints positive then sub
        jl neg_8    ; prints negative then sub

        flow_sub_08:
        pop ax      ; get the answer

        ; CODE: Disassemble final answer to convert back to octal
            xor bx,bx

            mov bl,ah 
            push bx         ; Push the hundreds digit

            mov bl,al
            SHR bl, 4       
            push bx         ; Push the tens digit

            mov bl,al
            and bl, 0Fh
            push bx         ; Push the ones digit
    
        ; CODE: Convert the answer back to base 8
            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 16^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0100h ; 256 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 16^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0010h ; 16 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 16^0)
            mov ax,bx         
            and ax, 000Fh ;clear ax
            push ax
            
            ; Add the values together (i*16^2) + (i*16^1) + (i*16^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
            
            mov cx,0003h 
            SUB_8_CB_16_10:  
                sub dx,dx
                mov bx,0008h ; change to BASE
                div bx
                push dx
            loop SUB_8_CB_16_10
                    
            mov cx,0003h
            SUB_8_OUT_16_10:
                sub ax,ax
                pop ax
                call ASCII_AL

                mov ah,02h
                mov dl,al
                int 21h
            loop SUB_8_OUT_16_10
        jmp sub_8_confirm

    ; Conditions
        neg_8:
        mov dx,ax       ; back up ax
        mov ax,bx       ; switch minuend to subtrahend
        mov bx,dx       ; switch subtrahend to minuend
        sub ax,bx
        push ax

        mov ah,02h
        mov dl, 2Dh
        int 21h
        mov dl,30h
        int 21h
        mov dl, 2Eh
        int 21h
        jmp flow_sub_08

        pos_8:
        sub ax,bx       
        push ax
        mov ah,02h
        mov dl,30h
        int 21h
        mov dl, 2Eh
        int 21h
        jmp flow_sub_08

    ;/ Ask input to confirm if to try again.

    sub_8_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, sub_again
    int 21h
    
    sub_8_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je sub_start_8
    cmp al, 'y'
    je sub_start_8
    cmp al, 'N'
    je sub_end_8
    cmp al, 'n'
    je sub_end_8
    jmp sub_8_yn_filter

    sub_start_8: call CAL_SUB_8
    sub_end_8: call CAL_MENU_SUB

CAL_SUB_8 endp

CAL_SUB_10 proc

    sub_start_input_10:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, sub_header_base10
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, sub_input_1_10
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    sub_10_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl sub_start_input_10
    cmp al, '9'
    jg sub_start_input_10
    call DEC_AL
    push ax
    loop sub_10_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, sub_input_2_10
    int 21h

    ;2nd 3 Inputs
    mov cl,03h
    sub_10_input_2:
    mov ah,01
    int 21h
    cmp al, '0'
    jl sub_start_input_10
    cmp al, '9'
    jg sub_start_input_10
    call DEC_AL
    push ax
    loop sub_10_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, sub_ans
    int 21h

    ;Logic FOR BASE 8 Subtraction
        ; CODE: Turn the divisor to hex
            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0064h ; 100 (10 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 000Ah ; 10 (10 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
         
        ; CODE: Turn the dividend to hex
            pop bx
            pop cx
            pop dx 
            
            push ax     ; push the 1st input hex 
            
            xor ax,ax   ; clear ax
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0064h ; 100 (10 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 000Ah ; 10 (10 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
        
        pop bx      ;get the subtrahend       
        cmp ax,bx
        jge pos_10   ; prints positive then sub
        jl neg_10    ; prints negative then sub

        flow_sub_10:
        pop ax      ; get the answer

        ; CODE: Disassemble final answer to convert back to octal
            xor bx,bx

            mov bl,ah 
            push bx         ; Push the hundreds digit

            mov bl,al
            SHR bl, 4       
            push bx         ; Push the tens digit

            mov bl,al
            and bl, 0Fh
            push bx         ; Push the ones digit
    
        ; CODE: Convert the answer back to base 8
            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 16^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0100h ; 256 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0010h ; 16 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 16^0)
            mov ax,bx         
            and ax, 000Fh ;clear ax
            push ax
            
            ; Add the values together (i*16^2) + (i*16^1) + (i*16^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
            
            mov cx,0003h 
            SUB_10_CB_16_10:  
                sub dx,dx
                mov bx,000Ah ; change to BASE
                div bx
                push dx
            loop SUB_10_CB_16_10
                    
            mov cx,0003h
            SUB_10_OUT_16_10:
                sub ax,ax
                pop ax
                call ASCII_AL

                mov ah,02h
                mov dl,al
                int 21h
            loop SUB_10_OUT_16_10
        jmp sub_10_confirm

    ; Conditions
        neg_10:
        mov dx,ax       ; back up ax
        mov ax,bx       ; switch minuend to subtrahend
        mov bx,dx       ; switch subtrahend to minuend
        sub ax,bx
        push ax

        mov ah,02h
        mov dl, 2Dh
        int 21h
        mov dl,30h
        int 21h
        mov dl, 2Eh
        int 21h
        jmp flow_sub_10

        pos_10:
        sub ax,bx       
        push ax
        mov ah,02h
        mov dl,30h
        int 21h
        mov dl, 2Eh
        int 21h
        jmp flow_sub_10

    ;/ Ask input to confirm if to try again.

    sub_10_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, sub_again
    int 21h
    
    sub_10_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je sub_start_10
    cmp al, 'y'
    je sub_start_10
    cmp al, 'N'
    je sub_end_10
    cmp al, 'n'
    je sub_end_10
    jmp sub_10_yn_filter

    sub_start_10: call CAL_SUB_10
    sub_end_10: call CAL_MENU_SUB

CAL_SUB_10 endp

CAL_SUB_16 proc
    start_input_sub_16:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, sub_header_base16
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, sub_input_1_16
    int 21h

    ;1st 3 Inputs
    mov cl, 03h
    sub_16_input_1:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_sub_16
    cmp al, '9'
    jle valid_sub_1
    cmp al, 'A'
    jl check_lower_sub_1
    cmp al, 'F'
    jle valid_sub_1
    cmp al, 'a'
    jl start_input_sub_16
    cmp al, 'f'
    jle valid_sub_1
    jmp start_input_sub_16

    check_lower_sub_1:
    cmp al, 'a'
    jl start_input_sub_16
    cmp al, 'f'
    jle valid_sub_1
    jmp start_input_sub_16

    valid_sub_1:
    call DEC_AL
    push ax
    loop sub_16_input_1
	
	
    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, sub_input_2_16
    int 21h

   	;2nd 3 Inputs
    mov cl, 03h
    sub_16_input_2:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_sub_16
    cmp al, '9'
    jle valid_sub_2
    cmp al, 'A'
    jl check_lower_sub_2
    cmp al, 'F'
    jle valid_sub_2
    cmp al, 'a'
    jl start_input_sub_16
    cmp al, 'f'
    jle valid_sub_2
    jmp start_input_sub_16

    check_lower_sub_2:
    cmp al, 'a'
    jl start_input_sub_16
    cmp al, 'f'
    jle valid_sub_2
    jmp start_input_sub_16

    valid_sub_2:
    call DEC_AL
    push ax
    loop sub_16_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, sub_ans
    int 21h

    ;Logic FOR BASE 8 Subtraction

        pop ax
        mov dl,al
        pop ax
        mov dh,al
        pop ax
        mov cl,al

        SHL DH, 4
        OR DL,DH
        MOV DH, CL
    
        pop ax
        mov bl,al
        pop ax
        mov bh,al
        pop ax
        mov cl,al

        SHL BH, 4
        OR BL, BH
        MOV BH, CL
                
        cmp bx,dx          ; compare if bx is greater than dx if not then go to negative_sub
        jge positive_sub
        jl  negative_sub

        positive_sub:
        clc
        sbb bx,dx
        jmp calc_dif

        negative_sub:
        clc
        sbb dx,bx
        mov bx,dx
        mov si,01h
        jmp calc_dif

        calc_dif:

        mov ah,09h
        lea dx, sub_ans
        int 21h

        mov dx,0000

        mov dh, bh ; will be used for comparison

        and bh,0Fh ; Left over will be the hundreds
        mov al,bh
        call ASCII_AL
        mov bh,al

        mov dl, bl
        SHR dl, 4
        mov al,dl
        call ASCII_AL
        mov cl,al

        and BL, 0Fh
        mov al,bl
        call ASCII_AL
        mov bl,al

        cmp si,01h
        je neg_sign ; negative sign for negative subtractions

        cmp dh, 0Fh
        jg has_carry_sub
        jle no_carry_sub

        has_carry_sub:
        mov ah,02h
        mov dl,31h
        int 21h
        mov dl,2Eh
        int 21h
        mov dl,bh
        int 21h
        mov dl,cl
        int 21h
        mov dl,bl
        int 21h

        jmp sub_16_confirm

        no_carry_sub:
        mov ah,02h
        mov dl,30h
        int 21h
        mov dl,2Eh
        int 21h
        mov dl,bh
        int 21h
        mov dl,cl
        int 21h
        mov dl,bl
        int 21h

        jmp sub_16_confirm

        neg_sign:
        mov si,00h
        mov ah,02
        mov dl,2Dh
        int 21h
        jmp no_carry_sub

    ;/ Ask input to confirm if to try again.

    sub_16_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, sub_again
    int 21h
    
    sub_16_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je sub_start_16
    cmp al, 'y'
    je sub_start_16
    cmp al, 'N'
    je sub_end_16
    cmp al, 'n'
    je sub_end_16
    jmp sub_16_yn_filter

    sub_start_16: call CAL_SUB_16
    sub_end_16: call CAL_MENU_SUB

CAL_SUB_16 endp

; Calculator Functions - Multiplication
CAL_MENU_MUL proc
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Eh        
    int 10h         
    mov ah,09h
    lea dx, cal_header_mul
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0523h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice1
    int 21h

    mov ah,02h     
    mov dx,0623h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice2
    int 21h

    mov ah,02h     
    mov dx,0723h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice3
    int 21h

    mov ah,02h     
    mov dx,0823h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice4
    int 21h

    mov ah,02h     
    mov dx,0A0Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0C22h        
    int 10h         
    mov ah,09h
    lea dx, m_dis10
    int 21h

    cal_mul_conf:
    mov ah,08h
    int 21h
    cmp al,'1'
    je mul_base8
    cmp al, '2'
    je mul_base10
    cmp al, '3'
    je mul_base16
    cmp al, '9'
    je mul_back
    
    jmp cal_mul_conf

    mul_base8: call CAL_MUL_8
    mul_base10: call CAL_MUL_10 
    mul_base16: call CAL_MUL_16
    mul_back: call CAL_MENU

CAL_MENU_MUL endp

CAL_MUL_8 proc

    mul_start_input_8:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Fh         
    int 10h         
    mov ah,09h
    lea dx, mul_header_base8
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, mul_input_1_8
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    mul_8_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl mul_start_input_8
    cmp al, '8'
    jge mul_start_input_8
    call DEC_AL
    push ax
    loop mul_8_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, mul_input_2_8
    int 21h

    ;2nd 3 Inputs
    mov cl,03h
    mul_8_input_2:
    mov ah,01
    int 21h
    cmp al, '0'
    jl mul_start_input_8
    cmp al, '8'
    jge mul_start_input_8
    call DEC_AL
    push ax
    loop mul_8_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, mul_ans
    int 21h

    ; LOGIC FOR DIV
        ; CODE: Turn the divisor to hex

            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0040h ; 64 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0008h ; 8 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
        
        ; CODE: Turn the dividend to hex
            pop bx
            pop cx
            pop dx
            
            push ax     ; push the divisor to be used later
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0040h ; 64 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0008h ; 8 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
        
        pop bx      ; Get the hex value of divisor
        mul bx
        mov cx, 0008h

        div cx
        push dx
        div cx
        push dx 
        div cx
        push dx
        div cx
        push dx
        div cx
        push dx
        div cx
        push dx

        mov cl,06h
        out_mul_8:

            pop ax
            call ASCII_AL
            mov dl,al
            mov ah,02h 
            int 21h

        loop out_mul_8
   
    mul_8_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, mul_again
    int 21h
    
    mul_8_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je mul_start_8
    cmp al, 'y'
    je mul_start_8
    cmp al, 'N'
    je mul_end_8
    cmp al, 'n'
    je mul_end_8
    jmp mul_8_yn_filter

    mul_start_8: call CAL_MUL_8
    mul_end_8: call CAL_MENU_MUL

CAL_MUL_8 endp

CAL_MUL_10 proc

    mul_start_input_10:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Fh        
    int 10h         
    mov ah,09h
    lea dx, mul_header_base10
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, mul_input_1_10
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    mul_10_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl mul_start_input_10
    cmp al, '9'
    jg mul_start_input_10
    call DEC_AL
    push ax
    loop mul_10_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, mul_input_2_10
    int 21h

    ;2nd 3 Inputs
    mov cl,03h
    mul_10_input_2:
    mov ah,01
    int 21h
    cmp al, '0'
    jl mul_start_input_10
    cmp al, '9'
    jg mul_start_input_10
    call DEC_AL
    push ax
    loop mul_10_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, mul_ans
    int 21h

    ;Logic FOR BASE 8 MUL

        ; CODE: Turn the divisor to hex
            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0064h ; 100 (10 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 000Ah ; 10 (10 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
         
        ; CODE: Turn the dividend to hex
            pop bx
            pop cx
            pop dx 
            
            push ax     ; push the 1st input hex 
            
            xor ax,ax   ; clear ax
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0064h ; 100 (10 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 000Ah ; 10 (10 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx

            pop bx
        
        mul bx

        ; LONG DIVISION LOGIC

        mov cx,ax    ; move the 4 digit answer to cx
        xor ax,ax    ; clear ax to be used for  division


        again:
        mov bx, 0Ah  ; base to convert   

        ; 1st DIGIT
        mov al, dl   ; move the 5th digit to al (x0000)
        xor dx,dx    ; clear dx

        div bl       ; divide / answer stored in AL, remainder in AX
        push ax      ; push the answer (AL), to be combined later as the next number


        ; 2nd DIGIT
        ror ah, 4    ; rotate the remainder to the right. To be combined with next number 0A / x0000 

        mov dh,ch    ; move to dh temporarily to back up the next digit in CH    
        shr dh, 4    ; move the digit to right side so that (F0) + (0F) = (FF)

        add ah,dh    ; Combine the remainder to the next number 

        xor dx,dx    ; clear the DX to be used for division

        SHR AX, 8    ; MOVE AH ( the combined number) to the AL to be divided

        div bl       ; divide it again

        push ax      ; Push the answer again


        ; 3rd DIGIT
        ror ah, 4    ; rotate the remainder to the right. To be combined with next number 0A / x0000 

        mov dh,ch    ; move to dh temporarily to back up the next digit in CH    
        and dh, 0fh    ; move the digit to right side so that (F0) + (0F) = (FF)

        add ah,dh    ; Combine the remainder to the next number 

        xor dx,dx    ; clear the DX to be used for division

        SHR AX, 8    ; MOVE AH ( the combined number) to the AL to be divided

        div bl       ; divide it again
        push ax 

        ; 4th DIGIT
        SHL cx, 8    ; 4th,5th digit is already stored in AL move it to AH first

        ror ah, 4    ; rotate the remainder to the right. To be combined with next number 0A / x0000 

        mov dh,ch    ; move to dh temporarily to back up the next digit in CH    
        shr dh, 4    ; move the digit to right side so that (F0) + (0F) = (FF)

        add ah,dh    ; Combine the remainder to the next number 

        xor dx,dx    ; clear the DX to be used for division

        SHR AX, 8    ; MOVE AH ( the combined number) to the AL to be divided

        div bl       ; divide it again

        push ax      ; Push the answer again

        ; 5th DIGIT
        ror ah, 4    ; rotate the remainder to the right. To be combined with next number 0A / x0000 

        mov dh,ch    ; move to dh temporarily to back up the next digit in CH    
        and dh, 0fh    ; move the digit to right side so that (F0) + (0F) = (FF)

        add ah,dh    ; Combine the remainder to the next number 

        xor dx,dx    ; clear the DX to be used for division

        SHR AX, 8    ; MOVE AH ( the combined number) to the AL to be divided

        div bl       ; divide it again

        push ax

        ; The final remainder after this operation would be the 6th digit in the final answer that is converted to base 10

        ; Pop the values of the new divisor and rerun teh program arrange them in DX:AX just like the mul

        pop bx
        mov cl,bl
        mov al,bh ; move the carry to be pushed later

        pop bx
        rol bl, 4
        add cl, bl 

        pop bx
        mov ch,bl

        pop bx
        rol bl, 4
        add ch, bl

        pop bx
        mov dl,bl

        xor ah,ah
        push ax     ; push the digit of the final answer

        inc si

        cmp si,05h
        jle again

        mov si,0000h

        mov cx, 0006h
        loophere:
        pop ax
        mov ah,02h
        mov dl,al
        add dl,30h
        int 21h
        loop loophere

    mul_10_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, mul_again
    int 21h
    
    mul_10_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je mul_start_10
    cmp al, 'y'
    je mul_start_10
    cmp al, 'N'
    je mul_end_10
    cmp al, 'n'
    je mul_end_10
    jmp mul_10_yn_filter

    mul_start_10: call CAL_MUL_10
    mul_end_10: call CAL_MENU_MUL

CAL_MUL_10 endp

CAL_MUL_16 proc

    start_input_mul_16:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Fh          
    int 10h         
    mov ah,09h
    lea dx, mul_header_base16
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, mul_input_1_16
    int 21h

    ;1st 3 Inputs
    mov cl, 03h
    mul_16_input_1:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_mul_16
    cmp al, '9'
    jle valid_mul_1
    cmp al, 'A'
    jl check_lower_mul_1
    cmp al, 'F'
    jle valid_mul_1
    cmp al, 'a'
    jl start_input_mul_16
    cmp al, 'f'
    jle valid_mul_1
    jmp start_input_mul_16

    check_lower_mul_1:
    cmp al, 'a'
    jl start_input_mul_16
    cmp al, 'f'
    jle valid_mul_1
    jmp start_input_mul_16

    valid_mul_1:
    call DEC_AL
    push ax
    loop mul_16_input_1
	

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, mul_input_2_16
    int 21h

    ;2nd 3 Inputs
    mov cl, 03h
    mul_16_input_2:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_mul_16
    cmp al, '9'
    jle valid_mul_2
    cmp al, 'A'
    jl check_lower_mul_2
    cmp al, 'F'
    jle valid_mul_2
    cmp al, 'a'
    jl start_input_mul_16
    cmp al, 'f'
    jle valid_mul_2
    jmp start_input_mul_16

    check_lower_mul_2:
    cmp al, 'a'
    jl start_input_mul_16
    cmp al, 'f'
    jle valid_mul_2
    jmp start_input_mul_16

    valid_mul_2:
    call DEC_AL
    push ax
    loop mul_16_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, mul_ans
    int 21h

    ; LOGIC FOR MUL
        pop ax
        mov bl,al
        pop ax
        mov bh,al
        pop ax
        mov cl,al

        SHL BH, 4
        OR BL, BH
        MOV BH, CL

        pop ax
        mov dl,al
        pop ax
        mov dh,al
        pop ax
        mov cl,al

        SHL DH, 4
        OR DL,DH
        MOV DH, CL

        mov ax,bx ; for mul

        mul dx
        mov bx,ax ; give back to bx the final answer

        ; final answer will be stored in DL,BX

        ;get the value of 0.00000x

        mov dh,bl    ; back up for 0.0000x0
        and bl, 0Fh  ; get right most digit
        mov al,bl    ; to transform to ascii and push
        call ASCII_AL
        push ax

        ;get the value of 0.0000x0

        SHR dh, 4    ; move the leftmost digit to the right
        and dh, 0Fh  ; clear any shifted values to the left
        mov al,dh
        call ASCII_AL
        push ax

        ;get the value of 0.000x00

        mov dh,bh   ; back up for 0.00x000
        and bh, 0Fh
        mov al,bh
        call ASCII_AL
        push ax

        ;get the value of 0.00x000

        SHR dh, 4    ; move the leftmost digit to the right
        and dh, 0Fh  ; clear any shifted values to the left
        mov al,dh
        call ASCII_AL
        push ax

        ;get the value of 0.0x0000

        mov dh,dl   ; back up for 0.x00000
        and dl, 0Fh
        mov al, dl
        call ASCII_AL
        push ax

        ;get the value of 0.x00000

        SHR dh, 4    ; move the leftmost digit to the right
        and dh, 0Fh  ; clear any shifted values to the left
        mov al,dh
        call ASCII_AL
        push ax

        mov cl,06h
        out_mul_16:

            pop ax
            mov dl,al
            mov ah,02h 
            int 21h

        loop out_mul_16
        
    ;/ Ask input to confirm if to try again.

    mul_16_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, mul_again
    int 21h
    
    mul_16_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je mul_start_16
    cmp al, 'y'
    je mul_start_16
    cmp al, 'N'
    je mul_end_16
    cmp al, 'n'
    je mul_end_16
    jmp mul_16_yn_filter

    mul_start_16: call CAL_MUL_16
    mul_end_16: call CAL_MENU_MUL

CAL_MUL_16 endp

; Calculator Functions - Division
CAL_MENU_DIV proc
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Eh        
    int 10h         
    mov ah,09h
    lea dx, cal_header_div
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0523h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice1
    int 21h

    mov ah,02h     
    mov dx,0623h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice2
    int 21h

    mov ah,02h     
    mov dx,0723h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice3
    int 21h

    mov ah,02h     
    mov dx,0823h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice4
    int 21h

    mov ah,02h     
    mov dx,0A0Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0C22h        
    int 10h         
    mov ah,09h
    lea dx, m_dis10
    int 21h

    cal_div_conf:
    mov ah,08h
    int 21h
    cmp al,'1'
    je div_base8
    cmp al, '2'
    je div_base10
    cmp al, '3'
    je div_base16
    cmp al, '9'
    je div_back
    
    jmp cal_div_conf

    div_base8: call CAL_DIV_8
    div_base10: call CAL_DIV_10 
    div_base16: call CAL_DIV_16
    div_back: call CAL_MENU

CAL_MENU_div endp

CAL_DIV_8 proc

    div_start_input_8:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, div_header_base8
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, div_input_1_8
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    div_8_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl div_start_input_8
    cmp al, '8'
    jge div_start_input_8
    call DEC_AL
    push ax
    loop div_8_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, div_input_2_8
    int 21h

    ;2nd 3 Inputs
    mov cl,03h
    div_8_input_2:
    mov ah,01
    int 21h
    cmp al, '0'
    jl div_start_input_8
    cmp al, '8'
    jge div_start_input_8
    call DEC_AL
    push ax
    loop div_8_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, div_ans
    int 21h

    ; LOGIC FOR DIV
        ; CODE: Turn the divisor to hex

            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0040h ; 64 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0008h ; 8 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx

            cmp ax, 0000h
            je undef_div_8
        
        ; CODE: Turn the dividend to hex
            pop bx
            pop cx
            pop dx
            
            push ax     ; push the divisor to be used later
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0040h ; 64 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0008h ; 8 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
        
        pop bx      ; Get the hex value of divisor
        div bx      ; Divid them
        ; CODE: Disassemble final answer to convert back to octal
            xor bx,bx

            mov bl,ah 
            push bx         ; Push the hundreds digit

            mov bl,al
            SHR bl, 4       
            push bx         ; Push the tens digit

            mov bl,al
            and bl, 0Fh
            push bx         ; Push the ones digit
    
        ; CODE: Convert the answer back to base 8
            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 16^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0100h ; 256 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0010h ; 16 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 16^0)
            mov ax,bx         
            and ax, 000Fh ;clear ax
            push ax
            
            ; Add the values together (i*16^2) + (i*16^1) + (i*16^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
            
            mov cx,0003h 
            DIV_8_CB_16_10:  
                sub dx,dx
                mov bx,0008h ; change to BASE
                div bx
                push dx
            loop DIV_8_CB_16_10
                    
            mov cx,0003h
            DIV_8_OUT_16_10:
                sub ax,ax
                pop ax
                call ASCII_AL

                mov ah,02h
                mov dl,al
                int 21h
            loop DIV_8_OUT_16_10
        jmp div_8_confirm

        undef_div_8: call OUT_UDF

    ;/ Ask input to confirm if to try again.

    div_8_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, div_again
    int 21h
    
    div_8_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je div_start_8
    cmp al, 'y'
    je div_start_8
    cmp al, 'N'
    je div_end_8
    cmp al, 'n'
    je div_end_8
    jmp div_8_yn_filter

    div_start_8: call CAL_DIV_8
    div_end_8: call CAL_MENU_DIV

CAL_DIV_8 endp

CAL_DIV_10 proc

    div_start_input_10:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, div_header_base10
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, div_input_1_10
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    div_10_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl div_start_input_10
    cmp al, '9'
    jg div_start_input_10
    call DEC_AL
    push ax
    loop div_10_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, div_input_2_10
    int 21h

    ;2nd 3 Inputs
    mov cl,03h
    div_10_input_2:
    mov ah,01
    int 21h
    cmp al, '0'
    jl div_start_input_10
    cmp al, '9'
    jg div_start_input_10
    call DEC_AL
    push ax
    loop div_10_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, div_ans
    int 21h

    ; LOGIC FOR DIV

        ; CODE: Turn the divisor to hex
            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0064h ; 100 (10 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 000Ah ; 10 (10 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx

            cmp ax, 0000h
            je undef_div_10
         
        ; CODE: Turn the dividend to hex
            pop bx
            pop cx
            pop dx 
            
            push ax     ; push the 1st input hex 
            
            xor ax,ax   ; clear ax
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0064h ; 100 (10 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 000Ah ; 10 (10 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
        
        pop bx      ; pop the hex value of the divisor
        div bx      ; divide them to the dividend stored in ax

        ; CODE: Disassemble final answer to convert back to decimal
            xor bx,bx

            mov bl,ah 
            push bx         ; Push the hundreds digit

            mov bl,al
            SHR bl, 4       
            push bx         ; Push the tens digit

            mov bl,al
            and bl, 0Fh
            push bx         ; Push the ones digit
    
        ; CODE: Convert the answer back to base 10
            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 16^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0100h ; 256 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0010h ; 16 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 16^0)
            mov ax,bx         
            and ax, 000Fh ;clear ax
            push ax
            
            ; Add the values together (i*16^2) + (i*16^1) + (i*16^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
            
            mov cx,0003h 
            DIV_10_CB_16_10:  
                sub dx,dx
                mov bx,000Ah ; change to BASE
                div bx
                push dx
            loop DIV_10_CB_16_10
                    
            mov cx,0003h
            DIV_10_OUT_16_10:
                sub ax,ax
                pop ax
                call ASCII_AL

                mov ah,02h
                mov dl,al
                int 21h
            loop DIV_10_OUT_16_10
        jmp div_10_confirm

        undef_div_10: call OUT_UDF
    ;/ Ask input to confirm if to try again.

    div_10_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, div_again
    int 21h
    
    div_10_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je div_start_10
    cmp al, 'y'
    je div_start_10
    cmp al, 'N'
    je div_end_10
    cmp al, 'n'
    je div_end_10
    jmp div_10_yn_filter

    div_start_10: call CAL_DIV_10
    div_end_10: call CAL_MENU_DIV

CAL_DIV_10 endp

CAL_DIV_16 proc

    start_input_div_16:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, div_header_base16
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, div_input_1_16
    int 21h

    ;1st 3 Inputs
    mov cl, 03h
    div_16_input_1:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_div_16
    cmp al, '9'
    jle valid_div_1
    cmp al, 'A'
    jl check_lower_div_1
    cmp al, 'F'
    jle valid_div_1
    cmp al, 'a'
    jl start_input_div_16
    cmp al, 'f'
    jle valid_div_1
    jmp start_input_div_16

    check_lower_div_1:
    cmp al, 'a'
    jl start_input_div_16
    cmp al, 'f'
    jle valid_div_1
    jmp start_input_div_16

    valid_div_1:
    call DEC_AL
    push ax
    loop div_16_input_1
	

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, div_input_2_16
    int 21h

    ;2nd 3 Inputs
    mov cl, 03h
    div_16_input_2:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_div_16
    cmp al, '9'
    jle valid_div_2
    cmp al, 'A'
    jl check_lower_div_2
    cmp al, 'F'
    jle valid_div_2
    cmp al, 'a'
    jl start_input_div_16
    cmp al, 'f'
    jle valid_div_2
    jmp start_input_div_16

    check_lower_div_2:
    cmp al, 'a'
    jl start_input_div_16
    cmp al, 'f'
    jle valid_div_2
    jmp start_input_div_16

    valid_div_2:
    call DEC_AL
    push ax
    loop div_16_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, div_ans
    int 21h

    ; LOGIC FOR DIV 16
        pop ax
        mov bl,al
        pop ax
        mov bh,al
        pop ax
        mov cl,al

        SHL BH, 4
        OR BL, BH
        MOV BH, CL

        pop ax
        mov dl,al
        pop ax
        mov dh,al
        pop ax
        mov cl,al

        SHL DH, 4
        OR DL,DH
        MOV DH, CL

        mov ax,dx ; for div
        mov dx, 0000h

        div bx
        mov bx,ax ; give back to bx the final answer

        ; final answer will be stored in DL,BX


        ;get the value of 0.00x

        mov dh,bl    ; back up for 0.0000x0
        and bl, 0Fh  ; get right most digit
        mov al,bl    ; to transform to ascii and push
        call ASCII_AL
        push ax

        ;get the value of 0.0x0
        SHR dh, 4     ; move the the right most position
        mov al,dh
        call ASCII_AL
        push ax

        ;get the value of 0.x00

        and bh,0Fh
        mov al,bh                   
        call ASCII_AL
        push ax

        mov cl,03h
        out_div_16:

            pop ax
            mov dl,al
            mov ah,02h 
            int 21h

        loop out_div_16
        div_16_confirm:

    div_16_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, div_again
    int 21h
    
    div_16_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je div_start_16
    cmp al, 'y'
    je div_start_16
    cmp al, 'N'
    je div_end_16
    cmp al, 'n'
    je div_end_16
    jmp div_16_yn_filter

    div_start_16: call CAL_DIV_16
    div_end_16: call CAL_MENU_DIV

CAL_DIV_16 endp

; Calculator Functions - Modulo
CAL_MENU_MOD proc
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Eh        
    int 10h         
    mov ah,09h
    lea dx, cal_header_mod
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0523h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice1
    int 21h

    mov ah,02h     
    mov dx,0623h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice2
    int 21h

    mov ah,02h     
    mov dx,0723h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice3
    int 21h

    mov ah,02h     
    mov dx,0823h        
    int 10h         
    mov ah,09h
    lea dx, cal_choice4
    int 21h

    mov ah,02h     
    mov dx,0A0Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0C22h        
    int 10h         
    mov ah,09h
    lea dx, m_dis10
    int 21h

    cal_mod_conf:
    mov ah,08h
    int 21h
    cmp al,'1'
    je mod_base8
    cmp al, '2'
    je mod_base10
    cmp al, '3'
    je mod_base16
    cmp al, '9'
    je mod_back
    
    jmp cal_mod_conf

    mod_base8: call CAL_MOD_8
    mod_base10: call CAL_MOD_10 
    mod_base16: call CAL_MOD_16
    mod_back: call CAL_MENU

CAL_MENU_mod endp

CAL_MOD_8 proc

    mod_start_input_8:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, mod_header_base8
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, mod_input_1_8
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    mod_8_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl mod_start_input_8
    cmp al, '8'
    jge mod_start_input_8
    call DEC_AL
    push ax
    loop mod_8_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, mod_input_2_8
    int 21h

    ;2nd 3 Inputs
    mov cl,03h
    mod_8_input_2:
    mov ah,01
    int 21h
    cmp al, '0'
    jl mod_start_input_8
    cmp al, '8'
    jge mod_start_input_8
    call DEC_AL
    push ax
    loop mod_8_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, mod_ans
    int 21h

    ; LOGIC FOR DIV
        ; CODE: Turn the divisor to hex

            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0040h ; 64 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0008h ; 8 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx

            cmp ax, 0000h
            je undef_mod_8
        
        ; CODE: Turn the dividend to hex
            pop bx
            pop cx
            pop dx
            
            push ax     ; push the divisor to be used later
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0040h ; 64 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0008h ; 8 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
        
        pop bx      ; Get the hex value of divisor
        div bx      ; Divide them 
        ; CODE: DISASSEMBLE DX register
            xor bx,bx
            push bx
            
            mov bl, dl
            SHR bl, 4
            push bx

            mov bl, dl
            and bl, 0Fh
            push bx
        
        ; CODE: Turn the answer to hex

            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0040h ; 64 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0010h ; 8 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx

            mov cx,0003h 
            MOD_8_CB_16_10:  
                sub dx,dx
                mov bx,0008h ; change to BASE
                div bx
                push dx
            loop MOD_8_CB_16_10

            mov ah,02h
            mov dl, 30h
            int 21h
            mov dl, 2Eh
            int 21h
                    
            mov cx,0003h
            MOD_8_OUT_16_10:
                sub ax,ax
                pop ax
                call ASCII_AL

                mov ah,02h
                mov dl,al
                int 21h
            loop MOD_8_OUT_16_10
        jmp mod_8_confirm

        undef_mod_8: call OUT_UDF

    ;/ Ask input to confirm if to try again.

    mod_8_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, mod_again
    int 21h
    
    mod_8_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je mod_start_8
    cmp al, 'y'
    je mod_start_8
    cmp al, 'N'
    je mod_end_8
    cmp al, 'n'
    je mod_end_8
    jmp mod_8_yn_filter

    mod_start_8: call CAL_MOD_8
    mod_end_8: call CAL_MENU_MOD

CAL_MOD_8 endp

CAL_MOD_10 proc

    mod_start_input_10:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, mod_header_base10
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, mod_input_1_10
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    mod_10_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl mod_start_input_10
    cmp al, '9'
    jg mod_start_input_10
    call DEC_AL
    push ax
    loop mod_10_input_1

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, mod_input_2_10
    int 21h

    ;2nd 3 Inputs
    mov cl,03h
    mod_10_input_2:
    mov ah,01
    int 21h
    cmp al, '0'
    jl mod_start_input_10
    cmp al, '9'
    jg mod_start_input_10
    call DEC_AL
    push ax
    loop mod_10_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, mod_ans
    int 21h

    ; LOGIC FOR DIV
        ; CODE: Turn the divisor to hex
            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0064h ; 100 (10 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 000Ah ; 10 (10 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx

            cmp ax, 0000h
            je undef_mod_10
         
        ; CODE: Turn the dividend to hex
            pop bx
            pop cx
            pop dx 
            
            push ax     ; push the 1st input hex 
            
            xor ax,ax   ; clear ax
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0064h ; 100 (10 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 000Ah ; 10 (10 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx
        
        pop bx      ; pop the hex value of the divisor
        div bx      ; divide them to the dividend stored in ax

        ; CODE: DISASSEMBLE DX register
            xor bx,bx
            push bx
            
            mov bl, dl
            SHR bl, 4
            push bx

            mov bl, dl
            and bl, 0Fh
            push bx
        
        ; CODE: Turn the answer to hex

            pop bx
            pop cx
            pop dx
        
            ; Multiply first digit (input * 8^2)
            mov ax,dx
            and ax, 000fh
            mov dx, 0040h ; 64 (16 ^ 2)
            mul dx	
            push ax

            ; Multiply 2nd digit (input * 8^1)
            mov ax,cx
            and ax, 000fh
            mov cx, 0010h ; 8 (16 ^ 1)
            mul cx
            push ax

            ;Multiply 3rd digit (input * 8^0)
            mov ax,bx         
            and ax, 000fh ;clear ax
            push ax
            
            ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
            pop ax
            pop bx
            pop cx
            
            add bx,cx
            add ax,bx

            mov cx,0003h 
            MOD_10_CB_16_10:  
                sub dx,dx
                mov bx,000Ah ; change to BASE
                div bx
                push dx
            loop MOD_10_CB_16_10

            mov ah,02h
            mov dl, 30h
            int 21h
            mov dl, 2Eh
            int 21h
                    
            mov cx,0003h
            MOD_10_OUT_16_10:
                sub ax,ax
                pop ax
                call ASCII_AL

                mov ah,02h
                mov dl,al
                int 21h
            loop MOD_10_OUT_16_10
        jmp MOD_10_confirm

        undef_MOD_10: call OUT_UDF

    ;/ Ask input to confirm if to try again.

    mod_10_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, mod_again
    int 21h
    
    mod_10_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je mod_start_10
    cmp al, 'y'
    je mod_start_10
    cmp al, 'N'
    je mod_end_10
    cmp al, 'n'
    je mod_end_10
    jmp mod_10_yn_filter

    mod_start_10: call CAL_MOD_10
    mod_end_10: call CAL_MENU_MOD

CAL_MOD_10 endp

CAL_MOD_16 proc

    start_input_mod_16:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0223h        
    int 10h         
    mov ah,09h
    lea dx, mod_header_base16
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Dh        
    int 10h         
    mov ah,09h
    lea dx, mod_input_1_16
    int 21h

    ;1st 3 Inputs
    mov cl, 03h
    mod_16_input_1:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_mod_16
    cmp al, '9'
    jle valid_mod_1
    cmp al, 'A'
    jl check_lower_mod_1
    cmp al, 'F'
    jle valid_mod_1
    cmp al, 'a'
    jl start_input_mod_16
    cmp al, 'f'
    jle valid_mod_1
    jmp start_input_mod_16

    check_lower_mod_1:
    cmp al, 'a'
    jl start_input_mod_16
    cmp al, 'f'
    jle valid_mod_1
    jmp start_input_mod_16

    valid_mod_1:
    call DEC_AL
    push ax
    loop mod_16_input_1
	

    mov ah,02h     
    mov dx,061Dh        
    int 10h         
    mov ah,09h
    lea dx, mod_input_2_16
    int 21h

 	;2nd 3 Inputs
    mov cl, 03h
    mod_16_input_2:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_mod_16
    cmp al, '9'
    jle valid_mod_2
    cmp al, 'A'
    jl check_lower_mod_2
    cmp al, 'F'
    jle valid_mod_2
    cmp al, 'a'
    jl start_input_mod_16
    cmp al, 'f'
    jle valid_mod_2
    jmp start_input_mod_16

    check_lower_mod_2:
    cmp al, 'a'
    jl start_input_mod_16
    cmp al, 'f'
    jle valid_mod_2
    jmp start_input_mod_16

    valid_mod_2:
    call DEC_AL
    push ax
    loop mod_16_input_2

    mov ah,02h     
    mov dx,071Dh        
    int 10h         
    mov ah,09h
    lea dx, mod_ans
    int 21h

    ; LOGIC FOR MOD
        pop ax
        mov bl,al
        pop ax
        mov bh,al
        pop ax
        mov cl,al

        SHL BH, 4
        OR BL, BH
        MOV BH, CL

        pop ax
        mov dl,al
        pop ax
        mov dh,al
        pop ax
        mov cl,al

        SHL DH, 4
        OR DL,DH
        MOV DH, CL

        mov ax,dx ; for div
        mov dx, 0000h

        
        cmp bx,ax   ;compare if divisor is greater
        jge out_mod_16_zero


        div bx
        mov bx,ax ; give back to bx the final answer

        ; Get the remainder stored in DL 0.00x
        mov cl, dl      ; backup for 0.0x0
        and dl, 0Fh
        mov al,dl
        call ASCII_AL
        push ax

        ;Get the value 0.0x0
        SHR cl, 4
        mov al,cl
        call ASCII_AL
        push ax

        mov cl,02h
        out_mod_16:

            pop ax
            mov dl,al
            mov ah,02h 
            int 21h

        loop out_mod_16
        jmp mod_16_confirm

        out_mod_16_zero:

            mov ah,02h 
            mov dl, 30h
            int 21h
            int 21h

    ;/ Ask input to confirm if to try again.

    mod_16_confirm:
    call CENTER

    mov ah,02h     
    mov dx,090Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, mod_again
    int 21h
    
    mod_16_yn_filter:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je mod_start_16
    cmp al, 'y'
    je mod_start_16
    cmp al, 'N'
    je mod_end_16
    cmp al, 'n'
    je mod_end_16
    jmp mod_16_yn_filter

    mod_start_16: call CAL_MOD_16
    mod_end_16: call CAL_MENU_MOD

CAL_MOD_16 endp

; Conversion Functions
CON_MENU proc

    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0220h        
    int 10h         
    mov ah,09h
    lea dx, con_menu1
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0520h        
    int 10h         
    mov ah,09h
    lea dx, con_menu2
    int 21h

    mov ah,02h     
    mov dx,0620h        
    int 10h         
    mov ah,09h
    lea dx, con_menu3
    int 21h

    mov ah,02h     
    mov dx,0720h        
    int 10h         
    mov ah,09h
    lea dx, con_menu4
    int 21h

    mov ah,02h     
    mov dx,0820h        
    int 10h         
    mov ah,09h
    lea dx, con_menu5
    int 21h

    mov ah,02h     
    mov dx,0920h        
    int 10h         
    mov ah,09h
    lea dx, con_menu6
    int 21h

    mov ah,02h     
    mov dx,0A20h        
    int 10h         
    mov ah,09h
    lea dx, con_menu7
    int 21h

    mov ah,02h     
    mov dx,0B20h        
    int 10h         
    mov ah,09h
    lea dx, con_menu8
    int 21h

    mov ah,02h     
    mov dx,0D0Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0F20h        
    int 10h         
    mov ah,09h
    lea dx, m_dis10
    int 21h

con_menu_conf:
mov ah,08h
int 21h
cmp al,'1'
je go_menu_08_10
cmp al, '2'
je go_menu_08_16
cmp al, '3'
je go_menu_10_08
cmp al, '4'
je go_menu_10_16
cmp al, '5'
je go_menu_16_08
cmp al, '6'
je go_menu_16_10
cmp al, '9'
je go_menu_con
jmp con_menu_conf


go_menu_08_10: call CON_08_10
go_menu_08_16: call CON_08_16
go_menu_10_08: call CON_10_08
go_menu_10_16: call CON_10_16
go_menu_16_08: call CON_16_08
go_menu_16_10: call CON_16_10
go_menu_con: call main

CON_MENU endp

CON_08_10 proc

    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Ah        
    int 10h         
    mov ah,09h
    lea dx, con_header_08_10
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Ah        
    int 10h         
    mov ah,09h
    lea dx, con_input_08_10
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    con_08_10_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl con_start_08_10
    cmp al, '8'
    jge con_start_08_10
    call DEC_AL
    push ax
    loop con_08_10_input_1

    mov ah,02h     
    mov dx,061Ah        
    int 10h         
    mov ah,09h
    lea dx, con_ans_08_10
    int 21h

    ; LOGIC FOR CON 08 to 10
        pop bx
        pop cx
        pop dx
    
        ; Multiply first digit (input * 8^2)
        mov ax,dx
        and ax, 000fh
        mov dx, 0040h ; 64 (8 ^ 2)
        mul dx	
        push ax

        ; Multiply 2nd digit (input * 8^1)
	    mov ax,cx
        and ax, 000fh
        mov cx, 0008h ; 8 (8 ^ 1)
        mul cx
        push ax

        ;Multiply 3rd digit (input * 8^0)
        mov ax,bx         
        and ax, 000fh ;clear ax
        push ax
        
        ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
        pop ax
        pop bx
        pop cx
        
        add bx,cx
        add ax,bx


        mov dx, 000Ah   ; BASE 10
        mov bx, 0200h   ; 512 / 8^3

        mov cx, 0009h   ; HOW MANY DIGIT
        loop_08_10:

        mov dx, 000Ah
        mul dx          ;(INPUT * 16)
        xor dx,dx
        div bx          ;(INPUT * 16) / 1000  

        push dx         ; PUSH REMAINDER

        call ASCII_AL   ; TURN THE QUOTIENT TO ASCII

        ;PRINT QUOTIENT
        mov ah,02h
        mov dl,al
        int 21h
        
        pop dx          ; GET THE REMAINDER BACK
        mov ax,dx       ;INPUT = REMAINDER
        loop loop_08_10 

    call CENTER
    mov ah,02h     
    mov dx,080Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0A1Ah        
    int 10h         
    mov ah,09h
    lea dx, con_again
    int 21h


    con_08_10_conf:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je con_start_08_10
    cmp al, 'y'
    je con_start_08_10
    cmp al, 'N'
    je con_end_08_10
    cmp al, 'n'
    je con_end_08_10
    jmp con_08_10_conf

    con_start_08_10: call CON_08_10
    con_end_08_10: call CON_MENU
    CON_08_10 endp

CON_08_16 proc

    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Ah        
    int 10h         
    mov ah,09h
    lea dx, con_header_08_16
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Ah        
    int 10h         
    mov ah,09h
    lea dx, con_input_08_16
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    con_08_16_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl con_start_08_16
    cmp al, '8'
    jge con_start_08_16
    call DEC_AL
    push ax
    loop con_08_16_input_1

    mov ah,02h     
    mov dx,061Ah        
    int 10h         
    mov ah,09h
    lea dx, con_ans_08_16
    int 21h

    ; LOGIC FOR CON 08 to 16
        pop bx
        pop cx
        pop dx
    
        ; Multiply first digit (input * 8^2)
        mov ax,dx
        and ax, 000fh
        mov dx, 0040h ; 64 (16 ^ 2)
        mul dx	
        push ax

        ; Multiply 2nd digit (input * 8^1)
	    mov ax,cx
        and ax, 000fh
        mov cx, 0008h ; 8 (16 ^ 1)
        mul cx
        push ax

        ;Multiply 3rd digit (input * 8^0)
        mov ax,bx         
        and ax, 000fh ;clear ax
        push ax
        
        ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
        pop ax
        pop bx
        pop cx
        
        add bx,cx
        add ax,bx
        
        ; SHIFT 3 to conver to HEXA
        SHL ax, 3

        ;FINAL ANSWER IS NOW IN AX TIME TO DISASSEMBLE IT
        mov bl, al
        and bx, 000Fh
        push bx
        
        mov bl,al
        shr bl, 4
        push bx
        
        mov bl,ah
        push bx
    
        mov cx, 0003h
        print_08_16:
        pop ax
        call ASCII_AL
        mov ah,02h
        mov dl,al
        int 21h
        loop print_08_16

    mov ah,02h     
    mov dx,080Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0A1Ah        
    int 10h         
    mov ah,09h
    lea dx, con_again
    int 21h


    con_08_16_conf:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je con_start_08_16
    cmp al, 'y'
    je con_start_08_16
    cmp al, 'N'
    je con_end_08_16
    cmp al, 'n'
    je con_end_08_16
    jmp con_08_16_conf

    con_start_08_16: call CON_08_16
    con_end_08_16: call CON_MENU
    CON_08_16 endp

CON_10_08 proc

    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Ah        
    int 10h         
    mov ah,09h
    lea dx, con_header_10_08
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Ah        
    int 10h         
    mov ah,09h
    lea dx, con_input_10_08
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    con_10_08_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl con_start_10_08
    cmp al, '9'
    jg con_start_10_08
    call DEC_AL
    push ax
    loop con_10_08_input_1

    mov ah,02h     
    mov dx,061Ah        
    int 10h         
    mov ah,09h
    lea dx, con_ans_10_08
    int 21h

    ; LOGIC FOR CON 10 to 08
        pop bx
        pop cx
        pop dx
    
        ; Multiply first digit (input * 8^2)
        mov ax,dx
        and ax, 000fh
        mov dx, 0064h ; 100 (10 ^ 2)
        mul dx	
        push ax

        ; Multiply 2nd digit (input * 8^1)
	    mov ax,cx
        and ax, 000fh
        mov cx, 000Ah ; 10 (10 ^ 1)
        mul cx
        push ax

        ;Multiply 3rd digit (input * 8^0)
        mov ax,bx         
        and ax, 000fh ;clear ax
        push ax
        
        ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
        pop ax
        pop bx
        pop cx
        
        add bx,cx
        add ax,bx

        mov dx, 0008h   ; BASE 08
        mov bx, 03E8h   ; 1000 / 10^3

        mov cx, 0014h   ; HOW MANY DIGIT
        loop_10_08:

        mov dx, 0008h
        mul dx          ;(INPUT * 16)
        xor dx,dx
        div bx          ;(INPUT * 16) / 1000  

        push dx         ; PUSH REMAINDER

        call ASCII_AL   ; TURN THE QUOTIENT TO ASCII

        ;PRINT QUOTIENT
        mov ah,02h
        mov dl,al
        int 21h
        
        pop dx          ; GET THE REMAINDER BACK
        mov ax,dx       ;INPUT = REMAINDER
        loop loop_10_08 

    call CENTER
    mov ah,02h     
    mov dx,080Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0A1Ah        
    int 10h         
    mov ah,09h
    lea dx, con_again
    int 21h


    con_10_08_conf:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je con_start_10_08
    cmp al, 'y'
    je con_start_10_08
    cmp al, 'N'
    je con_end_10_08
    cmp al, 'n'
    je con_end_10_08
    jmp con_10_08_conf

    con_start_10_08: call CON_10_08
    con_end_10_08: call CON_MENU
 
CON_10_08 endp

CON_10_16 proc

    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Ah        
    int 10h         
    mov ah,09h
    lea dx, con_header_10_16
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Ah        
    int 10h         
    mov ah,09h
    lea dx, con_input_10_16
    int 21h

    ;1st 3 Inputs
    mov cl,03h
    con_10_16_input_1:
    mov ah,01
    int 21h
    cmp al, '0'
    jl con_start_10_16
    cmp al, '9'
    jg con_start_10_16
    call DEC_AL
    push ax
    loop con_10_16_input_1

    mov ah,02h     
    mov dx,061Ah        
    int 10h         
    mov ah,09h
    lea dx, con_ans_10_16
    int 21h

   ; LOGIC FOR CON 10 to 16
        pop bx
        pop cx
        pop dx
    
        ; Multiply first digit (input * 8^2)
        mov ax,dx
        and ax, 000fh
        mov dx, 0064h ; 100 (10 ^ 2)
        mul dx	
        push ax

        ; Multiply 2nd digit (input * 8^1)
	    mov ax,cx
        and ax, 000fh
        mov cx, 000Ah ; 10 (10 ^ 1)
        mul cx
        push ax

        ;Multiply 3rd digit (input * 8^0)
        mov ax,bx         
        and ax, 000fh ;clear ax
        push ax
        
        ; Add the values together (i*8^2) + (i*8^1) + (i*8^0)
        pop ax
        pop bx
        pop cx
        
        add bx,cx
        add ax,bx

        mov dx, 0010h   ; BASE 16
        mov bx, 03E8h   ; 1000

        mov cx, 0014h   ; HOW MANY DIGIT
        loop_10_16:

        mov dx, 0010h
        mul dx          ;(INPUT * 16)
        xor dx,dx
        div bx          ;(INPUT * 16) / 1000  

        push dx         ; PUSH REMAINDER

        call ASCII_AL   ; TURN THE DIGIT TO ASCII

        ;PRINT THEM
        mov ah,02h
        mov dl,al
        int 21h
        
        pop dx          ; GET THE REMAINDER BACK
        mov ax,dx       ;INPUT = REMAINDER
        loop loop_10_16 

    call CENTER
    mov ah,02h     
    mov dx,080Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0A1Ah        
    int 10h         
    mov ah,09h
    lea dx, con_again
    int 21h


    con_10_16_conf:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je con_start_10_16
    cmp al, 'y'
    je con_start_10_16
    cmp al, 'N'
    je con_end_10_16
    cmp al, 'n'
    je con_end_10_16
    jmp con_10_16_conf

    con_start_10_16: call CON_10_16
    con_end_10_16: call CON_MENU

CON_10_16 endp

CON_16_08 proc
    start_input_08_16:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Ah        
    int 10h         
    mov ah,09h
    lea dx, con_header_16_08
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Ah        
    int 10h         
    mov ah,09h
    lea dx, con_input_16_08
    int 21h

    ;1st 3 Inputs
    mov cl, 03h
    x08_16_input_1:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_08_16
    cmp al, '9'
    jle valid_08_1
    cmp al, 'A'
    jl check_lower_08_1
    cmp al, 'F'
    jle valid_08_1
    cmp al, 'a'
    jl start_input_08_16
    cmp al, 'f'
    jle valid_08_1
    jmp start_input_08_16

    check_lower_08_1:
    cmp al, 'a'
    jl start_input_08_16
    cmp al, 'f'
    jle valid_08_1
    jmp start_input_08_16

    valid_08_1:
    call DEC_AL
    push ax
    loop x08_16_input_1

    mov ah,02h     
    mov dx,061Ah        
    int 10h         
    mov ah,09h
    lea dx, con_ans_16_08
    int 21h

; LOGIC FOR CON 16 to 08
        pop bx
        pop cx
        pop dx
    
        ; Multiply first digit (input * 16^2)
        mov ax,dx
        and ax, 000fh
        mov dx, 0100h ; 256 (16 ^ 2)
        mul dx	
        push ax

        ; Multiply 2nd digit (input * 8^1)
	    mov ax,cx
        and ax, 000fh
        mov cx, 0010h ; 16 (16 ^ 1)
        mul cx
        push ax

        ;Multiply 3rd digit (input * 16^0)
        mov ax,bx         
        and ax, 000Fh ;clear ax
        push ax
        
        ; Add the values together (i*16^2) + (i*16^1) + (i*16^0)
        pop ax
        pop bx
        pop cx
        
        add bx,cx
        add ax,bx

        pop bx
        pop cx
        pop dx

        mov dx, 0008h   ; BASE 10 change this to your base
        mov bx, 1000h   ; 4096 / 16^3

        mov cx, 0004h   ; HOW MANY DIGIT
        loop_16_08:

        mov dx, 0008h
        mul dx          ;(INPUT * 16)
        xor dx,dx
        div bx          ;(INPUT * 16) / 1000  

        push dx         ; PUSH REMAINDER

        call ASCII_AL   ; TURN THE QUOTIENT TO ASCII

        ;PRINT QUOTIENT
        mov ah,02h
        mov dl,al
        int 21h
        
        pop dx          ; GET THE REMAINDER BACK
        mov ax,dx       ;INPUT = REMAINDER
        loop loop_16_08
         
    call CENTER
    mov ah,02h     
    mov dx,080Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0A1Ah        
    int 10h         
    mov ah,09h
    lea dx, con_again
    int 21h


    con_16_08_conf:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je con_start_16_08
    cmp al, 'y'
    je con_start_16_08
    cmp al, 'N'
    je con_end_16_08
    cmp al, 'n'
    je con_end_16_08
    jmp con_16_08_conf

    con_start_16_08: call CON_16_08
    con_end_16_08: call CON_MENU

CON_16_08 endp

CON_16_10 proc
    start_input_10_16:
    call CENTER_CLEAR

    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,021Ah        
    int 10h         
    mov ah,09h
    lea dx, con_header_16_10
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,051Ah        
    int 10h         
    mov ah,09h
    lea dx, con_input_16_10
    int 21h

    ;1st 3 Inputs
    mov cl, 03h
    x10_16_input_1:
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl start_input_10_16
    cmp al, '9'
    jle valid_10_1
    cmp al, 'A'
    jl check_lower_10_1
    cmp al, 'F'
    jle valid_10_1
    cmp al, 'a'
    jl start_input_10_16
    cmp al, 'f'
    jle valid_10_1
    jmp start_input_10_16

    check_lower_10_1:
    cmp al, 'a'
    jl start_input_10_16
    cmp al, 'f'
    jle valid_10_1
    jmp start_input_10_16

    valid_10_1:
    call DEC_AL
    push ax
    loop x10_16_input_1

    mov ah,02h     
    mov dx,061Ah        
    int 10h         
    mov ah,09h
    lea dx, con_ans_16_10
    int 21h

    ; LOGIC FOR CON 16 to 10
        pop bx
        pop cx
        pop dx
    
        ; Multiply first digit (input * 16^2)
        mov ax,dx
        and ax, 000fh
        mov dx, 0100h ; 256 (16 ^ 2)
        mul dx	
        push ax

        ; Multiply 2nd digit (input * 8^1)
	    mov ax,cx
        and ax, 000fh
        mov cx, 0010h ; 16 (16 ^ 1)
        mul cx
        push ax

        ;Multiply 3rd digit (input * 16^0)
        mov ax,bx         
        and ax, 000Fh ;clear ax
        push ax
        
        ; Add the values together (i*16^2) + (i*16^1) + (i*16^0)
        pop ax
        pop bx
        pop cx
        
        add bx,cx
        add ax,bx

        pop bx
        pop cx
        pop dx

        mov dx, 000Ah   ; BASE 10 change this to your base
        mov bx, 1000h   ; 4096 / 16^3

        mov cx, 000Ch   ; HOW MANY DIGIT
        loop_16_10:

        mov dx, 000Ah
        mul dx          ;(INPUT * 16)
        xor dx,dx
        div bx          ;(INPUT * 16) / 1000  

        push dx         ; PUSH REMAINDER

        call ASCII_AL   ; TURN THE QUOTIENT TO ASCII

        ;PRINT QUOTIENT
        mov ah,02h
        mov dl,al
        int 21h
        
        pop dx          ; GET THE REMAINDER BACK
        mov ax,dx       ;INPUT = REMAINDER
        loop loop_16_10 

    call CENTER   
    mov ah,02h     
    mov dx,080Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,0A1Ah        
    int 10h         
    mov ah,09h
    lea dx, con_again
    int 21h


    con_16_10_conf:
    mov ah,08h
    int 21h
    cmp al, 'Y'
    je con_start_16_10
    cmp al, 'y'
    je con_start_16_10
    cmp al, 'N'
    je con_end_16_10
    cmp al, 'n'
    je con_end_16_10
    jmp con_16_10_conf

    con_start_16_10: call CON_16_10
    con_end_16_10: call CON_MENU

CON_16_10 endp

; Input Functions
GET_INPUT PROC
    mov cl, 3h

    loop_input:
    mov ah,01h
    int 21h
    call DEC_AL
    push ax
    loop loop_input
    ret
    
GET_INPUT ENDP
; Turns ASCII Hex input to their decimal counterpart.
DEC_AL PROC
    mov ah,al
    cmp ah, 41h ; A in ASCII
    jge is_let ; AL - 31H to get the decimal equivalent of the letter
    jl is_num ; AL - 30H to get the decimal equivalent of the number

    is_num:
    sub ah,30h
    jmp return
    is_let:
    cmp ah, 61h
    jge is_let_low
    sub ah, 37h
    jmp return
    
    is_let_low:
    sub ah,57h
    jmp return
    
    return:
    mov al,ah
    mov ah,01
    ret
DEC_AL ENDP
; Turns Hex Input to their ASCII counterpart
ASCII_AL PROC
    mov ah,al
    cmp ah, 0Ah ; A in ASCII
    jge is_let_ascii ; AL - 31H to get the decimal equivalent of the letter
    jl is_num_ascii ; AL - 30H to get the decimal equivalent of the number

    is_num_ascii:
    add ah,30h
    jmp return_ascii

    is_let_ascii:
    add ah, 37h
    jmp return_ascii

    return_ascii:
    mov al,ah
    mov ah,01
    ret
ASCII_AL ENDP

; Universal Functions
TERMINATE proc

    call CENTER_CLEAR
    mov ah,02h     
    mov dx,010Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0218h        
    int 10h         
    mov ah,09h
    lea dx, exit_dis2
    int 21h

    mov ah,02h     
    mov dx,030Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,040Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,051Ah        
    int 10h         
    mov ah,09h
    lea dx, exit_dis1
    int 21h

    mov ah,02h     
    mov dx,060Fh        
    int 10h         
    mov ah,09h
    lea dx, line_2
    int 21h

    mov ah,02h     
    mov dx,070Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,02h     
    mov dx,0A23h        
    int 10h         
    mov ah,09h
    lea dx, exit_dis3
    int 21h

    mov ah,02h     
    mov dx,0C1Dh        
    int 10h         
    mov ah,09h
    lea dx, exit_dis4
    int 21h

    mov ah,02h     
    mov dx,0D20h        
    int 10h         
    mov ah,09h
    lea dx, exit_dis5
    int 21h

    mov ah,02h     
    mov dx,110Fh        
    int 10h         
    mov ah,09h
    lea dx, line_1
    int 21h

    mov ah,4ch
    int 21h
TERMINATE endp 
CENTER proc
    mov ax, 0000h
    mov bx, 0000h
    mov cx, 0000h
    mov dx, 0000h
    ret
    CENTER endp
CENTER_CLEAR proc
    mov ax,0600h
    mov bh,0Fh
    mov cx,0000h
    mov dx,184Fh
    int 10h
    mov bh,00h
    ret
CENTER_CLEAR endp
OUT_UDF proc
    mov ah,02h
    mov dl, 'U'
    int 21h
    mov dl, 'N'
    int 21h
    mov dl, 'D'
    int 21h
    mov dl, 'E'
    int 21h
    mov dl, 'F'
    int 21h
    mov dl, 'I'
    int 21h
    mov dl, 'N'
    int 21h
    mov dl, 'E'
    int 21h
    mov dl, 'D'
    int 21h
    ret
OUT_UDF endp
end main