unit AllPdfUnit;

interface

Uses
  //RegExpr {TRegExpr},
  ReadInterfaceUnit,
  RegularExpressions;

type
  AllPdf = Class(TInterfacedObject, ReadInterface)
  const
    name = 'AllPdf';
  private
    count: integer;
    reg: TRegEx;
  public
    procedure Read(OneLogString: String);
    function return: integer;
    function GetName: string;
    constructor create;
  End;

implementation

{ AllPdf }

constructor AllPdf.create;
begin
  Self.count := 0;
end;

function AllPdf.GetName: string;
begin
  Result := name;
end;

procedure AllPdf.Read(OneLogString: String);
begin
    reg:=TRegEx.Create('^.*(GET).*(pdf).*(http:(\/)(\/)95(\.)188(\.)96(\.)193(\/)cgi-bin(\/)irbis64r_01(\/)cgiirbis_64(\.)exe)');
    if reg.IsMatch(OneLogString)then
      Inc(count);
end;

function AllPdf.return: integer;
begin
  Result := Self.count;
end;

end.
