unit ViewControllerUnit;

interface

uses
  GeneralWindowsUnit,
  System.Generics.Collections {TDictionary} ,
  ReadInterfaceUnit,
  SysUtils,
  Vcl.Forms,
  GeneralUnit,
  WindowsInterfaceUnit,
  ViewControllerInterfaceUnit,
  ModelControllerUnit {ModelControllerUnit} ,
  ModelControllerInterfaceUnit {ModelControllerInterface};

type
  ViewController = Class(TInterfacedObject, ViewControllerInterface)
  private
    /// <link>aggregation</link>
    Windows1: WindowsInterface;
    AOwner: TForm;
    /// <link>aggregation</link>
    ModuleController: ModelControllerInterface;
    procedure DestroyInvironment;
  public
    function getGeneralAnalyzedRequestsTotalRequest: string;
    function getGeneralAnalyzedRequestsAllPdf: string;
    function getGeneralAnalyzedRequestsLogSize: string;
    function getGeneralAnalyzedRequestsUniqueVisitors: string;
    constructor create(AOwner: TForm);
    Function GetForm: TForm;
    procedure TotalRequestsCreate(AccessLog:string);
    procedure AllPdfCreate(AccessLog:string);
    procedure LogSizeCreate(AccessLog:string);
    Procedure UniqueVisitorsCreate(AccessLog:string);
  End;

implementation

{ ViewController }

procedure ViewController.AllPdfCreate(AccessLog:string);
begin
  ModuleController.AllPdfCreate(AccessLog);
end;

procedure ViewController.LogSizeCreate(AccessLog:string);
begin
  ModuleController.LogSizeCreate(AccessLog);
end;

constructor ViewController.create(AOwner: TForm);
var
  List: ReadInterface;
begin
  Self.AOwner := AOwner;
  ModuleController := ModelController.create();

  Windows1 := GeneralWindows.create(AOwner);
  { for List in ModuleController.getGeneralAnalyzedRequests do
    if List.GetName = 'TotalRequest' then
    AOwner.Caption := IntToStr(List.return); }
end;

procedure ViewController.DestroyInvironment;
begin
  if assigned(Windows1) then
    Windows1.Destroy;
end;

function ViewController.GetForm: TForm;
begin
  Result := AOwner;
end;

function ViewController.getGeneralAnalyzedRequestsUniqueVisitors: string;
var
  List: ReadInterface;

begin
  Result := '';
  for List in ModuleController.getGeneralAnalyzedRequests do
    if List.GetName = 'UniqueVisitors' then
      Result := IntToStr(List.return);
end;

function ViewController.getGeneralAnalyzedRequestsAllPdf: string;

var

  List: ReadInterface;

begin
  Result := '';
  for List in ModuleController.getGeneralAnalyzedRequests do
    if List.GetName = 'AllPdf' then
      Result := IntToStr(List.return);

end;

function ViewController.getGeneralAnalyzedRequestsLogSize: string;

var

  List: ReadInterface;

begin
  Result := '';
  for List in ModuleController.getGeneralAnalyzedRequests do
    if List.GetName = 'LogSize' then
      Result := IntToStr(List.return);

end;

function ViewController.getGeneralAnalyzedRequestsTotalRequest: string;

var

  List: ReadInterface;

begin
  Result := '';
  for List in ModuleController.getGeneralAnalyzedRequests do
    if List.GetName = 'TotalRequest' then
      Result := IntToStr(List.return);
end;

procedure ViewController.TotalRequestsCreate(AccessLog:string);

begin
  ModuleController.TotalRequestsCreate(AccessLog);
end;

procedure ViewController.UniqueVisitorsCreate;
begin
  ModuleController.UniqueVisitorsCreate(AccessLog);
end;

end.
