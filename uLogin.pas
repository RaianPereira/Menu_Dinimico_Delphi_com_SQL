unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmLogin = class(TForm)
    Image1: TImage;
    btnCancelar: TBitBtn;
    btnAcessar: TBitBtn;
    imhButtons: TImageList;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    QryLogin: TZQuery;
    btnFechar: TBitBtn;
    ImageList1: TImageList;
    Image2: TImage;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarMouseEnter(Sender: TObject);
    procedure btnCancelarMouseLeave(Sender: TObject);
    procedure btnAcessarMouseEnter(Sender: TObject);
    procedure btnAcessarMouseLeave(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure btnFecharMouseEnter(Sender: TObject);
    procedure btnFecharMouseLeave(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    bFechar:Boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uDtmConexao, uFuncoes;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  bFechar := true;
  Application.Terminate;
end;

procedure TfrmLogin.btnCancelarMouseEnter(Sender: TObject);
begin
  ButtonMouseEnter(Sender, 0);
end;

procedure TfrmLogin.btnCancelarMouseLeave(Sender: TObject);
begin
  ButtonMouseLeave(Sender, 1);
end;

procedure TfrmLogin.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.btnFecharMouseEnter(Sender: TObject);
begin
  ButtonMouseEnter(Sender, 1);
end;

procedure TfrmLogin.btnFecharMouseLeave(Sender: TObject);
begin
  ButtonMouseLeave(Sender, 2);
end;

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
begin
  QryLogin.Close;
  QryLogin.ParamByName('nomeUsuario').AsString := edtUsuario.Text;
  QryLogin.ParamByName('senha').AsString := edtSenha.Text;
  QryLogin.Open;

  if QryLogin.IsEmpty then
  begin
    MessageDlg('Login Inv�lido', mtWarning, [mbOk], 0);
    edtUsuario.SetFocus;
    edtUsuario.SelectAll;
    Abort;
  end
  else
  begin
    bFechar := true;
    Close;
  end;
end;


procedure TfrmLogin.btnAcessarMouseEnter(Sender: TObject);
begin
  ButtonMouseEnter(Sender, 2);
end;

procedure TfrmLogin.btnAcessarMouseLeave(Sender: TObject);
begin
  ButtonMouseLeave(Sender, 3);
end;

procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := bFechar;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  bFechar := false;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  edtUsuario.SetFocus;
end;

procedure TfrmLogin.imgFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
