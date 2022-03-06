data segment
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    
    mov ax, data
    mov ds, ax
    mov es, ax  
    mov cx, 5      
    
    ex:
    mov ah, 1 
    int 21h
    mov dl, al
    push ax  
    
    loop ex
    
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h 
    
    mov cx,5
    ex2:
    pop ax
    mov dl, al
    mov ah, 2
    int 21h
    loop ex2    
    mov ah, 1 
    int 21h
 
    
    mov ax, 4c00h 
    int 21h    
ends

end start 
