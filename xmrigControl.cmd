@REM Written by UnLuckyLust (https://DreamsWeaver.co) - https://github.com/UnLuckyLust/xmrigControl
@REM ! IMPORTANT ! This cmd file is made for XMRig crypto currency miner, it can be flagged by your antivirus.
@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

@REM -----------------------------------
@REM ↧↧↧ Start of configuration area ↧↧↧
@REM -----------------------------------
@REM ! IMPORTANT ! Change the XMRig_Folder value to the XMRig directory path, or place this file in the XMRig folder to use an existing XMRig installation.
@REM ! IMPORTANT ! Leave XMRig_Folder value as it is to download a fresh installation of XMRig in the current folder. (Will download XMRig from the official GitHub repository)
@REM ! IMPORTANT ! Due limitations of JSON format, Windows directory separator should be escaped like \\ or written in Unix style like /.
    set XMRig_Folder=%cd:\=/%

@REM ----------------------
@REM ↧↧↧ Pools Settings ↧↧↧
@REM ----------------------
    set WORKER=xmrigControl

@REM UnMineable CPU Pool Settings
    set algo_cpu=rx/0
    set pool_cpu=stratum+ssl://rx-eu.unmineable.com:443

@REM UnMineable GPU Pool Settings
    set algo_gpu=kawpow
    set pool_gpu=stratum+ssl://kp-eu.unmineable.com:443

@REM Custom Pools addresses
    set pool_AIPowerGrid=stratum+ssl://tr.aipg.herominers.com:1128
    set pool_Clore=stratum+ssl://tr.clore.herominers.com:1163
    set pool_Dagger=stratum.xdag.org:23656
    set pool_Keva=pool.hashvault.pro:443
    set pool_MecuAI=stratum-eu.rplant.xyz:17094
    set pool_Monero=stratum+ssl://xmr-eu1.nanopool.org:10343
    set pool_Neoxa=stratum+ssl://tr.neoxa.herominers.com:1202
    set pool_Neurai=stratum+ssl://tr.neurai.herominers.com:1160
    set pool_QuantumRL=stratum+ssl://tr.qrl.herominers.com:1166
    set pool_Raptoreum=stratum+ssl://eu.flockpool.com:5555
    set pool_RavenCoin=stratum+ssl://tr.ravencoin.herominers.com:1140
    set pool_Reaction=stratum-eu.rplant.xyz:17054
    set pool_Yada=yadapool.org:3333
    set pool_Zephyr=stratum+ssl://tr.zephyr.herominers.com:1123

@REM ----------------------------------------------------------------------------------------------------------------
@REM By default the program will not use the section below, and will ask for wallet addresses on the initial startup.
@REM If you want to use temporary wallet addresses on your current rig change to ( set use_Temporary_Wallets=true ), and fill in your wallet addresses in the section below.
@REM If you want to change the addresses to the temporary or vice versa after the initial setup, send the command "T"
@REM If you want to reset the persistent addresses on your current rig, send the command "D"
@REM ----------------------------------------------------------------------------------------------------------------
    set use_Temporary_Wallets=false
@REM -----------------------------------
@REM ↧↧↧ Temporary wallets addresses ↧↧↧
@REM -----------------------------------    
    set t_wallet_AIPowerGrid=Enter_Your_Wallet_Address
    set t_wallet_Alephium=Enter_Your_Wallet_Address
    set t_wallet_Avalanche=Enter_Your_Wallet_Address
    set t_wallet_Binance=Enter_Your_Wallet_Address
    set t_wallet_Bitcoin=Enter_Your_Wallet_Address
    set t_wallet_BitcoinCash=Enter_Your_Wallet_Address
    set t_wallet_Bonk=Enter_Your_Wallet_Address
    set t_wallet_Cardano=Enter_Your_Wallet_Address
    set t_wallet_Clore=Enter_Your_Wallet_Address
    set t_wallet_Cosmos=Enter_Your_Wallet_Address
    set t_wallet_Dagger=Enter_Your_Wallet_Address
    set t_wallet_DogeCoin=Enter_Your_Wallet_Address
    set t_wallet_Dynex=Enter_Your_Wallet_Address
    set t_wallet_EnjinCoin=Enter_Your_Wallet_Address
    set t_wallet_Ethereum=Enter_Your_Wallet_Address
    set t_wallet_EthereumClassic=Enter_Your_Wallet_Address
    set t_wallet_Jupiter=Enter_Your_Wallet_Address
    set t_wallet_Karlsen=Enter_Your_Wallet_Address
    set t_wallet_Kaspa=Enter_Your_Wallet_Address
    set t_wallet_Keva=Enter_Your_Wallet_Address
    set t_wallet_MecuAI=Enter_Your_Wallet_Address
    set t_wallet_Monero=Enter_Your_Wallet_Address
    set t_wallet_Neoxa=Enter_Your_Wallet_Address
    set t_wallet_Neurai=Enter_Your_Wallet_Address
    set t_wallet_Nexa=Enter_Your_Wallet_Address
    set t_wallet_Pepe=Enter_Your_Wallet_Address
    set t_wallet_Pyrin=Enter_Your_Wallet_Address
    set t_wallet_QuantumRL=Enter_Your_Wallet_Address
    set t_wallet_Raptoreum=Enter_Your_Wallet_Address
    set t_wallet_RavenCoin=Enter_Your_Wallet_Address
    set t_wallet_Reaction=Enter_Your_Wallet_Address
    set t_wallet_Ripple=Enter_Your_Wallet_Address
    set t_wallet_ShibaInu=Enter_Your_Wallet_Address
    set t_wallet_Solana=Enter_Your_Wallet_Address
    set t_wallet_Tether=Enter_Your_Wallet_Address
    set t_wallet_Tron=Enter_Your_Wallet_Address
    set t_wallet_Yada=Enter_Your_Wallet_Address
    set t_wallet_Zephyr=Enter_Your_Wallet_Address

@REM ---------------------------------
@REM ↧↧↧ UnMineable Discount Codes ↧↧↧
@REM ---------------------------------
    set use_discount=true
    set use_global_discount=true
    set global_discount_code=or99-ie7s

    set discount_Alephium=Enter_Your_UnMineable_Discount_Code
    set discount_Avalanche=Enter_Your_UnMineable_Discount_Code
    set discount_Binance=Enter_Your_UnMineable_Discount_Code
    set discount_Bitcoin=Enter_Your_UnMineable_Discount_Code
    set discount_BitcoinCash=Enter_Your_UnMineable_Discount_Code
    set discount_Bonk=Enter_Your_UnMineable_Discount_Code
    set discount_Cardano=Enter_Your_UnMineable_Discount_Code
    set discount_Cosmos=Enter_Your_UnMineable_Discount_Code
    set discount_DogeCoin=Enter_Your_UnMineable_Discount_Code
    set discount_Dynex=Enter_Your_UnMineable_Discount_Code
    set discount_EnjinCoin=Enter_Your_UnMineable_Discount_Code
    set discount_Ethereum=Enter_Your_UnMineable_Discount_Code
    set discount_EthereumClassic=Enter_Your_UnMineable_Discount_Code
    set discount_Jupiter=Enter_Your_UnMineable_Discount_Code
    set discount_Karlsen=Enter_Your_UnMineable_Discount_Code
    set discount_Kaspa=Enter_Your_UnMineable_Discount_Code
    set discount_Monero=Enter_Your_UnMineable_Discount_Code
    set discount_Neoxa=Enter_Your_UnMineable_Discount_Code
    set discount_Nexa=Enter_Your_UnMineable_Discount_Code
    set discount_Pepe=Enter_Your_UnMineable_Discount_Code
    set discount_Pyrin=Enter_Your_UnMineable_Discount_Code
    set discount_RavenCoin=Enter_Your_UnMineable_Discount_Code
    set discount_Ripple=Enter_Your_UnMineable_Discount_Code
    set discount_ShibaInu=Enter_Your_UnMineable_Discount_Code
    set discount_Solana=Enter_Your_UnMineable_Discount_Code
    set discount_Tether=Enter_Your_UnMineable_Discount_Code
    set discount_Tron=Enter_Your_UnMineable_Discount_Code
    set discount_Zephyr=Enter_Your_UnMineable_Discount_Code

@REM ----------------------
@REM ↧↧↧ XMRig Settings ↧↧↧
@REM ----------------------
    set TLS=true
    set Password=x
    set Donate_Level=1
    set xmr_mode=fast
    set NiceHash=false
    set 1gb-pages=false
    set huge-pages=true
    set huge-pages-jit=false
    set memory-pool=true
    set yield=false
    set background=false
    set cpu_priority=null
    set max_cpu_usage=100
    set max-threads-hint=100
    set scratchpad_prefetch_mode=1

@REM ------------------------
@REM ↧↧↧ XMRigCC Settings ↧↧↧
@REM ------------------------
    set use_xmrigCC=false
@REM ------------------------
    set activate_CC_client=false
    set CC_server_url=localhost:3344
    set CC_server_access_token=mySecret
    set CC_server_tls=false

@REM ----------------------
@REM ↧↧↧ Debug Settings ↧↧↧
@REM ----------------------
    set Debug=false
    set TimeOut=10
    set Window_Height=50
    set Updater=true
    set SoloMining=true
    set Shortcut=true
    set Shortcut_Location=C:\users\%username%\desktop

@REM ---------------------------------
@REM ↥↥↥ End of configuration area ↥↥↥
@REM ---------------------------------

if exist %XMRig_Folder% ( cd %XMRig_Folder% ) else exit
if exist config.json del config.json
if exist install_xmrig.cmd del install_xmrig.cmd
if exist install_xmrigCC.cmd del install_xmrigCC.cmd
if exist install_xmrig_cuda.cmd del install_xmrig_cuda.cmd
if exist install_xmrigControl.cmd del install_xmrigControl.cmd
set p_version=1.5.6
set p_name=xmrigControl
set xmrig_p_name=xmrig
set xmrig_p_download=install_xmrig
if %use_xmrigCC%==true (
    set xmrig_p_name=xmrigDaemon
    set xmrig_p_download=install_xmrigCC
)
set shortcut_icon=%cd%\%xmrig_p_name%.exe
if "%TemporaryWallets%"=="" (
    set TemporaryWallets=%use_Temporary_Wallets%
    setx TemporaryWallets %use_Temporary_Wallets%
)
title %p_name%
if %use_xmrigCC%==true (
    set /a Window_Height=Window_Height+2
)
mode con: lines=!Window_Height!
set temp_p_name=%cd%\%~nx0
if not %temp_p_name%==%cd%\%p_name%.cmd (
    ren %temp_p_name% %p_name%.cmd
    if exist %temp_p_name% del %temp_p_name%
    call %p_name%.cmd
)
fsutil dirty query %systemdrive% >nul || (
    if %Debug%==true echo [7;94m::: SETUP :::[0m[94m Requesting administrative privileges... [0m
    set "ELEVATE_CMDLINE=cd /d "%cd%" & call "%~f0" %*"
    findstr "^:::" "%~sf0">"%temp%\getadmin.vbs"
    cscript //nologo "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs" & exit /b
)
rem ------- getadmin.vbs ----------------------------------
::: Set objShell = CreateObject("Shell.Application")
::: Set objWshShell = WScript.CreateObject("WScript.Shell")
::: Set objWshProcessEnv = objWshShell.Environment("PROCESS")
::: strCommandLine = Trim(objWshProcessEnv("ELEVATE_CMDLINE"))
::: objShell.ShellExecute "cmd", "/c " & strCommandLine, "", "runas"
rem -------------------------------------------------------
if %Debug%==true echo [7;92m::: SUCCESS :::[0m[92m Running %p_name% as admin [0m
if "%TEMP_MINER%"=="" set TEMP_MINER=%WORKER%
set old_shortcut_loc=%Shortcut_Location%\!TEMP_MINER!.lnk

@REM XMRig Check
set need_download_xmrig=false
set download_xmrig=false
if not exist %XMRig_Folder%/%xmrig_p_name%.exe (
    set need_download_xmrig=true
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [95m- Available Commands -[0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
    echo.
    if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
    if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m
    echo.
    echo [7;91m::: ERROR :::[0m[91m Cannot find XMRig, make sure the address is set correctly. [0m
    echo [7;94m::: IMPORTANT :::[0m[94m If you want to use XMRig miner make sure whitelist the folder in your antivirus. [0m
    echo.
    set /p download_xmrig="[7;96m::: INPUT :::[0m Would you like to download [93mXMRig[0m? ([96mY[0m/[96mN[0m) > "
)
if "%download_xmrig%"=="x" set download_xmrig=X
if "%download_xmrig%"=="X" goto :LOGOUT
if "%download_xmrig%"=="r" set download_xmrig=R
if "%download_xmrig%"=="R" goto :START_OVER
if "%download_xmrig%"=="y" set download_xmrig=Y
if "%download_xmrig%"=="Y" set download_xmrig=true
if %need_download_xmrig%==true (
    if %download_xmrig%==true (
        echo [7;94m::: SETUP :::[0m[94m Downloading XMRig installation file... [0m
        curl --output install_xmrig.cmd -LO https://raw.githubusercontent.com/UnLuckyLust/xmrigControl/cmd/commands/%xmrig_p_download%.cmd
        call install_xmrig.cmd
    )
    cls
    echo [7;91m::: ERROR :::[0m[91m Can not start mining, Failed to find XMRig Mining Program. [0m
    timeout /t %TimeOut%
    goto :LOGOUT
)

@REM GitHub Version Check
set http_results=NONE
set need_download_xmrigControl=false
set download_xmrigControl=false
Set "MyCommand=curl -s "https://raw.githubusercontent.com/UnLuckyLust/xmrigControl/cmd/updater_version""
@for /f %%R in ('%MyCommand%') do ( Set http_results=%%R )
set http_results=%http_results: =%
if !http_results!==404: set http_results=NONE
if !http_results!==NONE (
    echo [7;91m::: ERROR :::[0m[91m No response was received from the GitHub server. [0m
) else (
    cls
    if !http_results!==!p_version! (
        echo [7;92m::: SUCCESS :::[0m[92m xmrigControl is up to date. [0m
    ) else (
        echo [7;91m::: ERROR :::[0m[91m xmrigControl has a new version. [0m
        echo.
        echo [7;91m::: CURRENT VERSION :::[0m[91m -[0m !p_version!
        echo [7;92m::: LATEST  VERSION :::[0m[92m -[0m !http_results!
        echo.
        if !Updater!==true (
            set need_download_xmrigControl=true
            set /p download_xmrigControl="[7;96m::: INPUT :::[0m Would you like to update [93mxmrigControl[0m? ([96mY[0m/[96mN[0m) > "
        )
    )
)
if "%download_xmrigControl%"=="x" set download_xmrigControl=X
if "%download_xmrigControl%"=="X" goto :LOGOUT
if "%download_xmrigControl%"=="r" set download_xmrigControl=R
if "%download_xmrigControl%"=="R" goto :START_OVER
if "%download_xmrigControl%"=="y" set download_xmrigControl=Y
if "%download_xmrigControl%"=="Y" set download_xmrigControl=true
if !need_download_xmrigControl!==true (
    if !download_xmrigControl!==true (
        echo [7;94m::: SETUP :::[0m[94m Updating xmrigControl... [0m
        curl --output install_xmrigControl.cmd -LO https://raw.githubusercontent.com/UnLuckyLust/xmrigControl/cmd/commands/install_xmrigControl.cmd
        call install_xmrigControl.cmd
    )
)

@REM Local Version Check
if "%xmrigControl_Version%"=="" (
    if %Debug%==true echo [7;94m::: SETUP :::[0m[94m %p_name% No Older Version found. [0m
    set xmrigControl_Version=%p_version%
    setx xmrigControl_Version %p_version%
    set TemporaryWallets=%use_Temporary_Wallets%
    setx TemporaryWallets %use_Temporary_Wallets%
    set confirm_w_reset=true
    goto :W_ADDRESS_RESET
)
if %p_version%==%xmrigControl_Version% (
    if %Debug%==true echo [7;94m::: SETUP :::[0m[94m %p_name% Current Version found. [0m
    if %TemporaryWallets%==true goto :SELECT_WORKER
    goto :W_ADDRESS_CHECK
) else (
    echo [7;94m::: SETUP :::[0m[94m %p_name% new version found. [0m
    echo [7;94m::: SETUP :::[0m[94m Running %p_name% Wallets Setup. [0m
    set xmrigControl_Version=%p_version%
    setx xmrigControl_Version %p_version%
    set TemporaryWallets=%use_Temporary_Wallets%
    setx TemporaryWallets %use_Temporary_Wallets%
    set confirm_w_reset=true
    goto :W_ADDRESS_RESET
)
    
:W_ADDRESS_TOGGLE
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [95m- Available Commands -[0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
    echo.
    if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
    if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m
    echo.
    set confirm_w_toggle=false
    set toggle_option=none
    if %TemporaryWallets%==false ( 
        set toggle_option=off
        set /p confirm_w_toggle="[7;96m::: INPUT :::[0m Are you sure you want to [93mDisable[0m Persistent Wallets Addresses? ([96mY[0m/[96mN[0m) > "
    ) 
    if %TemporaryWallets%==true (
        set toggle_option=on
        set /p confirm_w_toggle="[7;96m::: INPUT :::[0m Are you sure you want to [93mEnable[0m Persistent Wallets Addresses? ([96mY[0m/[96mN[0m) > "
    )
    if "%confirm_w_toggle%"=="x" set confirm_w_toggle=X
    if "%confirm_w_toggle%"=="X" goto :LOGOUT
    if "%confirm_w_toggle%"=="r" set confirm_w_toggle=R
    if "%confirm_w_toggle%"=="R" goto :START_OVER
    if "%confirm_w_toggle%"=="y" set confirm_w_toggle=Y
    if "%confirm_w_toggle%"=="Y" ( set confirm_w_toggle=true ) else ( set confirm_w_toggle=false )
    if %confirm_w_toggle%==false goto :START_OVER
    if %confirm_w_toggle%==true (
        if "%toggle_option%"=="on" (
            echo [7;93m::: INFO :::[0m[93m persistent wallets addresses [0m[7;92mactivated[0m[93m.[0m
            set TemporaryWallets=false
            setx TemporaryWallets false
            timeout /t %TimeOut%
            goto :START_OVER
        )
        if "%toggle_option%"=="off" (
            echo [7;93m::: INFO :::[0m[93m persistent wallets addresses [0m[7;91mdisabled[0m[93m.[0m
            set TemporaryWallets=true
            setx TemporaryWallets true
            timeout /t %TimeOut%
            goto :START_OVER
        )
    )

:W_ADDRESS_RESET
    if "%confirm_w_reset%"=="" set confirm_w_reset=false
    if %confirm_w_reset%==false (
        cls
        echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
        echo.
        echo [95m- Available Commands -[0m
        echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
        echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
        echo.
        if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
        if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m
        echo.
        set /p confirm_w_reset="[7;96m::: INPUT :::[0m Are you sure you want to Delete all Persistent Wallets Addresses? ([96mY[0m/[96mN[0m) > "
    )
    if "%confirm_w_reset%"=="x" set confirm_w_reset=X
    if "%confirm_w_reset%"=="X" goto :LOGOUT
    if "%confirm_w_reset%"=="r" set confirm_w_reset=R
    if "%confirm_w_reset%"=="R" goto :START_OVER
    if "%confirm_w_reset%"=="y" set confirm_w_reset=Y
    if "%confirm_w_reset%"=="Y" set confirm_w_reset=true
    if %confirm_w_reset%==true (
        set p_wallet_AIPowerGrid=NO_WALLET_ADDRESS
        setx p_wallet_AIPowerGrid NO_WALLET_ADDRESS
        set p_wallet_Alephium=NO_WALLET_ADDRESS
        setx p_wallet_Alephium NO_WALLET_ADDRESS
        set p_wallet_Avalanche=NO_WALLET_ADDRESS
        setx p_wallet_Avalanche NO_WALLET_ADDRESS
        set p_wallet_Binance=NO_WALLET_ADDRESS
        setx p_wallet_Binance NO_WALLET_ADDRESS
        set p_wallet_Bitcoin=NO_WALLET_ADDRESS
        setx p_wallet_Bitcoin NO_WALLET_ADDRESS
        set p_wallet_BitcoinCash=NO_WALLET_ADDRESS
        setx p_wallet_BitcoinCash NO_WALLET_ADDRESS
        set p_wallet_Bonk=NO_WALLET_ADDRESS
        setx p_wallet_Bonk NO_WALLET_ADDRESS
        set p_wallet_Cardano=NO_WALLET_ADDRESS
        setx p_wallet_Cardano NO_WALLET_ADDRESS
        set p_wallet_Clore=NO_WALLET_ADDRESS
        setx p_wallet_Clore NO_WALLET_ADDRESS
        set p_wallet_Cosmos=NO_WALLET_ADDRESS
        setx p_wallet_Cosmos NO_WALLET_ADDRESS
        set p_wallet_Dagger=NO_WALLET_ADDRESS
        setx p_wallet_Dagger NO_WALLET_ADDRESS
        set p_wallet_DogeCoin=NO_WALLET_ADDRESS
        setx p_wallet_DogeCoin NO_WALLET_ADDRESS
        set p_wallet_Dynex=NO_WALLET_ADDRESS
        setx p_wallet_Dynex NO_WALLET_ADDRESS
        set p_wallet_EnjinCoin=NO_WALLET_ADDRESS
        setx p_wallet_EnjinCoin NO_WALLET_ADDRESS
        set p_wallet_Ethereum=NO_WALLET_ADDRESS
        setx p_wallet_Ethereum NO_WALLET_ADDRESS
        set p_wallet_EthereumClassic=NO_WALLET_ADDRESS
        setx p_wallet_EthereumClassic NO_WALLET_ADDRESS
        set p_wallet_Jupiter=NO_WALLET_ADDRESS
        setx p_wallet_Jupiter NO_WALLET_ADDRESS
        set p_wallet_Karlsen=NO_WALLET_ADDRESS
        setx p_wallet_Karlsen NO_WALLET_ADDRESS
        set p_wallet_Kaspa=NO_WALLET_ADDRESS
        setx p_wallet_Kaspa NO_WALLET_ADDRESS
        set p_wallet_Keva=NO_WALLET_ADDRESS
        setx p_wallet_Keva NO_WALLET_ADDRESS
        set p_wallet_MecuAI=NO_WALLET_ADDRESS
        setx p_wallet_MecuAI NO_WALLET_ADDRESS
        set p_wallet_Monero=NO_WALLET_ADDRESS
        setx p_wallet_Monero NO_WALLET_ADDRESS
        set p_wallet_Neoxa=NO_WALLET_ADDRESS
        setx p_wallet_Neoxa NO_WALLET_ADDRESS
        set p_wallet_Neurai=NO_WALLET_ADDRESS
        setx p_wallet_Neurai NO_WALLET_ADDRESS
        set p_wallet_Nexa=NO_WALLET_ADDRESS
        setx p_wallet_Nexa NO_WALLET_ADDRESS
        set p_wallet_Pepe=NO_WALLET_ADDRESS
        setx p_wallet_Pepe NO_WALLET_ADDRESS
        set p_wallet_Pyrin=NO_WALLET_ADDRESS
        setx p_wallet_Pyrin NO_WALLET_ADDRESS
        set p_wallet_QuantumRL=NO_WALLET_ADDRESS
        setx p_wallet_QuantumRL NO_WALLET_ADDRESS
        set p_wallet_Raptoreum=NO_WALLET_ADDRESS
        setx p_wallet_Raptoreum NO_WALLET_ADDRESS
        set p_wallet_RavenCoin=NO_WALLET_ADDRESS
        setx p_wallet_RavenCoin NO_WALLET_ADDRESS
        set p_wallet_Reaction=NO_WALLET_ADDRESS
        setx p_wallet_Reaction NO_WALLET_ADDRESS
        set p_wallet_Ripple=NO_WALLET_ADDRESS
        setx p_wallet_Ripple NO_WALLET_ADDRESS
        set p_wallet_ShibaInu=NO_WALLET_ADDRESS
        setx p_wallet_ShibaInu NO_WALLET_ADDRESS
        set p_wallet_Solana=NO_WALLET_ADDRESS
        setx p_wallet_Solana NO_WALLET_ADDRESS
        set p_wallet_Tether=NO_WALLET_ADDRESS
        setx p_wallet_Tether NO_WALLET_ADDRESS
        set p_wallet_Tron=NO_WALLET_ADDRESS
        setx p_wallet_Tron NO_WALLET_ADDRESS
        set p_wallet_Yada=NO_WALLET_ADDRESS
        setx p_wallet_Yada NO_WALLET_ADDRESS
        set p_wallet_Zephyr=NO_WALLET_ADDRESS
        setx p_wallet_Zephyr NO_WALLET_ADDRESS
        if exist wallets.cmd del wallets.cmd
        set confirm_w_reset=false
        goto :W_ADDRESS_CHECK
    ) else set confirm_w_reset=false
    goto :START_OVER

:W_ADDRESS_CHECK
    set check_w_fail=false
    if "%p_wallet_AIPowerGrid%"=="" set p_wallet_AIPowerGrid=NO_WALLET_ADDRESS
    if "%p_wallet_AIPowerGrid%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Alephium%"=="" set p_wallet_Alephium=NO_WALLET_ADDRESS
    if "%p_wallet_Alephium%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Avalanche%"=="" set p_wallet_Avalanche=NO_WALLET_ADDRESS
    if "%p_wallet_Avalanche%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Binance%"=="" set p_wallet_Binance=NO_WALLET_ADDRESS
    if "%p_wallet_Binance%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_BitcoinCash%"=="" set p_wallet_BitcoinCash=NO_WALLET_ADDRESS
    if "%p_wallet_BitcoinCash%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Bonk%"=="" set p_wallet_Bonk=NO_WALLET_ADDRESS
    if "%p_wallet_Bonk%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Cardano%"=="" set p_wallet_Cardano=NO_WALLET_ADDRESS
    if "%p_wallet_Cardano%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Clore%"=="" set p_wallet_Clore=NO_WALLET_ADDRESS
    if "%p_wallet_Clore%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Cosmos%"=="" set p_wallet_Cosmos=NO_WALLET_ADDRESS
    if "%p_wallet_Cosmos%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Dagger%"=="" set p_wallet_Dagger=NO_WALLET_ADDRESS
    if "%p_wallet_Dagger%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_DogeCoin%"=="" set p_wallet_DogeCoin=NO_WALLET_ADDRESS
    if "%p_wallet_DogeCoin%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Dynex%"=="" set p_wallet_DogeCoin=NO_WALLET_ADDRESS
    if "%p_wallet_Dynex%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_EnjinCoin%"=="" set p_wallet_EnjinCoin=NO_WALLET_ADDRESS
    if "%p_wallet_EnjinCoin%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Ethereum%"=="" set p_wallet_Ethereum=NO_WALLET_ADDRESS
    if "%p_wallet_Ethereum%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_EthereumClassic%"=="" set p_wallet_EthereumClassic=NO_WALLET_ADDRESS
    if "%p_wallet_EthereumClassic%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Jupiter%"=="" set p_wallet_Jupiter=NO_WALLET_ADDRESS
    if "%p_wallet_Jupiter%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Karlsen%"=="" set p_wallet_Karlsen=NO_WALLET_ADDRESS
    if "%p_wallet_Karlsen%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Kaspa%"=="" set p_wallet_Kaspa=NO_WALLET_ADDRESS
    if "%p_wallet_Kaspa%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Keva%"=="" set p_wallet_Keva=NO_WALLET_ADDRESS
    if "%p_wallet_Keva%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_MecuAI%"=="" set p_wallet_MecuAI=NO_WALLET_ADDRESS
    if "%p_wallet_MecuAI%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Monero%"=="" set p_wallet_Monero=NO_WALLET_ADDRESS
    if "%p_wallet_Monero%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Neoxa%"=="" set p_wallet_Neoxa=NO_WALLET_ADDRESS
    if "%p_wallet_Neoxa%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Neurai%"=="" set p_wallet_Neurai=NO_WALLET_ADDRESS
    if "%p_wallet_Neurai%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Nexa%"=="" set p_wallet_Nexa=NO_WALLET_ADDRESS
    if "%p_wallet_Nexa%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Pepe%"=="" set p_wallet_Pepe=NO_WALLET_ADDRESS
    if "%p_wallet_Pepe%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Pyrin%"=="" set p_wallet_Pyrin=NO_WALLET_ADDRESS
    if "%p_wallet_Pyrin%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_QuantumRL%"=="" set p_wallet_QuantumRL=NO_WALLET_ADDRESS
    if "%p_wallet_QuantumRL%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Raptoreum%"=="" set p_wallet_Raptoreum=NO_WALLET_ADDRESS
    if "%p_wallet_Raptoreum%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_RavenCoin%"=="" set p_wallet_RavenCoin=NO_WALLET_ADDRESS
    if "%p_wallet_RavenCoin%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Reaction%"=="" set p_wallet_Reaction=NO_WALLET_ADDRESS
    if "%p_wallet_Reaction%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Ripple%"=="" set p_wallet_Ripple=NO_WALLET_ADDRESS
    if "%p_wallet_Ripple%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_ShibaInu%"=="" set p_wallet_ShibaInu=NO_WALLET_ADDRESS
    if "%p_wallet_ShibaInu%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Solana%"=="" set p_wallet_Solana=NO_WALLET_ADDRESS
    if "%p_wallet_Solana%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Tether%"=="" set p_wallet_Tether=NO_WALLET_ADDRESS
    if "%p_wallet_Tether%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Tron%"=="" set p_wallet_Tron=NO_WALLET_ADDRESS
    if "%p_wallet_Tron%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Yada%"=="" set p_wallet_Yada=NO_WALLET_ADDRESS
    if "%p_wallet_Yada%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if "%p_wallet_Zephyr%"=="" set p_wallet_Zephyr=NO_WALLET_ADDRESS
    if "%p_wallet_Zephyr%"=="NO_WALLET_ADDRESS" set check_w_fail=true
    if %check_w_fail%==true goto :W_ADDRESS_SET
    if %check_w_fail%==false goto :SELECT_WORKER

:W_ADDRESS_SET
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [95m- Available Commands -[0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m T [0m[95m- Toggle Persistent Addresses [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m D [0m[95m- Delete Persistent Addresses [0m
    echo.
    if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
    if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m

@REM AI Power Grid Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m AI Power Grid -[0m[97m %p_wallet_AIPowerGrid% [0m
    set new_wallet_address=%p_wallet_AIPowerGrid%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m AI Power Grid [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :START_OVER
    if "%new_wallet_address%"=="d" set new_wallet_address=D
    if "%new_wallet_address%"=="D" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_AIPowerGrid=%new_wallet_address%

@REM Alephium Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Alephium -[0m[97m %p_wallet_Alephium% [0m
    set new_wallet_address=%p_wallet_Alephium%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Alephium [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :START_OVER
    if "%new_wallet_address%"=="d" set new_wallet_address=D
    if "%new_wallet_address%"=="D" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Alephium=%new_wallet_address%

@REM Avalanche Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Avalanche -[0m[97m %p_wallet_Avalanche% [0m
    set new_wallet_address=%p_wallet_Avalanche%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Avalanche [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :START_OVER
    if "%new_wallet_address%"=="d" set new_wallet_address=D
    if "%new_wallet_address%"=="D" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Avalanche=%new_wallet_address%

@REM Binance Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Binance Coin -[0m[97m %p_wallet_Binance% [0m
    set new_wallet_address=%p_wallet_Binance%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Binance Coin [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Binance=%new_wallet_address%

@REM Bitcoin Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Bitcoin -[0m[97m %p_wallet_Bitcoin% [0m
    set new_wallet_address=%p_wallet_Bitcoin%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Bitcoin [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Bitcoin=%new_wallet_address%

@REM Bitcoin Cash Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Bitcoin Cash -[0m[97m %p_wallet_BitcoinCash% [0m
    set new_wallet_address=%p_wallet_BitcoinCash%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Bitcoin Cash [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_BitcoinCash=%new_wallet_address%

@REM Bonk Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Bonk -[0m[97m %p_wallet_Bonk% [0m
    set new_wallet_address=%p_wallet_Bonk%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Bonk [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Bonk=%new_wallet_address%

@REM Cardano Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Cardano -[0m[97m %p_wallet_Cardano% [0m
    set new_wallet_address=%p_wallet_Cardano%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Cardano [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Cardano=%new_wallet_address%

@REM Clore AI Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Clore AI -[0m[97m %p_wallet_Clore% [0m
    set new_wallet_address=%p_wallet_Clore%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Clore AI [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Clore=%new_wallet_address%

@REM Cosmos Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Cosmos -[0m[97m %p_wallet_Cosmos% [0m
    set new_wallet_address=%p_wallet_Cosmos%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Cosmos [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Cosmos=%new_wallet_address%

@REM Dagger Wallet Address
    if %use_xmrigCC%==true (
        echo.
        echo [7;94m::: ADDRESS :::[0m[94m Dagger -[0m[97m %p_wallet_Dagger% [0m
        set new_wallet_address=%p_wallet_Dagger%
        set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Dagger [0m> " 
        if "%new_wallet_address%"=="x" set new_wallet_address=X
        if "%new_wallet_address%"=="X" goto :LOGOUT
        if "%new_wallet_address%"=="s" set new_wallet_address=S
        if "%new_wallet_address%"=="S" goto :START_OVER
        if "%new_wallet_address%"=="r" set new_wallet_address=R
        if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
        if "%new_wallet_address%"=="t" set new_wallet_address=T
        if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
        set temp_p_wallet_Dagger=%new_wallet_address%        
    )

@REM Doge Coin Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Doge Coin -[0m[97m %p_wallet_DogeCoin% [0m
    set new_wallet_address=%p_wallet_DogeCoin%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Doge Coin [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_DogeCoin=%new_wallet_address%

@REM Dynex Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Dynex -[0m[97m %p_wallet_Dynex% [0m
    set new_wallet_address=%p_wallet_Dynex%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Dynex [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Dynex=%new_wallet_address%

@REM Enjin Coin Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Enjin Coin -[0m[97m %p_wallet_EnjinCoin% [0m
    set new_wallet_address=%p_wallet_EnjinCoin%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Enjin Coin [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_EnjinCoin=%new_wallet_address%

@REM Ethereum Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Ethereum -[0m[97m %p_wallet_Ethereum% [0m
    set new_wallet_address=%p_wallet_Ethereum%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Ethereum [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Ethereum=%new_wallet_address%

@REM Ethereum Classic Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Ethereum Classic -[0m[97m %p_wallet_EthereumClassic% [0m
    set new_wallet_address=%p_wallet_EthereumClassic%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Ethereum Classic [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_EthereumClassic=%new_wallet_address%

@REM Jupiter Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Jupiter -[0m[97m %p_wallet_Jupiter% [0m
    set new_wallet_address=%p_wallet_Jupiter%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Jupiter [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Jupiter=%new_wallet_address%

@REM Karlsen Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Karlsen -[0m[97m %p_wallet_Karlsen% [0m
    set new_wallet_address=%p_wallet_Karlsen%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Karlsen [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Karlsen=%new_wallet_address%

@REM Kaspa Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Kaspa -[0m[97m %p_wallet_Kaspa% [0m
    set new_wallet_address=%p_wallet_Kaspa%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Kaspa [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Kaspa=%new_wallet_address%

@REM Keva Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Keva -[0m[97m %p_wallet_Keva% [0m
    set new_wallet_address=%p_wallet_Keva%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Keva [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Keva=%new_wallet_address%

@REM MecuAI Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m MecuAI -[0m[97m %p_wallet_MecuAI% [0m
    set new_wallet_address=%p_wallet_MecuAI%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m MecuAI [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_MecuAI=%new_wallet_address%

@REM Monero Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Monero -[0m[97m %p_wallet_Monero% [0m
    set new_wallet_address=%p_wallet_Monero%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Monero [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Monero=%new_wallet_address%

@REM Neoxa Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Neoxa -[0m[97m %p_wallet_Neoxa% [0m
    set new_wallet_address=%p_wallet_Neoxa%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Neoxa [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Neoxa=%new_wallet_address%

@REM Neurai Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Neurai -[0m[97m %p_wallet_Neurai% [0m
    set new_wallet_address=%p_wallet_Neurai%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Neurai [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Neurai=%new_wallet_address%

@REM Nexa Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Nexa -[0m[97m %p_wallet_Nexa% [0m
    set new_wallet_address=%p_wallet_Nexa%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Nexa [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Nexa=%new_wallet_address%

@REM Pepe Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Pepe -[0m[97m %p_wallet_Pepe% [0m
    set new_wallet_address=%p_wallet_Pepe%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Pepe [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Pepe=%new_wallet_address%

@REM Pyrin Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Pyrin -[0m[97m %p_wallet_Pyrin% [0m
    set new_wallet_address=%p_wallet_Pyrin%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Pyrin [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Pyrin=%new_wallet_address%

@REM QuantumRL Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Quantum Resistant Ledger -[0m[97m %p_wallet_QuantumRL% [0m
    set new_wallet_address=%p_wallet_QuantumRL%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Quantum Resistant Ledger [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_QuantumRL=%new_wallet_address%

@REM Raptoreum Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Raptoreum -[0m[97m %p_wallet_Raptoreum% [0m
    set new_wallet_address=%p_wallet_Raptoreum%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Raptoreum [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Raptoreum=%new_wallet_address%

@REM Raven Coin Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Raven Coin -[0m[97m %p_wallet_RavenCoin% [0m
    set new_wallet_address=%p_wallet_RavenCoin%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Raven Coin [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_RavenCoin=%new_wallet_address%

@REM Reaction Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Reaction -[0m[97m %p_wallet_Reaction% [0m
    set new_wallet_address=%p_wallet_Reaction%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Reaction [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Reaction=%new_wallet_address%

@REM Ripple Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Ripple -[0m[97m %p_wallet_Ripple% [0m
    set new_wallet_address=%p_wallet_Ripple%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Ripple [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Ripple=%new_wallet_address%

@REM Shiba Inu Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Shiba Inu -[0m[97m %p_wallet_ShibaInu% [0m
    set new_wallet_address=%p_wallet_ShibaInu%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Shiba Inu [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_ShibaInu=%new_wallet_address%

@REM Solana Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Solana -[0m[97m %p_wallet_Solana% [0m
    set new_wallet_address=%p_wallet_Solana%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Solana [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Solana=%new_wallet_address%

@REM Tether Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Tether US -[0m[97m %p_wallet_Tether% [0m
    set new_wallet_address=%p_wallet_Tether%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Tether US [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Tether=%new_wallet_address%

@REM Tron Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Tron -[0m[97m %p_wallet_Tron% [0m
    set new_wallet_address=%p_wallet_Tron%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Tron [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Tron=%new_wallet_address%

@REM Yada Wallet Address
    if %use_xmrigCC%==true (
        echo.
        echo [7;94m::: ADDRESS :::[0m[94m Yada -[0m[97m %p_wallet_Yada% [0m
        set new_wallet_address=%p_wallet_Yada%
        set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Yada [0m> " 
        if "%new_wallet_address%"=="x" set new_wallet_address=X
        if "%new_wallet_address%"=="X" goto :LOGOUT
        if "%new_wallet_address%"=="s" set new_wallet_address=S
        if "%new_wallet_address%"=="S" goto :START_OVER
        if "%new_wallet_address%"=="r" set new_wallet_address=R
        if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
        if "%new_wallet_address%"=="t" set new_wallet_address=T
        if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
        set temp_p_wallet_Yada=%new_wallet_address%        
    )

@REM Zephyr Wallet Address
    echo.
    echo [7;94m::: ADDRESS :::[0m[94m Zephyr -[0m[97m %p_wallet_Zephyr% [0m
    set new_wallet_address=%p_wallet_Zephyr%
    set /p new_wallet_address="[7;96m::: INPUT :::[0m Set a new wallet address for[93m Zephyr [0m> " 
    if "%new_wallet_address%"=="x" set new_wallet_address=X
    if "%new_wallet_address%"=="X" goto :LOGOUT
    if "%new_wallet_address%"=="s" set new_wallet_address=S
    if "%new_wallet_address%"=="S" goto :START_OVER
    if "%new_wallet_address%"=="r" set new_wallet_address=R
    if "%new_wallet_address%"=="R" goto :W_ADDRESS_RESET
    if "%new_wallet_address%"=="t" set new_wallet_address=T
    if "%new_wallet_address%"=="T" goto :W_ADDRESS_TOGGLE
    set temp_p_wallet_Zephyr=%new_wallet_address%

    goto :W_ADDRESS_SAVE

:W_ADDRESS_SAVE
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [95m- Available Commands -[0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
    echo.
    if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
    if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m
    echo.
    echo [93m::: Wallet Addresses [0m
    echo [7;93m   [0m[93m AI Power Grid -[0m[97m %temp_p_wallet_AIPowerGrid% [0m
    echo [7;93m   [0m[93m Alephium -[0m[97m %temp_p_wallet_Alephium% [0m
    echo [7;93m   [0m[93m Avalanche -[0m[97m %temp_p_wallet_Avalanche% [0m
    echo [7;93m   [0m[93m Binance Coin -[0m[97m %temp_p_wallet_Binance% [0m
    echo [7;93m   [0m[93m Bitcoin -[0m[97m %temp_p_wallet_Bitcoin% [0m
    echo [7;93m   [0m[93m Bitcoin Cash -[0m[97m %temp_p_wallet_BitcoinCash% [0m
    echo [7;93m   [0m[93m Bonk -[0m[97m %temp_p_wallet_Bonk% [0m
    echo [7;93m   [0m[93m Cardano -[0m[97m %temp_p_wallet_Cardano% [0m
    echo [7;93m   [0m[93m Clore AI -[0m[97m %temp_p_wallet_Clore% [0m
    echo [7;93m   [0m[93m Cosmos -[0m[97m %temp_p_wallet_Cosmos% [0m
    if %use_xmrigCC%==true echo [7;93m   [0m[93m Dagger -[0m[97m %temp_p_wallet_Dagger% [0m
    echo [7;93m   [0m[93m Doge Coin -[0m[97m %temp_p_wallet_DogeCoin% [0m
    echo [7;93m   [0m[93m Dynex -[0m[97m %temp_p_wallet_Dynex% [0m
    echo [7;93m   [0m[93m Enjin Coin -[0m[97m %temp_p_wallet_EnjinCoin% [0m
    echo [7;93m   [0m[93m Ethereum -[0m[97m %temp_p_wallet_Ethereum% [0m
    echo [7;93m   [0m[93m Ethereum Classic -[0m[97m %temp_p_wallet_EthereumClassic% [0m
    echo [7;93m   [0m[93m Jupiter -[0m[97m %temp_p_wallet_Jupiter% [0m
    echo [7;93m   [0m[93m Karlsen -[0m[97m %temp_p_wallet_Karlsen% [0m
    echo [7;93m   [0m[93m Kaspa -[0m[97m %temp_p_wallet_Kaspa% [0m
    echo [7;93m   [0m[93m Keva -[0m[97m %temp_p_wallet_Keva% [0m
    echo [7;93m   [0m[93m MecuAI -[0m[97m %temp_p_wallet_MecuAI% [0m
    echo [7;93m   [0m[93m Monero -[0m[97m %temp_p_wallet_Monero% [0m
    echo [7;93m   [0m[93m Neoxa -[0m[97m %temp_p_wallet_Neoxa% [0m
    echo [7;93m   [0m[93m Neurai -[0m[97m %temp_p_wallet_Neurai% [0m
    echo [7;93m   [0m[93m Nexa -[0m[97m %temp_p_wallet_Nexa% [0m
    echo [7;93m   [0m[93m Pepe -[0m[97m %temp_p_wallet_Pepe% [0m
    echo [7;93m   [0m[93m Pyrin -[0m[97m %temp_p_wallet_Pyrin% [0m
    echo [7;93m   [0m[93m Quantum Resistant Ledger -[0m[97m %temp_p_wallet_QuantumRL% [0m
    echo [7;93m   [0m[93m Raptoreum -[0m[97m %temp_p_wallet_Raptoreum% [0m
    echo [7;93m   [0m[93m Raven Coin -[0m[97m %temp_p_wallet_RavenCoin% [0m
    echo [7;93m   [0m[93m Reaction -[0m[97m %temp_p_wallet_Reaction% [0m
    echo [7;93m   [0m[93m Ripple -[0m[97m %temp_p_wallet_Ripple% [0m
    echo [7;93m   [0m[93m Shiba Inu -[0m[97m %temp_p_wallet_ShibaInu% [0m
    echo [7;93m   [0m[93m Solana -[0m[97m %temp_p_wallet_Solana% [0m
    echo [7;93m   [0m[93m Tether US -[0m[97m %temp_p_wallet_Tether% [0m
    echo [7;93m   [0m[93m Tron -[0m[97m %temp_p_wallet_Tron% [0m
    if %use_xmrigCC%==true echo [7;93m   [0m[93m Yada -[0m[97m %temp_p_wallet_Yada% [0m
    echo [7;93m   [0m[93m Zephyr -[0m[97m %temp_p_wallet_Zephyr% [0m
    echo.
    
    set confirm_w_save=false
    set /p confirm_w_save="[7;96m::: INPUT :::[0m Save Wallets Addresses? ([96mY[0m/[96mN[0m) > "
    if "%confirm_w_save%"=="x" set confirm_w_save=X
    if "%confirm_w_save%"=="X" goto :LOGOUT
    if "%confirm_w_save%"=="r" set confirm_w_save=R
    if "%confirm_w_save%"=="R" goto :START_OVER
    if "%confirm_w_save%"=="y" set confirm_w_save=Y
    if "%confirm_w_save%"=="Y" ( set confirm_w_save=true ) else ( set confirm_w_save=false )
    if %confirm_w_save%==false goto :W_ADDRESS_CHECK
    if %confirm_w_save%==true (
        echo [7;94m::: SETUP :::[0m[94m Saving New Wallets Addresses. [0m
        if exist wallets.cmd del wallets.cmd
        echo @REM Written by UnLuckyLust - https://DreamsWeaver.co - https://github.com/UnLuckyLust/xmrigControl > wallets.cmd
        echo @REM Auto Generated File from - %p_name% Persistent Wallets: Version %p_version% >> wallets.cmd
        echo @echo off >> wallets.cmd
        echo cls >> wallets.cmd
        echo echo [7;93m::: INFO :::[0m[93m %p_name% Wallets - Version %p_version% [0m >> wallets.cmd
        echo set p_wallet_AIPowerGrid=%temp_p_wallet_AIPowerGrid%>> wallets.cmd
        echo setx p_wallet_AIPowerGrid %temp_p_wallet_AIPowerGrid%>> wallets.cmd
        echo set p_wallet_Alephium=%temp_p_wallet_Alephium%>> wallets.cmd
        echo setx p_wallet_Alephium %temp_p_wallet_Alephium%>> wallets.cmd
        echo set p_wallet_Avalanche=%temp_p_wallet_Avalanche%>> wallets.cmd
        echo setx p_wallet_Avalanche %temp_p_wallet_Avalanche%>> wallets.cmd
        echo set p_wallet_Binance=%temp_p_wallet_Binance%>> wallets.cmd
        echo setx p_wallet_Binance %temp_p_wallet_Binance%>> wallets.cmd
        echo set p_wallet_Bitcoin=%temp_p_wallet_Bitcoin%>> wallets.cmd
        echo setx p_wallet_Bitcoin %temp_p_wallet_Bitcoin%>> wallets.cmd
        echo set p_wallet_BitcoinCash=%temp_p_wallet_BitcoinCash%>> wallets.cmd
        echo setx p_wallet_BitcoinCash %temp_p_wallet_BitcoinCash%>> wallets.cmd
        echo set p_wallet_Bonk=%temp_p_wallet_Bonk%>> wallets.cmd
        echo setx p_wallet_Bonk %temp_p_wallet_Bonk%>> wallets.cmd
        echo set p_wallet_Cardano=%temp_p_wallet_Cardano%>> wallets.cmd
        echo setx p_wallet_Cardano %temp_p_wallet_Cardano%>> wallets.cmd
        echo set p_wallet_Clore=%temp_p_wallet_Clore%>> wallets.cmd
        echo setx p_wallet_Clore %temp_p_wallet_Clore%>> wallets.cmd
        echo set p_wallet_Cosmos=%temp_p_wallet_Cosmos%>> wallets.cmd
        echo setx p_wallet_Cosmos %temp_p_wallet_Cosmos%>> wallets.cmd
        if %use_xmrigCC%==true (
            echo set p_wallet_Dagger=%temp_p_wallet_Dagger%>> wallets.cmd
            echo setx p_wallet_Dagger %temp_p_wallet_Dagger%>> wallets.cmd            
        )
        echo set p_wallet_DogeCoin=%temp_p_wallet_DogeCoin%>> wallets.cmd
        echo setx p_wallet_DogeCoin %temp_p_wallet_DogeCoin%>> wallets.cmd
        echo set p_wallet_Dynex=%temp_p_wallet_Dynex%>> wallets.cmd
        echo setx p_wallet_Dynex %temp_p_wallet_Dynex%>> wallets.cmd
        echo set p_wallet_EnjinCoin=%temp_p_wallet_EnjinCoin%>> wallets.cmd
        echo setx p_wallet_EnjinCoin %temp_p_wallet_EnjinCoin%>> wallets.cmd
        echo set p_wallet_Ethereum=%temp_p_wallet_Ethereum%>> wallets.cmd
        echo setx p_wallet_Ethereum %temp_p_wallet_Ethereum%>> wallets.cmd
        echo set p_wallet_EthereumClassic=%temp_p_wallet_EthereumClassic%>> wallets.cmd
        echo setx p_wallet_EthereumClassic %temp_p_wallet_EthereumClassic%>> wallets.cmd
        echo set p_wallet_Jupiter=%temp_p_wallet_Jupiter%>> wallets.cmd
        echo setx p_wallet_Jupiter %temp_p_wallet_Jupiter%>> wallets.cmd
        echo set p_wallet_Karlsen=%temp_p_wallet_Karlsen%>> wallets.cmd
        echo setx p_wallet_Karlsen %temp_p_wallet_Karlsen%>> wallets.cmd
        echo set p_wallet_Kaspa=%temp_p_wallet_Kaspa%>> wallets.cmd
        echo setx p_wallet_Kaspa %temp_p_wallet_Kaspa%>> wallets.cmd
        echo set p_wallet_Keva=%temp_p_wallet_Keva%>> wallets.cmd
        echo setx p_wallet_Keva %temp_p_wallet_Keva%>> wallets.cmd
        echo set p_wallet_MecuAI=%temp_p_wallet_MecuAI%>> wallets.cmd
        echo setx p_wallet_MecuAI %temp_p_wallet_MecuAI%>> wallets.cmd
        echo set p_wallet_Monero=%temp_p_wallet_Monero%>> wallets.cmd
        echo setx p_wallet_Monero %temp_p_wallet_Monero%>> wallets.cmd
        echo set p_wallet_Neoxa=%temp_p_wallet_Neoxa%>> wallets.cmd
        echo setx p_wallet_Neoxa %temp_p_wallet_Neoxa%>> wallets.cmd
        echo set p_wallet_Neurai=%temp_p_wallet_Neurai%>> wallets.cmd
        echo setx p_wallet_Neurai %temp_p_wallet_Neurai%>> wallets.cmd
        echo set p_wallet_Nexa=%temp_p_wallet_Nexa%>> wallets.cmd
        echo setx p_wallet_Nexa %temp_p_wallet_Nexa%>> wallets.cmd
        echo set p_wallet_Pepe=%temp_p_wallet_Pepe%>> wallets.cmd
        echo setx p_wallet_Pepe %temp_p_wallet_Pepe%>> wallets.cmd
        echo set p_wallet_Pyrin=%temp_p_wallet_Pyrin%>> wallets.cmd
        echo setx p_wallet_Pyrin %temp_p_wallet_Pyrin%>> wallets.cmd
        echo set p_wallet_QuantumRL=%temp_p_wallet_QuantumRL%>> wallets.cmd
        echo setx p_wallet_QuantumRL %temp_p_wallet_QuantumRL%>> wallets.cmd
        echo set p_wallet_Raptoreum=%temp_p_wallet_Raptoreum%>> wallets.cmd
        echo setx p_wallet_Raptoreum %temp_p_wallet_Raptoreum%>> wallets.cmd
        echo set p_wallet_RavenCoin=%temp_p_wallet_RavenCoin%>> wallets.cmd
        echo setx p_wallet_RavenCoin %temp_p_wallet_RavenCoin%>> wallets.cmd
        echo set p_wallet_Reaction=%temp_p_wallet_Reaction%>> wallets.cmd
        echo setx p_wallet_Reaction %temp_p_wallet_Reaction%>> wallets.cmd
        echo set p_wallet_Ripple=%temp_p_wallet_Ripple%>> wallets.cmd
        echo setx p_wallet_Ripple %temp_p_wallet_Ripple%>> wallets.cmd
        echo set p_wallet_ShibaInu=%temp_p_wallet_ShibaInu%>> wallets.cmd
        echo setx p_wallet_ShibaInu %temp_p_wallet_ShibaInu%>> wallets.cmd
        echo set p_wallet_Solana=%temp_p_wallet_Solana%>> wallets.cmd
        echo setx p_wallet_Solana %temp_p_wallet_Solana%>> wallets.cmd
        echo set p_wallet_Tether=%temp_p_wallet_Tether%>> wallets.cmd
        echo setx p_wallet_Tether %temp_p_wallet_Tether%>> wallets.cmd
        echo set p_wallet_Tron=%temp_p_wallet_Tron%>> wallets.cmd
        echo setx p_wallet_Tron %temp_p_wallet_Tron%>> wallets.cmd
        if %use_xmrigCC%==true (
            echo set p_wallet_Yada=%temp_p_wallet_Yada%>> wallets.cmd
            echo setx p_wallet_Yada %temp_p_wallet_Yada%>> wallets.cmd            
        )
        echo set p_wallet_Zephyr=%temp_p_wallet_Zephyr%>> wallets.cmd
        echo setx p_wallet_Zephyr %temp_p_wallet_Zephyr%>> wallets.cmd
        echo call %p_name%.cmd >> wallets.cmd
        call wallets.cmd
    )


:SELECT_WORKER
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [95m- Available Commands -[0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m T [0m[95m- Toggle Persistent Addresses [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m D [0m[95m- Delete Persistent Addresses [0m
    echo.
    if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
    if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m
    echo.
    set select_worker=%WORKER%
    set /p select_worker="[7;96m::: INPUT :::[0m Set a new Worker Name [93m(Currently: %WORKER%)[0m > "
    if "%select_worker%"=="x" set select_worker=X
    if "%select_worker%"=="X" goto :LOGOUT
    if "%select_worker%"=="r" set select_worker=R
    if "%select_worker%"=="R" goto :START_OVER
    if "%select_worker%"=="d" set select_worker=D
    if "%select_worker%"=="D" goto :W_ADDRESS_RESET
    if "%select_worker%"=="t" set select_worker=T
    if "%select_worker%"=="T" goto :W_ADDRESS_TOGGLE
    set WORKER=%select_worker%
    if %Shortcut%==false goto :SELECT_COIN
    if %Shortcut%==true goto :SHORTCUT

:SHORTCUT
    @REM Delete xmrigControl Old Shortcut
    if not %WORKER%==%TEMP_MINER% (
        if exist %old_shortcut_loc% (
            if %Debug%==true echo [7;94m::: SETUP :::[0m[94m Deleting old shortcut. [0m
            del %old_shortcut_loc%
        )
    )

    @REM Create xmrigControl Shortcut
    set shortcut_loc=%Shortcut_Location%\!WORKER!.lnk
    set LOG=".\%~N0_runtime.log"
    if exist %shortcut_loc% (
        if %Debug%==true echo [7;94m::: SETUP :::[0m[94m Found existing shortcut. [0m
        set TEMP_MINER=%WORKER%
        setx TEMP_MINER %WORKER%
        goto :SELECT_COIN
    ) 
    if not exist %shortcut_loc% (
        set cSctVBS=CreateShortcut.vbs
        ((
        echo Set oWS = WScript.CreateObject^("WScript.Shell"^)
        echo sLinkFile = oWS.ExpandEnvironmentStrings^("!shortcut_loc!"^)
        echo Set oLink = oWS.CreateShortcut^(sLinkFile^)
        echo oLink.TargetPath = oWS.ExpandEnvironmentStrings^("%cd%\%p_name%.cmd"^)
        echo oLink.IconLocation = "%shortcut_icon%"
        echo oLink.WindowStyle = "1"
        echo oLink.WorkingDirectory = "%cd%"
        echo oLink.Save
        )1>!cSctVBS!
        cscript //nologo .\!cSctVBS!
        DEL !cSctVBS! /f /q
        )1>>!LOG! 2>>&1
        if exist !LOG! del !LOG!
        if %Debug%==true echo [7;94m::: SETUP :::[0m[94m Shortcut successfully Created. [0m
        set TEMP_MINER=%WORKER%
        setx TEMP_MINER %WORKER%
        goto :SELECT_COIN
    )

:SELECT_COIN
    if %TemporaryWallets%==true (
        set wallet_AIPowerGrid=%t_wallet_AIPowerGrid%
        set wallet_Alephium=%t_wallet_Alephium%
        set wallet_Avalanche=%t_wallet_Avalanche%
        set wallet_Binance=%t_wallet_Binance%
        set wallet_Bitcoin=%t_wallet_Bitcoin%
        set wallet_BitcoinCash=%t_wallet_BitcoinCash%
        set wallet_Bonk=%t_wallet_Bonk%
        set wallet_Cardano=%t_wallet_Cardano%
        set wallet_Clore=%t_wallet_Clore%
        set wallet_Cosmos=%t_wallet_Cosmos%
        set wallet_Dagger=%t_wallet_Dagger%
        set wallet_DogeCoin=%t_wallet_DogeCoin%
        set wallet_Dynex=%t_wallet_Dynex%
        set wallet_EnjinCoin=%t_wallet_EnjinCoin%
        set wallet_Ethereum=%t_wallet_Ethereum%
        set wallet_EthereumClassic=%t_wallet_EthereumClassic%
        set wallet_Jupiter=%t_wallet_Jupiter%
        set wallet_Karlsen=%t_wallet_Karlsen%
        set wallet_Kaspa=%t_wallet_Kaspa%
        set wallet_Keva=%t_wallet_Keva%
        set wallet_MecuAI=%t_wallet_MecuAI%
        set wallet_Monero=%t_wallet_Monero%
        set wallet_Neoxa=%t_wallet_Neoxa%
        set wallet_Neurai=%t_wallet_Neurai%
        set wallet_Nexa=%t_wallet_Nexa%
        set wallet_Pepe=%t_wallet_Pepe%
        set wallet_Pyrin=%t_wallet_Pyrin%
        set wallet_QuantumRL=%t_wallet_QuantumRL%
        set wallet_Raptoreum=%t_wallet_Raptoreum%
        set wallet_RavenCoin=%t_wallet_RavenCoin%
        set wallet_Reaction=%t_wallet_Reaction%
        set wallet_Ripple=%t_wallet_Ripple%
        set wallet_ShibaInu=%t_wallet_ShibaInu%
        set wallet_Solana=%t_wallet_Solana%
        set wallet_Tether=%t_wallet_Tether%
        set wallet_Tron=%t_wallet_Tron%
        set wallet_Yada=%t_wallet_Yada%
        set wallet_Zephyr=%t_wallet_Zephyr%
    ) else (
        set wallet_AIPowerGrid=%p_wallet_AIPowerGrid%
        set wallet_Alephium=%p_wallet_Alephium%
        set wallet_Avalanche=%p_wallet_Avalanche%
        set wallet_Binance=%p_wallet_Binance%
        set wallet_Bitcoin=%p_wallet_Bitcoin%
        set wallet_BitcoinCash=%p_wallet_BitcoinCash%
        set wallet_Bonk=%p_wallet_Bonk%
        set wallet_Cardano=%p_wallet_Cardano%
        set wallet_Clore=%p_wallet_Clore%
        set wallet_Cosmos=%p_wallet_Cosmos%
        set wallet_Dagger=%p_wallet_Dagger%
        set wallet_DogeCoin=%p_wallet_DogeCoin%
        set wallet_Dynex=%p_wallet_Dynex%
        set wallet_EnjinCoin=%p_wallet_EnjinCoin%
        set wallet_Ethereum=%p_wallet_Ethereum%
        set wallet_EthereumClassic=%p_wallet_EthereumClassic%
        set wallet_Jupiter=%p_wallet_Jupiter%
        set wallet_Karlsen=%p_wallet_Karlsen%
        set wallet_Kaspa=%p_wallet_Kaspa%
        set wallet_Keva=%p_wallet_Keva%
        set wallet_MecuAI=%p_wallet_MecuAI%
        set wallet_Monero=%p_wallet_Monero%
        set wallet_Neoxa=%p_wallet_Neoxa%
        set wallet_Neurai=%p_wallet_Neurai%
        set wallet_Nexa=%p_wallet_Nexa%
        set wallet_Pepe=%p_wallet_Pepe%
        set wallet_Pyrin=%p_wallet_Pyrin%
        set wallet_QuantumRL=%p_wallet_QuantumRL%
        set wallet_Raptoreum=%p_wallet_Raptoreum%
        set wallet_RavenCoin=%p_wallet_RavenCoin%
        set wallet_Reaction=%p_wallet_Reaction%
        set wallet_Ripple=%p_wallet_Ripple%
        set wallet_ShibaInu=%p_wallet_ShibaInu%
        set wallet_Solana=%p_wallet_Solana%
        set wallet_Tether=%p_wallet_Tether%
        set wallet_Tron=%p_wallet_Tron%
        set wallet_Yada=%p_wallet_Yada%
        set wallet_Zephyr=%p_wallet_Zephyr%
    )
    set coin_select=false
    set FoundCoin=false
    set UnMineable=false
    set CPU=false
    set GPU=false
    set AMD=false
    set NVIDIA=false
    set CAN_SELECT_UnMineable=false
    set OUTPUT_CODE=%global_discount_code%
    set temp_TLS=%TLS%
    set combine_worker=true
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [95m- Available Commands -[0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m T [0m[95m- Toggle Persistent Addresses [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m D [0m[95m- Delete Persistent Addresses [0m
    echo.
    if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
    if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m
    echo.
    echo [93m::: Coins available for mining [0m
    echo [7;93m   [0m[96m AIPG  [0m[93m= AI Power Grid [0m
    echo [7;93m   [0m[96m ALPH  [0m[93m= Alephium [0m
    echo [7;93m   [0m[96m AVAX  [0m[93m= Avalanche [0m
    echo [7;93m   [0m[96m BNB   [0m[93m= Binance Coin [0m
    echo [7;93m   [0m[96m BTC   [0m[93m= Bitcoin [0m
    echo [7;93m   [0m[96m BCH   [0m[93m= Bitcoin Cash [0m
    echo [7;93m   [0m[96m BONK  [0m[93m= Bonk [0m
    echo [7;93m   [0m[96m ADA   [0m[93m= Cardano [0m
    echo [7;93m   [0m[96m CLORE [0m[93m= Clore AI [0m
    echo [7;93m   [0m[96m ATOM  [0m[93m= Cosmos [0m
    if %use_xmrigCC%==true echo [7;93m   [0m[96m XDAG  [0m[93m= Dagger [0m
    echo [7;93m   [0m[96m DOGE  [0m[93m= Doge Coin [0m
    echo [7;93m   [0m[96m DNX   [0m[93m= Dynex [0m
    echo [7;93m   [0m[96m ENJ   [0m[93m= Enjin Coin [0m
    echo [7;93m   [0m[96m ETH   [0m[93m= Ethereum [0m
    echo [7;93m   [0m[96m ETC   [0m[93m= Ethereum Classic [0m
    echo [7;93m   [0m[96m JUP   [0m[93m= Jupiter [0m
    echo [7;93m   [0m[96m KLS   [0m[93m= Karlsen [0m
    echo [7;93m   [0m[96m KAS   [0m[93m= Kaspa [0m
    echo [7;93m   [0m[96m KVA   [0m[93m= Keva [0m
    echo [7;93m   [0m[96m MECU  [0m[93m= MecuAI [0m
    echo [7;93m   [0m[96m XMR   [0m[93m= Monero [0m
    echo [7;93m   [0m[96m NEOX  [0m[93m= Neoxa [0m
    echo [7;93m   [0m[96m XNA   [0m[93m= Neurai [0m
    echo [7;93m   [0m[96m NEXA  [0m[93m= Nexa [0m
    echo [7;93m   [0m[96m PEPE  [0m[93m= Pepe [0m
    echo [7;93m   [0m[96m PYI   [0m[93m= Pyrin [0m
    echo [7;93m   [0m[96m QRL   [0m[93m= Quantum Resistant Ledger [0m
    echo [7;93m   [0m[96m RTM   [0m[93m= Raptoreum [0m
    echo [7;93m   [0m[96m RVN   [0m[93m= Raven Coin [0m
    echo [7;93m   [0m[96m RTC   [0m[93m= Reaction [0m
    echo [7;93m   [0m[96m XRP   [0m[93m= Ripple [0m
    echo [7;93m   [0m[96m SHIB  [0m[93m= Shiba Inu [0m
    echo [7;93m   [0m[96m SOL   [0m[93m= Solana [0m
    echo [7;93m   [0m[96m USDT  [0m[93m= Tether US [0m
    echo [7;93m   [0m[96m TRX   [0m[93m= Tron [0m
    if %use_xmrigCC%==true echo [7;93m   [0m[96m YDA   [0m[93m= Yada [0m
    echo [7;93m   [0m[96m ZEPH  [0m[93m= Zephyr [0m
    echo.
    set /p coin_select="[7;96m::: INPUT :::[0m What Coin would you like to mine? [93m(Coin Tag)[0m > "
    if "%coin_select%"=="x" set coin_select=X
    if "%coin_select%"=="X" goto :LOGOUT
    if "%coin_select%"=="r" set coin_select=R
    if "%coin_select%"=="R" goto :START_OVER
    if "%coin_select%"=="d" set coin_select=D
    if "%coin_select%"=="D" goto :W_ADDRESS_RESET
    if "%coin_select%"=="t" set coin_select=T
    if "%coin_select%"=="T" goto :W_ADDRESS_TOGGLE
@REM  AIPG - GPU
    if "%coin_select%"=="AIPG" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_AIPowerGrid%

        set GPU=true
        set OUTPUT_ALGO=kawpow
        set OUTPUT_POOL=%pool_AIPowerGrid%
        
        set use_discount=false
    )
@REM  ALPH - UnMineable
    if "%coin_select%"=="ALPH" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Alephium%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Alephium%
    )
@REM  AVAX - UnMineable
    if "%coin_select%"=="AVAX" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Avalanche%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Avalanche%
    )
@REM  BNB - UnMineable
    if "%coin_select%"=="BNB" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Binance%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Binance%
    )
@REM  BTC - UnMineable
    if "%coin_select%"=="BTC" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Bitcoin%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Bitcoin%
    )
@REM  BCH - UnMineable
    if "%coin_select%"=="BCH" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_BitcoinCash%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_BitcoinCash%
    )
@REM  Bonk - UnMineable
    if "%coin_select%"=="BONK" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Bonk%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Bonk%
    )
@REM  ADA - UnMineable
    if "%coin_select%"=="ADA" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Cardano%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Cardano%
    )
@REM  CLORE - GPU
    if "%coin_select%"=="CLORE" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Clore%

        set GPU=true
        set OUTPUT_ALGO=kawpow
        set OUTPUT_POOL=%pool_Clore%
        
        set use_discount=false
    )
@REM  ATOM - UnMineable
    if "%coin_select%"=="ATOM" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Cosmos%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Cosmos%
    )
@REM  XDAG - CPU
    if %use_xmrigCC%==true (
        if "%coin_select%"=="XDAG" ( 
            set FoundCoin=true
            set OUTPUT_WALLET=%wallet_Dagger%

            set temp_TLS=false
            set combine_worker=false

            set CPU=true
            set OUTPUT_ALGO=rx/xdag
            set OUTPUT_POOL=%pool_Dagger%

            set use_discount=false
        )        
    )
@REM  DOGE - UnMineable
    if "%coin_select%"=="DOGE" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_DogeCoin%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_DogeCoin%
    )
@REM  DNX - UnMineable
    if "%coin_select%"=="DNX" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Dynex%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Dynex%
    )
@REM  ENJ - UnMineable
    if "%coin_select%"=="ENJ" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_EnjinCoin%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_EnjinCoin%
    )
@REM  ETH - UnMineable
    if "%coin_select%"=="ETH" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Ethereum%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Ethereum%
    )
@REM  ETC - UnMineable
    if "%coin_select%"=="ETC" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_EthereumClassic%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_EthereumClassic%
    )
@REM  JUP - UnMineable
        if "%coin_select%"=="JUP" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Jupiter%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Jupiter%
    )
@REM  KLS - UnMineable
        if "%coin_select%"=="KLS" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Karlsen%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Karlsen%
    )
@REM  KAS - UnMineable
        if "%coin_select%"=="KAS" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Kaspa%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Kaspa%
    )
@REM  KVA - CPU
    if "%coin_select%"=="KVA" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Keva%
        
        set combine_worker=false
        set Password=%WORKER%

        set CPU=true
        set OUTPUT_ALGO=rx/keva
        set OUTPUT_POOL=%pool_Keva%

        set use_discount=false
    )
@REM  MECU - CPU
    if "%coin_select%"=="MECU" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_MecuAI%

        set CPU=true
        set OUTPUT_ALGO=gr
        set OUTPUT_POOL=%pool_MecuAI%

        set use_discount=false
    )
@REM  XMR - UnMineable / CPU
    if "%coin_select%"=="XMR" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Monero%

        set CPU=true
        set OUTPUT_ALGO=rx/0
        set OUTPUT_POOL=%pool_Monero%

        set CAN_SELECT_UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Monero%
    )
@REM  NEOX - UnMineable / GPU
    if "%coin_select%"=="NEOX" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Neoxa%

        set GPU=true
        set OUTPUT_ALGO=kawpow
        set OUTPUT_POOL=%pool_Neoxa%

        set CAN_SELECT_UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Neoxa%
    )
@REM  XNA - GPU
    if "%coin_select%"=="XNA" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Neurai%

        set GPU=true
        set OUTPUT_ALGO=kawpow
        set OUTPUT_POOL=%pool_Neurai%

        set use_discount=false
    )
@REM  NEXA - UnMineable
    if "%coin_select%"=="NEXA" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Nexa%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Nexa%
    )
@REM  PEPE - UnMineable
    if "%coin_select%"=="PEPE" (
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Pepe%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Pepe%
    )
@REM  PYI - UnMineable
    if "%coin_select%"=="PYI" (
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Pyrin%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Pyrin%
    )
@REM  QRL - CPU
    if "%coin_select%"=="QRL" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_QuantumRL%

        set CPU=true
        set OUTPUT_ALGO=rx/0
        set OUTPUT_POOL=%pool_QuantumRL%

        set use_discount=false
    )
@REM  RTM - CPU
    if "%coin_select%"=="RTM" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Raptoreum%

        set CPU=true
        set OUTPUT_ALGO=gr
        set OUTPUT_POOL=%pool_Raptoreum%

        set use_discount=false
    )
@REM  RVN - UnMineable / GPU
    if "%coin_select%"=="RVN" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_RavenCoin%

        set GPU=true
        set OUTPUT_ALGO=kawpow
        set OUTPUT_POOL=%pool_RavenCoin%

        set CAN_SELECT_UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_RavenCoin%
    )
@REM  RTC - CPU
    if "%coin_select%"=="RTC" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Reaction%

        set CPU=true
        set OUTPUT_ALGO=gr
        set OUTPUT_POOL=%pool_Reaction%

        set use_discount=false
    )
@REM  XRP - UnMineable
    if "%coin_select%"=="XRP" (
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Ripple%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Ripple%
    )
@REM  SHIB - UnMineable
    if "%coin_select%"=="SHIB" (
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_ShibaInu%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_ShibaInu%
    )
@REM  SOL - UnMineable
    if "%coin_select%"=="SOL" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Solana%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Solana%
    )
@REM  USDT - UnMineable
    if "%coin_select%"=="USDT" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Tether%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Tether%
    )
@REM  TRX - UnMineable
    if "%coin_select%"=="TRX" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Tron%

        set UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Tron%
    )
@REM  YDA - CPU
    if %use_xmrigCC%==true (
        if "%coin_select%"=="YDA" ( 
            set FoundCoin=true
            set OUTPUT_WALLET=%wallet_Yada%

            set temp_TLS=false

            set CPU=true
            set OUTPUT_ALGO=rx/yada
            set OUTPUT_POOL=%pool_Yada%

            set use_discount=false
        )        
    )
@REM  ZEPH - UnMineable / CPU
    if "%coin_select%"=="ZEPH" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Zephyr%

        set CPU=true
        set OUTPUT_ALGO=rx/0
        set OUTPUT_POOL=%pool_Zephyr%

        set CAN_SELECT_UnMineable=true
        if %use_global_discount%==false set OUTPUT_CODE=%discount_Zephyr%
    )

    if %FoundCoin%==false goto :SELECT_COIN
    if %FoundCoin%==true (
        if %CAN_SELECT_UnMineable%==true goto :SELECT_UNMINEABLE
        if %UnMineable%==true goto :SELECT_GPU
        if %GPU%==true goto :SELECT_GPU_TYPE
        if %CPU%==true goto :SOLO
        
    )

:SELECT_UNMINEABLE
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [95m- Available Commands -[0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m T [0m[95m- Toggle Persistent Addresses [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m D [0m[95m- Delete Persistent Addresses [0m
    echo.
    if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
    if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m
    echo.
    set unmineable_select=false
    set /p unmineable_select="[7;96m::: INPUT :::[0m Use UnMineable Pools for mining? [93m(Currently: %UnMineable%)[0m ([96mY[0m/[96mN[0m) > "
    if "%unmineable_select%"=="x" set unmineable_select=X
    if "%unmineable_select%"=="X" goto :LOGOUT
    if "%unmineable_select%"=="r" set unmineable_select=R
    if "%unmineable_select%"=="R" goto :START_OVER
    if "%unmineable_select%"=="d" set unmineable_select=D
    if "%unmineable_select%"=="D" goto :W_ADDRESS_RESET
    if "%unmineable_select%"=="t" set unmineable_select=T
    if "%unmineable_select%"=="T" goto :W_ADDRESS_TOGGLE
    if "%unmineable_select%"=="y" set unmineable_select=Y
    if "%unmineable_select%"=="Y" (
        set UnMineable=true
        set temp_TLS=%TLS%
        goto :SELECT_GPU
    ) else (
        set UnMineable=false
        if %GPU%==true goto :SELECT_GPU_TYPE
        if %CPU%==true goto :SOLO
        goto :START_OVER
    )

:SELECT_GPU
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [95m- Available Commands -[0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m T [0m[95m- Toggle Persistent Addresses [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m D [0m[95m- Delete Persistent Addresses [0m
    echo.
    if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
    if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m
    echo [7;94m::: SETUP :::[0m[94m Using UnMineable Pools. [0m
    echo.
    set use_gpu=false
    set /p use_gpu="[7;96m::: INPUT :::[0m Are you interested in using the [93mGPU[0m? [93m(Currently: %GPU%)[0m ([96mY[0m/[96mN[0m) > "
    if "%use_gpu%"=="x" set use_gpu=X
    if "%use_gpu%"=="X" goto :LOGOUT
    if "%use_gpu%"=="r" set use_gpu=R
    if "%use_gpu%"=="R" goto :START_OVER
    if "%use_gpu%"=="d" set use_gpu=D
    if "%use_gpu%"=="D" goto :W_ADDRESS_RESET
    if "%use_gpu%"=="t" set use_gpu=T
    if "%use_gpu%"=="T" goto :W_ADDRESS_TOGGLE
    if "%use_gpu%"=="y" set use_gpu=Y
    if "%use_gpu%"=="Y" set use_gpu=true

    if %use_gpu%==true (
        set GPU=true
        set CPU=false
        set OUTPUT_ALGO=%algo_gpu%
        set OUTPUT_POOL=%pool_gpu%
        goto :SELECT_GPU_TYPE
    ) else (
        set GPU=false
        set CPU=true
        set OUTPUT_ALGO=%algo_cpu%
        set OUTPUT_POOL=%pool_cpu%
        goto :SOLO
    )

:SELECT_GPU_TYPE
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [95m- Available Commands -[0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m T [0m[95m- Toggle Persistent Addresses [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m D [0m[95m- Delete Persistent Addresses [0m
    echo.
    if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
    if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m
    if %UnMineable%==true echo [7;94m::: SETUP :::[0m[94m Using UnMineable Pools. [0m
    echo.
    set use_amd_gpu=false
    set /p use_amd_gpu="[7;96m::: INPUT :::[0m Are you using [93mAMD GPU[0m? [93m(Currently: %AMD%)[0m ([96mY[0m/[96mN[0m) > " 
    if "%use_amd_gpu%"=="x" set use_amd_gpu=X
    if "%use_amd_gpu%"=="X" goto :LOGOUT
    if "%use_amd_gpu%"=="r" set use_amd_gpu=R
    if "%use_amd_gpu%"=="R" goto :START_OVER
    if "%use_amd_gpu%"=="d" set use_amd_gpu=D
    if "%use_amd_gpu%"=="D" goto :W_ADDRESS_RESET
    if "%use_amd_gpu%"=="t" set use_amd_gpu=T
    if "%use_amd_gpu%"=="T" goto :W_ADDRESS_TOGGLE
    if "%use_amd_gpu%"=="y" set use_amd_gpu=Y
    if "%use_amd_gpu%"=="Y" set use_amd_gpu=true
    if %use_amd_gpu%==true (
        set AMD=true
        set NVIDIA=false
        goto :SOLO
    ) else (
        set AMD=false
        set NVIDIA=true
        goto :NVIDIA_CUDA
    )

:NVIDIA_CUDA
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [95m- Available Commands -[0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m X [0m[95m- Quit Program [0m
    echo [7;95m:::   CMD  :::[0m[95m -[0m[93m R [0m[95m- Restart Configuration [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m T [0m[95m- Toggle Persistent Addresses [0m
    echo [7;95m::: WALLET :::[0m[95m -[0m[93m D [0m[95m- Delete Persistent Addresses [0m
    echo.
    if %TemporaryWallets%==true echo [7;94m::: SETUP :::[0m[94m Using Temporary wallets addresses. [0m
    if %TemporaryWallets%==false echo [7;94m::: SETUP :::[0m[94m Using Persistent wallets addresses. [0m
    if %UnMineable%==true echo [7;94m::: SETUP :::[0m[94m Using UnMineable Pools. [0m
    echo.
    set download_cuda=false
    set need_download_cuda=false
    if not exist %XMRig_Folder%/xmrig-cuda.dll (
        set need_download_cuda=true
        echo [7;91m::: ERROR :::[0m[91m Cannot find XMRig nvidia cuda, Make sure it is located in the same folder as XMRig. [0m
        set /p download_cuda="[7;96m::: INPUT :::[0m Would you like to Download [93mXMRig Nvidia Cuda[0m? ([96mY[0m/[96mN[0m) > "
    )
    if "%download_cuda%"=="x" set download_cuda=X
    if "%download_cuda%"=="X" goto :LOGOUT
    if "%download_cuda%"=="r" set download_cuda=R
    if "%download_cuda%"=="R" goto :START_OVER
    if "%download_cuda%"=="d" set download_cuda=D
    if "%download_cuda%"=="D" goto :W_ADDRESS_RESET
    if "%download_cuda%"=="t" set download_cuda=T
    if "%download_cuda%"=="T" goto :W_ADDRESS_TOGGLE
    if "%download_cuda%"=="y" set download_cuda=Y
    if "%download_cuda%"=="Y" set download_cuda=true

    if %need_download_cuda%==true (
        if %download_cuda%==true (
            echo [7;94m::: SETUP :::[0m[94m Downloading XMRig Nvidia Cuda installation file... [0m
            curl --output install_xmrig_cuda.cmd -LO https://raw.githubusercontent.com/UnLuckyLust/xmrigControl/cmd/commands/install_xmrig_cuda.cmd
            call install_xmrig_cuda.cmd
        ) else (
            echo [7;91m::: ERROR :::[0m[91m Can not start mining, Failed to setup Nvidia GPU Processor! [0m
            timeout /t %TimeOut%
            goto :START_OVER
        )
    ) else (
        if %Debug%==true echo [7;92m::: SUCCESS :::[0m[92m XMRig nvidia cuda Found. [0m
        goto :SOLO
    )

:SOLO
    set use_SoloMining=false
    if %UnMineable%==true goto :CONFIG
    if %SoloMining%==false goto :CONFIG
    set /p use_SoloMining="[7;96m::: INPUT :::[0m Would you like to add [93mSolo Mining[0m tag? [93m(Currently: %use_SoloMining%)[0m ([96mY[0m/[96mN[0m) > "
    if "%use_SoloMining%"=="x" set use_SoloMining=X
    if "%use_SoloMining%"=="X" goto :LOGOUT
    if "%use_SoloMining%"=="r" set use_SoloMining=R
    if "%use_SoloMining%"=="R" goto :START_OVER
    if "%use_SoloMining%"=="d" set use_SoloMining=D
    if "%use_SoloMining%"=="D" goto :W_ADDRESS_RESET
    if "%use_SoloMining%"=="t" set use_SoloMining=T
    if "%use_SoloMining%"=="T" goto :W_ADDRESS_TOGGLE
    if "%use_SoloMining%"=="y" set use_SoloMining=Y
    if "%use_SoloMining%"=="Y" set use_SoloMining=true
    if %use_SoloMining%==true (
        set OUTPUT_WALLET=solo:%OUTPUT_WALLET%
    )
    goto :CONFIG

:CONFIG
    set TLS=%temp_TLS%
    if %combine_worker%==true set OUTPUT_WALLET=%OUTPUT_WALLET%.%WORKER%

    if %UnMineable%==true set OUTPUT_WALLET=%coin_select%:%OUTPUT_WALLET%
    if %UnMineable%==true ( if %use_discount%==true set OUTPUT_WALLET=%OUTPUT_WALLET%#%OUTPUT_CODE% )
    
    set OUTPUT_WALLET=%OUTPUT_WALLET: =%
    set OUTPUT_POOL=%OUTPUT_POOL: =%
    set OUTPUT_ALGO=%OUTPUT_ALGO: =%

    set CONFIG={ "api": { "id": null, "worker-id": null }, "http": { "enabled": false, "host": "127.0.0.1", "port": 0, "access-token": null, "restricted": true }, "autosave": true, "background": !background!, "colors": true, "title": "!WORKER!", "randomx": { "init": -1, "init-avx2": -1, "mode": "!xmr_mode!", "1gb-pages": !1gb-pages!, "rdmsr": true, "wrmsr": true, "cache_qos": false, "numa": true, "scratchpad_prefetch_mode": !scratchpad_prefetch_mode! }, "cpu": { "enabled": !CPU!, "huge-pages": !huge-pages!, "huge-pages-jit": !huge-pages-jit!, "hw-aes": null, "priority": !cpu_priority!, "memory-pool": !memory-pool!, "yield": !yield!, "force-autoconfig": false, "max-threads-hint": !max-threads-hint!, "max-cpu-usage": !max_cpu_usage!, "asm": true, "argon2-impl": null, "cn/0": false, "cn-lite/0": false }, "opencl": { "enabled": !AMD!, "cache": true, "loader": null, "platform": "AMD", "adl": true, "cn/0": false, "cn-lite/0": false }, "cuda": { "enabled": !NVIDIA!, "loader": "!XMRig_Folder!/xmrig-cuda.dll", "nvml": true, "cn/0": false, "cn-lite/0": false }, "donate-level": !Donate_Level!, "donate-over-proxy": !Donate_Level!, "log-file": null, "pools": [ { "algo": "!OUTPUT_ALGO!", "coin": null, "url": "!OUTPUT_POOL!", "user": "!OUTPUT_WALLET!", "pass": "!Password!", "rig-id": "!WORKER!", "nicehash": !NiceHash!, "keepalive": false, "enabled": true, "tls": !TLS!, "tls-fingerprint": null, "daemon": false, "socks5": null, "self-select": null, "submit-to-origin": false } ], "cc-client": { "enabled": !activate_CC_client!, "servers": [ { "url": "!CC_server_url!", "access-token": "!CC_server_access_token!", "use-tls": !CC_server_tls! } ], "use-remote-logging": true, "upload-config-on-start": true, "worker-id": "!WORKER!", "reboot-cmd": null, "update-interval-s": 10, "retries-to-failover": 5 }, "print-time": 60, "health-print-time": 60, "dmi": true, "retries": 5, "retry-pause": 5, "syslog": false, "tls": { "enabled": false, "protocols": null, "cert": null, "cert_key": null, "ciphers": null, "ciphersuites": null, "dhparam": null }, "dns": { "ipv6": false, "ttl": 30 }, "user-agent": null, "verbose": 0, "watch": true, "pause-on-battery": false, "pause-on-active": false }

    echo %CONFIG% > config.json
    if exist config.json (
        echo [7;92m::: SUCCESS :::[0m[92m Configuration file created successfully. [0m
    ) else (
        echo [7;91m::: ERROR :::[0m[91m Failed to create configuration file. [0m
    )
    goto :START_MINER

:START_MINER
    cls
    echo [7;93m::: INFO :::[0m[93m %p_name% - Version %p_version% [0m
    echo.
    echo [7;92m::: SUCCESS :::[0m[92m Starting XMRig Miner Program. [0m
    echo.
    if %UnMineable%==true echo [7;94m::: SETUP :::[0m[94m Using UnMineable Pools [0m
    echo [7;94m::: SETUP :::[0m[94m Worker Name -[0m[97m %WORKER% [0m
    echo [7;94m::: SETUP :::[0m[94m Coin -[0m[97m %coin_select% [0m
    echo [7;94m::: SETUP :::[0m[94m Algorithm -[0m[97m %OUTPUT_ALGO% [0m
    set OUTPUT_CPU=CPU
    if %GPU%==true set OUTPUT_CPU=GPU
    echo [7;94m::: SETUP :::[0m[94m Miner Hardware -[0m[97m %OUTPUT_CPU% [0m
    set OUTPUT_GPU_TYPE=NVIDIA
    if %AMD%==true set OUTPUT_GPU_TYPE=AMD
    if %GPU%==true echo [7;94m::: SETUP :::[0m[94m GPU Type -[0m[97m %OUTPUT_GPU_TYPE% [0m
    echo [7;94m::: SETUP :::[0m[94m XMRig Donate Level -[0m[97m %Donate_Level%[0m%%
    if %UnMineable%==false echo [7;94m::: SETUP :::[0m[94m Pool Address -[0m[97m %OUTPUT_POOL% [0m
    echo [7;94m::: SETUP :::[0m[94m Wallet Address -[0m[97m %OUTPUT_WALLET% [0m
    timeout /t %TimeOut%
    %xmrig_p_name%.exe

:START_OVER
    call %p_name%.cmd

:LOGOUT
    cls
    echo [7;91m::: ERROR :::[0m[91m Shutting Down %p_name%. [0m
    exit