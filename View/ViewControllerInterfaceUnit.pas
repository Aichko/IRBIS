unit ViewControllerInterfaceUnit;

interface

Uses
  Vcl.Forms;

type
  ViewControllerInterface = interface
    Function GetForm:TForm;
    function getGeneralAnalyzedRequestsTotalRequest: string;
    function getGeneralAnalyzedRequestsAllPdf: string;
    function getGeneralAnalyzedRequestsLogSize: string;
    function getGeneralAnalyzedRequestsUniqueVisitors: string;
    function getGeneralAnalyzedRequestsValidRequests: string;
    function getGeneralAnalyzedRequestsFailedRequest: string;
    function getGeneralAnalyzedRequestsGenerationTime: string;
    function getGeneralAnalyzedRequestsUniqueFiles: string;
    function getGeneralAnalyzedRequestsUniqueStaticFiles: string;
    procedure TotalRequestsCreate(AccessLog:string);
    procedure AllPdfCreate(AccessLog:string);
    procedure LogSizeCreate(AccessLog:string);
    procedure UniqueVisitorsCreate(AcessLog:string);
    procedure ValidRequestsCreate(AcessLog:string);
    procedure FailedRequestCreate(AcessLog:string);
    procedure GenerationTimeCreate(AcessLog:string);
    procedure UniqueFilesCreate (AcessLog:string);
    procedure UniqueStaticFilesCreate (AcessLog:string);
  end;

implementation

end.
