object fmSelect_Sotr: TfmSelect_Sotr
  Left = 372
  Top = 170
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1086#1088' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 33
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    387
    33)
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 264
    Top = 3
    Width = 55
    Height = 25
    Action = acOk
    Anchors = [akTop, akRight]
    TabOrder = 0
  end
  object cxButton2: TcxButton
    Left = 328
    Top = 3
    Width = 55
    Height = 25
    Action = acCancel
    Anchors = [akTop, akRight]
    TabOrder = 1
  end
  object cxPopupEdit1: TcxPopupEdit
    Left = 5
    Top = 6
    Properties.PopupControl = paSelectSotr
    Properties.PopupWidth = 370
    Properties.OnChange = cxPopupEdit1PropertiesChange
    TabOrder = 2
    Width = 250
  end
  object paSelectSotr: TPanel
    Left = 5
    Top = 48
    Width = 378
    Height = 193
    BevelOuter = bvLowered
    TabOrder = 3
    Visible = False
    object tlSotr: TcxDBTreeList
      Left = 1
      Top = 1
      Width = 376
      Height = 157
      Align = alClient
      Bands = <
        item
        end>
      BufferedPaint = True
      DataController.DataSource = dsSotr
      DataController.ParentField = 'FK_OWNERID'
      DataController.KeyField = 'FK_ID'
      OptionsBehavior.CellHints = True
      OptionsBehavior.ExpandOnIncSearch = True
      OptionsBehavior.IncSearch = True
      OptionsCustomizing.BandCustomizing = False
      OptionsCustomizing.BandHorzSizing = False
      OptionsCustomizing.BandMoving = False
      OptionsCustomizing.BandVertSizing = False
      OptionsCustomizing.ColumnMoving = False
      OptionsCustomizing.ColumnVertSizing = False
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.Indicator = True
      RootValue = -1
      TabOrder = 0
      OnDblClick = buSelectClick
      object tlSotr_FK_ID: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'ID'
        DataBinding.FieldName = 'FK_ID'
        Width = 57
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object tlSotr_FK_OWNERID: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'OWNERID'
        DataBinding.FieldName = 'FK_OWNERID'
        Width = 76
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object tlSotr_FC_NAME: TcxDBTreeListColumn
        Caption.Text = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        DataBinding.FieldName = 'FC_NAME'
        Width = 147
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        SortOrder = soAscending
      end
      object tlSotr_FC_SPEC: TcxDBTreeListColumn
        Caption.Text = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'FC_SPEC'
        Width = 100
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
    end
    object paButtons: TPanel
      Left = 1
      Top = 158
      Width = 376
      Height = 34
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        376
        34)
      object buSelect: TcxButton
        Left = 6
        Top = 3
        Width = 89
        Height = 28
        Caption = #1042#1099#1073#1088#1072#1090#1100
        TabOrder = 0
        OnClick = buSelectClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000000000FF00FF00004B
          0000035E06000464080007740E00097411000C7717000E7D1A000F811C00118C
          1F000793100008961200099714000A9915000C9A18000D9E1B0010951F000FA0
          1E00138F23001196210013902400159127001398230013992500159A2700169C
          28001B9F31001C9C340014A727001AAF31001BB0330020AA3B0021B83D0023AD
          410028C048002EC152002FC9540035CF5E0036D060003BD768003FD96F0041DC
          7000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010000000000000000000000000000000000000000000001090100000000
          0000000000000000000000000000000001120A19010000000000000000000000
          000000000000000115110D0B1801000000000000000000000000000000000108
          1D1C110E0B18010000000000000000000000000000010722201E1501190B1801
          00000000000000000000000001062524221A0100010E0D150100000000000000
          00000000012827261F0100000001040D180100000000000000000000011A2921
          01000000000000010D1001000000000000000000000123010000000000000000
          010E0B0100000000000000000000010000000000000000000001030B01000000
          0000000000000000000000000000000000000001040100000000000000000000
          0000000000000000000000000102010000000000000000000000000000000000
          0000000000000101000000000000000000000000000000000000000000000000
          0100000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      object buCancel: TcxButton
        Left = 281
        Top = 3
        Width = 89
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 1
        OnClick = buCancelClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000120B0000120B0000000100000000000000000000FFFF
          FF00FF00FF004E1E1F00BF4C4D00BD4B4C00C04D4E00C14E4F00C4505100C24F
          5000C5515200B64B4C00C9545500C7535400C6525300CA555600CB565700CE58
          5900CC575800C5545500D05A5B00CF595A00D35C5D00D15B5C00D55E5F00D45D
          5E00D8606200D75F6000AF4E4F00D9626300DD656600DC646500DA636400E067
          6800DE666700E2696A00E1686900E56B6C00E36A6B00E96E6F00E76D6E00E66C
          6D009F4B4C00EA6F7000A04C4D00EB707200A34E4F00EE737400ED7273009C4B
          4C00F2767700F0757600EF747500E06D6E00A6515200F6797A00F4787900F377
          7800A9535400F87B7D00F77A7B00FB7E7F00FA7D7E00AF585900AC5657009A4D
          4E00FF818200FE808100FC7F8000F77E7F00B25B5C00EE7A7B00D56F7000B860
          6200B6626300AF5E5F00FE8B8C0091515200FC929300EF909100FB9A9C00E690
          9100EB959600FAA3A400F8AAAB00F2A9AA00EEA6A700F7B5B600A5505000994B
          4B00AB555500B15A5A00B55D5D00B75F5F00914B4B00BB636300BF666600BD65
          65008C4B4B00894B4B009F58580098555500824B4B00EB9C9C00F7B1B100EECE
          AF00FFFFD300D9F6BD00B7EBAA0058A55B003F9E4C005ED3770045CA67001EBC
          4C00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202020202
          02020202026603020202020202020202020202020202020202026666625E0302
          020202020202020202020202020202666663310B052A03020202020202020202
          02020202026666411C070604042A03596666666666666666020202020266130C
          0D0E0A08092C034C4E505354685757660202020202661112100F0C0D0E2E036E
          71717171717157660202020202661714151112100F58036E7171717171715766
          0202020202661818191617141536036E7171717171715766020202020266201D
          1A1B1819163A036E7171717171715766020202020266221E1F201D1A1B5A036E
          71717171717157660202020202662324212235511F40036D7171717171715766
          020202020266282925265601673F03696C6F6F70707057660202020202662D2B
          27285501525B03696A6A6A6A6B6B5766020202020266342F302D2B4F28460369
          6A6A6A6A6A6A576602020202026639393233342F305C03696A6A6A6A6A6A5766
          0202020202663B3C37383932335D03696A6A6A6A6A6A5766020202020266443D
          3E3B3C37384903696A6A6A6A6A6A576602020202026642424344443D3E5F0369
          6A6A6A6A6A6A5766020202020266424242424243436103696A6A6A6A6A6A5766
          020202020266454242424242426003696A6A6A6A6A6A5766020202020266664B
          48424242426003696A6A6A6A6A6A57660202020202020266664D4A474260035E
          6666666666666666020202020202020202026666656403020202020202020202
          0202020202020202020202020266030202020202020202020202}
      end
    end
  end
  object ActionList1: TActionList
    Left = 188
    Top = 2
    object acOk: TAction
      Caption = 'OK'
      ShortCut = 13
      OnExecute = acOkExecute
    end
    object acCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ShortCut = 32883
      OnExecute = acCancelExecute
    end
  end
  object odsSotr: TOracleDataSet
    SQL.Strings = (
      
        'SELECT FK_ID,FK_OWNERID,FC_NAME, 0 FN_LEVEL, null as fc_spec FRO' +
        'M med.TOTDEL_MEDICA WHERE FL_DEL=0'
      'UNION ALL'
      
        'SELECT s.FK_ID, s.FK_OTDID as FK_OWNERID, s.FC_FAM || '#39' '#39' || DEC' +
        'ODE (decode(s.FC_NAME,null,1,0), 1, '#39#39', SUBSTR (s.FC_NAME, 0, 1)' +
        ' || '#39'. '#39' || DECODE (decode(s.FC_OTCH,null,1,0), 1, '#39#39', SUBSTR (s' +
        '.FC_OTCH, 0, 1) || '#39'. '#39')) as FC_NAME, 1 FN_LEVEL, sp.fc_name as ' +
        'fc_spec FROM med.tsotr_medica s, asu.ts_sprav sp WHERE s.FL_DEL=' +
        '0 and  s.FK_SPRAVID = sp.fk_id(+)')
    Optimize = False
    Session = dmMain.os
    Left = 40
    Top = 112
  end
  object dsSotr: TDataSource
    DataSet = odsSotr
    Left = 96
    Top = 112
  end
end