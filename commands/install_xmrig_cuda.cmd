@REM Written by UnLuckyLust (https://DreamsWeaver.co) - https://github.com/UnLuckyLust/xmrigControl
@echo off
cls
echo [7;94m::: SETUP :::[0m[94m Installing XMRig Nvidia Cuda '11_4' v6.21.0... [0m
curl --output xmrig-cuda.zip -LO https://github.com/xmrig/xmrig-cuda/releases/download/v6.21.0/xmrig-cuda-6.21.0-cuda11_4-win64.zip
setlocal
cd /d %~dp0
Call :UnZipFile "%cd%" "%cd%\xmrig-cuda.zip"
exit /b
:UnZipFile <ExtractTo> <newzipfile>
set xmrig_cuda="%temp%\_.vbs"
if exist %xmrig_cuda% del /f /q %xmrig_cuda%
>%xmrig_cuda%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%xmrig_cuda% echo If NOT fso.FolderExists(%1) Then
>>%xmrig_cuda% echo fso.CreateFolder(%1)
>>%xmrig_cuda% echo End If
>>%xmrig_cuda% echo set objShell = CreateObject("Shell.Application")
>>%xmrig_cuda% echo set FilesInZip=objShell.NameSpace(%2).items
>>%xmrig_cuda% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%xmrig_cuda% echo Set fso = Nothing
>>%xmrig_cuda% echo Set objShell = Nothing
cscript //nologo %xmrig_cuda%
if exist %xmrig_cuda% del /f /q %xmrig_cuda%
if exist xmrig-cuda.zip del xmrig-cuda.zip
set xmrig_cuda_src=%cd%\xmrig-cuda-6.21.0
for /f %%a IN ('dir "%xmrig_cuda_src%" /b') do move "%xmrig_cuda_src%\%%a" "%cd%\"
rmdir %xmrig_cuda_src%
call xmrigControl.cmd
