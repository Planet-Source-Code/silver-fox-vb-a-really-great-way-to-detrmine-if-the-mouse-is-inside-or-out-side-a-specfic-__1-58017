Attribute VB_Name = "Module1"
Public Declare Function WindowFromPoint Lib "user32" (ByVal xPoint As Long, ByVal yPoint As Long) As Long
Public Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Public Type POINTAPI
        X As Long
        Y As Long
End Type
Public pos As POINTAPI
