object dtmConexao: TdtmConexao
  OldCreateOrder = False
  Height = 111
  Width = 201
  object SQLConnection: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16'
      'AutoEncodeStrings=True')
    Connected = True
    HostName = '.\SERVERPORJETO'
    Port = 0
    Database = 'dbLayoutModerno'
    User = 'sa'
    Password = 'admin12345'
    Protocol = 'mssql'
    LibraryLocation = 'C:\Users\Raian Almeida\Documents\Programa 2023.2\ntwdblib.dll'
    Left = 56
    Top = 40
  end
  object QryMenu: TZQuery
    Connection = SQLConnection
    SQL.Strings = (
      'select menuId,'
      #9#9#9#9'titulo,'
      #9#9#9#9'nomeImagem,'
      #9#9#9#9'nomeFormulario,'
      #9#9#9#9'processo'
      'from Menu'
      'where processo =:processo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end>
    Left = 144
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end>
  end
end
