unit untDivisao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblDividendo: TLabel;
    Label2: TLabel;
    lblMensagem: TLabel;
    edtDividendo: TEdit;
    edtDivisor: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
    dividendo, divisor, quociente : double;
    msg : string;
    erro : boolean;
begin
    dividendo := StrToFloat(edtDividendo.Text);
    divisor := StrToFloat(edtDivisor.Text);

    try
        try
          quociente := dividendo / divisor;
          lblMensagem.Caption := FloatToStr(quociente);
        except
          on e:Exception do
              begin
                msg := 'Opa, aconteceu um erro. ';
                msg := msg + 'Tipo do erro: ' + e.ClassName + ' ';
                msg := msg + 'Mensagem: '+e.Message;
                ShowMessage(msg);
                erro := true;
              end;
        end;
    finally
        if(erro) then
            begin
                lblMensagem.Caption := 'Sinto muito, não consegui dividir';
            end;
    end;

end;

end.
