object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 334
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 203
    Width = 136
    Height = 13
    Caption = 'Temperature actuelle en '#176'C:'
  end
  object LblTemp: TLabel
    Left = 175
    Top = 203
    Width = 3
    Height = 13
  end
  object LblCommande: TLabel
    Left = 17
    Top = 24
    Width = 170
    Height = 13
    Caption = 'Changement de Temp'#233'rature en %'
  end
  object LblCommandeTemp: TLabel
    Left = 17
    Top = 79
    Width = 171
    Height = 13
    Caption = 'Changement de Temp'#233'rature en '#176'C'
  end
  object ListTemp: TComboBox
    Left = 17
    Top = 43
    Width = 47
    Height = 21
    TabOrder = 0
    Text = '0'
    OnChange = ListTempChange
    Items.Strings = (
      '0'
      '25'
      '50'
      '75'
      '100')
  end
  object EdtTemp: TEdit
    Left = 17
    Top = 98
    Width = 47
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    Text = '65'
  end
  object BtnStart: TButton
    Left = 17
    Top = 156
    Width = 120
    Height = 25
    Caption = 'D'#233'marrer la Chauffe'
    TabOrder = 2
    OnClick = BtnStartClick
  end
  object BtnArret: TButton
    Left = 153
    Top = 156
    Width = 112
    Height = 25
    Caption = 'Stopper la Chauffe'
    TabOrder = 3
    OnClick = BtnArretClick
  end
  object Chart1: TChart
    Left = 336
    Top = 61
    Width = 400
    Height = 250
    Title.Text.Strings = (
      'TChart')
    BottomAxis.Increment = 1.000000000000000000
    BottomAxis.Title.Caption = 'NbPeriodes'
    LeftAxis.Title.Caption = 'Temperature '#176'C'
    SeriesGroups = <
      item
        Name = 'Graph1'
      end>
    View3D = False
    TabOrder = 4
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      19
      15
      19)
    ColorPaletteIndex = 13
    object Series1: TFastLineSeries
      Marks.Brush.Gradient.Colors = <
        item
          Color = clRed
        end
        item
          Color = 819443
          Offset = 0.067915690866510540
        end
        item
          Color = clYellow
          Offset = 1.000000000000000000
        end>
      Marks.Brush.Gradient.Direction = gdTopBottom
      Marks.Brush.Gradient.EndColor = clYellow
      Marks.Brush.Gradient.MidColor = 819443
      Marks.Brush.Gradient.StartColor = clRed
      Marks.Brush.Gradient.Visible = True
      Marks.Font.Color = 159
      Marks.Font.Name = 'Tahoma'
      Marks.Font.Style = [fsBold, fsItalic]
      Marks.Frame.Color = 33023
      Marks.RoundSize = 14
      Marks.Callout.Length = 20
      SeriesColor = clRed
      Title = 'Graph'
      LinePen.Color = clRed
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      object TeeFunction1: TAddTeeFunction
        CalcByValue = False
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 376
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer2Timer
    Left = 416
    Top = 8
  end
end
