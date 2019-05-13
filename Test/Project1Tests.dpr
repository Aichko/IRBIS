program Project1Tests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  TestGeneralUnit in 'TestGeneralUnit.pas',
  DUnitTestRunner,
  regexpr in '..\src\regexpr.pas',
  BandWidthUnit in '..\Model\General\BandWidthUnit.pas',
  ExcludedHitsUnit in '..\Model\General\ExcludedHitsUnit.pas',
  FailedRequestUnit in '..\Model\General\FailedRequestUnit.pas',
  GeneralInterfaceUnit in '..\Model\General\GeneralInterfaceUnit.pas',
  GeneralUnit in '..\Model\General\GeneralUnit.pas',
  GenerationTimeUnit in '..\Model\General\GenerationTimeUnit.pas',
  LogSizeUnit in '..\Model\General\LogSizeUnit.pas',
  ModelControllerInterfaceUnit in '..\Model\General\ModelControllerInterfaceUnit.pas',
  ModelControllerUnit in '..\Model\General\ModelControllerUnit.pas',
  ReadInterfaceUnit in '..\Model\General\ReadInterfaceUnit.pas',
  TotalRequestsUnit in '..\Model\General\TotalRequestsUnit.pas',
  UniqueFilesUnit in '..\Model\General\UniqueFilesUnit.pas',
  UniqueNotFoundUnit in '..\Model\General\UniqueNotFoundUnit.pas',
  UniqueRefferersUnit in '..\Model\General\UniqueRefferersUnit.pas',
  UniqueStaticFilesUnit in '..\Model\General\UniqueStaticFilesUnit.pas',
  UniqueVisitorsUnit in '..\Model\General\UniqueVisitorsUnit.pas',
  ValidRequestsUnit in '..\Model\General\ValidRequestsUnit.pas',
  Windows1Unit in '..\Model\Windows1Unit.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

