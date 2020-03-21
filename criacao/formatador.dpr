library formatador;

uses
  SysUtils,
  Classes;

function FormatarCpf(Cpf : PChar):PChar;stdcall;
var
  CpfFormatado : string;
begin
  CpfFormatado := Copy(Cpf, 1, 3) + '.' + Copy(Cpf, 4, 3) + '.' +
    Copy(Cpf, 7, 3) + '-' + Copy(Cpf, 10, 2);
  Result := PChar(CpfFormatado);
end;

function FormatarCep(Cep : PChar):PChar;stdcall;
var
  CepFormatado : string;
begin
  CepFormatado := Copy(Cep, 1, 2) + '.' + Copy(Cep, 3, 3) + '-' +
    Copy(Cep, 6, 3);
  Result := PChar(CepFormatado);
end;

exports
  FormatarCpf,
  FormatarCep;

{$R *.res}

begin
end.
