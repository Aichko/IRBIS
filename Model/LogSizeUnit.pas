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
    Filename:string;
  public
    procedure read(AccessLog: String);
    function return: integer;
    function GetFileSize(FileName: string): integer;
    function GetName: string;
    constructor create (Filename: string);
  end;

implementation

{ LogSizeUnit }

constructor LogSize.create (FileName:string);
begin
  Self.FileName:=FileName;
  Self.count := 0;
end;

function LogSize.GetName: string;
begin
  result := name;
end;

function LogSize.GetFileSize(FileName: string): integer;
var
  FS: TFilestream;
begin
  try
    FS := TFileStream.Create(FileName, fmOpenReadWrite);
  except
    Result := -1;
  end;
  if Result <> -1 then result := FS.Size;
  FS.Free;
end;

procedure LogSize.read(AccessLog: String);
begin
   GetFileSize(FileName);
end;

function LogSize.return: integer;
begin
  result := self.count;
end;
end.
