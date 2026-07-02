SuperStrict 

Local status:Int

'Start notepad program
'By Default processes are attached to the program (they will automatically terminate when your program is closed)
Local Process1:TProcess = CreateProcess("notepad.exe")

Print("notepad started!")
Delay(1000)


'Check current status of notepad, 1 is running, 0 is closed
status = ProcessStatus(Process1)
If status = 1 Then 
	Print("notepad still running")
Else
	Print("notepad has been closed")
EndIf

Delay(1000)

'Close notepad
TerminateProcess(Process1)

status = ProcessStatus(Process1)
If status = 1 Then 
	Print("notepad still running")
Else
	Print("notepad has been closed")
EndIf



