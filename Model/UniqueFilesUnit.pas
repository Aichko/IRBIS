unit UniqueFilesUnit;

interface

uses
  ReadInterfaceUnit,
  RegularExpressions;

type
  UniqueFiles = class(TInterfacedObject, ReadInterface)
  const
    name = 'UniqueFiles';
  private
    reg: TRegEx;
    count:integer;
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
    constructor create;
  end;

implementation

{ UniqueFiles }

constructor UniqueFiles.create;
begin
  Self.count := 0;
end;

function UniqueFiles.GetName: string;
begin
  result := name;
end;

procedure UniqueFiles.read(OneLogString: String);
begin
   reg:=TRegEx.Create('^.*(GET).*(pdf).*(http:(\/)(\/)95(\.)188(\.)96(\.)193(\/)cgi-bin(\/)irbis64r_01(\/)cgiirbis_64(\.)exe)');
    if reg.IsMatch(OneLogString)then
      Inc(count);
end;

function UniqueFiles.return: integer;
begin
  result := self.count;
end;

end.
