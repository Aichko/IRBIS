unit ValidRequestsUnit;

interface

Uses
  ReadInterfaceUnit,
  RegularExpressions;

type
  ValidRequests = Class(TInterfacedObject, ReadInterface)
  const
    name = 'ValidRequest';
  private
    count, bot, total, err: integer;
    reg1, reg2: TRegEx;
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
  Self.total := 0;
  self.count := 0;
  self.bot := 0;
end;

function ValidRequests.GetName: string;
begin
  result:=name;
end;

procedure ValidRequests.read(OneLogString: String);
begin
  reg1:=TRegEx.Create('^.*(bot)');
  reg2:=TRegEx.Create('^.*("-" 4)');
  if reg1.IsMatch(OneLogString)then
    inc(bot);
  if reg2.IsMatch(OneLogString)then
    inc(err);
  Inc(count);
  total := count - bot - err;
end;

function ValidRequests.return: integer;
begin
  return:=self.total;
end;

end.
