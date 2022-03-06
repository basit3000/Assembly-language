data segment 
    abcd db "*$"
    unive db "Sir Syed University of Engg. and Tech.$"
ends

stack segment
    dw   128  dup(0)      
    
ends

code segment
start:    
    mov ax, data
    mov ds, ax
    mov es, ax  
    mov cx, 30      
    
    ex:
    mov ah, 9
    mov dx, offset abcd
    int 21h
    loop ex
                 
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h                              
                 
    mov ah, 9
    mov dx, offset unive
    int 21h
                 
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h                   
                 
    mov cx, 30           
    ex2:
    mov ah, 9
    mov dx, offset abcd
    int 21h
    loop ex2
       
    mov ah, 1 
    int 21h
    mov ax, 4c00h 
    int 21h    
ends

end start 
