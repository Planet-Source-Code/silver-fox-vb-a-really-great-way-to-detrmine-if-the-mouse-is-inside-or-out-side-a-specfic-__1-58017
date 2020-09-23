VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3105
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3945
   LinkTopic       =   "Form1"
   ScaleHeight     =   3105
   ScaleWidth      =   3945
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   1560
      Top             =   480
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   1935
      Left            =   840
      TabIndex        =   0
      Top             =   840
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   840
      TabIndex        =   1
      Top             =   120
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
Module1.GetCursorPos pos
If (Module1.WindowFromPoint(pos.X, pos.Y) <> Command1.hWnd) Then
Label1.Caption = "out"
Else
Label1.Caption = "in"
End If
End Sub
