@REM Written by UnLuckyLust (https://DreamsWeaver.co) - https://github.com/UnLuckyLust/xmrigControl
@echo off
cls
echo [7;94m::: SETUP :::[0m[94m Installing xmrigCC v3.4.0 Miner... [0m
curl --output xmrigCC.zip -LO https://github.com/Bendr0id/xmrigCC/releases/download/3.4.0/xmrigCC-3.4.0-gcc-win64.zip
setlocal
cd /d %~dp0
Call :UnZipFile "%cd%" "%cd%\xmrigCC.zip"
exit /b
:UnZipFile <ExtractTo> <newzipfile>
set xmrigCC="%temp%\_.vbs"
if exist %xmrigCC% del /f /q %xmrigCC%
>%xmrigCC%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%xmrigCC% echo If NOT fso.FolderExists(%1) Then
>>%xmrigCC% echo fso.CreateFolder(%1)
>>%xmrigCC% echo End If
>>%xmrigCC% echo set objShell = CreateObject("Shell.Application")
>>%xmrigCC% echo set FilesInZip=objShell.NameSpace(%2).items
>>%xmrigCC% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%xmrigCC% echo Set fso = Nothing
>>%xmrigCC% echo Set objShell = Nothing
cscript //nologo %xmrigCC%
if exist %xmrigCC% del /f /q %xmrigCC%
if exist xmrigCC.zip del xmrigCC.zip
set xmrigCC_src=%cd%\miner
for /f %%a IN ('dir "%xmrigCC_src%" /b') do move "%xmrigCC_src%\%%a" "%cd%\"
if exist config.json del config.json
rmdir %xmrigCC_src%
rmdir server\client-updates\android-dynamic-arm64
rmdir server\client-updates\freebsd-static-amd64
rmdir server\client-updates\gcc-win32
rmdir server\client-updates\gcc-win64
rmdir server\client-updates\linux-dynamic-amd64
rmdir server\client-updates\linux-static-amd64
rmdir server\client-updates\linux-static-arm64
rmdir server\client-updates\linux-static-i386
rmdir server\client-updates\macos-x64_64
rmdir server\client-updates\mvc-win64
rmdir server\client-updates
del /s /q server\*
rmdir server
call xmrigControl.cmd