unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    CheckBoxAllPdf: TCheckBox;
    Label1: TLabel;
    CheckBoxFailedRequests: TCheckBox;
    CheckBoxGenerationTime: TCheckBox;
    CheckBoxLogSize: TCheckBox;
    CheckBoxUniqueFiles: TCheckBox;
    CheckBoxUniqueStaticFiles: TCheckBox;
    CheckBoxTotalRequest: TCheckBox;
    CheckBoxValidRequests: TCheckBox;
    CheckBoxUniqueVisitors: TCheckBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Close;
end;

end.
