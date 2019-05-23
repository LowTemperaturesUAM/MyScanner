object Form2: TForm2
  Left = 257
  Top = 230
  Width = 453
  Height = 414
  Caption = 'Config_Scanner'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 120
    Top = 56
    Width = 39
    Height = 13
    Caption = 'Amplifier'
  end
  object Label9: TLabel
    Left = 216
    Top = 56
    Width = 84
    Height = 13
    Caption = 'Calibration (nm/V)'
  end
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 361
    Height = 145
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Scan'
    end
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 7
      Height = 13
      Caption = 'X'
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 7
      Height = 13
      Caption = 'Y'
    end
    object Label4: TLabel
      Left = 24
      Top = 24
      Width = 22
      Height = 13
      Caption = 'DAC'
    end
    object Label5: TLabel
      Left = 24
      Top = 48
      Width = 22
      Height = 13
      Caption = 'DAC'
    end
    object Label6: TLabel
      Left = 200
      Top = 24
      Width = 84
      Height = 13
      Caption = 'Calibration (nm/V)'
    end
    object Label7: TLabel
      Left = 104
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Amplifier'
    end
    object Label10: TLabel
      Left = 104
      Top = 48
      Width = 39
      Height = 13
      Caption = 'Amplifier'
    end
    object Label11: TLabel
      Left = 200
      Top = 48
      Width = 84
      Height = 13
      Caption = 'Calibration (nm/V)'
    end
    object Label19: TLabel
      Left = 8
      Top = 80
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label20: TLabel
      Left = 8
      Top = 96
      Width = 32
      Height = 13
      Caption = 'X DAC'
    end
    object Label21: TLabel
      Left = 8
      Top = 112
      Width = 32
      Height = 13
      Caption = 'Y DAC'
    end
    object Label25: TLabel
      Left = 104
      Top = 96
      Width = 39
      Height = 13
      Caption = 'Amplifier'
    end
    object Label26: TLabel
      Left = 104
      Top = 120
      Width = 39
      Height = 13
      Caption = 'Amplifier'
    end
    object SpinEdit1: TSpinEdit
      Left = 56
      Top = 16
      Width = 33
      Height = 22
      MaxValue = 7
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object SpinEdit2: TSpinEdit
      Left = 56
      Top = 48
      Width = 33
      Height = 22
      MaxValue = 7
      MinValue = 0
      TabOrder = 5
      Value = 2
    end
    object Edit1: TEdit
      Left = 296
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 1
      Text = '5'
    end
    object ComboBox1: TComboBox
      Left = 152
      Top = 16
      Width = 41
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '13'
      Items.Strings = (
        '13'
        '1.3')
    end
    object SpinEdit6: TSpinEdit
      Left = 56
      Top = 88
      Width = 33
      Height = 22
      MaxValue = 7
      MinValue = 0
      TabOrder = 3
      Value = 1
    end
    object SpinEdit7: TSpinEdit
      Left = 56
      Top = 112
      Width = 33
      Height = 22
      MaxValue = 7
      MinValue = 0
      TabOrder = 4
      Value = 3
    end
    object chkAttenuator: TCheckBox
      Left = 104
      Top = 64
      Width = 105
      Height = 13
      Caption = 'Scan attenuator'
      TabOrder = 6
    end
    object ComboBox6: TComboBox
      Left = 152
      Top = 88
      Width = 41
      Height = 21
      ItemHeight = 13
      TabOrder = 7
      Text = '13'
      Items.Strings = (
        '13'
        '1.3')
    end
    object ComboBox7: TComboBox
      Left = 152
      Top = 112
      Width = 41
      Height = 21
      ItemHeight = 13
      TabOrder = 8
      Text = '13'
      Items.Strings = (
        '13'
        '1.3')
    end
  end
  object ComboBox2: TComboBox
    Left = 168
    Top = 48
    Width = 41
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = '13'
    Items.Strings = (
      '13'
      '1.3')
  end
  object Edit2: TEdit
    Left = 312
    Top = 48
    Width = 41
    Height = 21
    TabOrder = 2
    Text = '5'
  end
  object Panel2: TPanel
    Left = 16
    Top = 160
    Width = 361
    Height = 161
    TabOrder = 3
    object Label12: TLabel
      Left = 8
      Top = 8
      Width = 26
      Height = 13
      Caption = 'Read'
    end
    object Label14: TLabel
      Left = 64
      Top = 24
      Width = 22
      Height = 13
      Caption = 'ADC'
    end
    object Label15: TLabel
      Left = 152
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Amplifier'
    end
    object Label13: TLabel
      Left = 240
      Top = 24
      Width = 84
      Height = 13
      Caption = 'Calibration (nm/V)'
    end
    object Label16: TLabel
      Left = 72
      Top = 56
      Width = 22
      Height = 13
      Caption = 'ADC'
    end
    object Label17: TLabel
      Left = 136
      Top = 56
      Width = 60
      Height = 13
      Caption = 'Amplifier 10^'
    end
    object Label18: TLabel
      Left = 248
      Top = 56
      Width = 41
      Height = 13
      Caption = 'Multiplier'
    end
    object Label22: TLabel
      Left = 64
      Top = 88
      Width = 22
      Height = 13
      Caption = 'ADC'
    end
    object Label23: TLabel
      Left = 136
      Top = 88
      Width = 60
      Height = 13
      Caption = 'Amplifier 10^'
    end
    object Label24: TLabel
      Left = 248
      Top = 88
      Width = 41
      Height = 13
      Caption = 'Multiplier'
    end
    object SpinEdit3: TSpinEdit
      Left = 88
      Top = 16
      Width = 33
      Height = 22
      MaxValue = 5
      MinValue = 0
      TabOrder = 0
      Value = 2
    end
    object ComboBox3: TComboBox
      Left = 200
      Top = 16
      Width = 41
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = '13'
      Items.Strings = (
        '13'
        '1.3')
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 24
      Width = 49
      Height = 17
      Caption = 'Topo'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 320
      Top = 16
      Width = 33
      Height = 21
      TabOrder = 3
      Text = '1'
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 56
      Width = 57
      Height = 17
      Caption = 'Current'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object SpinEdit4: TSpinEdit
      Left = 96
      Top = 48
      Width = 33
      Height = 22
      MaxValue = 5
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object ComboBox4: TComboBox
      Left = 200
      Top = 48
      Width = 41
      Height = 21
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 6
      Text = '8'
      Items.Strings = (
        '10'
        '9'
        '8'
        '7'
        '6'
        '5'
        '4')
    end
    object Edit4: TEdit
      Left = 304
      Top = 48
      Width = 49
      Height = 21
      TabOrder = 7
      Text = '-1'
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 88
      Width = 49
      Height = 17
      Caption = 'Other'
      TabOrder = 8
    end
    object SpinEdit5: TSpinEdit
      Left = 96
      Top = 80
      Width = 33
      Height = 22
      MaxValue = 5
      MinValue = 0
      TabOrder = 9
      Value = 1
    end
    object ComboBox5: TComboBox
      Left = 200
      Top = 80
      Width = 41
      Height = 21
      ItemHeight = 13
      TabOrder = 10
      Text = '9'
      Items.Strings = (
        '10'
        '9'
        '8'
        '7'
        '6'
        '5'
        '4')
    end
    object Edit5: TEdit
      Left = 304
      Top = 80
      Width = 49
      Height = 21
      TabOrder = 11
      Text = '1'
    end
    object CheckBox4: TCheckBox
      Left = 8
      Top = 120
      Width = 73
      Height = 17
      Caption = 'MakeIV'
      TabOrder = 12
      OnClick = CheckBox4Click
    end
  end
end
