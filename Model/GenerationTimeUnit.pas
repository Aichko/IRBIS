unit GenerationTimeUnit;

interface

uses
  readInterfaceUnit,
  System.SysUtils,
  System.DateUtils;

type
  GenerationTime = class(TInterfacedObject, ReadInterface)
  const
    name = 'GenerationTime';
  private
    Start, Stop: TDateTime;
    Elapsed: int64;
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
    constructor create;
  end;

implementation

{ GenerationTime }

constructor GenerationTime.create;
begin
  Self.Elapsed := 0;
  Start:= Now; //засекли начало выполнения операции
end;

function GenerationTime.GetName: string;
begin
  result := name;
end;

procedure GenerationTime.read(OneLogString: String);
begin

end;

function GenerationTime.return: integer;
begin
  Stop:=Now;  //засекли окончание выполнения операции
  Elapsed:=SecondsBetween(Start, Stop);//время в секундах
  result := self.Elapsed;
end;

end.
