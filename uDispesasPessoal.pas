unit uDispesasPessoal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uEnum, RxToolEdit, RxCurrEdit;

type
  TfrmDespesasPessoal = class(TfrmHerancaListagem)
    QryListagemdispesaId: TIntegerField;
    QryListagemtipoGasto: TWideStringField;
    QryListagemdetalhamento: TWideStringField;
    QryListagemvalorGasto: TFloatField;
    QryListagemfonte: TWideStringField;
    QryListagemdataDespesa: TDateTimeField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    QryGastos: TZQuery;
    dtsGastos: TDataSource;
    QryGastosGastos: TFloatField;
    Label1: TLabel;
    pnlFormPrincipalBottomTop: TPanel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    Panel1: TPanel;
    QryListagemformaPagamento: TWideStringField;
    BitBtn1: TBitBtn;
    imgButtonImprimir: TImageList;
    procedure btnNovoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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
  frmDespesasPessoal: TfrmDespesasPessoal;

implementation

uses uCadastroDespesa, uDtmConexao, uFuncoes, uRelCadDespesa;

{$R *.dfm}

procedure TfrmDespesasPessoal.AbrirCadastro(estadoCadastro: TEstadoDoCadastro);
begin
  try
    frmCadastroDespesas := TfrmCadastroDespesas.Create(Self);
    frmCadastroDespesas.EstadoDoCadastro:=estadoCadastro;
    case estadoCadastro of
      ecNovo: begin
        frmCadastroDespesas.qryCadastro.ParamByName('dispesaId').AsInteger:=-1;
        frmCadastroDespesas.qryCadastro.Open;
        frmCadastroDespesas.qryCadastro.Append;
      end;
      ecModificar: begin
        frmCadastroDespesas.qryCadastro.ParamByName('dispesaId').AsInteger:=QryListagemdispesaId.AsInteger;
        frmCadastroDespesas.qryCadastro.Open;
        frmCadastroDespesas.qryCadastro.Edit;
      end;
      ecApagar: begin
        frmCadastroDespesas.qryCadastro.ParamByName('dispesaId').AsInteger:=QryListagemdispesaId.AsInteger;
        frmCadastroDespesas.qryCadastro.Open;
        frmCadastroDespesas.HabilitaDesabilitaTela(false);
      end;
    end;
    frmCadastroDespesas.ShowModal;
  finally
    QryGastos.Refresh;
    frmCadastroDespesas.Release;
    Self.RefreshQuery(qryListagem);
  end;
end;

procedure TfrmDespesasPessoal.BitBtn1Click(Sender: TObject);
begin
  inherited;
  frmRelCadDespesa := TfrmRelCadDespesa.Create(Self);
  frmRelCadDespesa.QryCadRelDespesa.Close;
  frmRelCadDespesa.QryTotalDespesa.Close;

  frmRelCadDespesa.QryCadRelDespesa.Open;
  frmRelCadDespesa.QryTotalDespesa.Open;

  frmRelCadDespesa.RLReport1.PreviewModal;
  frmRelCadDespesa.Release;
end;

procedure TfrmDespesasPessoal.BitBtn1MouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 1);
end;

procedure TfrmDespesasPessoal.BitBtn1MouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 0);
end;

procedure TfrmDespesasPessoal.btnApagarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecApagar);

end;

procedure TfrmDespesasPessoal.btnModificarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecModificar);
end;

procedure TfrmDespesasPessoal.btnNovoClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecNovo);
end;


procedure TfrmDespesasPessoal.FormDestroy(Sender: TObject);
begin
  inherited;
  QryGastos.Close;
end;

procedure TfrmDespesasPessoal.FormShow(Sender: TObject);
begin
  inherited;
  QryGastos.Open;
end;

initialization
  RegisterClass(TfrmDespesasPessoal);

end.


{
var
TotalVenda : Real;
begin
//
TotalVenda := 0;
QryListagem.First;
  while not QryListagem.Eof do
    begin
    TotalVenda := TotalVenda + QryListagem.fieldbyname('valorGasto').AsFloat;
    QryListagem.Next;
    end;
  edtValorTotal.Text := FormatFloat ('R$ #,##0.00', TotalVenda); // Caso queria mostrar o valor em um Edit.
end;
}