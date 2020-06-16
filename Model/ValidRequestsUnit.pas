unit ValidRequestsUnit;

interface

Uses
  ReadInterfaceUnit,
  RegularExpressions;

type
  ValidRequests = Class(TInterfacedObject, ReadInterface)
  const
    name = 'ValidRequests';
  private
    count, total, err: int64;
    reg1: TRegEx;
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
    constructor create;
  End;

implementation

{ ValidRequest }

constructor ValidRequests.create;
begin
  self.count := 0;
  err := 0;
  total := 0;
end;

function ValidRequests.GetName: string;
begin
  Result := name;
end;

procedure ValidRequests.read(OneLogString: String);
begin
  reg1:=TRegEx.Create('^.*(" 4)|^.*(200 110)|^.*(bot)');
  if reg1.IsMatch(OneLogString)then
    inc(err);
  Inc(total);
  count := total - err;
end;

function ValidRequests.return: integer;
begin
  result:=self.count;
end;

end.
