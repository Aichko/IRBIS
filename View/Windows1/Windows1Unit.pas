unit Windows1Unit;

interface

Uses
  Vcl.Controls,
  InvironmentInterfaceUnit,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  ViewControllerInterfaceUnit;

type
  Windows1 = Class(TInterfacedObject, InvironmentInterface)
  private
    LeftPanel: TPanel;
    CenterPanel: TPanel;
    Button: TButton;
    /// <link>aggregation</link>
    AOwner: ViewControllerInterface;
    procedure LeftPanelCreate;
    procedure LeftPanelDestroy;
    procedure CenterPanelCreate;
    procedure CenterPanelDestroy;
  public
    procedure Destroy;
    constructor create(AOwner: ViewControllerInterface);
  End;

implementation

{ Windows1 }

procedure Windows1.CenterPanelCreate;
begin

end;

procedure Windows1.CenterPanelDestroy;
begin

end;

constructor Windows1.create(AOwner: ViewControllerInterface);
begin
  Self.AOwner := AOwner;
  LeftPanelCreate;
end;

procedure Windows1.Destroy;
begin

end;

procedure Windows1.LeftPanelCreate;
begin
  LeftPanel:= TPanel.Create(AOwner.GetForm);
  with LeftPanel do begin
    Parent := AOwner.GetForm;
    Align := alLeft;

  end;

end;

procedure Windows1.LeftPanelDestroy;
begin
  LeftPanel.parent := nil;
end;

end.
