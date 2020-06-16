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
   reg:=TRegEx.Create('^.*\.(pdf)');
    if reg.IsMatch(OneLogString)then
      Inc(count);
end;

function UniqueFiles.return: integer;
begin
  result := self.count;
end;

end.
