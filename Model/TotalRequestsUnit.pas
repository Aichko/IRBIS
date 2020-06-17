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
    count: integer;
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
  self.count := 0;
end;

function TotalRequests.GetName: string;
begin
  Result := name;
end;

procedure TotalRequests.Read(OneLogString: String);
begin
  reg:=TRegEx.Create('^.*(GET (\/)cgi-bin(\/)irbis64r_01(\/)cgiirbis_64.exe(\?)C21COM=F&I21DBN=IBIS&P21DBN=IBIS HTTP(\/)1.1)');
  if reg.IsMatch(OneLogString)then
    inc(count);
end;

function TotalRequests.return: integer;
begin
  Result := Self.count;
end;

end.
