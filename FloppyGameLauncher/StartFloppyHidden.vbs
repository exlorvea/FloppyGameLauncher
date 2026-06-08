Set objShell = CreateObject("WScript.Shell")

objShell.Run _
    "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File ""C:\FloppyLauncher.ps1""", _
    0, _
    False
