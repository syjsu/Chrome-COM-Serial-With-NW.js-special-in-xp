; -- MagicEClass.iss --

[Setup]
AppName=MagicEClassTeacherXP
AppVersion=1.10.2
DefaultDirName={pf}\MagicEClassTeacherXP
DefaultGroupName=MagicEClassTeacherXP
UninstallDisplayIcon={app}\main.exe
Compression=lzma2
SolidCompression=yes
OutputDir=userdocs:Inno Setup Examples Output
DisableDirPage=no

[Files]

Source: "pnacl\*.*"; DestDir: "{app}\pnacl"; Flags: recursesubdirs 
Source: "locales\*.*"; DestDir: "{app}\locales"; Flags: recursesubdirs 
Source: "PepperFlash\*.*"; DestDir: "{app}\PepperFlash"; Flags: recursesubdirs

Source: "chromedriver.exe"; DestDir: "{app}"
Source: "credits.html"; DestDir: "{app}"
Source: "d3dcompiler_47.dll"; DestDir: "{app}"
Source: "dbghelp.dll"; DestDir: "{app}"
Source: "ffmpeg.dll"; DestDir: "{app}"
Source: "icudtl.dat"; DestDir: "{app}"
Source: "libEGL.dll"; DestDir: "{app}"
Source: "libexif.dll"; DestDir: "{app}"
Source: "libGLESv2.dll"; DestDir: "{app}"
Source: "main.exe"; DestDir: "{app}"
Source: "nacl_irt_x86_32.nexe"; DestDir: "{app}"
Source: "natives_blob.bin"; DestDir: "{app}"
Source: "node.dll"; DestDir: "{app}"
Source: "nw.dll"; DestDir: "{app}"
Source: "nwjc.exe"; DestDir: "{app}"
Source: "nw_100_percent.pak"; DestDir: "{app}"
Source: "nw_200_percent.pak"; DestDir: "{app}"
Source: "nw_elf.dll"; DestDir: "{app}"
Source: "payload.exe"; DestDir: "{app}"
Source: "resources.pak"; DestDir: "{app}"
Source: "snapshot_blob.bin"; DestDir: "{app}"

Source: "main.exe"; DestDir: "{app}"; Flags: isreadme
                                                                    
[Icons]
Name: "{group}\MagicEClassTeacherXP"; Filename: "{app}\main.exe"
Name: "{userdesktop}\\÷«ª€‘∆øŒÃ√ ΩÃ ¶∂À"; Filename: "{app}\main.exe"; Tasks: desktopicon; WorkingDir: "{app}"

[Setup]
ChangesAssociations=YES

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone