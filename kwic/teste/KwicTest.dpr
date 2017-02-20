{##############################################################################}
{# NexusDB Fulltext Index example: TestFT.dpr 3.51                            #}
{# Copyright (c) NexusDB Pty. Ltd. 2003-2014                                  #}
{# All rights reserved.                                                       #}
{##############################################################################}
{# NexusDB Fulltext Index example: Project File                               #}
{##############################################################################}

{$I nxDefine.inc}

// JCL_DEBUG_EXPERT_GENERATEJDBG OFF
// JCL_DEBUG_EXPERT_INSERTJDBG OFF
program KwicTest;

uses
  Forms,
  unTestFT in 'unTestFT.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

