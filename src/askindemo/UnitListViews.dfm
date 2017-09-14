object FrameListViews: TFrameListViews
  Left = 0
  Top = 0
  Width = 610
  Height = 505
  Anchors = [akLeft, akTop, akBottom]
  TabOrder = 0
  DesignSize = (
    610
    505)
  object sListView1: TsListView
    Left = 22
    Top = 104
    Width = 567
    Height = 379
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'EDIT'
    Anchors = [akLeft, akTop, akRight, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = 'Column 1'
        ImageIndex = 0
        Width = 200
      end
      item
        Caption = 'Column 2'
        ImageIndex = 1
        Width = 100
      end
      item
        Alignment = taRightJustify
        AutoSize = True
        Caption = 'Column 3'
        ImageIndex = 6
      end>
    DragMode = dmAutomatic
    HideSelection = False
    Items.Data = {
      9D0000000300000003000000FFFFFFFFFFFFFFFF00000000000000001A224F4B
      2220636F6C6F7220646566696E656420696E20736B696E04000000FFFFFFFFFF
      FFFFFF00000000000000001F225761726E696E672220636F6C6F722064656669
      6E656420696E20736B696E00000000FFFFFFFFFFFFFFFF00000000000000001D
      22416C6572742220636F6C6F7220646566696E656420696E20736B696E}
    LargeImages = MainForm.ImageList32
    MultiSelect = True
    RowSelect = True
    ShowWorkAreas = True
    SmallImages = MainForm.ImageList16
    TabOrder = 0
    ViewStyle = vsReport
    OnCustomDrawItem = sListView1CustomDrawItem
    OnCustomDrawSubItem = sListView1CustomDrawSubItem
  end
  object sGroupBox10: TsGroupBox
    Left = 21
    Top = 21
    Width = 336
    Height = 64
    Caption = 'ViewStyle'
    TabOrder = 1
    SkinData.SkinSection = 'GROUPBOX'
    object sRadioButton21: TsRadioButton
      Tag = 5
      Left = 13
      Top = 26
      Width = 52
      Height = 20
      Caption = 'vsIcon'
      TabOrder = 0
      OnClick = sRadioButton21Change
      SkinData.SkinSection = 'RADIOBUTTON'
    end
    object sRadioButton22: TsRadioButton
      Tag = 5
      Left = 90
      Top = 26
      Width = 47
      Height = 20
      HelpContext = 1
      Caption = 'vsList'
      TabOrder = 1
      OnClick = sRadioButton22Change
      SkinData.SkinSection = 'RADIOBUTTON'
    end
    object sRadioButton23: TsRadioButton
      Tag = 5
      Left = 163
      Top = 26
      Width = 64
      Height = 20
      HelpContext = 2
      Caption = 'vsReport'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = sRadioButton23Change
      SkinData.SkinSection = 'RADIOBUTTON'
    end
    object sRadioButton24: TsRadioButton
      Tag = 5
      Left = 245
      Top = 26
      Width = 76
      Height = 20
      HelpContext = 3
      Caption = 'vsSmallIcon'
      TabOrder = 3
      OnClick = sRadioButton24Change
      SkinData.SkinSection = 'RADIOBUTTON'
    end
  end
  object sButton1: TsButton
    Left = 476
    Top = 60
    Width = 113
    Height = 25
    Caption = 'Add 1000 items'
    TabOrder = 2
    OnClick = sButton1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sCheckBox1: TsCheckBox
    Left = 372
    Top = 24
    Width = 80
    Height = 20
    Caption = 'Show glyphs'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox1Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox2: TsCheckBox
    Left = 372
    Top = 44
    Width = 78
    Height = 20
    Caption = 'Checkboxes'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = sCheckBox2Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox3: TsCheckBox
    Left = 372
    Top = 64
    Width = 63
    Height = 20
    Caption = 'Grid lines'
    TabOrder = 5
    OnClick = sCheckBox3Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox4: TsCheckBox
    Left = 480
    Top = 24
    Width = 72
    Height = 20
    Caption = 'Row select'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = sCheckBox4Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sFrameAdapter1: TsFrameAdapter
    SkinData.SkinSection = 'CHECKBOX'
    Left = 7
    Top = 9
  end
end
