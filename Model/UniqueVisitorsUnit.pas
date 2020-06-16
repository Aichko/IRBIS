unit UniqueVisitorsUnit;

interface

uses
  ReadInterfaceUnit,
  RegularExpressions,
  SysUtils;

type
  UniqueVisitors = Class(TInterfacedObject, ReadInterface)
  const
    name = 'UniqueVisitors';
  private
    count: integer;
    date, CurDate: string;
    reg, regD: TRegEx;
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
  CurDate := '';
end;

function UniqueVisitors.GetName: string;
begin
  result := name;
end;

procedure UniqueVisitors.read(OneLogString: String);
var
 ip,i,t:integer;
 A : array of string;
label
  gotoStart;
begin
  //regD:= TRegEx.Create('\w{3}(\/)\d{4}:');
  //date:= regD.match;
  {gotoStart;
  if Date  = CurDate then
  begin}
  //reg := TRegEx.create('\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}');
  {for i := 1 to count do
    if reg.IsMatch(OneLogString) = A[i] then
      Inc(t);
  if t = 0 then
  begin
    Inc(count);
    A[i] := reg.Matches;
  end;
  t=0;
  end
  else
  begin
    count := 1;
    t := 0;
    curDate := date;
  end;}
end;

function UniqueVisitors.return: integer;
begin
  result := self.count;
end;

end.
