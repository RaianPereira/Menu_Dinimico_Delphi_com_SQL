inherited frmCartaoCadastro: TfrmCartaoCadastro
  Caption = 'Cart'#227'o Cadastro'
  ClientHeight = 300
  ClientWidth = 656
  ExplicitWidth = 656
  ExplicitHeight = 300
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlHeader: TPanel
    Width = 656
    ExplicitWidth = 656
    inherited imgBtnClose: TImage
      Left = 633
      ExplicitLeft = 633
    end
    inherited lblTitulo: TLabel
      Width = 109
      Caption = 'Cadastro de Cart'#227'o'
      ExplicitWidth = 109
    end
    inherited pnlHeaderLineTop: TPanel
      Width = 656
      ExplicitWidth = 656
    end
    inherited pnlHeaderLineLeft: TPanel
      ExplicitLeft = 0
      ExplicitTop = 2
      ExplicitHeight = 30
    end
    inherited pnlHeaderLineRight: TPanel
      Left = 654
      ExplicitLeft = 654
      ExplicitHeight = 30
    end
    inherited pnlHeaderLineGray: TPanel
      Width = 607
      ExplicitWidth = 607
    end
  end
  inherited pnlFormLineLeft: TPanel
    Height = 266
    ExplicitLeft = 0
    ExplicitTop = 32
    ExplicitHeight = 266
  end
  inherited pnlFormLineRight: TPanel
    Left = 654
    Height = 266
    ExplicitLeft = 654
    ExplicitTop = 32
    ExplicitHeight = 266
  end
  inherited pnlFormLineBottom: TPanel
    Top = 298
    Width = 656
    ExplicitTop = 298
    ExplicitWidth = 656
  end
  inherited pnlPrincipal: TPanel
    Width = 652
    Height = 266
    ExplicitWidth = 652
    ExplicitHeight = 266
    object Label1: TLabel [0]
      Left = 20
      Top = 40
      Width = 19
      Height = 13
      Caption = '#ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 20
      Top = 104
      Width = 82
      Height = 13
      Caption = 'Descri'#231#227'o Cart'#227'o'
      FocusControl = DBEdit2
    end
    inherited pnlPrincipalBottom: TPanel
      Top = 224
      Width = 652
      ExplicitTop = 224
      ExplicitWidth = 652
    end
    object DBEdit1: TDBEdit
      Left = 20
      Top = 56
      Width = 134
      Height = 21
      DataField = 'cartaoId'
      DataSource = dtsCadastro
      Enabled = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 20
      Top = 120
      Width = 394
      Height = 21
      DataField = 'descricaoCartao'
      DataSource = dtsCadastro
      TabOrder = 2
    end
  end
  inherited QryCadastro: TZQuery
    Connection = dtmConexao.SQLConnection
    SQL.Strings = (
      'select cartaoId,'
      #9'   descricaoCartao'
      'from Cartao'
      'where cartaoId =:cartaoId ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cartaoId'
        ParamType = ptUnknown
      end>
    Left = 386
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cartaoId'
        ParamType = ptUnknown
      end>
    object QryCadastrocartaoId: TIntegerField
      DisplayLabel = '#ID'
      FieldName = 'cartaoId'
      ReadOnly = True
    end
    object QryCadastrodescricaoCartao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o Cart'#227'o'
      FieldName = 'descricaoCartao'
      Required = True
      Size = 30
    end
  end
  inherited updCadastro: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Cartao'
      'WHERE'
      
        '  ((Cartao.cartaoId IS NULL AND :OLD_cartaoId IS NULL) OR (Carta' +
        'o.cartaoId = :OLD_cartaoId))')
    InsertSQL.Strings = (
      'INSERT INTO Cartao'
      '  (descricaoCartao)'
      'VALUES'
      '  (:descricaoCartao)')
    ModifySQL.Strings = (
      'UPDATE Cartao SET'
      '  descricaoCartao = :descricaoCartao'
      'WHERE'
      
        '  ((Cartao.cartaoId IS NULL AND :OLD_cartaoId IS NULL) OR (Carta' +
        'o.cartaoId = :OLD_cartaoId))')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descricaoCartao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cartaoId'
        ParamType = ptUnknown
      end>
  end
end
