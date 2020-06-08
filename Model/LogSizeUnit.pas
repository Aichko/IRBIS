unit LogSizeUnit;

interface

uses
  ReadinterfaceUnit, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  LogSize = class(TInterfacedObject, Readinterface)
  const
    name = 'LogSize';
  private

  public
    a: integer;
    procedure read(OneLogString: String);
    function return: integer;
    //function GetFileSize(FileName: string): integer;
    function GetName: string;
  end;

implementation

{ UniqueStaticFiles }

function LogSize.GetName: string;
begin
  result := name;
end;

function GetFileSize(OneLogString: string): integer;
var
  FS: TFilestream;
  a :integer;
begin
  try
    FS := TFilestream.Create(OneLogString, fmShareDenyRead);
  except
    a := -1;
  end;
  if a <> -1 then
    a := FS.Size;
  FS.Free;
end;

procedure LogSize.read(OneLogString: String);
begin
   GetFileSize(OneLogString);
end;

function LogSize.return: integer;
begin
  result := self.a;
end;
end.
