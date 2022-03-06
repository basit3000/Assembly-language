; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    
    mov ax, data
    mov ds, ax
    mov es, ax
    mov ah, 1 
    int 21h
    mov dl, al
    mov ah, 2
    int 21h   
    sub dl, 20h
    mov ah, 2
    int 21h         
    mov ah, 1
    int 21h
    
    mov ax, 4c00h 
    int 21h    
ends

end start 
