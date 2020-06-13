unit ModelControllerUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  TotalRequestsUnit,
  AllPdfUnit,
  LogSizeUnit,
  ReadInterfaceUnit,
  UniqueVisitorsUnit,
  ValidRequestsUnit,
  FailedRequestUnit,
  GenerationTimeUnit,
  GeneralUnit,
  GeneralInterfaceUnit {GeneralInterface} ,
  ModelControllerInterfaceUnit {ModelControllerInterface};

// const
// AccessLog = 'irbislog_copy_01.02.2013.log';

type
  ModelController = class(TInterfacedObject, ModelControllerInterface)
  private
    /// <link>aggregation</link>
    GeneralInterface1: GeneralInterface;
    ReadList: TList<ReadInterface>;
  public
    function getGeneralAnalyzedRequests: TList<ReadInterface>;
    constructor create;
    procedure TotalRequestsCreate(AccessLog: string);
    procedure AllPdfCreate(AccessLog: string);
    procedure LogSizeCreate(AccessLog: string);
    procedure UniqueVisitorsCreate(AccessLog: string);
    procedure ValidRequestsCreate(AccessLog: string);
    procedure FailedRequestCreate(AccessLog: string);
    procedure GenerationTimeCreate(AccessLog: string);
  end;

implementation

{ ModelController }

procedure ModelController.AllPdfCreate(AccessLog: string);
begin
  ReadList.Add(AllPdf.create);

  // GeneralInterface1 := General.Create('irbislog_copy_01.02.2013.log', 0, 1, ReadList);
  GeneralInterface1 := General.create(AccessLog, 0, 1, ReadList);
  GeneralInterface1.Read;
end;

procedure ModelController.LogSizeCreate(AccessLog: string);
begin
  ReadList.Add(LogSize.create);

  // GeneralInterface1 := General.Create('irbislog_copy_01.02.2013.log', 0, 1, ReadList);
  GeneralInterface1 := General.create(AccessLog, 0, 1, ReadList);
  GeneralInterface1.Read;
end;

procedure ModelController.TotalRequestsCreate(AccessLog: string);

begin
  ReadList.Add(TotalRequests.create);

  // GeneralInterface1 := General.Create('irbislog_copy_01.02.2013.log', 0, 1, ReadList);
  GeneralInterface1 := General.create(AccessLog, 0, 1, ReadList);
  GeneralInterface1.Read;
end;

procedure ModelController.UniqueVisitorsCreate(AccessLog: string);
begin
  ReadList.Add(UniqueVisitors.create);

  // GeneralInterface1 := General.Create('irbislog_copy_01.02.2013.log', 0, 1, ReadList);
  GeneralInterface1 := General.create(AccessLog, 0, 1, ReadList);
  GeneralInterface1.Read;
end;

procedure ModelController.ValidRequestsCreate(AccessLog: string);
begin
  ReadList.Add(ValidRequests.create);

  // GeneralInterface1 := General.Create('irbislog_copy_01.02.2013.log', 0, 1, ReadList);
  GeneralInterface1 := General.create(AccessLog, 0, 1, ReadList);
  GeneralInterface1.Read;
end;

procedure ModelController.FailedRequestCreate(AccessLog: string);

begin
  ReadList.Add(FailedRequest.create);

  // GeneralInterface1 := General.Create('irbislog_copy_01.02.2013.log', 0, 1, ReadList);
  GeneralInterface1 := General.create(AccessLog, 0, 1, ReadList);
  GeneralInterface1.Read;
end;

procedure ModelController.GenerationTimeCreate(AccessLog: string);

begin
  ReadList.Add(GenerationTime.create);

  // GeneralInterface1 := General.Create('irbislog_copy_01.02.2013.log', 0, 1, ReadList);
  GeneralInterface1 := General.create(AccessLog, 0, 1, ReadList);
  GeneralInterface1.Read;
end;

constructor ModelController.create;

begin
  ReadList := TList<ReadInterface>.create;

end;

function ModelController.getGeneralAnalyzedRequests: TList<ReadInterface>;
begin
  Result := TList<ReadInterface>.create;
  Result := GeneralInterface1.getAnalyzedRequests;
end;

end.
