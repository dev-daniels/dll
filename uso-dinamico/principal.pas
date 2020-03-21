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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public

  end;

type
  TFormatarCep = function(Cep : PChar):PChar;stdcall;

type
  TFormatarCpf = function(Cpf : PChar):PChar;stdcall;

var
  frmPrincipal: TfrmPrincipal;
  FormatarCep : TFormatarCep;
  FormatarCpf : TFormatarCpf;
  Hndl : THandle;

implementation

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

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Hndl := LoadLibrary('formatador.dll');
  @FormatarCep := GetProcAddress(Hndl, 'FormatarCep');
  @FormatarCpf := GetProcAddress(Hndl, 'FormatarCpf');
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeLibrary(Hndl);
end;

end.
