@REM Written by UnLuckyLust (https://DreamsWeaver.co) - https://github.com/UnLuckyLust/xmrigControl
@echo off
goto :SELECT_VERSION

:SELECT_VERSION
    set XMRig_version=6.21.1
    set selected_version=0
    cls
    echo [7;94m::: SETUP :::[0m[94m Installing XMRig Nvidia Cuda v%XMRig_version% [0m
    echo.
    echo [7;94m::: SETUP :::[0m[94m Available Cuda Versions[0m
    echo [7;94m::: SETUP :::[0m[93m 1 [0m[94m= cude 12_4 [0m
    echo [7;94m::: SETUP :::[0m[93m 2 [0m[94m= cude 11_8 [0m
    echo [7;94m::: SETUP :::[0m[93m 3 [0m[94m= cude 10_2 [0m
    echo [7;94m::: SETUP :::[0m[93m 4 [0m[94m= cude 9_2 [0m
    echo [7;94m::: SETUP :::[0m[93m 5 [0m[94m= cude 8_0 [0m
    echo.
    set /p selected_version="[7;96m::: INPUT :::[0m Select cuda version to download [0m[93m (1-5) [0m> "
    if "%selected_version%"=="1" goto :SET_VERSION
    if "%selected_version%"=="2" goto :SET_VERSION
    if "%selected_version%"=="3" goto :SET_VERSION
    if "%selected_version%"=="4" goto :SET_VERSION
    if "%selected_version%"=="5" goto :SET_VERSION
    goto :SELECT_VERSION

:SET_VERSION
    if "%selected_version%"=="1" set selected_version=12_4
    if "%selected_version%"=="2" set selected_version=11_8
    if "%selected_version%"=="3" set selected_version=10_2
    if "%selected_version%"=="4" set selected_version=9_2
    if "%selected_version%"=="5" set selected_version=8_0
    goto :DOWNLOAD

:DOWNLOAD
    cls
    echo [7;94m::: SETUP :::[0m[94m Installing XMRig Nvidia Cuda v%XMRig_version%[0m[93m %selected_version% [0m
    echo.
    set CudaLink=https://github.com/xmrig/xmrig-cuda/releases/download/v%XMRig_version%/xmrig-cuda-%XMRig_version%-cuda%selected_version%-win64.zip

    curl --output xmrig-cuda.zip -LO %CudaLink%
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
    set xmrig_cuda_src=%cd%\xmrig-cuda-%XMRig_version%
    for /f %%a IN ('dir "%xmrig_cuda_src%" /b') do move "%xmrig_cuda_src%\%%a" "%cd%\"
    rmdir %xmrig_cuda_src%
    call xmrigControl.cmd
