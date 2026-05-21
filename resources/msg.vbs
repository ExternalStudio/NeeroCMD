Dim args, title, text, icon

Set args = WScript.Arguments

If args.Count = 0 Then
    WScript.Quit 1
End If

title = args(0)
text = title
icon = 64

If args.Count >= 2 Then
    text = args(1)
End If

If args.Count >= 3 Then
    icon = CInt(args(2))
End If

Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Popup text, 0, title, icon
