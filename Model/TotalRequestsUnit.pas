unit TotalRequestsUnit;

interface

uses
  ReadInterfaceUnit,
  RegularExpressions;

type
  TotalRequests = class(TInterfacedObject, ReadInterface)
  const
    name = 'TotalRequest';
  private
    count, bot, total: integer;
    reg: TRegEx;
  public
    procedure Read(OneLogString: String);
    function return: integer;
    function GetName: string;
    constructor create;
  end;

implementation

{ TotalRequests }

constructor TotalRequests.create;
begin
  Self.total := 0;
  self.count := 0;
  self.bot := 0;
end;

function TotalRequests.GetName: string;
begin
  Result := name;
end;

procedure TotalRequests.Read(OneLogString: String);
begin
  reg:=TRegEx.Create('^.*(bot)');
  if reg.IsMatch(OneLogString)then
    inc(bot);
  Inc(count);
  total := count - bot;
end;

function TotalRequests.return: integer;
begin
  Result := Self.total;
end;

end.
