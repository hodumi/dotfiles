Set ws = CreateObject("Wscript.Shell") 
ws.run "cmd /c emacsclient -n %1", vbhide 