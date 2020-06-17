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
    count, total, bot: int64;
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
  count := 0;
  bot := 0;
  self.total := 0;
end;

function ValidRequests.GetName: string;
begin
  Result := name;
end;

procedure ValidRequests.read(OneLogString: String);
begin
  reg1 := TRegEx.create('^.*(GET (\/)cgi-bin(\/)irbis64r_01(\/)cgiirbis_64.exe(\?)C21COM=F&I21DBN=IBIS&P21DBN=IBIS HTTP(\/)1.1).*(bot)');
  if reg1.IsMatch(OneLogString) then
    Inc(bot);
  reg2:=TRegEx.create('^.*(GET (\/)cgi-bin(\/)irbis64r_01(\/)cgiirbis_64.exe(\?)C21COM=F&I21DBN=IBIS&P21DBN=IBIS HTTP(\/)1.1)');
  if reg2.IsMatch(OneLogString) then
    Inc(count);
  total:= count - bot;
end;

function ValidRequests.return: integer;
begin
  Result := self.total;
end;

end.
