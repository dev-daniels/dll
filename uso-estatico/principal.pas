unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lblCep: TLabel;
    edtCep: TEdit;
    btnFormatarCep: TButton;
    edtCepFormatado: TEdit;
    lblCpf: TLabel;
    edtCpf: TEdit;
    btnFormatarCpf: TButton;
    edtCpfFormatado: TEdit;
    procedure btnFormatarCepClick(Sender: TObject);
    procedure btnFormatarCpfClick(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

function FormatarCep(Cep : PChar):PChar;stdcall;external 'formatador.dll';
function FormatarCpf(Cpf : PChar):PChar;stdcall;external 'formatador.dll';

{$R *.dfm}

procedure TfrmPrincipal.btnFormatarCepClick(Sender: TObject);
var
  Cep : PChar;
begin
  Cep := PChar(edtCep.Text);
  edtCepFormatado.Text := FormatarCep(Cep);
end;

procedure TfrmPrincipal.btnFormatarCpfClick(Sender: TObject);
var
  Cpf : PChar;
begin
  Cpf := PChar(edtCpf.Text);
  edtCpfFormatado.Text := FormatarCpf(Cpf);
end;

end.
