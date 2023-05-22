unit uCadastroDespesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaCadastro, Data.DB, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmCadastroDespesas = class(TfrmHerancaCadastro)
    QryCadastrodispesaId: TIntegerField;
    QryCadastrotipoGasto: TWideStringField;
    QryCadastrodetalhamento: TWideStringField;
    QryCadastrovalorGasto: TFloatField;
    QryCadastrofonte: TWideStringField;
    QryCadastrodataDespesa: TDateTimeField;
    QryCadastroformaPagamento: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroDespesas: TfrmCadastroDespesas;

implementation

{$R *.dfm}

uses uDtmConexao;

end.
