data segment
    var1 db "Input First Integer: $"  
    var2 db "Input Second Integer: $"
    var3 db "Sum of Integers: $"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    lea dx, var1
    mov ah, 9
    int 21h 
    mov ah, 1
    int 21h
    sub al, 30h
    mov bl, al
      
    mov dl, 10 
    mov ah, 02h
    int 21h
    mov dl, 13 
    mov ah, 02h
    int 21h     
    
    lea dx, var2
    mov ah, 9
    int 21h 
    mov ah, 1
    int 21h
    sub al, 30h
    add bl, al
    add bl, 30h
     
    mov dl, 10   
    mov ah, 02h
    int 21h
    mov dl, 13  
    mov ah, 02h
    int 21h     
          
    
    lea dx, var3
    mov ah, 9
    int 21h
    
    mov dl, bl
    mov ah, 02h
    int 21h                      
                       
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
                       
                       
