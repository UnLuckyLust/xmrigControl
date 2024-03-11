@REM Written by UnLuckyLust (https://DreamsWeaver.co) - https://github.com/UnLuckyLust/xmrigControl
@echo off
cls
echo [7;94m::: SETUP :::[0m[94m Installing XMRig Miner v6.21.1... [0m
curl --output xmrig.zip -LO https://github.com/xmrig/xmrig/releases/download/v6.21.1/xmrig-6.21.1-gcc-win64.zip
setlocal
cd /d %~dp0
Call :UnZipFile "%cd%" "%cd%\xmrig.zip"
exit /b
:UnZipFile <ExtractTo> <newzipfile>
set xmrig="%temp%\_.vbs"
if exist %xmrig% del /f /q %xmrig%
>%xmrig%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%xmrig% echo If NOT fso.FolderExists(%1) Then
>>%xmrig% echo fso.CreateFolder(%1)
>>%xmrig% echo End If
>>%xmrig% echo set objShell = CreateObject("Shell.Application")
>>%xmrig% echo set FilesInZip=objShell.NameSpace(%2).items
>>%xmrig% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%xmrig% echo Set fso = Nothing
>>%xmrig% echo Set objShell = Nothing
cscript //nologo %xmrig%
if exist %xmrig% del /f /q %xmrig%
if exist xmrig.zip del xmrig.zip
set xmrig_src=%cd%\xmrig-6.21.1
for /f %%a IN ('dir "%xmrig_src%" /b') do move "%xmrig_src%\%%a" "%cd%\"
if exist benchmark_1M.cmd del benchmark_1M.cmd
if exist benchmark_10M.cmd del benchmark_10M.cmd
if exist config.json del config.json
if exist pool_mine_example.cmd del pool_mine_example.cmd
if exist rtm_ghostrider_example.cmd del rtm_ghostrider_example.cmd
if exist solo_mine_example.cmd del solo_mine_example.cmd
if exist start.cmd del start.cmd
rmdir %xmrig_src%
call xmrigControl.cmd
