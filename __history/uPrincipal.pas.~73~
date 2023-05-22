unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  uSplash, uHerancaBase,
  Vcl.ExtCtrls, Vcl.ComCtrls, uDtmConexao, Vcl.Imaging.pngimage,
  System.ImageList, Vcl.ImgList, Vcl.WinXCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlPrincipalLeft: TPanel;
    pnlPrincipalCenter: TPanel;
    pnlPrincipalCenterRight: TPanel;
    pnlPrincipalCenterLeft: TPanel;
    pnlPrincipalCenterTop: TPanel;
    pnlPrincipalCenterBottom: TPanel;
    pgcPrincipal: TPageControl;
    tbsMenu: TTabSheet;
    pnlPrincipalTop: TPanel;
    Image1: TImage;
    imhButtons: TImageList;
    scbIcones: TScrollBox;
    Panel1: TPanel;
    Label1: TLabel;
    imgBtnClose: TImage;
    pnlPesquisaIcone: TPanel;
    edtLocalizarMenu: TSearchBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Image2: TImage;
    Label2: TLabel;
    btnFinanceiro: TBitBtn;
    btnVendas: TBitBtn;
    btnConfiguracoes: TBitBtn;
    imgBtnMaximizar: TImage;
    imgMinimizar: TImage;
    Timer1: TTimer;
    lblHora: TLabel;
    lblData: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtLocalizarMenuInvokeSearch(Sender: TObject);
    procedure imgBtnCloseClick(Sender: TObject);
    procedure btnFinanceiroClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure btnFinanceiroMouseEnter(Sender: TObject);
    procedure btnFinanceiroMouseLeave(Sender: TObject);
    procedure btnVendasMouseEnter(Sender: TObject);
    procedure btnVendasMouseLeave(Sender: TObject);
    procedure btnConfiguracoesMouseEnter(Sender: TObject);
    procedure btnConfiguracoesMouseLeave(Sender: TObject);
    procedure pnlPrincipalTopMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlPrincipalTopDblClick(Sender: TObject);
    procedure imgBtnMaximizarClick(Sender: TObject);
    procedure imgMinimizarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    pnlAcao, pnlDescAcao, pnlLeft, pnlRight, pnlTop: TPanel;
    lblDescAcao: TLabel;
    imgIcone: TImage;
    procedure ClickChamada(Sender: TObject);
    procedure ControleMouseEnterTimage(Sender: TObject);
    procedure ControleMouseLeaveTimage(Sender: TObject);
    procedure DestroyIconesMenuDinamico;
    procedure MontarMenu;
    procedure FiltrarMenuProcesso(aProcesso: string);
    procedure FiltrarMenuLikeTitulo(aLike: string);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  dtmConexao: TdtmConexao;

implementation

uses uFuncoes, uBancoListagem, uLogin;

{$R *.dfm}


procedure TfrmPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  FiltrarMenuProcesso('CNF');
end;

procedure TfrmPrincipal.btnConfiguracoesMouseEnter(Sender: TObject);
begin
   ButtonMouseEnter(Sender, 4);
  (Sender as TBitBtn).Cursor := crHandPoint;
end;

procedure TfrmPrincipal.btnConfiguracoesMouseLeave(Sender: TObject);
begin
   ButtonMouseLeave(Sender, 5);
  (Sender as TBitBtn).Cursor := crDefault;
end;

procedure TfrmPrincipal.btnFinanceiroClick(Sender: TObject);
begin
  FiltrarMenuProcesso('FIN');
end;

procedure TfrmPrincipal.btnFinanceiroMouseEnter(Sender: TObject);
begin
  ButtonMouseEnter(Sender, 0);
  (Sender as TBitBtn).Cursor := crHandPoint;
end;

procedure TfrmPrincipal.btnFinanceiroMouseLeave(Sender: TObject);
begin
   ButtonMouseLeave(Sender, 1);
  (Sender as TBitBtn).Cursor := crDefault;
end;

procedure TfrmPrincipal.btnVendasClick(Sender: TObject);
begin
  FiltrarMenuProcesso('VEN');
end;

procedure TfrmPrincipal.btnVendasMouseEnter(Sender: TObject);
begin
  ButtonMouseEnter(Sender, 2);
  (Sender as TBitBtn).Cursor := crHandPoint;
end;

procedure TfrmPrincipal.btnVendasMouseLeave(Sender: TObject);
begin
   ButtonMouseLeave(Sender, 3);
  (Sender as TBitBtn).Cursor := crDefault;
end;

procedure TfrmPrincipal.FiltrarMenuProcesso(aProcesso:string);
begin
  dtmConexao.QryMenu.Close;
  dtmConexao.QryMenu.SQL.Clear;
  dtmConexao.QryMenu.SQL.Add(' select menuId, titulo, nomeImagem, nomeFormulario, processo from Menu ');
  dtmConexao.QryMenu.SQL.Add(' where processo=:processo ');
  dtmConexao.QryMenu.ParamByName('processo').AsString := aProcesso;
  dtmConexao.QryMenu.Open;
  MontarMenu;
end;

procedure TfrmPrincipal.FiltrarMenuLikeTitulo(aLike:string);
begin
  dtmConexao.QryMenu.Close;
  dtmConexao.QryMenu.SQL.Clear;
  dtmConexao.QryMenu.SQL.Add(' select menuId, titulo, nomeImagem, nomeFormulario, processo from Menu ');
  dtmConexao.QryMenu.SQL.Add(' where titulo like :titulo ');
  dtmConexao.QryMenu.ParamByName('titulo').AsString := '%'+aLike+'%';
  dtmConexao.QryMenu.Open;
  MontarMenu;
end;

procedure TfrmPrincipal.MontarMenu;
var iLeft, iTop: integer;
    cColorPanelIcone: TColor;
begin
  iLeft := 6;
  iTop := 6;
  cColorPanelIcone := $00EBDDDA;

  DestroyIconesMenuDinamico;

  while not dtmConexao.QryMenu.Eof do
  begin
    pnlAcao := TPanel.Create(scbIcones);
    pnlAcao.Parent := scbIcones;
    pnlAcao.BevelOuter := bvNone;
    pnlAcao.Height := 82;
    pnlAcao.Left := iLeft;
    pnlAcao.Width := 130;
    pnlAcao.Name := '___pn1___'+dtmConexao.QryMenu.FieldByName('menuId').AsString;
    pnlAcao.Top := iTop;
    pnlAcao.Caption := EmptyStr;
    pnlAcao.Tag := 9999;
    pnlAcao.Color := clWhite;
    pnlAcao.ParentBackground := false;

    pnlDescAcao := TPanel.Create(Application);
    pnlDescAcao.Parent := pnlAcao;
    pnlDescAcao.Color := cColorPanelIcone;
    pnlDescAcao.Height := 15;
    pnlDescAcao.Align := alBottom;
    pnlDescAcao.BevelOuter := bvNone;
    pnlDescAcao.ParentBackground := false;

    pnlLeft := TPanel.Create(Application);
    pnlLeft.Parent := pnlAcao;
    pnlLeft.Color := cColorPanelIcone;
    pnlLeft.Width := 1;
    pnlLeft.Align := alLeft;
    pnlLeft.BevelOuter := bvNone;
    pnlLeft.ParentBackground := false;

    pnlRight := TPanel.Create(Application);
    pnlRight.Parent := pnlAcao;
    pnlRight.Color := cColorPanelIcone;
    pnlRight.Width := 1;
    pnlRight.Align := alRight;
    pnlRight.BevelOuter := bvNone;
    pnlRight.ParentBackground := false;

    pnlTop := TPanel.Create(Application);
    pnlTop.Parent := pnlAcao;
    pnlTop.Color := cColorPanelIcone;
    pnlTop.Height := 1;
    pnlTop.Align := alTop;
    pnlTop.BevelOuter := bvNone;
    pnlTop.ParentBackground := false;

    lblDescAcao := TLabel.Create(Application);
    lblDescAcao.Parent := pnlDescAcao;
    lblDescAcao.Align := alClient;
    lblDescAcao.Alignment := taCenter;
    lblDescAcao.Font.Style := [fsUnderline, fsBold];
    lblDescAcao.Font.Name := 'Tahoma';
    lblDescAcao.Font.Size := 8;
    lblDescAcao.Font.Color := clBlack;
    lblDescAcao.Cursor := crHandPoint;
    lblDescAcao.Caption := dtmConexao.QryMenu.FieldByName('titulo').AsString;
    lblDescAcao.Hint := dtmConexao.QryMenu.FieldByName('nomeFormulario').AsString;
    lblDescAcao.HelpKeyword := '1';
    lblDescAcao.ShowHint := false;
    lblDescAcao.OnClick := ClickChamada;

    imgIcone := TImage.Create(Application);
    imgIcone.Parent := pnlAcao;
    imgIcone.Align := alClient;
    imgIcone.Transparent := true;
    imgIcone.Center := true;
    imgIcone.Picture.LoadFromFile('C:\Users\Raian Almeida\Documents\Programa 2023.2\images\'+dtmConexao.QryMenu.FieldByName('nomeImagem').AsString);
    imgIcone.Hint := dtmConexao.QryMenu.FieldByName('nomeFormulario').AsString;
    imgIcone.HelpKeyword := '1';
    imgIcone.ShowHint := false;
    imgIcone.OnClick := ClickChamada;
    imgIcone.OnMouseEnter := ControleMouseEnterTimage;
    imgIcone.OnMouseLeave := ControleMouseLeaveTimage;

    iLeft := iLeft+pnlAcao.Width+6;
    if iLeft > (self.Width-(pnlPrincipalLeft.Width+pnlAcao.Width)) then
    begin
      iLeft := 6;
      iTop := iTop+pnlAcao.Height+6;
    end;

    dtmConexao.QryMenu.Next;
  end;
  pgcPrincipal.ActivePage := tbsMenu;
end;

procedure TfrmPrincipal.pnlPrincipalTopDblClick(Sender: TObject);
begin
  frmPrincipal.WindowState := wsNormal;
end;

procedure TfrmPrincipal.pnlPrincipalTopMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft  then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;

end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
 lblHora.Caption := TimeToStr(Now);
 lblData.Caption := DateToStr(Now);
end;

procedure TfrmPrincipal.DestroyIconesMenuDinamico;
var I: integer;
begin
  I := scbIcones.ComponentCount;
  while I > 0 do
  begin
    Dec(I);
    if TComponent(scbIcones.Components[i]).Tag = 9999 then
       TComponent(scbIcones.Components[i]).Destroy;
  end;
end;

procedure TfrmPrincipal.edtLocalizarMenuInvokeSearch(Sender: TObject);
begin
  FiltrarMenuLikeTitulo(TSearchBox(Sender).Text);
end;

procedure TfrmPrincipal.ControleMouseEnterTimage(Sender: TObject);
var ControleAtivo: TWinControl;
begin
  ControleAtivo := TImage(Sender).Parent;
  if ControleAtivo is TPanel then
  begin
    TPanel(ControleAtivo).Color := $006CC2F0;
    TPanel(ControleAtivo).ParentBackground := false;
    TPanel(ControleAtivo).Cursor := crHandPoint;
  end;
end;

procedure TfrmPrincipal.ControleMouseLeaveTimage(Sender: TObject);
var ControleAtivo: TWinControl;
begin
  ControleAtivo := TImage(Sender).Parent;
  if ControleAtivo is TPanel then
  begin
    TPanel(ControleAtivo).Color := clWhite;
    TPanel(ControleAtivo).ParentBackground := false;
    TPanel(ControleAtivo).Cursor := crHandPoint;
  end;
end;

procedure TfrmPrincipal.ClickChamada(Sender: TObject);
begin
  if (Sender is TLabel) then
    CriarAba(TFormClass(FindClass(TLabel(Sender).Hint)), pgcPrincipal, -1)
  else if (Sender is TImage) then
    CriarAba(TFormClass(FindClass(TImage(Sender).Hint)), pgcPrincipal, -1);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(dtmConexao) then
     FreeAndNil(dtmConexao);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  try
    dtmConexao := TdtmConexao.Create(Self);
    dtmConexao.SQLConnection.Connected := true;
  except
    ShowMessage('Erro na Conexão com o Banco de Dados');
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  frmSplash := TfrmSplash.Create(Self);
  frmSplash.Show;
  frmSplash.Refresh;
  FiltrarMenuProcesso('FIN');
  Sleep(1000);


  frmLogin := TfrmLogin.Create(Self);
  frmLogin.ShowModal;
  frmLogin.Release;

  if Assigned(frmSplash) then
     frmSplash.Free;

  Self.FormStyle := fsStayOnTop;
end;

procedure TfrmPrincipal.imgMinimizarClick(Sender: TObject);
begin
  frmPrincipal.WindowState := wsMinimized;
end;



procedure TfrmPrincipal.imgBtnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.imgBtnMaximizarClick(Sender: TObject);
begin
  frmPrincipal.WindowState := wsMaximized;
end;

end.
