object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1053#1077#1076#1086#1058#1077#1083#1077#1075#1088#1072#1084
  ClientHeight = 297
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 241
    Height = 241
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 265
    Width = 146
    Height = 22
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 1
    OnKeyDown = Edit1KeyDown
  end
  object Button1: TButton
    Left = 160
    Top = 263
    Width = 89
    Height = 28
    Cursor = crHandPoint
    BiDiMode = bdLeftToRight
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    ParentBiDiMode = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnRead = ClientSocket1Read
    Left = 32
    Top = 24
  end
end
