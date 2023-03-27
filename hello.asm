; --------------------------------------------------
      include D:\masm32\include\masm32rt.inc
; --------------------------------------------------
.data
exitCode dd 0
prompt db "Hello World!!!",0
caption db "Hello World",0

.code
start:
    call main
    invoke ExitProcess, exitCode
main proc
    cls
    invoke MessageBox, NULL, addr prompt, addr caption, MB_OK
    ret
main endp

end start
