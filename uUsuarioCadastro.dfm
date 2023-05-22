inherited frmUsuario: TfrmUsuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 318
  ClientWidth = 582
  ExplicitWidth = 582
  ExplicitHeight = 318
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlHeader: TPanel
    Width = 582
    inherited imgBtnClose: TImage
      Left = 559
    end
    inherited lblTitulo: TLabel
      Width = 114
      Caption = 'Cadastro de Usu'#225'rio'
      ExplicitWidth = 114
    end
    inherited pnlHeaderLineTop: TPanel
      Width = 582
    end
    inherited pnlHeaderLineRight: TPanel
      Left = 580
    end
    inherited pnlHeaderLineGray: TPanel
      Width = 533
    end
  end
  inherited pnlFormLineLeft: TPanel
    Height = 284
  end
  inherited pnlFormLineRight: TPanel
    Left = 580
    Height = 284
  end
  inherited pnlFormLineBottom: TPanel
    Top = 316
    Width = 582
  end
  inherited pnlPrincipal: TPanel
    Width = 578
    Height = 284
    ExplicitWidth = 641
    ExplicitHeight = 331
    object Label1: TLabel [0]
      Left = 20
      Top = 48
      Width = 19
      Height = 13
      Caption = '#ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 20
      Top = 110
      Width = 81
      Height = 13
      Caption = 'Nome do Usu'#225'rio'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [2]
      Left = 20
      Top = 175
      Width = 30
      Height = 13
      Caption = 'Senha'
      FocusControl = DBEdit3
    end
    inherited pnlPrincipalBottom: TPanel
      Top = 242
      Width = 578
    end
    object DBEdit1: TDBEdit
      Left = 20
      Top = 64
      Width = 134
      Height = 21
      DataField = 'usuarioId'
      DataSource = dtsCadastro
      Enabled = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 20
      Top = 129
      Width = 461
      Height = 21
      DataField = 'nomeUsuario'
      DataSource = dtsCadastro
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 20
      Top = 194
      Width = 461
      Height = 21
      DataField = 'senha'
      DataSource = dtsCadastro
      TabOrder = 3
    end
  end
  inherited imhButtons: TImageList
    Left = 400
    Top = 48
  end
  inherited QryCadastro: TZQuery
    Connection = dtmConexao.SQLConnection
    SQL.Strings = (
      'select usuarioId,'
      #9'   nomeUsuario,'
      #9'   senha'
      'from Usuario'
      'where usuarioId=:usuarioId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usuarioId'
        ParamType = ptUnknown
      end>
    Left = 370
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuarioId'
        ParamType = ptUnknown
      end>
    object QryCadastrousuarioId: TIntegerField
      FieldName = 'usuarioId'
      ReadOnly = True
    end
    object QryCadastronomeUsuario: TWideStringField
      FieldName = 'nomeUsuario'
      Required = True
      Size = 30
    end
    object QryCadastrosenha: TWideStringField
      FieldName = 'senha'
      Required = True
      Size = 30
    end
  end
  inherited updCadastro: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Usuario'
      'WHERE'
      
        '  ((Usuario.usuarioId IS NULL AND :OLD_usuarioId IS NULL) OR (Us' +
        'uario.usuarioId = :OLD_usuarioId))')
    InsertSQL.Strings = (
      'INSERT INTO Usuario'
      '  (nomeUsuario, senha)'
      'VALUES'
      '  (:nomeUsuario, :senha)')
    ModifySQL.Strings = (
      'UPDATE Usuario SET'
      '  nomeUsuario = :nomeUsuario,'
      '  senha = :senha'
      'WHERE'
      
        '  ((Usuario.usuarioId IS NULL AND :OLD_usuarioId IS NULL) OR (Us' +
        'uario.usuarioId = :OLD_usuarioId))')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nomeUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_usuarioId'
        ParamType = ptUnknown
      end>
  end
end
