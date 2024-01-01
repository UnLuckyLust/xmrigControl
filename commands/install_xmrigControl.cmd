@REM Written by UnLuckyLust (https://DreamsWeaver.co) - https://github.com/UnLuckyLust/xmrigControl
@echo off
cls
echo [7;94m::: SETUP :::[0m[94m Installing latest xmrigControl... [0m
curl --output xmrigControl.zip -LO https://codeload.github.com/UnLuckyLust/xmrigControl/zip/refs/heads/main
setlocal
cd /d %~dp0
Call :UnZipFile "%cd%" "%cd%\xmrigControl.zip"
exit /b
:UnZipFile <ExtractTo> <newzipfile>
set xmrigControl="%temp%\_.vbs"
if exist %xmrigControl% del /f /q %xmrigControl%
>%xmrigControl%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%xmrigControl% echo If NOT fso.FolderExists(%1) Then
>>%xmrigControl% echo fso.CreateFolder(%1)
>>%xmrigControl% echo End If
>>%xmrigControl% echo set objShell = CreateObject("Shell.Application")
>>%xmrigControl% echo set FilesInZip=objShell.NameSpace(%2).items
>>%xmrigControl% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%xmrigControl% echo Set fso = Nothing
>>%xmrigControl% echo Set objShell = Nothing
cscript //nologo %xmrigControl%
if exist %xmrigControl% del /f /q %xmrigControl%
if exist xmrigControl.zip del xmrigControl.zip
set xmrigControl_src=%cd%\xmrigControl-main
for /f %%a IN ('dir "%xmrigControl_src%" /b') do move "%xmrigControl_src%\%%a" "%cd%\"
rmdir %xmrigControl_src%
call xmrigControl.cmd