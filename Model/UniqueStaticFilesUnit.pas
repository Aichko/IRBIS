unit UniqueStaticFilesUnit;

interface
uses
  ReadinterfaceUnit,
  RegularExpressions;

type
  UniqueStaticFiles = class(TInterfacedObject, Readinterface)
  const
    name = 'UniqueStaticFiles';
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

{ UniqueStaticFiles }

constructor UniqueStaticFiles.create;
begin
  Self.count := 0;
end;

function UniqueStaticFiles.GetName: string;
begin
  result:=name;
end;

procedure UniqueStaticFiles.read(OneLogString: String);
begin
  reg:=TRegEx.Create('^.*\.(pdf)');
    if reg.IsMatch(OneLogString)then
      Inc(count);
end;

function UniqueStaticFiles.return: integer;
begin
 result:=Self.count;
end;

end.
