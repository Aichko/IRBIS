unit UniqueVisitorsUnit;

interface

uses
  ReadInterfaceUnit,
  RegularExpressions;

type
  UniqueVisitors = Class(TInterfacedObject, ReadInterface)
  const
    name = 'UniqueVisitors';
  private
    count: integer;
    reg: TRegEx;
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
    constructor create;
  End;

implementation

{ UniqueVisitors }

constructor UniqueVisitors.create;
begin
  self.count := 0;
end;

function UniqueVisitors.GetName: string;
begin
  result := name;
end;

procedure UniqueVisitors.read(OneLogString: String);
var
 ip:integer;
begin
  { TODO : уникальные посетители, по дню, вычисляешь IP в текущем дне  и находишь среди них уникальные }
  reg := TRegEx.create('\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}');
  ip:=reg.Matches(OneLogString).Count;
  count:=count+ip;
end;

function UniqueVisitors.return: integer;
begin
  result := self.count;
end;

end.
