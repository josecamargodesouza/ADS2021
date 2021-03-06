unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlPrincipal: TPanel;
    btnCalcular: TButton;
    lblSalario: TLabel;
    edtSalario: TEdit;
    procedure btnCalcularClick(Sender: TObject);
  private
    const
      ALIQUOTA_INSS = 0.11;
    procedure validarCampos();
    function calcularSalarioLiquido(pSalarioBruto: Real) : Real;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }



procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  lSalarioLiquido: Real;
begin
  ValidarCampos();
  CalcularSalarioLiquido(StrToFloat(edtSalario.Text));
  showMessage('O sal?rio liquido ? ' + FloatToStr(lSalarioLiquido));
  end;

function TfrmPrincipal.calcularSalarioLiquido(pSalarioBruto: Real): Real;
begin
  Result := pSalarioBruto - (pSalarioBruto * ALIQUOTA_INSS);
end;

procedure TfrmPrincipal.validarCampos;
begin
  if edtSalario.Text = '' then
  begin
    ShowMessage('Informe o sal?rio');
    edtSalario.SetFocus;
    Abort;
  end;
end;

end.
