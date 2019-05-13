program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ButtonsUnit in 'View\ButtonsUnit.pas',
  InvironmentInterfaceUnit in 'View\InvironmentInterfaceUnit.pas',
  PanelsUnit in 'View\PanelsUnit.pas',
  ViewControllerInterfaceUnit in 'View\ViewControllerInterfaceUnit.pas',
  ViewControllerUnit in 'View\ViewControllerUnit.pas',
  regexpr in 'src\regexpr.pas',
  BandWidthUnit in 'Model\General\BandWidthUnit.pas',
  ExcludedHitsUnit in 'Model\General\ExcludedHitsUnit.pas',
  FailedRequestUnit in 'Model\General\FailedRequestUnit.pas',
  GeneralInterfaceUnit in 'Model\General\GeneralInterfaceUnit.pas',
  GeneralUnit in 'Model\General\GeneralUnit.pas',
  GenerationTimeUnit in 'Model\General\GenerationTimeUnit.pas',
  LogSizeUnit in 'Model\General\LogSizeUnit.pas',
  ModelControllerInterfaceUnit in 'Model\General\ModelControllerInterfaceUnit.pas',
  ModelControllerUnit in 'Model\General\ModelControllerUnit.pas',
  ReadInterfaceUnit in 'Model\General\ReadInterfaceUnit.pas',
  TotalRequestsUnit in 'Model\General\TotalRequestsUnit.pas',
  UniqueFilesUnit in 'Model\General\UniqueFilesUnit.pas',
  UniqueNotFoundUnit in 'Model\General\UniqueNotFoundUnit.pas',
  UniqueRefferersUnit in 'Model\General\UniqueRefferersUnit.pas',
  UniqueStaticFilesUnit in 'Model\General\UniqueStaticFilesUnit.pas',
  UniqueVisitorsUnit in 'Model\General\UniqueVisitorsUnit.pas',
  ValidRequestsUnit in 'Model\General\ValidRequestsUnit.pas',
  Windows1Unit in 'View\Windows1\Windows1Unit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
