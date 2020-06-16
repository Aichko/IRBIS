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
    procedure LogSizeCreate(AccessLog:string);
    procedure UniqueVisitorsCreate(AccessLog:string);
    procedure ValidRequestsCreate(AccessLog:string);
    procedure FailedRequestCreate(AccessLog:string);
    procedure GenerationTimeCreate(AccessLog:string);
    procedure UniqueFilesCreate(AccessLog:string);
    procedure UniqueStaticFilesCreate(AccessLog:string);
  end;

implementation

end.
