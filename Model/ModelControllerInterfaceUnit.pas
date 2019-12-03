unit ModelControllerInterfaceUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  ReadInterfaceUnit;

type
  ModelControllerInterface = interface
    function getGeneralAnalyzedRequests:  TList<ReadInterface>;
    procedure TotalRequestsCreate(AccessLog:string);
    procedure AllPdfCreate(AccessLog:string);
    procedure UniqueVisitorsCreate(AccessLog:string);
  end;

implementation

end.
