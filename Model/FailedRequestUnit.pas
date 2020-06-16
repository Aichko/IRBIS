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
    count, bot, total: integer;
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
  reg:=TRegEx.Create('^.*(" 4)|^.*(200 110)');
  if reg.IsMatch(OneLogString)then
    inc(count);
end;

function FailedRequest.return: integer;
begin
  result:=self.count;
end;

end.
