unit ViewControllerInterfaceUnit;

interface

Uses
  Vcl.Forms;

type
  ViewControllerInterface = interface
    Function GetForm:TForm;
    function getGeneralAnalyzedRequestsTotalRequest: string;
    function getGeneralAnalyzedRequestsAllPdf: string;
    function getGeneralAnalyzedRequestsUniqueVisitors: string;
    procedure TotalRequestsCreate(AccessLog:string);
    procedure AllPdfCreate(AccessLog:string);
    procedure UniqueVisitorsCreate(AcessLog:string);
  end;

implementation

end.
