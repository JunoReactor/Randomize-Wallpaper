Randomize 
picNum = Int((11  *  Rnd) + 1)
 
FileName = "C:\Users\User_name\Pictures\desktop\" & picNum &".jpg"
 
Set WshShell = WScript.CreateObject("Wscript.Shell")
WshShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", FileName
WshShell.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Desktop\General\BackUpWallpaper", FileName
WshShell.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Desktop\General\Wallpaper", FileName
WshShell.Run "%SystemRoot%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, False
'cscript C:\Users\JunoReactor\Pictures\lo\wall.vbs
