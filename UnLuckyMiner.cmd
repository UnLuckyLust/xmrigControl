@REM Written by UnLuckyLust (https://DreamsWeaver.co) - https://github.com/UnLuckyLust/UnLuckyMiner
@REM ! IMPORTANT ! This cmd is made for a cryptocurrency miner, it can be flagged by your antivirus.

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
@REM If you want to use temporary wallet addresses on all rigs change to ( set TemporaryWallets=true ), and fill in your wallet addresses in the section below.
@REM If you want to change the addresses to the temporary or vice versa after the initial setup, send the command "t"
@REM If you want to reset the persistent addresses on your current rig, send the command "r"
@REM ----------------------------------------------------------------------------------------------------------------
    if "%TemporaryWallets%"=="" ( set TemporaryWallets=false ) else (
        set TemporaryWallets=%TemporaryWallets%
    ) 
    setx TemporaryWallets %TemporaryWallets%
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
    set UnMineable=true
    set onFail=CPU
    set shortcut=true
    set shortcut_location=%cd%
    set shortcut_icon=%SystemRoot%\System32\cmd.exe
@REM ---------------------------------
@REM ↥↥↥ End of configuration area ↥↥↥
@REM ---------------------------------

if exist %XMRig_Folder% ( cd %XMRig_Folder% ) else exit
if exist config.json del config.json
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
if %Debug%==true echo [7;92m::: SUCCESS :::[0m[92m Running UnLuckyMiner as admin [0m

if "%TEMP_MINER%"=="" ( set TEMP_MINER=%MINER% )
set old_shortcut_loc=%shortcut_location%\!TEMP_MINER!.lnk

if "%RExmrig%"=="" (
    set RExmrig=false
)
if exist %XMRig_Folder%/xmrig.exe (
    set RExmrig=pass
) else (
    echo [7;94m::: IMPORTANT :::[0m[94m This cmd file is made for XMRig crypto currency miner, it can be flagged by your antivirus. [0m
    echo [7;94m::: IMPORTANT :::[0m[94m If you want to use XMRig miner make sure whitelist the folder in your antivirus. [0m
    echo [7;91m::: ERROR :::[0m[91m Cannot find XMRig, make sure the address is set correctly. [0m
    set /p RExmrig="Would you like to download [93mXMRig 6.21.0[0m? ([96mY[0m/[96mN[0m) > "
)
if "%RExmrig%"=="x" exit else (
    if "%RExmrig%"=="r" (
        set Reset_Addresses=true
        setx Reset_Addresses true
        call UnLuckyMiner.cmd
    ) else (
        if "%RExmrig%"=="Y" (
            set RExmrig=true
        ) else (
            if "%RExmrig%"=="y" (
                set RExmrig=true
            )
        )
    )
)
if "%RExmrig%"=="true" (
    if exist ./commands/install_xmrig.cmd (
        call ./commands/install_xmrig.cmd
    ) else (
        echo [7;91m::: ERROR :::[0m[91m Cannot find XMRig intsall command. [0m
        pause
        exit
    )
    set RExmrig=pass
) else (
    if "%RExmrig%"=="pass" (
        if %Debug%==true echo [7;92m::: SUCCESS :::[0m[92m XMRig mining program found. [0m
    ) else (
        exit   
    )
)

if "%REcuda%"=="" (
    set REcuda=false
)
if exist %XMRig_Folder%/xmrig-cuda.dll (
    set REcuda=pass
) else (
    echo [7;91m::: ERROR :::[0m[91m Cannot find XMRig nvidia cuda, Make sure it is located in the same folder as XMRig. [0m
    set /p REcuda="Would you like to download [93mXMRig nvidia cuda 6.17.0 cuda11_4[0m? ([96mY[0m/[96mN[0m) > "
)
if "%REcuda%"=="x" exit else (
    if "%REcuda%"=="r" (
        set Reset_Addresses=true
        setx Reset_Addresses true
        call UnLuckyMiner.cmd
    ) else (
        if "%REcuda%"=="Y" (
            set REcuda=true
        ) else (
            if "%REcuda%"=="y" (
                set REcuda=true
            ) else ( 
                if "%REcuda%"=="N" (
                    set REcuda=false
                ) else ( 
                    if "%REcuda%"=="n" (
                        set REcuda=false
                    )
                )
            )
        )
    )
)
if "%REcuda%"=="true" (
    if exist ./commands/install_xmrig_cuda.cmd (
        call ./commands/install_xmrig_cuda.cmd
    ) else (
        echo [7;91m::: ERROR :::[0m[91m Cannot find XMRig Cuda intsall command. [0m
    )
    set REcuda=pass
) else (
    if "%REcuda%"=="pass" (
        if %Debug%==true echo [7;92m::: SUCCESS :::[0m[92m XMRig nvidia cuda found. [0m
    ) else (
        if "%REcuda%"=="false" (
            if %Debug%==true echo [7;93m::: INFO :::[0m[93m Skipped xmrig nvidia cuda check. [0m
        ) else exit   
    )
)

set Version=1.2.0
echo [7;93m::: INFO :::[0m[93m UnLuckyMiner - Version %Version% [0m
echo [7;95m::: COMMAND :::[0m [95me[0m[7;95mx[0m[95mit[0m
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

if "%UnLuckyMiner_Version%"=="" (
    if %Debug%==true echo [7;94m::: SETUP :::[0m[94m UnLuckyMiner No Older Version found. [0m
    set UnLuckyMiner_Version=0
    setx UnLuckyMiner_Version 0
)
if %Version%==%UnLuckyMiner_Version% (
    echo.
    @REM echo [7;93m::: INFO :::[0m[93m UnLuckyMiner - Version %UnLuckyMiner_Version% [0m
) else (
    echo [7;94m::: SETUP :::[0m[94m UnLuckyMiner new version found. [0m
    echo [7;94m::: SETUP :::[0m[94m Resetting... [0m
    set new_version=true
    echo [7;94m::: SETUP :::[0m[94m Running UnLuckyMiner Wallets Setup. [0m
    set Reset_Addresses=true
    set confirm_reset=true
)

set client_confirm_reset=""
if %confirm_reset%==false (
    if %Reset_Addresses%==true (
        set /p client_confirm_reset="Are you sure you want to reset all persistent wallets addresses? ([96mY[0m/[96mN[0m) > "
    )
)
if "%client_confirm_reset%"=="Y" (
    set confirm_reset=true
) else (
    if "%client_confirm_reset%"=="y" (
        set confirm_reset=true
    ) else (
        set Reset_Addresses=false
        setx Reset_Addresses false  
    )
)
if %confirm_reset%==true (
    set p_wallet_Bitcoin=YOUR_WALLET_ADDRESS
    setx p_wallet_Bitcoin YOUR_WALLET_ADDRESS
    set p_wallet_BitcoinCash=YOUR_WALLET_ADDRESS
    setx p_wallet_BitcoinCash YOUR_WALLET_ADDRESS
    set p_wallet_Ethereum=YOUR_WALLET_ADDRESS
    setx p_wallet_Ethereum YOUR_WALLET_ADDRESS
    set p_wallet_EthereumClassic=YOUR_WALLET_ADDRESS
    setx p_wallet_EthereumClassic YOUR_WALLET_ADDRESS
    set p_wallet_ShibaInu=YOUR_WALLET_ADDRESS
    setx p_wallet_ShibaInu YOUR_WALLET_ADDRESS
    set p_wallet_DogeCoin=YOUR_WALLET_ADDRESS
    setx p_wallet_DogeCoin YOUR_WALLET_ADDRESS
    set p_wallet_Kaspa=YOUR_WALLET_ADDRESS
    setx p_wallet_Kaspa YOUR_WALLET_ADDRESS
    set p_wallet_Zephyr=YOUR_WALLET_ADDRESS
    setx p_wallet_Zephyr YOUR_WALLET_ADDRESS
    set p_wallet_Monero=YOUR_WALLET_ADDRESS
    setx p_wallet_Monero YOUR_WALLET_ADDRESS
    set p_wallet_Solana=YOUR_WALLET_ADDRESS
    setx p_wallet_Solana YOUR_WALLET_ADDRESS
    set p_wallet_Avalanche=YOUR_WALLET_ADDRESS
    setx p_wallet_Avalanche YOUR_WALLET_ADDRESS
    set p_wallet_Nexa=YOUR_WALLET_ADDRESS
    setx p_wallet_Nexa YOUR_WALLET_ADDRESS
    set p_wallet_RavenCoin=YOUR_WALLET_ADDRESS
    setx p_wallet_RavenCoin YOUR_WALLET_ADDRESS
    set p_wallet_EnjinCoin=YOUR_WALLET_ADDRESS
    setx p_wallet_EnjinCoin YOUR_WALLET_ADDRESS
    set p_wallet_Raptoreum=YOUR_WALLET_ADDRESS
    setx p_wallet_Raptoreum YOUR_WALLET_ADDRESS
    set p_wallet_Neoxa=YOUR_WALLET_ADDRESS
    setx p_wallet_Neoxa YOUR_WALLET_ADDRESS
    set p_wallet_Clore=YOUR_WALLET_ADDRESS
    setx p_wallet_Clore YOUR_WALLET_ADDRESS

    set UnLuckyMiner_Version=%Version%
    setx UnLuckyMiner_Version %Version%
    set Reset_Addresses=false
    setx Reset_Addresses false
    if exist wallets.cmd del wallets.cmd
) else (
    set Reset_Addresses=false
    setx Reset_Addresses false
)

if "%new_version%"=="" set new_version=false
if %new_version%==true (
    echo [7;94m::: SETUP :::[0m[94m New version applied. [0m
    echo [7;94m::: SETUP :::[0m[94m Need to restart UnLuckyMiner. [0m
    set TemporaryWallets=""
    setx TemporaryWallets ""
    pause
    exit
)

set client_confirm_toggle=pass
set toggle_option=pass
if %Toggle_Temporary_Addresses%==true (
    if %TemporaryWallets%==false ( 
        set /p client_confirm_toggle="Are you sure you want to [93mDisable[0m persistent wallets addresses? ([96mY[0m/[96mN[0m) > "
        set toggle_option=false
    ) else (
        set /p client_confirm_toggle="Are you sure you want to [93mEnable[0m persistent wallets addresses? ([96mY[0m/[96mN[0m) > "
        set toggle_option=true
    )
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
        )
    )
    echo [7;94m::: SETUP :::[0m[94m Need to restart UnLuckyMiner. [0m
    pause
    exit
)


if %TemporaryWallets%==true (
    set wallet_Bitcoin=%t_wallet_Bitcoin%
    set wallet_BitcoinCash=%t_wallet_BitcoinCash%
    set wallet_Ethereum=%t_wallet_Ethereum%
    set wallet_EthereumClassic=%t_wallet_EthereumClassic%
    set wallet_ShibaInu=%t_wallet_ShibaInu%
    set wallet_DogeCoin=%t_wallet_DogeCoin%
    set wallet_Kaspa=%t_wallet_Kaspa%
    set wallet_Zephyr=%t_wallet_Zephyr%
    set wallet_Monero=%t_wallet_Monero%
    set wallet_Solana=%t_wallet_Solana%
    set wallet_Avalanche=%t_wallet_Avalanche%
    set wallet_Nexa=%t_wallet_Nexa%
    set wallet_RavenCoin=%t_wallet_RavenCoin%
    set wallet_EnjinCoin=%t_wallet_EnjinCoin%
    set wallet_Raptoreum=%t_wallet_Raptoreum%
    set wallet_Neoxa=%t_wallet_Neoxa%
    set wallet_Clore=%t_wallet_Clore%
    echo [7;94m::: SETUP :::[0m[94m Using temporary wallets addresses. [0m
) else (
    set wallet_Bitcoin=%p_wallet_Bitcoin%
    set wallet_BitcoinCash=%p_wallet_BitcoinCash%
    set wallet_Ethereum=%p_wallet_Ethereum%
    set wallet_EthereumClassic=%p_wallet_EthereumClassic%
    set wallet_ShibaInu=%p_wallet_ShibaInu%
    set wallet_DogeCoin=%p_wallet_DogeCoin%
    set wallet_Kaspa=%p_wallet_Kaspa%
    set wallet_Zephyr=%p_wallet_Zephyr%
    set wallet_Monero=%p_wallet_Monero%
    set wallet_Solana=%p_wallet_Solana%
    set wallet_Avalanche=%p_wallet_Avalanche%
    set wallet_Nexa=%p_wallet_Nexa%
    set wallet_RavenCoin=%p_wallet_RavenCoin%
    set wallet_EnjinCoin=%p_wallet_EnjinCoin%
    set wallet_Raptoreum=%p_wallet_Raptoreum%
    set wallet_Neoxa=%p_wallet_Neoxa%
    set wallet_Clore=%p_wallet_Clore%
    echo [7;94m::: SETUP :::[0m[94m Using persistent wallets addresses. [0m
)

set Reset_Wallet=false
set New_Wallet=false
if "%wallet_Bitcoin%"=="" set wallet_Bitcoin=YOUR_WALLET_ADDRESS
if "%wallet_Bitcoin%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set New_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for[93m Bitcoin [0m> "
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Bitcoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_BitcoinCash%"=="" set wallet_BitcoinCash=YOUR_WALLET_ADDRESS
if "%wallet_BitcoinCash%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m BitcoinCash [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_BitcoinCash=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Ethereum%"=="" set wallet_Ethereum=YOUR_WALLET_ADDRESS
if "%wallet_Ethereum%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m Ethereum [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Ethereum=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_EthereumClassic%"=="" set wallet_EthereumClassic=YOUR_WALLET_ADDRESS
if "%wallet_EthereumClassic%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m EthereumClassic [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_EthereumClassic=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_ShibaInu%"=="" set wallet_ShibaInu=YOUR_WALLET_ADDRESS
if "%wallet_ShibaInu%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m ShibaInu [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_ShibaInu=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_DogeCoin%"=="" set wallet_DogeCoin=YOUR_WALLET_ADDRESS
if "%wallet_DogeCoin%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m DogeCoin [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_DogeCoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Kaspa%"=="" set wallet_Kaspa=YOUR_WALLET_ADDRESS
if "%wallet_Kaspa%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m Kaspa [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Kaspa=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Zephyr%"=="" set wallet_Zephyr=YOUR_WALLET_ADDRESS
if "%wallet_Zephyr%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m Zephyr [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Zephyr=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Monero%"=="" set wallet_Monero=YOUR_WALLET_ADDRESS
if "%wallet_Monero%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m Monero [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Monero=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Solana%"=="" set wallet_Solana=YOUR_WALLET_ADDRESS
if "%wallet_Solana%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m Solana [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Solana=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Avalanche%"=="" set wallet_Avalanche=YOUR_WALLET_ADDRESS
if "%wallet_Avalanche%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m Avalanche [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Avalanche=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Nexa%"=="" set wallet_Nexa=YOUR_WALLET_ADDRESS
if "%wallet_Nexa%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m Nexa [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Nexa=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_RavenCoin%"=="" set wallet_RavenCoin=YOUR_WALLET_ADDRESS
if "%wallet_RavenCoin%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m RavenCoin [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_RavenCoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_EnjinCoin%"=="" set wallet_EnjinCoin=YOUR_WALLET_ADDRESS
if "%wallet_EnjinCoin%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m EnjinCoin [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_EnjinCoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Raptoreum%"=="" set wallet_Raptoreum=YOUR_WALLET_ADDRESS
if "%wallet_Raptoreum%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m Raptoreum [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Raptoreum=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Neoxa%"=="" set wallet_Neoxa=YOUR_WALLET_ADDRESS
if "%wallet_Neoxa%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m Neoxa [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Neoxa=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Clore%"=="" set wallet_Clore=YOUR_WALLET_ADDRESS
if "%wallet_Clore%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for [93m CloreAI [0m> " 
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if "%Reset_Wallet_Input%"=="t" (
    set Toggle_Temporary_Addresses=true
    setx Toggle_Temporary_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set p_wallet_Clore=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if %New_Wallet%==true (
    echo [7;94m::: SETUP :::[0m[94m Saving New Wallets Addresses. [0m
    if exist wallets.cmd del wallets.cmd
    echo @REM Written by UnLuckyLust - https://DreamsWeaver.co - https://github.com/UnLuckyLust/UnLuckyMiner > wallets.cmd
    echo @REM Auto Generated File from - UnLuckyMiner Persistent Wallets: Version %Version% >> wallets.cmd
    echo @echo off >> wallets.cmd
    echo echo [7;93m::: INFO :::[0m[93m UnLuckyMiner Wallets - Version %Version% [0m >> wallets.cmd
    echo set p_wallet_Bitcoin=%p_wallet_Bitcoin% >> wallets.cmd
    echo setx p_wallet_Bitcoin %p_wallet_Bitcoin% >> wallets.cmd
    echo set p_wallet_BitcoinCash=%p_wallet_BitcoinCash% >> wallets.cmd
    echo setx p_wallet_BitcoinCash %p_wallet_BitcoinCash% >> wallets.cmd
    echo set p_wallet_Ethereum=%p_wallet_Ethereum% >> wallets.cmd
    echo setx p_wallet_Ethereum %p_wallet_Ethereum% >> wallets.cmd
    echo set p_wallet_EthereumClassic=%p_wallet_EthereumClassic% >> wallets.cmd
    echo setx p_wallet_EthereumClassic %p_wallet_EthereumClassic% >> wallets.cmd
    echo set p_wallet_ShibaInu=%p_wallet_ShibaInu% >> wallets.cmd
    echo setx p_wallet_ShibaInu %p_wallet_ShibaInu% >> wallets.cmd
    echo set p_wallet_DogeCoin=%p_wallet_DogeCoin% >> wallets.cmd
    echo setx p_wallet_DogeCoin %p_wallet_DogeCoin% >> wallets.cmd
    echo set p_wallet_Kaspa=%p_wallet_Kaspa% >> wallets.cmd
    echo setx p_wallet_Kaspa %p_wallet_Kaspa% >> wallets.cmd
    echo set p_wallet_Zephyr=%p_wallet_Zephyr% >> wallets.cmd
    echo setx p_wallet_Zephyr %p_wallet_Zephyr% >> wallets.cmd
    echo set p_wallet_Monero=%p_wallet_Monero% >> wallets.cmd
    echo setx p_wallet_Monero %p_wallet_Monero% >> wallets.cmd
    echo set p_wallet_Solana=%p_wallet_Solana% >> wallets.cmd
    echo setx p_wallet_Solana %p_wallet_Solana% >> wallets.cmd
    echo set p_wallet_Avalanche=%p_wallet_Avalanche% >> wallets.cmd
    echo setx p_wallet_Avalanche %p_wallet_Avalanche% >> wallets.cmd
    echo set p_wallet_Nexa=%p_wallet_Nexa% >> wallets.cmd
    echo setx p_wallet_Nexa %p_wallet_Nexa% >> wallets.cmd
    echo set p_wallet_RavenCoin=%p_wallet_RavenCoin% >> wallets.cmd
    echo setx p_wallet_RavenCoin %p_wallet_RavenCoin% >> wallets.cmd
    echo set p_wallet_EnjinCoin=%p_wallet_EnjinCoin% >> wallets.cmd
    echo setx p_wallet_EnjinCoin %p_wallet_EnjinCoin% >> wallets.cmd
    echo set p_wallet_Raptoreum=%p_wallet_Raptoreum% >> wallets.cmd
    echo setx p_wallet_Raptoreum %p_wallet_Raptoreum% >> wallets.cmd
    echo set p_wallet_Neoxa=%p_wallet_Neoxa% >> wallets.cmd
    echo setx p_wallet_Neoxa %p_wallet_Neoxa% >> wallets.cmd
    echo set p_wallet_Clore=%p_wallet_Clore% >> wallets.cmd
    echo setx p_wallet_Clore %p_wallet_Clore% >> wallets.cmd
    echo call UnLuckyMiner.cmd >> wallets.cmd
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

set /p MINER="What is the name of the worker? [93m(Currently: %MINER%)[0m > "
if "%MINER%"=="x" exit else (
    if "%MINER%"=="r" (
        set Reset_Addresses=true
        setx Reset_Addresses true
        call UnLuckyMiner.cmd
    )
    if "%MINER%"=="t" (
        set Toggle_Temporary_Addresses=true
        setx Toggle_Temporary_Addresses true
        call UnLuckyMiner.cmd
    )
)
set CPU=true
set GPU=false
set AMD=false
set NVIDIA=false
set /p GPU="Are you interested in using the [93mGPU[0m? ([96mY[0m/[96mN[0m) > "
if "%GPU%"=="Y" ( set GPU=true ) else (
    if "%GPU%"=="y" ( set GPU=true ) else ( 
        if "%GPU%"=="x" exit else (
            if "%GPU%"=="r" (
                set Reset_Addresses=true
                setx Reset_Addresses true
                call UnLuckyMiner.cmd
            ) else (  
                if "%GPU%"=="t" (
                    set Toggle_Temporary_Addresses=true
                    setx Toggle_Temporary_Addresses true
                    call UnLuckyMiner.cmd
                ) else ( set GPU=false )
            )
        ) 
    )
)
if %GPU%==true set /p AMD="Are you using [93mAMD GPU[0m? ([96mY[0m/[96mN[0m) > "
if %GPU%==true (
    set CPU=false
    set NVIDIA=true
    if "%AMD%"=="x" exit else (
        if "%AMD%"=="r" (
            set Reset_Addresses=true
            setx Reset_Addresses true
            call UnLuckyMiner.cmd
        ) else (
            if "%AMD%"=="t" (
                set Toggle_Temporary_Addresses=true
                setx Toggle_Temporary_Addresses true
                call UnLuckyMiner.cmd
            ) else (
                if "%AMD%"=="Y" ( 
                    set AMD=true
                    set NVIDIA=false
                ) else (
                    if "%AMD%"=="y" (
                        set AMD=true
                        set NVIDIA=false
                    ) else (
                        set AMD=false
                        set NVIDIA=true
                    )
                )
            ) 
        )
    ) 
)
if %GPU%==true (
    set OUTPUT_ALGO=%algo_gpu%
    set OUTPUT_POOL=%pool_gpu%
) else (
    set OUTPUT_ALGO=%algo_cpu%
    set OUTPUT_POOL=%pool_cpu%
)

set /p Use_UnMinable_Pool="Use UnMineable Pools for mining? ([96mY[0m/[96mN[0m) [93m(Currently: %UnMineable%)[0m > "
if "%Use_UnMinable_Pool%"=="x" exit else (
    if "%Use_UnMinable_Pool%"=="r" (
        set Reset_Addresses=true
        setx Reset_Addresses true
        call UnLuckyMiner.cmd
    ) else ( 
        if "%Use_UnMinable_Pool%"=="t" (
            set Toggle_Temporary_Addresses=true
            setx Toggle_Temporary_Addresses true
            call UnLuckyMiner.cmd
        ) else (
            if "%Use_UnMinable_Pool%"=="Y" ( 
                set UnMineable=true
            ) else (
                if "%Use_UnMinable_Pool%"=="y" (
                    set UnMineable=true
                ) else (
                    if "%Use_UnMinable_Pool%"=="N" (
                        set UnMineable=false
                    ) else (
                        if "%Use_UnMinable_Pool%"=="n" (
                            set UnMineable=false
                        )
                    )
                )
            ) 
        )
    )
)

echo [7;93m::: INFO :::[0m[93m Coins available for mining: [0m
if %UnMineable%==true (
    echo [7;93m::: INFO :::[0m[96m AVAX  [0m[0m[93m= Avalanche [0m
    echo [7;93m::: INFO :::[0m[96m BCH   [0m[0m[93m= Bitcoin Cash [0m
    echo [7;93m::: INFO :::[0m[96m BTC   [0m[0m[93m= Bitcoin [0m
    echo [7;93m::: INFO :::[0m[96m DOGE  [0m[0m[93m= Doge Coin [0m
    echo [7;93m::: INFO :::[0m[96m ENJ   [0m[0m[93m= Enjin Coin [0m
    echo [7;93m::: INFO :::[0m[96m ETC   [0m[0m[93m= Ethereum Classic [0m
    echo [7;93m::: INFO :::[0m[96m ETH   [0m[0m[93m= Ethereum [0m
    echo [7;93m::: INFO :::[0m[96m KAS   [0m[0m[93m= Kaspa [0m
    echo [7;93m::: INFO :::[0m[96m NEXA  [0m[0m[93m= Nexa [0m
    echo [7;93m::: INFO :::[0m[96m SHIB  [0m[0m[93m= Shiba Inu [0m
    echo [7;93m::: INFO :::[0m[96m SOL   [0m[0m[93m= Solana [0m
    if %GPU%==false echo [7;93m::: INFO :::[0m[96m RVN   [0m[0m[93m= Raven Coin [0m
    if %CPU%==false (
        echo [7;93m::: INFO :::[0m[96m XMR   [0m[0m[93m= Monero [0m
        echo [7;93m::: INFO :::[0m[96m ZEPH  [0m[0m[93m= Zephyr [0m
    )
) else (
    if %GPU%==true (
        echo [7;93m::: INFO :::[0m[96m CLORE [0m[0m[93m= Clore AI [0m
        echo [7;93m::: INFO :::[0m[96m NEOX  [0m[0m[93m= Neoxa [0m
    )
    if %CPU%==true echo [7;93m::: INFO :::[0m[96m RTM   [0m[0m[93m= Raptoreum [0m
)
if %GPU%==true echo [7;93m::: INFO :::[0m[96m RVN   [0m[0m[93m= Raven Coin [0m
if %CPU%==true (
    echo [7;93m::: INFO :::[0m[96m XMR   [0m[0m[93m= Monero [0m
    echo [7;93m::: INFO :::[0m[96m ZEPH  [0m[0m[93m= Zephyr [0m
)
set /p Coin="What Coin would you like to mine? [93m(Coin Tag)[0m > "
set FoundCoin=false
set OUTPUT_CODE=%global_discount_code%
if "%Coin%"=="x" exit else (
    if "%Coin%"=="r" ( 
        set Reset_Addresses=true
        setx Reset_Addresses true
        call UnLuckyMiner.cmd
    ) else (  
    if "%Coin%"=="t" (
        set Toggle_Temporary_Addresses=true
        setx Toggle_Temporary_Addresses true
        call UnLuckyMiner.cmd
    ) else ( 
    if "%Coin%"=="BTC" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Bitcoin%
        if %UnMineable%==true (
            set OUTPUT_WALLET=BTC:%wallet_Bitcoin%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_Bitcoin%
        ) else (
            set FoundCoin=false
        )
    ) else ( 
    if "%Coin%"=="BCH" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_BitcoinCash%
        if %UnMineable%==true (
            set OUTPUT_WALLET=BCH:%wallet_BitcoinCash%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_BitcoinCash%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="ETH" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Ethereum%
        if %UnMineable%==true (
            set OUTPUT_WALLET=ETH:%wallet_Ethereum%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_Ethereum%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="ETC" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_EthereumClassic%
        if %UnMineable%==true (
            set OUTPUT_WALLET=ETC:%wallet_EthereumClassic%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_EthereumClassic%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="SHIB" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_ShibaInu%
        if %UnMineable%==true (
            set OUTPUT_WALLET=SHIB:%wallet_ShibaInu%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_ShibaInu%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="DOGE" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_DogeCoin%
        if %UnMineable%==true (
            set OUTPUT_WALLET=DOGE:%wallet_DogeCoin%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_DogeCoin%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="KAS" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Kaspa%
        if %UnMineable%==true (
            set OUTPUT_WALLET=KAS:%wallet_Kaspa%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_Kaspa%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="ZEPH" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Zephyr%
        if %UnMineable%==true (
            set OUTPUT_WALLET=ZEPH:%wallet_Zephyr%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_Zephyr%
        ) else (
            set CPU=true
            set GPU=false
            set AMD=false
            set NVIDIA=false
            set use_discount=false
            set OUTPUT_ALGO=rx/0
            set OUTPUT_POOL=%pool_Zephyr%
            set OUTPUT_WALLET=%wallet_Zephyr%
        )
    ) else (
    if "%Coin%"=="XMR" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Monero%
        if %UnMineable%==true (
            set OUTPUT_WALLET=XMR:%wallet_Monero%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_Monero%
        ) else (
            set CPU=true
            set GPU=false
            set AMD=false
            set NVIDIA=false
            set use_discount=false
            set OUTPUT_ALGO=rx/0
            set OUTPUT_POOL=%pool_Monero%
        )
    ) else (
    if "%Coin%"=="SOL" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Solana%
        if %UnMineable%==true (
            set OUTPUT_WALLET=SOL:%wallet_Solana%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_Solana%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="AVAX" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Avalanche%
        if %UnMineable%==true (
            set OUTPUT_WALLET=AVAX:%wallet_Avalanche%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_Avalanche%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="NEXA" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Nexa%
        if %UnMineable%==true (
            set OUTPUT_WALLET=NEXA:%wallet_Nexa%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_Nexa%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="RVN" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_RavenCoin%
        if %UnMineable%==true (
            set OUTPUT_WALLET=RVN:%wallet_RavenCoin%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_RavenCoin%
        ) else (
            if %GPU%==true (
                set TLS=false
                set use_discount=false
                set OUTPUT_ALGO=kawpow
                set OUTPUT_POOL=%pool_RavenCoin%
            ) else (
                set FoundCoin=false
            )
        )
    ) else (
    if "%Coin%"=="ENJ" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_EnjinCoin%
        if %UnMineable%==true (
            set OUTPUT_WALLET=ENJ:%wallet_EnjinCoin%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_EnjinCoin%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="RTM" ( 
        set FoundCoin=true
        set CPU=true
        set GPU=false
        set AMD=false
        set NVIDIA=false
        set UnMineable=false
        set use_discount=false
        set OUTPUT_ALGO=gr
        set OUTPUT_POOL=%pool_Raptoreum%
        set OUTPUT_WALLET=%wallet_Raptoreum%
    ) else (
    if "%Coin%"=="NEOX" ( 
        if %GPU%==true (
            set FoundCoin=true
            set UnMineable=false
            set use_discount=false
            set OUTPUT_ALGO=kawpow
            set OUTPUT_POOL=%pool_Neoxa%
            set OUTPUT_WALLET=%wallet_Neoxa%
        ) else (
            echo [7;91m::: ERROR :::[0m[91m Failed to setup GPU Processor! [0m
        )
    ) else (
    if "%Coin%"=="CLORE" ( 
        if %GPU%==true (
            set FoundCoin=true
            set UnMineable=false
            set use_discount=false
            set OUTPUT_ALGO=kawpow
            set OUTPUT_POOL=%pool_Clore%
            set OUTPUT_WALLET=%wallet_Clore%
        ) else (
            echo [7;91m::: ERROR :::[0m[91m Failed to setup GPU Processor! [0m
        )
    ) else (
        set FoundCoin=false
    )))))))))))))))))))
)

if %FoundCoin%==false echo [7;91m::: ERROR :::[0m[91m A configuration error occurred, Loading default setting! [0m
if %FoundCoin%==false set /p onFail="Default Miner [93m(Currently: '%onFail%')[0m > "
if "%onFail%"=="x" exit else (
    if "%onFail%"=="r" (
        set Reset_Addresses=true
        setx Reset_Addresses true
        call UnLuckyMiner.cmd
    ) else (  
        if "%onFail%"=="t" (
            set Toggle_Temporary_Addresses=true
            setx Toggle_Temporary_Addresses true
            call UnLuckyMiner.cmd
        )
    )
)
set reset_config=false
@REM -------------------------------------
@REM ↧↧↧ Start of onFail settings area ↧↧↧
@REM -------------------------------------
if %FoundCoin%==false (
    if %onFail%==CPU (
        set CPU=true
        set GPU=false
        set AMD=false
        set NVIDIA=false
        set UnMineable=true
        set Coin=SHIB
        set OUTPUT_ALGO=%algo_cpu%
        set OUTPUT_POOL=%pool_cpu%
        set OUTPUT_WALLET=SHIB:%wallet_ShibaInu%
        if %use_global_discount%==false set OUTPUT_CODE=%discount_ShibaInu%
    ) else (
    if %onFail%==GPU (
        set CPU=false
        set GPU=false
        if %AMD%==true (
            set GPU=true
        ) else (
            if %NVIDIA%==true (
                set GPU=true
            )
        )
        if %GPU%==true (
            set UnMineable=true
            set Coin=SHIB
            set OUTPUT_ALGO=%algo_gpu%
            set OUTPUT_POOL=%pool_gpu%
            set OUTPUT_WALLET=SHIB:%wallet_ShibaInu%
            if %use_global_discount%==false set OUTPUT_CODE=%discount_ShibaInu%
        ) else (
            echo [7;91m::: ERROR :::[0m[91m Failed to setup GPU Processor! [0m
            set reset_config=true
        )
    ) else (
        set reset_config=true 
    ))
)
if %reset_config%==true (
    echo [7;93m::: INFO :::[0m[93m Changing the default configuration to use the CPU. [0m
    set CPU=true
    set GPU=false
    set AMD=false
    set NVIDIA=false
@REM ---------------------------------------------------------------------------------------------------------------------------------------
@REM ↧↧↧ The segment below must be configured to use the CPU. These settings will be applied in case of a fault in the GPU configuration ↧↧↧
@REM ---------------------------------------------------------------------------------------------------------------------------------------
    set UnMineable=true
    set Coin=SHIB
    set OUTPUT_ALGO=%algo_cpu%
    set OUTPUT_POOL=%pool_cpu%
    set OUTPUT_WALLET=SHIB:%wallet_ShibaInu%
    if %use_global_discount%==false set OUTPUT_CODE=%discount_ShibaInu%
    @REM set use_discount=true
)
@REM -----------------------------------
@REM ↥↥↥ End of onFail settings area ↥↥↥
@REM -----------------------------------

set OUTPUT_WALLET=%OUTPUT_WALLET%.%MINER%
if %UnMineable%==true (
    if %use_discount%==true set OUTPUT_WALLET=%OUTPUT_WALLET%#%OUTPUT_CODE%
)
set OUTPUT_WALLET=%OUTPUT_WALLET: =%

echo [7;92m::: SUCCESS :::[0m[92m Configuration successfully applied! [0m
if %UnMineable%==true echo [7;94m::: SETUP :::[0m[94m Using UnMineable Pools [0m
echo [7;94m::: SETUP :::[0m[94m XMRig Donate Level -[0m[97m %Donate%[0m%%
echo [7;94m::: SETUP :::[0m[94m Worker Name -[0m[97m %MINER% [0m
echo [7;94m::: SETUP :::[0m[94m Coin -[0m[97m %Coin% [0m
echo [7;94m::: SETUP :::[0m[94m Algorithm -[0m[97m %OUTPUT_ALGO% [0m
set OUTPUT_CPU=CPU
if %GPU%==true set OUTPUT_CPU=GPU
echo [7;94m::: SETUP :::[0m[94m Miner Hardware -[0m[97m %OUTPUT_CPU% [0m
set OUTPUT_GPU_TYPE=NVIDIA
if %AMD%==true set OUTPUT_GPU_TYPE=AMD
if %GPU%==true echo [7;94m::: SETUP :::[0m[94m GPU Type -[0m[97m %OUTPUT_GPU_TYPE% [0m
echo [7;94m::: SETUP :::[0m[94m Wallet Address -[0m[97m %OUTPUT_WALLET% [0m
echo [7;93m::: INFO :::[0m[93m Starting a mining process with XMRig. [0m
set CONFIG={ "api": { "id": null, "worker-id": null }, "http": { "enabled": false, "host": "127.0.0.1", "port": 0, "access-token": null, "restricted": true }, "autosave": true, "background": false, "colors": true, "title": "UnLuckyMiner", "randomx": { "init": -1, "init-avx2": 1, "mode": "fast", "1gb-pages": true, "rdmsr": true, "wrmsr": true, "cache_qos": false, "numa": true, "scratchpad_prefetch_mode": 2 }, "cpu": { "enabled": %CPU%, "huge-pages": true, "huge-pages-jit": false, "hw-aes": null, "priority": null, "memory-pool": false, "yield": false, "max-threads-hint": 100, "asm": true, "argon2-impl": null, "cn/0": false, "cn-lite/0": false }, "opencl": { "enabled": %AMD%, "cache": true, "loader": null, "platform": "AMD", "adl": true, "cn/0": false, "cn-lite/0": false }, "cuda": { "enabled": %NVIDIA%, "loader": "%XMRig_Folder%/xmrig-cuda.dll", "nvml": true, "cn/0": false, "cn-lite/0": false }, "donate-level": %Donate%, "donate-over-proxy": %Donate%, "log-file": null, "pools": [{ "enabled": true, "coin": null, "algo": "%OUTPUT_ALGO%", "url": "%OUTPUT_POOL%", "user": "%OUTPUT_WALLET%", "pass": "%Password%", "rig-id": "%MINER%", "nicehash": %NiceHash%, "keepalive": true, "tls": %TLS%, "tls-fingerprint": null, "daemon": false, "socks5": null, "self-select": null, "submit-to-origin": false }], "print-time": 60, "health-print-time": 60, "dmi": true, "retries": 5, "retry-pause": 5, "syslog": false, "tls": { "enabled": false, "protocols": null, "cert": null, "cert_key": null, "ciphers": null, "ciphersuites": null, "dhparam": null }, "dns": { "ipv6": false, "ttl": 30 }, "user-agent": null, "verbose": 0, "watch": true, "pause-on-battery": false, "pause-on-active": false }
echo %CONFIG% > config.json
if exist config.json (
    echo [7;92m::: SUCCESS :::[0m[92m Configuration file created successfully. [0m
) else (
    echo [7;91m::: ERROR :::[0m[91m Failed to create configuration file. [0m
)
if %MINER%==%TEMP_MINER% ( echo. ) else ( 
    if %shortcut%==true (
        if exist %old_shortcut_loc% (
            if %Debug%==true echo [7;94m::: SETUP :::[0m[94m Deleting old shortcut [0m
            del %old_shortcut_loc%
        )
    )
)
set shortcut_loc=%shortcut_location%\!MINER!.lnk
set LOG=".\%~N0_runtime.log"
if %shortcut%==true (
    if exist %shortcut_loc% (
        if %Debug%==true echo [7;93m::: INFO :::[0m[93m A shortcut exists [0m
    ) else (
        set cSctVBS=CreateShortcut.vbs
        ((
        echo Set oWS = WScript.CreateObject^("WScript.Shell"^)
        echo sLinkFile = oWS.ExpandEnvironmentStrings^("!shortcut_loc!"^)
        echo Set oLink = oWS.CreateShortcut^(sLinkFile^)
        echo oLink.TargetPath = oWS.ExpandEnvironmentStrings^("%cd%\UnLuckyMiner.cmd"^)
        echo oLink.IconLocation = "%shortcut_icon%"
        echo oLink.WindowStyle = "1"
        echo oLink.WorkingDirectory = "%cd%"
        echo oLink.Save
        )1>!cSctVBS!
        cscript //nologo .\!cSctVBS!
        DEL !cSctVBS! /f /q
        )1>>!LOG! 2>>&1
        if exist !LOG! del !LOG!
    )
)
if %shortcut%==true (
    if exist %shortcut_loc% (
        if %Debug%==true echo [7;94m::: SETUP :::[0m[94m Shortcut successfully created/found [0m
    ) else (
        if %Debug%==true echo [7;91m::: ERROR :::[0m[91m Failed to create shortcut [0m
    )
)
set TEMP_MINER=%MINER%
setx TEMP_MINER %MINER%
pause
xmrig.exe 
cmd /k
pause
