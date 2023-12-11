@REM Written by UnLuckyLust (https://DreamsWeaver.co) - https://github.com/UnLuckyLust/UnLuckyMiner
@REM ! IMPORTANT ! This cmd file is made for XMRig crypto currency miner, it can be flagged by your antivirus.

@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"
@REM -----------------------------------
@REM ↧↧↧ Start of configuration area ↧↧↧
@REM -----------------------------------
@REM ! IMPORTANT ! Change the XMRig_Folder value to the XMRig directory path, or place this file in the XMRig folder to use an existing XMRig installation.
@REM ! IMPORTANT ! Leave XMRig_Folder value as it is to download a fresh installation of XMRig in the current folder. (Will download XMRig version 6.21.0 from GitHub)
@REM ! IMPORTANT ! Due limitations of JSON format, Windows directory separator should be escaped like \\ or written in Unix style like /.
    set XMRig_Folder=%cd:\=/%

@REM ----------------------
@REM ↧↧↧ Pools Settings ↧↧↧
@REM ----------------------
    set MINER=UnLuckyMiner

@REM UnMineable CPU Pool Settings
    set algo_cpu=rx/0
    set pool_cpu=stratum+ssl://rx-eu.unmineable.com:443

@REM UnMineable GPU Pool Settings
    set algo_gpu=kawpow
    set pool_gpu=stratum+ssl://kp-eu.unmineable.com:443

@REM Custom Pools addresses
    set pool_Clore=stratum+ssl://tr.clore.herominers.com:1163
    set pool_Monero=stratum+ssl://xmr-eu1.nanopool.org:10343
    set pool_Neoxa=stratum+ssl://neox.2miners.com:4040
    set pool_Raptoreum=stratum+ssl://eu.flockpool.com:5555
    set pool_RavenCoin=rvn.2miners.com:6060
    set pool_Zephyr=stratum+ssl://tr.zephyr.herominers.com:1123

@REM ----------------------------------------------------------------------------------------------------------------
@REM By default the program will not use the section below, and will ask for wallet addresses on the initial startup.
@REM If you want to use temporary wallet addresses on your current rig change to ( set TemporaryWallets=true ), and fill in your wallet addresses in the section below.
@REM If you want to change the addresses to the temporary or vice versa after the initial setup, send the command "t"
@REM If you want to reset the persistent addresses on your current rig, send the command "r"
@REM ----------------------------------------------------------------------------------------------------------------
    if "%TemporaryWallets%"=="" set TemporaryWallets=false
@REM -----------------------------------
@REM ↧↧↧ Temporary wallets addresses ↧↧↧
@REM -----------------------------------    
    set t_wallet_Avalanche=0xb01083a46AC44862F6f41c9F420Cbdc405A7b765
    set t_wallet_Bitcoin=bc1qm6x7lcgck5h8lrrs9glv243mty0pnv72236sz8
    set t_wallet_BitcoinCash=1Adtmi4FdwfCrBdHCbYJyBwuyTiA6n1Q9j
    set t_wallet_Clore=AUJZmq919Ujsn9jRfkcVSNA1txUewy467W
    set t_wallet_DogeCoin=DHRQi6qMF7KdFthUhjaTDh42HN6Rp2jdXq
    set t_wallet_EnjinCoin=0xb01083a46AC44862F6f41c9F420Cbdc405A7b765
    set t_wallet_Ethereum=0xb01083a46AC44862F6f41c9F420Cbdc405A7b765
    set t_wallet_EthereumClassic=0xdB334D2B4D6B10cc7e84a4927e3bcf6e9a75A629
    set t_wallet_Karlsen=karlsen:qp9yaplt6nl35cz6sc9ltmzj52afncjnycdvgf62k4nqac8yu0syusdnvzraa
    set t_wallet_Kaspa=kaspa:qyp4h36wejns6zfddah5wqrclnawrl74lrlqjnhf7gjccy03jh6j8zs4e6grwud
    set t_wallet_Monero=48rfHy6xMMQCKCJTAdojzqcKbtvFYhkvB5giRfbzF6wv5wGDMfJLjzsWL1njt6y7PSJYY7F6QajQFXXNfmw5cuGj61vQSVL
    set t_wallet_Neoxa=GXjY2uyeji7qEBxVF93mKRQ9snUzoZPfdx
    set t_wallet_Nexa=nexa:nqtsq5g5az4f8xuy5kg3u499ml0mrdsfle7jgtru99a33xyc
    set t_wallet_ShibaInu=0xb01083a46AC44862F6f41c9F420Cbdc405A7b765
    set t_wallet_Solana=3BQMMAUaGbTg6A9Fr7t6kPmSw7c41WEkKWWJJ5Yra4qo
    set t_wallet_RavenCoin=RQ2oVQHg4ETZkCL7fkvbJRpfcvGc47XvsF
    set t_wallet_Raptoreum=RVJ57sidiLD8EVHvEnRrBUeyBaPoKVh2yZ
    set t_wallet_Zephyr=ZEPHYR3d46PJL5fM5C4Lu2XHHmt9opnjuhzMvJXTxjgmftPsKmUzrzVE4GmPsSCWWeKe7DzjmQuPXaqqDoiPziBkVtfCyW2STTC2m

@REM ---------------------------------
@REM ↧↧↧ UnMineable Discount Codes ↧↧↧
@REM ---------------------------------
    set use_discount=true
    set use_global_discount=true
    set global_discount_code=or99-ie7s

    set discount_Avalanche=5n2s-3fhd
    set discount_Bitcoin=gaxo-qwnd
    set discount_BitcoinCash=9m4d-usmh
    set discount_DogeCoin=x0x8-zqtb
    set discount_EnjinCoin=4twy-lc6o
    set discount_Ethereum=9y1u-abm2
    set discount_EthereumClassic=s1fn-193o
    set discount_Karlsen=g1o5-lb1g
    set discount_Kaspa=k7cp-oyfk
    set discount_Monero=mky5-uf5c
    set discount_Nexa=st3u-qrcx
    set discount_ShibaInu=or99-ie7s
    set discount_Solana=6yt7-80iq
    set discount_RavenCoin=b0fn-70b3
    set discount_Zephyr=f60t-hqix

@REM ----------------------
@REM ↧↧↧ Debug Settings ↧↧↧
@REM ----------------------
    set Debug=false
    set TLS=true
    set Donate=1
    set Password=x
    set NiceHash=false
    set shortcut=true
    set shortcut_location=%cd%
    set shortcut_icon=%cd%\xmrig.exe
@REM ---------------------------------
@REM ↥↥↥ End of configuration area ↥↥↥
@REM ---------------------------------

if exist %XMRig_Folder% ( cd %XMRig_Folder% ) else exit
if exist config.json del config.json
if exist install_xmrig.cmd del install_xmrig.cmd
if exist install_xmrig_cuda.cmd del install_xmrig_cuda.cmd
setx TemporaryWallets %TemporaryWallets%
set p_name=UnLuckyMiner
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
if "%TEMP_MINER%"=="" ( set TEMP_MINER=%MINER% )
set old_shortcut_loc=%shortcut_location%\!TEMP_MINER!.lnk
set TimeOut=10

@REM XMRig Check
set RExmrig=start
if exist %XMRig_Folder%/xmrig.exe (
    set RExmrig=pass
) else (
    echo [7;94m::: IMPORTANT :::[0m[94m This cmd file is made for XMRig crypto currency miner, it can be flagged by your antivirus. [0m
    echo [7;94m::: IMPORTANT :::[0m[94m If you want to use XMRig miner make sure whitelist the folder in your antivirus. [0m
    echo [7;91m::: ERROR :::[0m[91m Cannot find XMRig, make sure the address is set correctly. [0m
    set /p RExmrig="[7;96m::: INPUT :::[0m Would you like to download [93mXMRig 6.21.0[0m? ([96mY[0m/[96mN[0m) > "
)
if "%RExmrig%"=="x" exit
if "%RExmrig%"=="s" (
    call %p_name%.cmd
)
if "%RExmrig%"=="Y" ( set RExmrig=true ) else (
    if "%RExmrig%"=="y" ( set RExmrig=true ) else (
        if %RExmrig%==pass ( set RExmrig=pass ) else set RExmrig=false
    )
)

if %RExmrig%==true (
    echo [7;94m::: SETUP :::[0m[94m Downloading XMRig installation file... [0m
    curl --output install_xmrig.cmd -LO https://raw.githubusercontent.com/UnLuckyLust/UnLuckyMiner/cmd/commands/install_xmrig.cmd
    call install_xmrig.cmd
) else (
    if %RExmrig%==pass (
        if %Debug%==true echo [7;92m::: SUCCESS :::[0m[92m XMRig Mining Program Found. [0m
    ) else (
        echo [7;91m::: ERROR :::[0m[91m Can not start mining, Failed to find XMRig Mining Program. [0m
        timeout /t %TimeOut%
        exit  
    )
)
cls
set Version=1.3.1
echo [7;93m::: INFO :::[0m[93m %p_name% - Version %Version% [0m
echo [7;95m::: COMMAND :::[0m [95me[0m[7;95mx[0m[95mit[0m
echo [7;95m::: COMMAND :::[0m [7;95ms[0m[95mtart over[0m
echo [7;95m::: COMMAND :::[0m [7;95mt[0m[95moggle persistent addresses[0m
echo [7;95m::: COMMAND :::[0m [7;95mr[0m[95meset persistent addresses[0m

if "%Reset_Addresses%"=="" (
    set Reset_Addresses=false
    setx Reset_Addresses false  
)
set confirm_reset=false

if "%Toggle_Temporary_Addresses%"=="" (
    set Toggle_Temporary_Addresses=false
    setx Toggle_Temporary_Addresses false  
)

@REM Version Check
if "%UnLuckyMiner_Version%"=="" (
    if %Debug%==true echo [7;94m::: SETUP :::[0m[94m %p_name% No Older Version found. [0m
    set UnLuckyMiner_Version=0
    setx UnLuckyMiner_Version 0
)
if %Version%==%UnLuckyMiner_Version% (
    if %Debug%==true echo [7;94m::: SETUP :::[0m[94m %p_name% Current Version found. [0m
) else (
    echo [7;94m::: SETUP :::[0m[94m %p_name% new version found. [0m
    echo [7;94m::: SETUP :::[0m[94m Resetting... [0m
    set new_version=true
    echo [7;94m::: SETUP :::[0m[94m Running %p_name% Wallets Setup. [0m
    set Reset_Addresses=true
    set confirm_reset=true
)

@REM Persistent Wallets Reset
set client_confirm_reset=false
if %confirm_reset%==false (
    if %Reset_Addresses%==true (
        set /p client_confirm_reset="[7;96m::: INPUT :::[0m Are you sure you want to reset all persistent wallets addresses? ([96mY[0m/[96mN[0m) > "
    )
)
if "%client_confirm_reset%"=="x" exit
if "%client_confirm_reset%"=="s" (
    call %p_name%.cmd
)
if "%client_confirm_reset%"=="Y" ( set client_confirm_reset=true ) else (
    if "%client_confirm_reset%"=="y" set client_confirm_reset=true
)
if %client_confirm_reset%==true (
    set confirm_reset=true
) else (
    if %Reset_Addresses%==true (
        set Reset_Addresses=false
        setx Reset_Addresses false 
    )
)
if %confirm_reset%==true (
    set p_wallet_Avalanche=NO_WALLET_ADDRESS
    setx p_wallet_Avalanche NO_WALLET_ADDRESS
    set p_wallet_Bitcoin=NO_WALLET_ADDRESS
    setx p_wallet_Bitcoin NO_WALLET_ADDRESS
    set p_wallet_BitcoinCash=NO_WALLET_ADDRESS
    setx p_wallet_BitcoinCash NO_WALLET_ADDRESS
    set p_wallet_Clore=NO_WALLET_ADDRESS
    setx p_wallet_Clore NO_WALLET_ADDRESS
    set p_wallet_DogeCoin=NO_WALLET_ADDRESS
    setx p_wallet_DogeCoin NO_WALLET_ADDRESS
    set p_wallet_EnjinCoin=NO_WALLET_ADDRESS
    setx p_wallet_EnjinCoin NO_WALLET_ADDRESS
    set p_wallet_Ethereum=NO_WALLET_ADDRESS
    setx p_wallet_Ethereum NO_WALLET_ADDRESS
    set p_wallet_EthereumClassic=NO_WALLET_ADDRESS
    setx p_wallet_EthereumClassic NO_WALLET_ADDRESS
    set p_wallet_Karlsen=NO_WALLET_ADDRESS
    setx p_wallet_Karlsen NO_WALLET_ADDRESS
    set p_wallet_Kaspa=NO_WALLET_ADDRESS
    setx p_wallet_Kaspa NO_WALLET_ADDRESS
    set p_wallet_Monero=NO_WALLET_ADDRESS
    setx p_wallet_Monero NO_WALLET_ADDRESS
    set p_wallet_Neoxa=NO_WALLET_ADDRESS
    setx p_wallet_Neoxa NO_WALLET_ADDRESS
    set p_wallet_Nexa=NO_WALLET_ADDRESS
    setx p_wallet_Nexa NO_WALLET_ADDRESS
    set p_wallet_ShibaInu=NO_WALLET_ADDRESS
    setx p_wallet_ShibaInu NO_WALLET_ADDRESS
    set p_wallet_Solana=NO_WALLET_ADDRESS
    setx p_wallet_Solana NO_WALLET_ADDRESS
    set p_wallet_RavenCoin=NO_WALLET_ADDRESS
    setx p_wallet_RavenCoin NO_WALLET_ADDRESS
    set p_wallet_Raptoreum=NO_WALLET_ADDRESS
    setx p_wallet_Raptoreum NO_WALLET_ADDRESS
    set p_wallet_Zephyr=NO_WALLET_ADDRESS
    setx p_wallet_Zephyr NO_WALLET_ADDRESS

    set UnLuckyMiner_Version=%Version%
    setx UnLuckyMiner_Version %Version%
    set Reset_Addresses=false
    setx Reset_Addresses false
    if exist wallets.cmd del wallets.cmd
    call %p_name%.cmd
) else (
    if %Reset_Addresses%==true (
        set Reset_Addresses=false
        setx Reset_Addresses false 
    )
)

if "%new_version%"=="" set new_version=false
if %new_version%==true (
    echo [7;94m::: SETUP :::[0m[94m New version applied. [0m
    echo [7;94m::: SETUP :::[0m[94m Need to restart %p_name%. [0m
    set TemporaryWallets=""
    setx TemporaryWallets ""
    timeout /t %TimeOut%
    exit
)

@REM Persistent Wallets Toggle
set client_confirm_toggle=pass
set toggle_option=pass
if %Toggle_Temporary_Addresses%==true (
    if %TemporaryWallets%==false ( 
        set /p client_confirm_toggle="[7;96m::: INPUT :::[0m Are you sure you want to [93mDisable[0m persistent wallets addresses? ([96mY[0m/[96mN[0m) > "
        set toggle_option=false
    ) else (
        set /p client_confirm_toggle="[7;96m::: INPUT :::[0m Are you sure you want to [93mEnable[0m persistent wallets addresses? ([96mY[0m/[96mN[0m) > "
        set toggle_option=true
    )
)
if "%client_confirm_toggle%"=="x" exit
if "%client_confirm_toggle%"=="s" (
    call %p_name%.cmd
)
if "%client_confirm_toggle%"=="Y" (
    set client_confirm_toggle=true
) else (
    if "%client_confirm_toggle%"=="y" (
        set client_confirm_toggle=true
    ) else (
        if "%client_confirm_toggle%"=="N" (
            set client_confirm_toggle=false
        ) else (
            if "%client_confirm_toggle%"=="n" (
                set client_confirm_toggle=false
            ) else ( 
                set client_confirm_toggle=pass
                set toggle_option=pass
            )
        )
    )
)
if %client_confirm_toggle%==true (
    if %toggle_option%==true (
        set TemporaryWallets=false
        setx TemporaryWallets false
    )
    if %toggle_option%==false (
        set TemporaryWallets=true
        setx TemporaryWallets true
    ) 
    set Toggle_Temporary_Addresses=false
    setx Toggle_Temporary_Addresses false
) else (
    if %Toggle_Temporary_Addresses%==true (
        set Toggle_Temporary_Addresses=false
        setx Toggle_Temporary_Addresses false
    )
)
if %client_confirm_toggle%==true (
    if %toggle_option%==true (
        echo [7;93m::: INFO :::[0m[93m persistent wallets addresses [0m[7;92mactivated[0m[93m.[0m
    ) else (
        if %toggle_option%==false (
            echo [7;93m::: INFO :::[0m[93m persistent wallets addresses [0m[7;91mdisabled[0m[93m.[0m
            echo [7;94m::: SETUP :::[0m[94m Need to restart %p_name%. [0m
            timeout /t %TimeOut%
            exit
        )
    )
)

@REM Set Wallets 
if %TemporaryWallets%==true (
    set wallet_Avalanche=%t_wallet_Avalanche%
    set wallet_Bitcoin=%t_wallet_Bitcoin%
    set wallet_BitcoinCash=%t_wallet_BitcoinCash%
    set wallet_Clore=%t_wallet_Clore%
    set wallet_DogeCoin=%t_wallet_DogeCoin%
    set wallet_EnjinCoin=%t_wallet_EnjinCoin%
    set wallet_Ethereum=%t_wallet_Ethereum%
    set wallet_EthereumClassic=%t_wallet_EthereumClassic%
    set wallet_Karlsen=%t_wallet_Karlsen%
    set wallet_Kaspa=%t_wallet_Kaspa%
    set wallet_Monero=%t_wallet_Monero%
    set wallet_ShibaInu=%t_wallet_ShibaInu%
    set wallet_Neoxa=%t_wallet_Neoxa%
    set wallet_Nexa=%t_wallet_Nexa%
    set wallet_Solana=%t_wallet_Solana%
    set wallet_RavenCoin=%t_wallet_RavenCoin%
    set wallet_Raptoreum=%t_wallet_Raptoreum%
    set wallet_Zephyr=%t_wallet_Zephyr%
    echo [7;94m::: SETUP :::[0m[94m Using temporary wallets addresses. [0m
) else (
    set wallet_Avalanche=%p_wallet_Avalanche%
    set wallet_Bitcoin=%p_wallet_Bitcoin%
    set wallet_BitcoinCash=%p_wallet_BitcoinCash%
    set wallet_Clore=%p_wallet_Clore%
    set wallet_DogeCoin=%p_wallet_DogeCoin%
    set wallet_EnjinCoin=%p_wallet_EnjinCoin%
    set wallet_Ethereum=%p_wallet_Ethereum%
    set wallet_EthereumClassic=%p_wallet_EthereumClassic%
    set wallet_Karlsen=%p_wallet_Karlsen%
    set wallet_Kaspa=%p_wallet_Kaspa%
    set wallet_Monero=%p_wallet_Monero%
    set wallet_ShibaInu=%p_wallet_ShibaInu%
    set wallet_Neoxa=%p_wallet_Neoxa%
    set wallet_Nexa=%p_wallet_Nexa%
    set wallet_Solana=%p_wallet_Solana%
    set wallet_RavenCoin=%p_wallet_RavenCoin%
    set wallet_Raptoreum=%p_wallet_Raptoreum%
    set wallet_Zephyr=%p_wallet_Zephyr%
    echo [7;94m::: SETUP :::[0m[94m Using persistent wallets addresses. [0m
)

set Reset_Wallet=false
set New_Wallet=false

@REM Avalanche Wallet Address
if "%wallet_Avalanche%"=="" set wallet_Avalanche=NO_WALLET_ADDRESS
if "%wallet_Avalanche%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Avalanche [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Avalanche=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Bitcoin Wallet Address
if "%wallet_Bitcoin%"=="" set wallet_Bitcoin=NO_WALLET_ADDRESS
if "%wallet_Bitcoin%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set New_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Bitcoin [0m> "
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Bitcoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Bitcoin Cash Wallet Address
if "%wallet_BitcoinCash%"=="" set wallet_BitcoinCash=NO_WALLET_ADDRESS
if "%wallet_BitcoinCash%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Bitcoin Cash [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_BitcoinCash=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Clore AI Wallet Address
if "%wallet_Clore%"=="" set wallet_Clore=NO_WALLET_ADDRESS
if "%wallet_Clore%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Clore AI [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Clore=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Doge Coin Wallet Address
if "%wallet_DogeCoin%"=="" set wallet_DogeCoin=NO_WALLET_ADDRESS
if "%wallet_DogeCoin%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Doge Coin [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_DogeCoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Enjin Coin Wallet Address
if "%wallet_EnjinCoin%"=="" set wallet_EnjinCoin=NO_WALLET_ADDRESS
if "%wallet_EnjinCoin%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Enjin Coin [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_EnjinCoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Ethereum Wallet Address
if "%wallet_Ethereum%"=="" set wallet_Ethereum=NO_WALLET_ADDRESS
if "%wallet_Ethereum%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Ethereum [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Ethereum=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Ethereum Classic Wallet Address
if "%wallet_EthereumClassic%"=="" set wallet_EthereumClassic=NO_WALLET_ADDRESS
if "%wallet_EthereumClassic%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Ethereum Classic [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    cls
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_EthereumClassic=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Karlsen Wallet Address
if "%wallet_Karlsen%"=="" set wallet_Karlsen=NO_WALLET_ADDRESS
if "%wallet_Karlsen%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Karlsen [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Karlsen=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Kaspa Wallet Address
if "%wallet_Kaspa%"=="" set wallet_Kaspa=NO_WALLET_ADDRESS
if "%wallet_Kaspa%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Kaspa [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Kaspa=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Monero Wallet Address
if "%wallet_Monero%"=="" set wallet_Monero=NO_WALLET_ADDRESS
if "%wallet_Monero%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Monero [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Monero=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Neoxa Wallet Address
if "%wallet_Neoxa%"=="" set wallet_Neoxa=NO_WALLET_ADDRESS
if "%wallet_Neoxa%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Neoxa [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    cls
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Neoxa=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Nexa Wallet Address
if "%wallet_Nexa%"=="" set wallet_Nexa=NO_WALLET_ADDRESS
if "%wallet_Nexa%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Nexa [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Nexa=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Shiba Inu Wallet Address
if "%wallet_ShibaInu%"=="" set wallet_ShibaInu=NO_WALLET_ADDRESS
if "%wallet_ShibaInu%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Shiba Inu [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_ShibaInu=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Solana Wallet Address
if "%wallet_Solana%"=="" set wallet_Solana=NO_WALLET_ADDRESS
if "%wallet_Solana%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Solana [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Solana=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Raven Coin Wallet Address
if "%wallet_RavenCoin%"=="" set wallet_RavenCoin=NO_WALLET_ADDRESS
if "%wallet_RavenCoin%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Raven Coin [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_RavenCoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Raptoreum Wallet Address
if "%wallet_Raptoreum%"=="" set wallet_Raptoreum=NO_WALLET_ADDRESS
if "%wallet_Raptoreum%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Raptoreum [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Raptoreum=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Zephyr Wallet Address
if "%wallet_Zephyr%"=="" set wallet_Zephyr=NO_WALLET_ADDRESS
if "%wallet_Zephyr%"=="NO_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="[7;96m::: INPUT :::[0m Set the wallet address for[93m Zephyr [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="s" (
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Zephyr=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=NO_WALLET_ADDRESS
)

@REM Save Wallets
if %New_Wallet%==true (
    echo [7;94m::: SETUP :::[0m[94m Saving New Wallets Addresses. [0m
    if exist wallets.cmd del wallets.cmd
    echo @REM Written by UnLuckyLust - https://DreamsWeaver.co - https://github.com/UnLuckyLust/UnLuckyMiner > wallets.cmd
    echo @REM Auto Generated File from - %p_name% Persistent Wallets: Version %Version% >> wallets.cmd
    echo @echo off >> wallets.cmd
    echo cls >> wallets.cmd
    echo echo [7;93m::: INFO :::[0m[93m %p_name% Wallets - Version %Version% [0m >> wallets.cmd
    echo set p_wallet_Avalanche=%p_wallet_Avalanche% >> wallets.cmd
    echo setx p_wallet_Avalanche %p_wallet_Avalanche% >> wallets.cmd
    echo set p_wallet_Bitcoin=%p_wallet_Bitcoin% >> wallets.cmd
    echo setx p_wallet_Bitcoin %p_wallet_Bitcoin% >> wallets.cmd
    echo set p_wallet_BitcoinCash=%p_wallet_BitcoinCash% >> wallets.cmd
    echo setx p_wallet_BitcoinCash %p_wallet_BitcoinCash% >> wallets.cmd
    echo set p_wallet_Clore=%p_wallet_Clore% >> wallets.cmd
    echo setx p_wallet_Clore %p_wallet_Clore% >> wallets.cmd
    echo set p_wallet_DogeCoin=%p_wallet_DogeCoin% >> wallets.cmd
    echo setx p_wallet_DogeCoin %p_wallet_DogeCoin% >> wallets.cmd
    echo set p_wallet_EnjinCoin=%p_wallet_EnjinCoin% >> wallets.cmd
    echo setx p_wallet_EnjinCoin %p_wallet_EnjinCoin% >> wallets.cmd
    echo set p_wallet_Ethereum=%p_wallet_Ethereum% >> wallets.cmd
    echo setx p_wallet_Ethereum %p_wallet_Ethereum% >> wallets.cmd
    echo set p_wallet_EthereumClassic=%p_wallet_EthereumClassic% >> wallets.cmd
    echo setx p_wallet_EthereumClassic %p_wallet_EthereumClassic% >> wallets.cmd
    echo set p_wallet_Karlsen=%p_wallet_Karlsen% >> wallets.cmd
    echo setx p_wallet_Karlsen %p_wallet_Karlsen% >> wallets.cmd
    echo set p_wallet_Kaspa=%p_wallet_Kaspa% >> wallets.cmd
    echo setx p_wallet_Kaspa %p_wallet_Kaspa% >> wallets.cmd
    echo set p_wallet_Monero=%p_wallet_Monero% >> wallets.cmd
    echo setx p_wallet_Monero %p_wallet_Monero% >> wallets.cmd
    echo set p_wallet_Neoxa=%p_wallet_Neoxa% >> wallets.cmd
    echo setx p_wallet_Neoxa %p_wallet_Neoxa% >> wallets.cmd
    echo set p_wallet_Nexa=%p_wallet_Nexa% >> wallets.cmd
    echo setx p_wallet_Nexa %p_wallet_Nexa% >> wallets.cmd
    echo set p_wallet_ShibaInu=%p_wallet_ShibaInu% >> wallets.cmd
    echo setx p_wallet_ShibaInu %p_wallet_ShibaInu% >> wallets.cmd
    echo set p_wallet_Solana=%p_wallet_Solana% >> wallets.cmd
    echo setx p_wallet_Solana %p_wallet_Solana% >> wallets.cmd
    echo set p_wallet_RavenCoin=%p_wallet_RavenCoin% >> wallets.cmd
    echo setx p_wallet_RavenCoin %p_wallet_RavenCoin% >> wallets.cmd
    echo set p_wallet_Raptoreum=%p_wallet_Raptoreum% >> wallets.cmd
    echo setx p_wallet_Raptoreum %p_wallet_Raptoreum% >> wallets.cmd
    echo set p_wallet_Zephyr=%p_wallet_Zephyr% >> wallets.cmd
    echo setx p_wallet_Zephyr %p_wallet_Zephyr% >> wallets.cmd
    echo call %p_name%.cmd >> wallets.cmd
call wallets.cmd
)

if %Debug%==true ( 
    echo [7;93m::: INFO :::[0m[93m Avalanche wallet address -[0m[97m %wallet_Avalanche% [0m
    echo [7;93m::: INFO :::[0m[93m Bitcoin wallet address -[0m[97m %wallet_Bitcoin% [0m
    echo [7;93m::: INFO :::[0m[93m Bitcoin Cash wallet address -[0m[97m %wallet_BitcoinCash% [0m
    echo [7;93m::: INFO :::[0m[93m Clore AI wallet address -[0m[97m %wallet_Clore% [0m
    echo [7;93m::: INFO :::[0m[93m Doge Coin wallet address -[0m[97m %wallet_DogeCoin% [0m
    echo [7;93m::: INFO :::[0m[93m Enjin Coin wallet address -[0m[97m %wallet_EnjinCoin% [0m
    echo [7;93m::: INFO :::[0m[93m Ethereum wallet address -[0m[97m %wallet_Ethereum% [0m
    echo [7;93m::: INFO :::[0m[93m Ethereum Classic wallet address -[0m[97m %wallet_EthereumClassic% [0m
    echo [7;93m::: INFO :::[0m[93m Karlsen wallet address -[0m[97m %wallet_Karlsen% [0m
    echo [7;93m::: INFO :::[0m[93m Kaspa wallet address -[0m[97m %wallet_Kaspa% [0m
    echo [7;93m::: INFO :::[0m[93m Monero wallet address -[0m[97m %wallet_Monero% [0m
    echo [7;93m::: INFO :::[0m[93m Neoxa wallet address -[0m[97m %wallet_Neoxa% [0m
    echo [7;93m::: INFO :::[0m[93m Nexa wallet address -[0m[97m %wallet_Nexa% [0m
    echo [7;93m::: INFO :::[0m[93m Shiba Inu wallet address -[0m[97m %wallet_ShibaInu% [0m
    echo [7;93m::: INFO :::[0m[93m Solana wallet address -[0m[97m %wallet_Solana% [0m
    echo [7;93m::: INFO :::[0m[93m Raven Coin wallet address -[0m[97m %wallet_RavenCoin% [0m
    echo [7;93m::: INFO :::[0m[93m Raptoreum wallet address -[0m[97m %wallet_Raptoreum% [0m
    echo [7;93m::: INFO :::[0m[93m Zephyr wallet address -[0m[97m %wallet_Zephyr% [0m
)

@REM Worker Name
set /p MINER="[7;96m::: INPUT :::[0m What is the name of the worker? [93m(Currently: %MINER%)[0m > "
if "%MINER%"=="x" exit
if "%MINER%"=="s" (
    call %p_name%.cmd
)
if "%MINER%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%MINER%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)

@REM Choose Coin
set FoundCoin=false
set UnMineable=false
set CPU=false
set GPU=false
set AMD=false
set NVIDIA=false
set OUTPUT_CODE=%global_discount_code%
echo [7;93m::: INFO :::[0m[93m Coins available for mining: [0m
echo [7;93m::: INFO :::[0m[96m AVAX  [0m[0m[93m= Avalanche [0m
echo [7;93m::: INFO :::[0m[96m BCH   [0m[0m[93m= Bitcoin Cash [0m
echo [7;93m::: INFO :::[0m[96m BTC   [0m[0m[93m= Bitcoin [0m
echo [7;93m::: INFO :::[0m[96m CLORE [0m[0m[93m= Clore AI [0m
echo [7;93m::: INFO :::[0m[96m DOGE  [0m[0m[93m= Doge Coin [0m
echo [7;93m::: INFO :::[0m[96m ENJ   [0m[0m[93m= Enjin Coin [0m
echo [7;93m::: INFO :::[0m[96m ETC   [0m[0m[93m= Ethereum Classic [0m
echo [7;93m::: INFO :::[0m[96m ETH   [0m[0m[93m= Ethereum [0m
echo [7;93m::: INFO :::[0m[96m KLS   [0m[0m[93m= Karlsen [0m
echo [7;93m::: INFO :::[0m[96m KAS   [0m[0m[93m= Kaspa [0m
echo [7;93m::: INFO :::[0m[96m NEXA  [0m[0m[93m= Nexa [0m
echo [7;93m::: INFO :::[0m[96m NEOX  [0m[0m[93m= Neoxa [0m
echo [7;93m::: INFO :::[0m[96m RTM   [0m[0m[93m= Raptoreum [0m
echo [7;93m::: INFO :::[0m[96m RVN   [0m[0m[93m= Raven Coin [0m
echo [7;93m::: INFO :::[0m[96m SHIB  [0m[0m[93m= Shiba Inu [0m
echo [7;93m::: INFO :::[0m[96m SOL   [0m[0m[93m= Solana [0m
echo [7;93m::: INFO :::[0m[96m XMR   [0m[0m[93m= Monero [0m
echo [7;93m::: INFO :::[0m[96m ZEPH  [0m[0m[93m= Zephyr [0m

set /p Coin="[7;96m::: INPUT :::[0m What Coin would you like to mine? [93m(Coin Tag)[0m > "
if "%Coin%"=="x" exit
if "%Coin%"=="s" (
    call %p_name%.cmd
)
if "%Coin%"=="r" ( 
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Coin%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
@REM  AVAX - UnMineable
if "%Coin%"=="AVAX" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Avalanche%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_Avalanche%
)
@REM  BCH - UnMineable
if "%Coin%"=="BCH" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_BitcoinCash%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_BitcoinCash%
)
@REM  BTC - UnMineable
if "%Coin%"=="BTC" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Bitcoin%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_Bitcoin%
)
@REM  CLORE - GPU
if "%Coin%"=="CLORE" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Clore%

    set GPU=true
    set OUTPUT_ALGO=kawpow
    set OUTPUT_POOL=%pool_Clore%
    
    set use_discount=false
)
@REM  DOGE - UnMineable
if "%Coin%"=="DOGE" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_DogeCoin%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_DogeCoin%
)
@REM  ENJ - UnMineable
if "%Coin%"=="ENJ" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_EnjinCoin%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_EnjinCoin%
)
@REM  ETC - UnMineable
if "%Coin%"=="ETC" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_EthereumClassic%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_EthereumClassic%
)
@REM  ETH - UnMineable
if "%Coin%"=="ETH" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Ethereum%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_Ethereum%
)
@REM  KLS - UnMineable
    if "%Coin%"=="KLS" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Karlsen%

    set UnMineable=true
if %use_global_discount%==false set OUTPUT_CODE=%discount_Karlsen%
)
@REM  KAS - UnMineable
    if "%Coin%"=="KAS" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Kaspa%

    set UnMineable=true
if %use_global_discount%==false set OUTPUT_CODE=%discount_Kaspa%
)
@REM  NEOX - GPU
if "%Coin%"=="NEOX" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Neoxa%

    set GPU=true
    set OUTPUT_ALGO=kawpow
    set OUTPUT_POOL=%pool_Neoxa%

    set use_discount=false
)
@REM  NEXA - UnMineable
if "%Coin%"=="NEXA" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Nexa%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_Nexa%
)
@REM  SHIB - UnMineable
if "%Coin%"=="SHIB" (
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_ShibaInu%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_ShibaInu%
)
@REM  SOL - UnMineable
if "%Coin%"=="SOL" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Solana%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_Solana%
)
@REM  RTM - CPU
if "%Coin%"=="RTM" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Raptoreum%

    set CPU=true
    set OUTPUT_ALGO=gr
    set OUTPUT_POOL=%pool_Raptoreum%

    set use_discount=false
)
@REM  RVN - UnMineable / GPU
if "%Coin%"=="RVN" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_RavenCoin%

    set TLS=false

    set GPU=true
    set OUTPUT_ALGO=kawpow
    set OUTPUT_POOL=%pool_RavenCoin%

    set CAN_SELECT_UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_RavenCoin%
)
@REM  XMR - UnMineable / CPU
if "%Coin%"=="XMR" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Monero%

    set CPU=true
    set OUTPUT_ALGO=rx/0
    set OUTPUT_POOL=%pool_Monero%

    set CAN_SELECT_UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_Monero%
)
@REM  ZEPH - UnMineable / CPU
if "%Coin%"=="ZEPH" ( 
    set FoundCoin=true
    set OUTPUT_WALLET=%wallet_Zephyr%

    set CPU=true
    set OUTPUT_ALGO=rx/0
    set OUTPUT_POOL=%pool_Zephyr%

    set CAN_SELECT_UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_Zephyr%
)

@REM Fail to Find Coin
if %FoundCoin%==false (
    echo [7;91m::: ERROR :::[0m[91m A configuration error occurred, Loading default setting! [0m
    set Coin=SHIB
    set OUTPUT_WALLET=%wallet_ShibaInu%

    set UnMineable=true
    if %use_global_discount%==false set OUTPUT_CODE=%discount_ShibaInu%

) else (
    if %Debug%==true echo [7;92m::: SUCCESS :::[0m[92m Configuration successfully applied! [0m
)
if %Debug%==true echo [7;93m::: INFO :::[0m[93m Coin -[0m[97m %Coin% [0m
if %Debug%==true echo [7;93m::: INFO :::[0m[93m Wallet Address -[0m[97m %OUTPUT_WALLET% [0m

@REM UnMineable Check
if "%CAN_SELECT_UnMineable%"=="" set CAN_SELECT_UnMineable=false
if %CAN_SELECT_UnMineable%==true set /p Use_UnMineable_Pool="[7;96m::: INPUT :::[0m Use UnMineable Pools for mining? [93m(Currently: %UnMineable%)[0m ([96mY[0m/[96mN[0m) > "
if "%Use_UnMineable_Pool%"=="x" exit
if "%Use_UnMineable_Pool%"=="s" (
    call %p_name%.cmd
)
if "%Use_UnMineable_Pool%"=="r" ( 
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%Use_UnMineable_Pool%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if "%Use_UnMineable_Pool%"=="Y" ( set UnMineable=true ) else (
    if "%Use_UnMineable_Pool%"=="y" ( set UnMineable=true ) else (
        if "%Use_UnMineable_Pool%"=="N" ( set UnMineable=false ) else (
            if "%Use_UnMineable_Pool%"=="n" ( set UnMineable=false )
        )
    )
)

@REM GPU Check - When Using UnMineable
set USEgpu=false
if %UnMineable%==true ( 
    set CPU=true
    set GPU=false
    set OUTPUT_WALLET=%Coin%:%OUTPUT_WALLET%
    set /p USEgpu="[7;96m::: INPUT :::[0m Are you interested in using the [93mGPU[0m? [93m(Currently: %GPU%)[0m ([96mY[0m/[96mN[0m) > "
)
if "%USEgpu%"=="x" exit
if "%USEgpu%"=="s" (
    call %p_name%.cmd
)
if "%USEgpu%"=="r" ( 
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%USEgpu%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if "%USEgpu%"=="Y" ( set USEgpu=true ) else (
    if "%USEgpu%"=="y" ( set USEgpu=true ) else ( set USEgpu=false )
)
if %USEgpu%==true (
    set GPU=true
    set CPU=false
    set OUTPUT_ALGO=%algo_gpu%
    set OUTPUT_POOL=%pool_gpu%
) else (
    if %UnMineable%==true (
        set GPU=false
        set CPU=true
        set OUTPUT_ALGO=%algo_cpu%
        set OUTPUT_POOL=%pool_cpu%
    )
)

@REM AMD GPU Check
set REgpu=false
if %GPU%==true (
    set /p REgpu="[7;96m::: INPUT :::[0m Are you using [93mAMD GPU[0m? [93m(Currently: %AMD%)[0m ([96mY[0m/[96mN[0m) > " 
)
if "%REgpu%"=="x" exit
if "%REgpu%"=="s" (
    call %p_name%.cmd
)
if "%REgpu%"=="r" ( 
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%REgpu%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if "%REgpu%"=="Y" ( set REgpu=true ) else (
    if "%REgpu%"=="y" ( set REgpu=true ) else set REgpu=false
)
if %REgpu%==true (
    set AMD=true
    set NVIDIA=false
) else (
    if %GPU%==true (
        set AMD=false
        set NVIDIA=true
    )
)

@REM XMRig Nvidia Cuda Check
set REcuda=false
if %NVIDIA%==true (
    if exist %XMRig_Folder%/xmrig-cuda.dll (
        set REcuda=pass
    ) else (
        echo [7;91m::: ERROR :::[0m[91m Cannot find XMRig nvidia cuda, Make sure it is located in the same folder as XMRig. [0m
        set /p REcuda="[7;96m::: INPUT :::[0m Would you like to download [93mXMRig nvidia cuda 6.17.0 cuda11_4[0m? ([96mY[0m/[96mN[0m) > "
    )
)
if "%REcuda%"=="x" exit
if "%REcuda%"=="s" (
    call %p_name%.cmd
)
if "%REcuda%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call %p_name%.cmd
)
if "%REcuda%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call %p_name%.cmd
)
if "%REcuda%"=="Y" ( set REcuda=true ) else (
    if "%REcuda%"=="y" set REcuda=true
)

if %REcuda%==true (
    echo [7;94m::: SETUP :::[0m[94m Downloading XMRig Nvidia Cuda installation file... [0m
    curl --output install_xmrig_cuda.cmd -LO https://raw.githubusercontent.com/UnLuckyLust/UnLuckyMiner/cmd/commands/install_xmrig_cuda.cmd
    call install_xmrig_cuda.cmd
) else (
    if %REcuda%==pass (
        if %Debug%==true echo [7;92m::: SUCCESS :::[0m[92m XMRig nvidia cuda Found. [0m
    ) else (
        if %NVIDIA%==true (
            echo [7;91m::: ERROR :::[0m[91m Can not start mining, Failed to setup Nvidia GPU Processor! [0m
            timeout /t %TimeOut%
            exit
        )
    )
)

@REM Fix Wallet
set OUTPUT_WALLET=%OUTPUT_WALLET%.%MINER%
if %UnMineable%==true (
    if %use_discount%==true set OUTPUT_WALLET=%OUTPUT_WALLET%#%OUTPUT_CODE%
)
set OUTPUT_WALLET=%OUTPUT_WALLET: =%

@REM Delete Old Shortcut
if %MINER%==%TEMP_MINER% (
        if %Debug%==true echo [7;94m::: SETUP :::[0m[94m The name of the shortcut remains the same. [0m
    ) else ( 
        if %shortcut%==true (
            if exist %old_shortcut_loc% (
                if %Debug%==true echo [7;94m::: SETUP :::[0m[94m Deleting old shortcut. [0m
                del %old_shortcut_loc%
            )
        )
    )
)

@REM Create Shortcut
set shortcut_loc=%shortcut_location%\!MINER!.lnk
set LOG=".\%~N0_runtime.log"
if %shortcut%==true (
    if exist %shortcut_loc% (
        if %Debug%==true echo [7;94m::: SETUP :::[0m[94m Found existing shortcut. [0m
    ) else (
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
    )
)

set TEMP_MINER=%MINER%
setx TEMP_MINER %MINER%

@REM Create Config File
cls
if %UnMineable%==true echo [7;94m::: SETUP :::[0m[94m Using UnMineable Pools [0m
echo [7;94m::: SETUP :::[0m[94m Worker Name -[0m[97m %MINER% [0m
echo [7;94m::: SETUP :::[0m[94m Coin -[0m[97m %Coin% [0m
echo [7;94m::: SETUP :::[0m[94m Algorithm -[0m[97m %OUTPUT_ALGO% [0m
set OUTPUT_CPU=CPU
if %GPU%==true set OUTPUT_CPU=GPU
echo [7;94m::: SETUP :::[0m[94m Miner Hardware -[0m[97m %OUTPUT_CPU% [0m
set OUTPUT_GPU_TYPE=NVIDIA
if %AMD%==true set OUTPUT_GPU_TYPE=AMD
if %GPU%==true echo [7;94m::: SETUP :::[0m[94m GPU Type -[0m[97m %OUTPUT_GPU_TYPE% [0m
echo [7;94m::: SETUP :::[0m[94m XMRig Donate Level -[0m[97m %Donate%[0m%%
if %UnMineable%==false echo [7;94m::: SETUP :::[0m[94m Pool Address -[0m[97m %OUTPUT_POOL% [0m
echo [7;94m::: SETUP :::[0m[94m Wallet Address -[0m[97m %OUTPUT_WALLET% [0m
set CONFIG={ "api": { "id": null, "worker-id": null }, "http": { "enabled": false, "host": "127.0.0.1", "port": 0, "access-token": null, "restricted": true }, "autosave": true, "background": false, "colors": true, "title": "%p_name%", "randomx": { "init": -1, "init-avx2": 1, "mode": "fast", "1gb-pages": true, "rdmsr": true, "wrmsr": true, "cache_qos": false, "numa": true, "scratchpad_prefetch_mode": 2 }, "cpu": { "enabled": %CPU%, "huge-pages": true, "huge-pages-jit": false, "hw-aes": null, "priority": null, "memory-pool": false, "yield": false, "max-threads-hint": 100, "asm": true, "argon2-impl": null, "cn/0": false, "cn-lite/0": false }, "opencl": { "enabled": %AMD%, "cache": true, "loader": null, "platform": "AMD", "adl": true, "cn/0": false, "cn-lite/0": false }, "cuda": { "enabled": %NVIDIA%, "loader": "%XMRig_Folder%/xmrig-cuda.dll", "nvml": true, "cn/0": false, "cn-lite/0": false }, "donate-level": %Donate%, "donate-over-proxy": %Donate%, "log-file": null, "pools": [{ "enabled": true, "coin": null, "algo": "%OUTPUT_ALGO%", "url": "%OUTPUT_POOL%", "user": "%OUTPUT_WALLET%", "pass": "%Password%", "rig-id": "%MINER%", "nicehash": %NiceHash%, "keepalive": true, "tls": %TLS%, "tls-fingerprint": null, "daemon": false, "socks5": null, "self-select": null, "submit-to-origin": false }], "print-time": 60, "health-print-time": 60, "dmi": true, "retries": 5, "retry-pause": 5, "syslog": false, "tls": { "enabled": false, "protocols": null, "cert": null, "cert_key": null, "ciphers": null, "ciphersuites": null, "dhparam": null }, "dns": { "ipv6": false, "ttl": 30 }, "user-agent": null, "verbose": 0, "watch": true, "pause-on-battery": false, "pause-on-active": false }
echo %CONFIG% > config.json
if exist config.json (
    echo [7;92m::: SUCCESS :::[0m[92m Configuration file created successfully. [0m
) else (
    echo [7;91m::: ERROR :::[0m[91m Failed to create configuration file. [0m
)

@REM Start XMRig
timeout /t %TimeOut%
xmrig.exe 
cmd /k
exit
