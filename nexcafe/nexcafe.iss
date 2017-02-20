; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

; Na linha abaixo � definido o nome do programa
#define NexServDescr "NexCaf� Servidor" 
#define NexServExe "NexServ.exe"

#define NexAdminDescr "NexCaf� Admin" 
#define NexAdminExe "NexAdmin.exe"

#define NexGuardDescr "NexCaf� Guard" 
#define NexGuardExe "NexGuard.exe"

[Setup]
AppName=NexCaf�
AppVerName=NexCaf� X210
AppPublisherURL=http://www.nexcafe.com.br
AppSupportURL=http://www.nexcafe.com.br
AppUpdatesURL=http://www.nexcafe.com.br
DefaultDirName=C:\nexcafe
DefaultGroupName=NexCaf�
OutputDir=c:\instaladores
DirExistsWarning=No
OutputBaseFilename=setup_nexcafe_

[Types]
Name: "Servidor"; Description: "Servidor / Admin"
Name: "Admin";   Description: "Admin"
Name: "Cliente"; Description: "M�quina Cliente"

[Components]
Name: "Servidor"; Description: "Servidor / Admin"; Types: Servidor
Name: "Admin"; Description: "Servidor / Admin"; Types: Admin
Name: "Cliente"; Description: "Servidor / Admin"; Types: Cliente

[Tasks]
; NOTE: The following entry contains English phrases ("Create a desktop icon" and "Additional icons"). You are free to translate them into another language if required.
Name: desktopicon; Description: Criar um �cone no &desktop; Components: Servidor; GroupDescription: �cones adicionais:
; NOTE: The following entry contains English phrases ("Create a Quick Launch icon" and "Additional icons"). You are free to translate them into another language if required.
; Name: "quicklaunchicon"; Description: "Create a &Quick Launch icon"; GroupDescription: "�cones adicionais:"; Flags: unchecked
Name: autostarticon; Description: Executar o NexServ automaticamente ao iniciar Windows; Components: Servidor; GroupDescription: �cones adicionais:

[Files]
Source: C:\Meus Programas\nexcafe\NexServ.exe; DestDir: {app}; Flags: ignoreversion; Components: Servidor
Source: C:\meus programas\nexcafe\nexguard.exe; DestDir: {app}\Atualiza; Flags: ignoreversion; Components: Servidor
Source: C:\meus programas\nexcafe\nexguard.exe; DestDir: {app}; Flags: ignoreversion; Components: Cliente
Source: C:\Meus Programas\nexcafe\NexAdmin.exe; DestDir: {app}; Flags: ignoreversion; Components: Servidor Admin
Source: C:\Meus Programas\nexcafe\prepagobarras.fr3; DestDir: {app}; Flags: ignoreversion; Components: Servidor Admin

[INI]
Filename: {app}\Nexcafe.url; Section: InternetShortcut; Key: URL; String: http://www.nexcafe.com.br

[Icons]
Name: {group}\NexCaf� NexGuard; Filename: {app}\NexGuard.exe; Components: Cliente; WorkingDir: {app}
Name: {group}\NexCaf� NexServ; Filename: {app}\NexServ.exe; Components: Servidor; WorkingDir: {app}
Name: {group}\NexCaf� NexAdmin; Filename: {app}\NexAdmin.exe; Components: Servidor Admin; WorkingDir: {app}
Name: {group}\Desinstalar NexCaf�; Filename: {uninstallexe}
Name: {userdesktop}\NexCaf� NexServ; Filename: {app}\NexServ.exe; Tasks: desktopicon; WorkingDir: {app}
Name: {userdesktop}\NexCaf� NexAdmin; Filename: {app}\NexAdmin.exe; Tasks: desktopicon; WorkingDir: {app}
;Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\NexCaf� NexServ"; Filename: "{app}\NexServ.exe"; Tasks: quicklaunchicon
Name: {commonstartup}\NexCaf� NexServ; Filename: {app}\NexServ.exe; Tasks: autostarticon; WorkingDir: {app}

[UninstallRun]
Filename: {app}\nexguard.exe; Parameters: REMOVEALL

[Registry]
Root: HKCU; Subkey: "Software\NexCafe"; Flags: uninsdeletekey; ValueType: dword; ValueName: "Installed"; ValueData: "20101";

[UninstallDelete]
Type: files; Name: {app}\Nexcafe.url

[Languages]
Name: Portugues; MessagesFile: compiler:Languages\BrazilianPortuguese.isl