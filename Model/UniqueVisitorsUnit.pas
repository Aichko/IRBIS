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
    count, n, total, z: integer;
    reg: TRegEx;
    Options: TRegExOptions;
    A, B: TMatchCollection;
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
  self.count := 1;
  self.n := 0;
  z:=1;
end;

function UniqueVisitors.GetName: string;
begin
  result := name;
end;

procedure UniqueVisitors.read(OneLogString: String);
var
  ip, i, t: integer;
  s: string;
label
  gotoStart;
begin
  s := '^.*(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})';
  reg := TRegEx.create(s);
  if reg.IsMatch(OneLogString) then
  begin
    if z = 1 then
      A := reg.Matches(OneLogString, s);
    B := reg.Matches(OneLogString, s);
    for i := 0 to count-1 do
      If B.Item[n].Value = A.Item[i].Value then
        inc(t);
    if t = 0 then
    begin
      inc(count);
      A := reg.Matches(OneLogString, s);
    end;
    t := 0;
  end;
  z:=0;
  inc(n);
  total := A.count - 1;
end;

function UniqueVisitors.return: integer;
begin
  result := self.total;
end;

end.
