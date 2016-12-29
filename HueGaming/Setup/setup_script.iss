;Inno setup script for Hue Gaming

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8AC264C9-3640-4B9C-A08A-51709B280A5E}
AppName=Hue Gaming
AppVersion=0.1
;AppVerName=HueGaming 0.1
AppPublisher=Quantix 
AppPublisherURL=http://quantix.co/
AppSupportURL=http://quantix.co/
AppUpdatesURL=http://quantix.co/
DefaultDirName={pf}\Hue Gaming
DisableProgramGroupPage=yes
LicenseFile=..\..\docs\LICENSE
;OutputDir=TBD
OutputBaseFilename=HueGaming-setup
DisableWelcomePage=false
WizardImageFile=..\Resource\HueGamingWizardImage.bmp
Compression=lzma
SolidCompression=yes
SetupIconFile=..\Resource\HueGaming.ico


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\bin\Release\*"; DestDir: "{app}"; Excludes: "*.pdb,*.*xml, *.vshost.*"

[Icons]
Name: "{commonprograms}\HueGaming"; Filename: "{app}\HueGaming.exe"
Name: "{commondesktop}\HueGaming"; Filename: "{app}\HueGaming.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\HueGaming.exe"; Description: "{cm:LaunchProgram,HueGaming}"; Flags: nowait postinstall skipifsilent

