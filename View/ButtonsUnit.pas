unit ButtonsUnit;

interface

uses
  ViewControllerinterfaceUnit,
  Vcl.Forms,
  Vcl.StdCtrls,
  InvironmentInterfaceUnit;

type
  Buttons = class(TInterfacedObject, InvironmentInterface)
  private

    /// <link>aggregation</link>
    AOwner: ViewControllerInterface;
  public
    procedure Destroy;
    constructor create(AOwner: ViewControllerInterface);
  end;

implementation

{ Buttons }




{ Buttons }

constructor Buttons.create(AOwner: ViewControllerInterface);
begin

end;

procedure Buttons.Destroy;
begin

end;

end.
