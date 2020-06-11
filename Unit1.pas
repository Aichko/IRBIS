unit Unit1;

interface

uses
  ViewControllerUnit {ViewController} ,
  ViewControllerInterfaceUnit {ViewControllerInterface} ,
  Vcl.Forms, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Dialogs {TForm};

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OpenDialog1: TOpenDialog;
    AllPdf1: TMenuItem;
    UniqueVisitors1: TMenuItem;
    LogSize1: TMenuItem;
    ValidRequests1: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure AllPdf1Click(Sender: TObject);
    procedure UniqueVisitors1Click(Sender: TObject);
    procedure LogSize1Click(Sender: TObject);
    procedure ValidRequests1Click(Sender: TObject);
  private
    AccessLog: string;
    /// <link>aggregation</link>
    ViewController1: ViewControllerInterface;
  public
    function getAccessLog: string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AllPdf1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    AccessLog := OpenDialog1.FileName;
  ViewController1 := ViewController.Create(Self);
  ViewController1.AllPdfCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsAllPdf;
end;

function TForm1.getAccessLog: string;
begin
  Result := AccessLog;
end;

procedure TForm1.LogSize1Click(Sender: TObject);
begin
   if OpenDialog1.Execute then
    AccessLog := OpenDialog1.FileName;
  ViewController1 := ViewController.Create(Self);
  ViewController1.LogSizeCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsLogSize;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    AccessLog := OpenDialog1.FileName;
  ViewController1 := ViewController.Create(Self);
  ViewController1.TotalRequestsCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsTotalRequest;
end;

procedure TForm1.N3Click(Sender: TObject);

begin
  Close;
end;

procedure TForm1.UniqueVisitors1Click(Sender: TObject);

begin
  if OpenDialog1.Execute then
    AccessLog := OpenDialog1.FileName;
    ViewController1 := ViewController.Create(Self);
  ViewController1.UniqueVisitorsCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsUniqueVisitors;
end;

procedure TForm1.ValidRequests1Click(Sender: TObject);
begin
   if OpenDialog1.Execute then
    AccessLog := OpenDialog1.FileName;
    ViewController1 := ViewController.Create(Self);
  ViewController1.UniqueVisitorsCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsValidRequests;
end;

end.
