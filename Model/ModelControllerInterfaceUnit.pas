unit ModelControllerInterfaceUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  ReadInterfaceUnit;

type
  ModelControllerInterface = interface
    function getGeneralAnalyzedRequests:  TList<ReadInterface>;
    procedure TotalRequestsCreate;
    procedure AllPdfCreate;
  end;

implementation

end.
