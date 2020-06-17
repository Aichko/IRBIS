unit Unit1;

interface

uses
  ViewControllerUnit {ViewController} ,
  ViewControllerInterfaceUnit {ViewControllerInterface} ,
  Vcl.Forms, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Dialogs, Vcl.StdCtrls {TForm}, Unit2;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OpenDialog1: TOpenDialog;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure AllPdfStart;
    procedure TotalRequestStart;
    procedure UniqueVisitorsStart;
    procedure LogSizeStart;
    procedure ValidRequestsStart;
    procedure FailedRequestsStart;
    procedure GenerationTimeStart;
    procedure UniqueFilesStart;
    procedure UniqueStaticFilesStart;
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

procedure TForm1.AllPdfStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.AllPdfCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsAllPdf;
end;

procedure TForm1.FailedRequestsStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.FailedRequestCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsFailedRequest;
end;

procedure TForm1.generationTimeStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.GenerationTimeCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsGenerationTime;
end;

function TForm1.getAccessLog: string;
begin
  Result := AccessLog;
end;

procedure TForm1.LogSizeStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.LogSizeCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsLogSize;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    AccessLog := OpenDialog1.FileName;
  Form2.ShowModal;
  if Form2.CheckboxTotalRequest.Checked = True then
    TotalRequestStart;
  if Form2.CheckboxValidRequests.Checked = True then
    ValidRequestsStart;
  if Form2.CheckboxFailedRequests.Checked = True then
    FailedRequestsStart;
  if Form2.CheckboxUniqueVisitors.Checked = True then
    UniqueVisitorsStart;
  if Form2.CheckboxAllPdf.Checked = True then
    AllPdfStart;
  if Form2.CheckboxUniqueFiles.Checked = True then
    UniqueFilesStart;
  if Form2.CheckboxUniqueStaticFiles.Checked = True then
    UniqueStaticFilesStart;
  if Form2.CheckboxLogSize.Checked = True then
    LogSizeStart;
  if Form2.CheckboxGenerationTime.Checked = True then
    GenerationTimeStart;



end;

procedure TForm1.N3Click(Sender: TObject);

begin
  Close;
end;

procedure TForm1.UniqueFilesStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.UniqueFilesCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsUniqueFiles;
end;

procedure TForm1.TotalRequestStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.TotalRequestsCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsTotalRequest;
end;

procedure TForm1.UniqueStaticFilesStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.UniqueStaticFilesCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsUniqueStaticFiles;
end;

procedure TForm1.UniqueVisitorsStart;

begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.UniqueVisitorsCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsUniqueVisitors;
end;

procedure TForm1.ValidRequestsStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.ValidRequestsCreate(AccessLog);
  Self.Caption := ViewController1.getGeneralAnalyzedRequestsValidRequests;
end;

end.
