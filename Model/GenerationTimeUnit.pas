unit GenerationTimeUnit;

interface

uses
  readInterfaceUnit,
  System.DateUtils;

type
  GenerationTime = class(TInterfacedObject, ReadInterface)
  const
    name = 'GenerationTime';
  private
    Start, Stop: TDateTime;
    Elapsed: int64;
  public
    procedure read(OneLogString: String);
    function return: integer;
    function GetName: string;
  end;

implementation

{ GenerationTime }

function GenerationTime.GetName: string;
begin
  result := name;
end;

procedure GenerationTime.read(OneLogString: String);
begin
  //Start:= Now; //������� ������ ���������� ��������
end;

function GenerationTime.return: integer;
begin
  //Stop:=Now;  //������� ��������� ���������� ��������
  Elapsed:=SecondsBetween(Start, Stop);//����� � ��������
  result := 0;
end;

end.
