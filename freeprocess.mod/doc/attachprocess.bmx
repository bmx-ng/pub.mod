SuperStrict 


'Start notepad program
'By Default processes are attached to the program (they will automatically terminate when your program is closed)
Local AttachedProcess:TProcess = CreateProcess("notepad.exe")
'Detach notepad process
DetachProcess(AttachedProcess)

'Reattach notepad process
AttachProcess(AttachedProcess)

Print("notepad started!")
Delay(1000)

'Create new calculator process and detach from program (will not close when you close your program)
Local DetachedProcess:TProcess = CreateProcess("calc.exe")
DetachProcess(DetachedProcess)

Print("calculator started!")
Delay(1000)

Print("Program ending, notepad should close with it, calculator should stay open")
End 
