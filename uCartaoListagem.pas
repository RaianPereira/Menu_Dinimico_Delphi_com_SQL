unit uCartaoListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uEnum, uFuncoes;

type
  TfrmCartaoListagem = class(TfrmHerancaListagem)
    QryListagemcartaoId: TIntegerField;
    QryListagemdescricaoCartao: TWideStringField;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    imgButtonImprimir: TImageList;
    procedure btnNovoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn1MouseEnter(Sender: TObject);
    procedure BitBtn1MouseLeave(Sender: TObject);
  private
    procedure AbrirCadastro(estadoCadastro: TEstadoDoCadastro);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCartaoListagem: TfrmCartaoListagem;

implementation

{$R *.dfm}

uses uCartaoCadastro, uRelCartao;

procedure TfrmCartaoListagem.AbrirCadastro(estadoCadastro: TEstadoDoCadastro);
begin
  try
    frmCartaoCadastro := TfrmCartaoCadastro.Create(Self);
    frmCartaoCadastro.EstadoDoCadastro:=estadoCadastro;
    case estadoCadastro of
      ecNovo: begin
        frmCartaoCadastro.qryCadastro.ParamByName('cartaoId').AsInteger:=-1;
        frmCartaoCadastro.qryCadastro.Open;
        frmCartaoCadastro.qryCadastro.Append;
      end;
      ecModificar: begin
        frmCartaoCadastro.qryCadastro.ParamByName('cartaoId').AsInteger:=QryListagemcartaoId.AsInteger;
        frmCartaoCadastro.qryCadastro.Open;
        frmCartaoCadastro.qryCadastro.Edit;
      end;
      ecApagar: begin
        frmCartaoCadastro.qryCadastro.ParamByName('cartaoId').AsInteger:=QryListagemcartaoId.AsInteger;
        frmCartaoCadastro.qryCadastro.Open;
        frmCartaoCadastro.HabilitaDesabilitaTela(false);
      end;
    end;
    frmCartaoCadastro.ShowModal;
  finally
    frmCartaoCadastro.Release;
    Self.RefreshQuery(qryListagem);
  end;
end;

procedure TfrmCartaoListagem.BitBtn1Click(Sender: TObject);
begin
  inherited;
  frmRelCartao := TfrmRelCartao.Create(Self);
  frmRelCartao.QryRelCartao.Close;
  {Necessario fazer as Query Dimanicamente para essa função funcionar}
  //frmRelCartao.QryRelCartao.ParamByName('cartaoId').AsInteger := frmRelCartao.QryRelCartaocartaoId.AsInteger;
  frmRelCartao.QryRelCartao.Open;


  frmRelCartao.RLReport1.PreviewModal;
  frmRelCartao.Release;
end;

procedure TfrmCartaoListagem.BitBtn1MouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender,1);
end;

procedure TfrmCartaoListagem.BitBtn1MouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender,0);
end;

procedure TfrmCartaoListagem.btnApagarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecApagar);
end;

procedure TfrmCartaoListagem.btnModificarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecModificar);
end;

procedure TfrmCartaoListagem.btnNovoClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecNovo);
end;

initialization
  RegisterClass(TfrmCartaoListagem);

end.
