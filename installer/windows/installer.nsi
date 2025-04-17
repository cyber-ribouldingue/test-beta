!define APPNAME "TestApp"
!define VERSION "0.1"
!define COMPANY "CyberRibouldingue"
!define DESCRIPTION "Démo C++/Qt"
!define INSTALL_DIR "$PROGRAMFILES64\${APPNAME}"

Name "${APPNAME}"
OutFile "TestAppSetup.exe"
InstallDir "${INSTALL_DIR}"

Page directory
Page instfiles

Section "Install"
    SetOutPath "$INSTDIR"
    File "build-win\Release\TestApp.exe"
    CreateShortcut "$DESKTOP\${APPNAME}.lnk" "$INSTDIR\TestApp.exe"
SectionEnd
