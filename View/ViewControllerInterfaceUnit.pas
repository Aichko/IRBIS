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
    procedure TotalRequestsCreate(AccessLog:string);
    procedure AllPdfCreate(AccessLog:string);
    procedure LogSizeCreate(AccessLog:string);
    procedure UniqueVisitorsCreate(AcessLog:string);
    procedure ValidRequestsCreate(AcessLog:string);
  end;

implementation

end.
