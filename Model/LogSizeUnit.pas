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
    count:integer;
  public
    procedure read(AccessLog: String);
    function return: integer;
    function GetFileSize(AccessLog: string): integer;
    function GetName: string;
    constructor create;
  end;

implementation

{ LogSizeUnit }

constructor LogSize.create;
begin
  Self.count := 0;
end;

function LogSize.GetName: string;
begin
  result := name;
end;

function LogSize.GetFileSize(AccessLog: string): integer;
var
  FS: TFilestream;
begin
  try
    FS := TFileStream.Create(AccessLog, fmOpenReadWrite);
  except
    Result := -1;
  end;
  if Result <> -1 then result := FS.Size;
  FS.Free;
end;

procedure LogSize.read(AccessLog: String);
begin
   GetFileSize(AccessLog);
end;

function LogSize.return: integer;
begin
  result := self.count;
end;
end.
