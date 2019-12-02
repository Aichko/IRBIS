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
    procedure TotalRequestsCreate;
    procedure AllPdfCreate;
    procedure UniqueVisitorsCreate;
  end;

implementation

end.
