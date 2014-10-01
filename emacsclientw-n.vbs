

if Wscript.Arguments.Count >= 1 Then
   Set ws = CreateObject("Wscript.Shell") 
   ws.run "cmd /c emacsclientw -n " + Wscript.Arguments(0), vbhide
End If 
