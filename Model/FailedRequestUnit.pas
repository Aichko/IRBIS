unit FailedRequestUnit;

interface
 Uses
   readinterfaceunit,
   RegularExpressions;
type
  FailedRequest = Class (TInterfacedObject, ReadInterface)
  const
    name = 'FailedRequest';
  private
    count : integer;
    reg: TRegEx;
  public
    procedure read(OneLogString:String);
    function return: integer;
    function GetName: string;
    constructor create;
  End;

implementation

{ FaikedRequest }

constructor FailedRequest.create;
begin
  self.count := 0;
end;

function FailedRequest.GetName: string;
begin
  Result := name;
end;

procedure FailedRequest.read(OneLogString: String);
begin
  reg:=TRegEx.Create('^.*(GET (\/)cgi-bin(\/)irbis64r_01(\/)cgiirbis_64.exe(\?)C21COM=F&I21DBN=IBIS&P21DBN=IBIS HTTP(\/)1.1).*(bot)');
  if reg.IsMatch(OneLogString)then
    inc(count);
end;

function FailedRequest.return: integer;
begin
  result:=self.count;
end;

end.
