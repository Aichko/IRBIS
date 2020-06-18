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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    PanelTotalRequest: TPanel;
    PanelValidRequest: TPanel;
    PanelFailedrequest: TPanel;
    PanelUniqueVisitors: TPanel;
    PanelAllPdf: TPanel;
    PanelUniqueFiles: TPanel;
    PanelUniqueStaticFiles: TPanel;
    PanelGenerationTime: TPanel;
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
  //Self.Caption := ViewController1.getGeneralAnalyzedRequestsAllPdf;
  PanelAllPdf.Caption := ('Скачанных PDF ' + ViewController1.getGeneralAnalyzedRequestsAllPdf);
end;

procedure TForm1.FailedRequestsStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.FailedRequestCreate(AccessLog);
  //Self.Caption := ViewController1.getGeneralAnalyzedRequestsFailedRequest;
  PanelFailedRequest.Caption := ('Не выполненных запросов ' + ViewController1.getGeneralAnalyzedRequestsFailedRequest);
end;

procedure TForm1.generationTimeStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.GenerationTimeCreate(AccessLog);
  //Self.Caption := ViewController1.getGeneralAnalyzedRequestsGenerationTime;
  PanelgenerationTime.Caption := ('Время выполнения ' + ViewController1.getGeneralAnalyzedRequestsGenerationTime + ' сек.');
end;

function TForm1.getAccessLog: string;
begin
  Result := AccessLog;
end;

procedure TForm1.LogSizeStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.LogSizeCreate(AccessLog);
  //Self.Caption := ViewController1.getGeneralAnalyzedRequestsLogSize;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    AccessLog := OpenDialog1.FileName;
  Form2.ShowModal;
  if Form2.CheckboxTotalRequest.Checked = True then
  begin
    TotalRequestStart;
    PanelTotalRequest.Visible := True;
  end;
  if Form2.CheckboxValidRequests.Checked = True then
  begin
    ValidRequestsStart;
    PanelValidRequest.Visible := True;
  end;
  if Form2.CheckboxFailedRequests.Checked = True then
  begin
    FailedRequestsStart;
    PanelFailedRequest.Visible := True;
  end;
  if Form2.CheckboxUniqueVisitors.Checked = True then
  begin
     UniqueVisitorsStart;
     PanelUniqueVisitors.Visible := True;
  End;
  if Form2.CheckboxAllPdf.Checked = True then
  begin
     AllPdfStart;
     PanelAllPdf.Visible := True;
  end;
  if Form2.CheckboxUniqueFiles.Checked = True then
  begin
     UniqueFilesStart;
     PanelUniqueFiles.Visible := True;
  end;
  if Form2.CheckboxUniqueStaticFiles.Checked = True then
  begin
     UniqueStaticFilesStart;
     PanelUniqueStaticFiles.Visible := True;
  end;
  if Form2.CheckboxLogSize.Checked = True then
  begin
     LogSizeStart;
  end;
  if Form2.CheckboxGenerationTime.Checked = True then
  begin
     GenerationTimeStart;
     PanelGenerationTime.Visible := True;
  end;

end;

procedure TForm1.N3Click(Sender: TObject);

begin
  Close;
end;

procedure TForm1.UniqueFilesStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.UniqueFilesCreate(AccessLog);
  //Self.Caption := ViewController1.getGeneralAnalyzedRequestsUniqueFiles;
  PanelUniqueFiles.Caption := ('Скачано уникальных файлов ' + ViewController1.getGeneralAnalyzedRequestsUniqueFiles);
end;

procedure TForm1.TotalRequestStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.TotalRequestsCreate(AccessLog);
  //Self.Caption := ViewController1.getGeneralAnalyzedRequestsTotalRequest;
  PanelTotalRequest.Caption := ('Всего запросов ' + ViewController1.getGeneralAnalyzedRequestsTotalRequest);
end;

procedure TForm1.UniqueStaticFilesStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.UniqueStaticFilesCreate(AccessLog);
  //Self.Caption := ViewController1.getGeneralAnalyzedRequestsUniqueStaticFiles;
  PanelUniqueStaticFiles.Caption := ('Всего запросов ' + ViewController1.getGeneralAnalyzedRequestsUniqueStaticFiles);
end;

procedure TForm1.UniqueVisitorsStart;

begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.UniqueVisitorsCreate(AccessLog);
  //Self.Caption := ViewController1.getGeneralAnalyzedRequestsUniqueVisitors;
  PanelUniqueVisitors.Caption := ('Уникальных посетителей ' + ViewController1.getGeneralAnalyzedRequestsUniqueVisitors);
end;

procedure TForm1.ValidRequestsStart;
begin
  ViewController1 := ViewController.Create(Self);
  ViewController1.ValidRequestsCreate(AccessLog);
  //Self.Caption := ViewController1.getGeneralAnalyzedRequestsValidRequests;
  PanelUniqueStaticFiles.Caption := ('Выполненных запросов ' + ViewController1.getGeneralAnalyzedRequestsValidRequests);
end;

end.
