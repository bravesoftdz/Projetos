; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Cyber Manager CM-Admin
AppVerName=CM-Admin 1.9.9.19
AppPublisher=cybermgr.com
AppPublisherURL=http://www.cybermgr.com
AppSupportURL=http://www.cybermgr.com
AppUpdatesURL=http://www.cybermgr.com
DefaultDirName=C:\cybermgr
DefaultGroupName=Cyber-Manager
OutputDir=c:\
OutputBaseFilename=setup_cmadmin
ShowLanguageDialog=no

[Tasks]
Name: desktopicon; Description: Criar um �cone no &desktop; GroupDescription: �cones adicionais:
Name: startmenuicon; Description: Criar um �cone no menu &iniciar; GroupDescription: �cones adicionais:

[Files]
Source: C:\Meus Programas\CyberMgr\CMAdmin.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Meus Programas\CyberMgr\prepagobarras.fr3; DestDir: {app}; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: C:\Meus Programas\Cybermgr\Ajuda\cmhist.rtf; DestDir: {app}\ajuda; Flags: recursesubdirs createallsubdirs
Source: C:\Meus Programas\Cybermgr\Ajuda\telatarifa.rtf; DestDir: {app}\ajuda; Flags: recursesubdirs createallsubdirs

[INI]
Filename: {app}\CMAdmin.url; Section: InternetShortcut; Key: URL; String: http://www.cybermgr.com

[Icons]
Name: {group}\Cyber Manager CM-Admin; Filename: {app}\CMAdmin.exe; WorkingDir: {app}
; NOTE: The following entry contains an English phrase ("on the Web"). You are free to translate it into another language if required.
Name: {group}\P�gina do Cyber Manager na Internet; Filename: {app}\CMAdmin.url
; NOTE: The following entry contains an English phrase ("Uninstall"). You are free to translate it into another language if required.
Name: {group}\Desinstalar Cyber Manager CM-Admin; Filename: {uninstallexe}
Name: {userdesktop}\Cyber Manager CM-Admin; Filename: {app}\CMAdmin.exe; Tasks: desktopicon; WorkingDir: {app}
Name: {commonstartmenu}\Cyber Manager CM-Admin; Filename: {app}\CMAdmin.exe; Tasks: startmenuicon; WorkingDir: {app}

[Run]
; NOTE: The following entry contains an English phrase ("Launch"). You are free to translate it into another language if required.
Filename: {app}\CMAdmin.exe; Description: Executar o Cyber Manager CM-Admin; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: {app}\CMAdmin.url

[Languages]
Name: Portugues; MessagesFile: compiler:Languages\BrazilianPortuguese.isl
