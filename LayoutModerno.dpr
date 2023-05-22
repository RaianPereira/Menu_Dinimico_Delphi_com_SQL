program LayoutModerno;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uSplash in 'uSplash.pas' {frmSplash},
  uHerancaBase in 'uHerancaBase.pas' {frmHerancaBase},
  uHerancaListagem in 'uHerancaListagem.pas' {frmHerancaListagem},
  uHerancaCadastro in 'uHerancaCadastro.pas' {frmHerancaCadastro},
  uFuncoes in 'uFuncoes.pas',
  uDtmConexao in 'uDtmConexao.pas' {dtmConexao: TDataModule},
  uBancoListagem in 'uBancoListagem.pas' {frmBancoListagem},
  uEnum in 'uEnum.pas',
  uBancoCadastro in 'uBancoCadastro.pas' {frmBancoCadastro},
  uCartaoListagem in 'uCartaoListagem.pas' {frmCartaoListagem},
  uLogin in 'uLogin.pas' {frmLogin},
  uConfiguracaoUsuario in 'uConfiguracaoUsuario.pas' {frmConfiguracao},
  uUsuarioCadastro in 'uUsuarioCadastro.pas' {frmUsuario},
  uDispesasPessoal in 'uDispesasPessoal.pas' {frmDespesasPessoal},
  uCartaoCadastro in 'uCartaoCadastro.pas' {frmCartaoCadastro},
  uCadastroDespesa in 'uCadastroDespesa.pas' {frmCadastroDespesas},
  uCadastroReceita in 'uCadastroReceita.pas' {frmCadastroReceita},
  uCadastroDasReceitas in 'uCadastroDasReceitas.pas' {frmCadastroDasReceitas},
  uRelCartao in 'uRelCartao.pas' {frmRelCartao},
  uRelCadBanco in 'uRelCadBanco.pas' {frmRelCadBanco},
  uRelCadReceita in 'uRelCadReceita.pas' {frmCadReceita},
  uRelCadDespesa in 'uRelCadDespesa.pas' {frmRelCadDespesa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
