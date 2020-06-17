program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ModelControllerInterfaceUnit in 'Model\ModelControllerInterfaceUnit.pas',
  ModelControllerUnit in 'Model\ModelControllerUnit.pas',
  WindowsInterfaceUnit in 'view\WindowsInterfaceUnit.pas',
  ViewControllerInterfaceUnit in 'View\ViewControllerInterfaceUnit.pas',
  ViewControllerUnit in 'View\ViewControllerUnit.pas',
  GeneralInterfaceUnit in 'Model\GeneralInterfaceUnit.pas',
  GeneralUnit in 'Model\GeneralUnit.pas',
  regexpr in 'src\regexpr.pas',
  TotalRequestsUnit in 'Model\TotalRequestsUnit.pas',
  ReadInterfaceUnit in 'Model\ReadInterfaceUnit.pas',
  ValidRequestsUnit in 'Model\ValidRequestsUnit.pas',
  FailedRequestUnit in 'Model\FailedRequestUnit.pas',
  GenerationTimeUnit in 'Model\GenerationTimeUnit.pas',
  UniqueVisitorsUnit in 'Model\UniqueVisitorsUnit.pas',
  UniqueFilesUnit in 'Model\UniqueFilesUnit.pas',
  UniqueStaticFilesUnit in 'Model\UniqueStaticFilesUnit.pas',
  LogSizeUnit in 'Model\LogSizeUnit.pas',
  GeneralWindowsUnit in 'View\GeneralWindowsUnit.pas',
  AllPdfUnit in 'Model\AllPdfUnit.pas',
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
