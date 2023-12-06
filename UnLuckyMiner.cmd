@REM Written by UnLuckyLust (https://DreamsWeaver.co) - https://github.com/UnLuckyLust/UnLuckyMiner

@echo off
cd /d "%~dp0"
@REM -----------------------------------
@REM ↧↧↧ Start of configuration area ↧↧↧
@REM -----------------------------------
@REM ! IMPORTANT ! This cmd is made for a cryptocurrency miner, it can be flagged by your antivirus.
@REM ! IMPORTANT ! Change the value of XMrig_Folder to the XMrig directory path, or any directory path if you want to install XMrig from scratch.
@REM ! IMPORTANT ! Due limitations of JSON format Windows directory separator should be escaped like \\ or written in Unix style like /.
    set XMrig_Folder=%cd:\=/%

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
    set pool_Zephyr=stratum+ssl://tr.zephyr.herominers.com:1123
    set pool_Monero=stratum+ssl://xmr-eu1.nanopool.org:10343
    set pool_RavenCoin=rvn.2miners.com:6060
    set pool_Raptoreum=stratum+ssl://eu.flockpool.com:5555
    set pool_Neoxa=stratum+ssl://neox.2miners.com:4040

@REM -----------------------------------------------------------------------
@REM ↧↧↧ Uncomment the lines below to enable temporary wallets addresses ↧↧↧
@REM -----------------------------------------------------------------------
    @REM set TemporaryWallets=true
    @REM set wallet_Bitcoin=bc1qm6x7lcgck5h8lrrs9glv243mty0pnv72236sz8
    @REM set wallet_BitcoinCash=1Adtmi4FdwfCrBdHCbYJyBwuyTiA6n1Q9j
    @REM set wallet_Ethereum=0xb01083a46AC44862F6f41c9F420Cbdc405A7b765
    @REM set wallet_EthereumClassic=0xdB334D2B4D6B10cc7e84a4927e3bcf6e9a75A629
    @REM set wallet_ShibaInu=0xb01083a46AC44862F6f41c9F420Cbdc405A7b765
    @REM set wallet_DogeCoin=DHRQi6qMF7KdFthUhjaTDh42HN6Rp2jdXq
    @REM set wallet_Kaspa=kaspa:qyp4h36wejns6zfddah5wqrclnawrl74lrlqjnhf7gjccy03jh6j8zs4e6grwud
    @REM set wallet_Zephyr=ZEPHYR3d46PJL5fM5C4Lu2XHHmt9opnjuhzMvJXTxjgmftPsKmUzrzVE4GmPsSCWWeKe7DzjmQuPXaqqDoiPziBkVtfCyW2STTC2m
    @REM set wallet_Monero=48rfHy6xMMQCKCJTAdojzqcKbtvFYhkvB5giRfbzF6wv5wGDMfJLjzsWL1njt6y7PSJYY7F6QajQFXXNfmw5cuGj61vQSVL
    @REM set wallet_Solana=3BQMMAUaGbTg6A9Fr7t6kPmSw7c41WEkKWWJJ5Yra4qo
    @REM set wallet_Avalanche=0xb01083a46AC44862F6f41c9F420Cbdc405A7b765
    @REM set wallet_Nexa=nexa:nqtsq5g5az4f8xuy5kg3u499ml0mrdsfle7jgtru99a33xyc
    @REM set wallet_RavenCoin=RQ2oVQHg4ETZkCL7fkvbJRpfcvGc47XvsF
    @REM set wallet_EnjinCoin=0xb01083a46AC44862F6f41c9F420Cbdc405A7b765
    @REM set wallet_Raptoreum=RVJ57sidiLD8EVHvEnRrBUeyBaPoKVh2yZ
    @REM set wallet_Neoxa=GXjY2uyeji7qEBxVF93mKRQ9snUzoZPfdx

@REM ---------------------------------
@REM ↧↧↧ UnMineable Discount Codes ↧↧↧
@REM ---------------------------------
    set use_discount=true
    set global_discount_code=false
    set discount_code=or99-ie7s

    set discount_Bitcoin=gaxo-qwnd
    set discount_BitcoinCash=9m4d-usmh
    set discount_Ethereum=9y1u-abm2
    set discount_EthereumClassic=s1fn-193o
    set discount_ShibaInu=or99-ie7s
    set discount_DogeCoin=x0x8-zqtb
    set discount_Kaspa=k7cp-oyfk
    set discount_Zephyr=f60t-hqix
    set discount_Monero=mky5-uf5c
    set discount_Solana=6yt7-80iq
    set discount_Avalanche=5n2s-3fhd
    set discount_Nexa=st3u-qrcx
    set discount_RavenCoin=b0fn-70b3
    set discount_EnjinCoin=4twy-lc6o

@REM ---------------------------------
@REM ↧↧↧ Debug Settings ↧↧↧
@REM ---------------------------------
    set Debug=false
    set TLS=true
    set Donate=1
    set Password=x
    set NiceHash=false
    set UnMineable=true
    set onFail=CPU
@REM ---------------------------------
@REM ↥↥↥ End of configuration area ↥↥↥
@REM ---------------------------------

if exist %XMrig_Folder% ( cd %XMrig_Folder% ) else exit
if exist config.json del config.json
fsutil dirty query %systemdrive% >nul || (
    echo Requesting administrative privileges...
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
if %Debug%==true echo Running XMrig as admin.
echo.

if "%RExmrig%"=="" (
    set RExmrig=false
)
if exist %XMrig_Folder%/xmrig.exe (
    set RExmrig=pass
) else ( 
    echo Cannot find XMrig, make sure the address is set correctly.
    set /p RExmrig="Would you like to download xmrig 6.21.0? (Y/N) > "
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
    if exist ./commands/install_xmrig.cmd call ./commands/install_xmrig.cmd
    set RExmrig=pass
) else (
    if "%RExmrig%"=="pass" (
        if %Debug%==true echo XMrig mining program found.
    ) else (
        exit   
    )
)

if "%REcuda%"=="" (
    set REcuda=false
)
if exist %XMrig_Folder%/xmrig-cuda.dll (
    set REcuda=pass
) else ( 
    echo Cannot find XMrig nvidia cuda, Make sure it is located in the same folder as XMrig.
    set /p REcuda="Would you like to download xmrig nvidia cuda 6.17.0 cuda11_4? (Y/N) > "
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
    if exist ./commands/install_xmrig_cuda.cmd call ./commands/install_xmrig_cuda.cmd
    set REcuda=pass
) else (
    if "%REcuda%"=="pass" (
        if %Debug%==true echo XMrig nvidia cuda found.
    ) else (
        if "%REcuda%"=="false" (
            if %Debug%==true echo Skipped xmrig nvidia cuda check.
        ) else exit   
    )
)

set Version=1.0.0
if "%TemporaryWallets%"=="" set TemporaryWallets=false
if "%Reset_Addresses%"=="" (
    set Reset_Addresses=false
    setx Reset_Addresses false  
)
set Reset_Wallet=false
set New_Wallet=false
set confirm_reset=false

if "%UnLuckyMiner_Version%"=="" (
    if %Debug%==true echo -- SETUP: UnLuckyMiner No Older Version found.
    set UnLuckyMiner_Version=0
    setx UnLuckyMiner_Version 0
)
if %Version%==%UnLuckyMiner_Version% (
    echo -- UnLuckyMiner: Version %UnLuckyMiner_Version%
) else (
    if %Debug%==true echo -- SETUP: UnLuckyMiner new version found.
    if %TemporaryWallets%==true (
        echo -- SETUP: Loading Temporary Wallets
    ) else (
        echo -- SETUP: Running UnLuckyMiner Setup
        set Reset_Addresses=true
        set confirm_reset=true
    )
)
set client_confirm_reset=""
if %confirm_reset%==false (
    if %Reset_Addresses%==true (
        set /p client_confirm_reset="Are you sure you want to reset all persistent wallets addresses? (Y/N) > "
    )
)
if "%client_confirm_reset%"=="Y" (
    set confirm_reset=true
) else (
    if "%client_confirm_reset%"=="y" (
        set confirm_reset=true
    )
)
if %confirm_reset%==true (
    set wallet_Bitcoin=YOUR_WALLET_ADDRESS
    setx wallet_Bitcoin YOUR_WALLET_ADDRESS
    set wallet_BitcoinCash=YOUR_WALLET_ADDRESS
    setx wallet_BitcoinCash YOUR_WALLET_ADDRESS
    set wallet_Ethereum=YOUR_WALLET_ADDRESS
    setx wallet_Ethereum YOUR_WALLET_ADDRESS
    set wallet_EthereumClassic=YOUR_WALLET_ADDRESS
    setx wallet_EthereumClassic YOUR_WALLET_ADDRESS
    set wallet_ShibaInu=YOUR_WALLET_ADDRESS
    setx wallet_ShibaInu YOUR_WALLET_ADDRESS
    set wallet_DogeCoin=YOUR_WALLET_ADDRESS
    setx wallet_DogeCoin YOUR_WALLET_ADDRESS
    set wallet_Kaspa=YOUR_WALLET_ADDRESS
    setx wallet_Kaspa YOUR_WALLET_ADDRESS
    set wallet_Zephyr=YOUR_WALLET_ADDRESS
    setx wallet_Zephyr YOUR_WALLET_ADDRESS
    set wallet_Monero=YOUR_WALLET_ADDRESS
    setx wallet_Monero YOUR_WALLET_ADDRESS
    set wallet_Solana=YOUR_WALLET_ADDRESS
    setx wallet_Solana YOUR_WALLET_ADDRESS
    set wallet_Avalanche=YOUR_WALLET_ADDRESS
    setx wallet_Avalanche YOUR_WALLET_ADDRESS
    set wallet_Nexa=YOUR_WALLET_ADDRESS
    setx wallet_Nexa YOUR_WALLET_ADDRESS
    set wallet_RavenCoin=YOUR_WALLET_ADDRESS
    setx wallet_RavenCoin YOUR_WALLET_ADDRESS
    set wallet_EnjinCoin=YOUR_WALLET_ADDRESS
    setx wallet_EnjinCoin YOUR_WALLET_ADDRESS
    set wallet_Raptoreum=YOUR_WALLET_ADDRESS
    setx wallet_Raptoreum YOUR_WALLET_ADDRESS
    set wallet_Neoxa=YOUR_WALLET_ADDRESS
    setx wallet_Neoxa YOUR_WALLET_ADDRESS

    set UnLuckyMiner_Version=%Version%
    setx UnLuckyMiner_Version %Version%
    set Reset_Addresses=false
    setx Reset_Addresses false
    if exist wallets.cmd del wallets.cmd
) else (
    set Reset_Addresses=false
    setx Reset_Addresses false
)

if "%wallet_Bitcoin%"=="" set wallet_Bitcoin=YOUR_WALLET_ADDRESS
if "%wallet_Bitcoin%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set New_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for Bitcoin > "
) else (
    if %Debug%==true echo -- SETUP: Bitcoin wallet address - %wallet_Bitcoin%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_Bitcoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_BitcoinCash%"=="" set wallet_BitcoinCash=YOUR_WALLET_ADDRESS
if "%wallet_BitcoinCash%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for BitcoinCash > " 
) else (
    if %Debug%==true echo -- SETUP: BitcoinCash wallet address - %wallet_BitcoinCash%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_BitcoinCash=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Ethereum%"=="" set wallet_Ethereum=YOUR_WALLET_ADDRESS
if "%wallet_Ethereum%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for Ethereum > " 
) else (
    if %Debug%==true echo -- SETUP: Ethereum wallet address - %wallet_Ethereum%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_Ethereum=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_EthereumClassic%"=="" set wallet_EthereumClassic=YOUR_WALLET_ADDRESS
if "%wallet_EthereumClassic%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for EthereumClassic > " 
) else (
    if %Debug%==true echo -- SETUP: EthereumClassic wallet address - %wallet_EthereumClassic%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_EthereumClassic=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_ShibaInu%"=="" set wallet_ShibaInu=YOUR_WALLET_ADDRESS
if "%wallet_ShibaInu%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for ShibaInu > " 
) else (
    if %Debug%==true echo -- SETUP: ShibaInu wallet address - %wallet_ShibaInu%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_ShibaInu=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_DogeCoin%"=="" set wallet_DogeCoin=YOUR_WALLET_ADDRESS
if "%wallet_DogeCoin%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for DogeCoin > " 
) else (
    if %Debug%==true echo -- SETUP: DogeCoin wallet address - %wallet_DogeCoin%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_DogeCoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Kaspa%"=="" set wallet_Kaspa=YOUR_WALLET_ADDRESS
if "%wallet_Kaspa%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for Kaspa > " 
) else (
    if %Debug%==true echo -- SETUP: Kaspa wallet address - %wallet_Kaspa%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_Kaspa=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Zephyr%"=="" set wallet_Zephyr=YOUR_WALLET_ADDRESS
if "%wallet_Zephyr%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for Zephyr > " 
) else (
    if %Debug%==true echo -- SETUP: Zephyr wallet address - %wallet_Zephyr%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_Zephyr=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Monero%"=="" set wallet_Monero=YOUR_WALLET_ADDRESS
if "%wallet_Monero%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for Monero > " 
) else (
    if %Debug%==true echo -- SETUP: Monero wallet address - %wallet_Monero%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_Monero=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Solana%"=="" set wallet_Solana=YOUR_WALLET_ADDRESS
if "%wallet_Solana%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for Solana > " 
) else (
    if %Debug%==true echo -- SETUP: Solana wallet address - %wallet_Solana%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_Solana=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Avalanche%"=="" set wallet_Avalanche=YOUR_WALLET_ADDRESS
if "%wallet_Avalanche%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for Avalanche > " 
) else (
    if %Debug%==true echo -- SETUP: Avalanche wallet address - %wallet_Avalanche%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_Avalanche=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Nexa%"=="" set wallet_Nexa=YOUR_WALLET_ADDRESS
if "%wallet_Nexa%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for Nexa > " 
) else (
    if %Debug%==true echo -- SETUP: Nexa wallet address - %wallet_Nexa%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_Nexa=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_RavenCoin%"=="" set wallet_RavenCoin=YOUR_WALLET_ADDRESS
if "%wallet_RavenCoin%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for RavenCoin > " 
) else (
    if %Debug%==true echo -- SETUP: RavenCoin wallet address - %wallet_RavenCoin%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_RavenCoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_EnjinCoin%"=="" set wallet_EnjinCoin=YOUR_WALLET_ADDRESS
if "%wallet_EnjinCoin%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for EnjinCoin > " 
) else (
    if %Debug%==true echo -- SETUP: EnjinCoin wallet address - %wallet_EnjinCoin%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_EnjinCoin=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Raptoreum%"=="" set wallet_Raptoreum=YOUR_WALLET_ADDRESS
if "%wallet_Raptoreum%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for Raptoreum > " 
) else (
    if %Debug%==true echo -- SETUP: Raptoreum wallet address - %wallet_Raptoreum%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_Raptoreum=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if "%wallet_Neoxa%"=="" set wallet_Neoxa=YOUR_WALLET_ADDRESS
if "%wallet_Neoxa%"=="YOUR_WALLET_ADDRESS" (
    set Reset_Wallet=true
    set /p Reset_Wallet_Input="Set the wallet address for Neoxa > " 
) else (
    if %Debug%==true echo -- SETUP: Neoxa wallet address - %wallet_Neoxa%
)
if "%Reset_Wallet_Input%"=="x" exit
if "%Reset_Wallet_Input%"=="r" (
    set Reset_Addresses=true
    setx Reset_Addresses true
    call UnLuckyMiner.cmd
)
if %Reset_Wallet%==true (
    set wallet_Neoxa=%Reset_Wallet_Input%
    set Reset_Wallet=false
    set New_Wallet=true
    set Reset_Wallet_Input=YOUR_WALLET_ADDRESS
)

if %New_Wallet%==true (
    echo Saving New Wallets
    if exist wallets.cmd del wallets.cmd
    echo @REM Written by UnLuckyLust - https://DreamsWeaver.co - https://github.com/UnLuckyLust/UnLuckyMiner > wallets.cmd
    echo @REM Auto Generated File from - UnLuckyMiner Persistent Wallets: Version %Version% >> wallets.cmd
    echo @echo off >> wallets.cmd
    echo echo -- UnLuckyMiner Wallets: Version %Version% >> wallets.cmd
    echo set wallet_Bitcoin=%wallet_Bitcoin% >> wallets.cmd
    echo setx wallet_Bitcoin %wallet_Bitcoin% >> wallets.cmd
    echo set wallet_BitcoinCash=%wallet_BitcoinCash% >> wallets.cmd
    echo setx wallet_BitcoinCash %wallet_BitcoinCash% >> wallets.cmd
    echo set wallet_Ethereum=%wallet_Ethereum% >> wallets.cmd
    echo setx wallet_Ethereum %wallet_Ethereum% >> wallets.cmd
    echo set wallet_EthereumClassic=%wallet_EthereumClassic% >> wallets.cmd
    echo setx wallet_EthereumClassic %wallet_EthereumClassic% >> wallets.cmd
    echo set wallet_ShibaInu=%wallet_ShibaInu% >> wallets.cmd
    echo setx wallet_ShibaInu %wallet_ShibaInu% >> wallets.cmd
    echo set wallet_DogeCoin=%wallet_DogeCoin% >> wallets.cmd
    echo setx wallet_DogeCoin %wallet_DogeCoin% >> wallets.cmd
    echo set wallet_Kaspa=%wallet_Kaspa% >> wallets.cmd
    echo setx wallet_Kaspa %wallet_Kaspa% >> wallets.cmd
    echo set wallet_Zephyr=%wallet_Zephyr% >> wallets.cmd
    echo setx wallet_Zephyr %wallet_Zephyr% >> wallets.cmd
    echo set wallet_Monero=%wallet_Monero% >> wallets.cmd
    echo setx wallet_Monero %wallet_Monero% >> wallets.cmd
    echo set wallet_Solana=%wallet_Solana% >> wallets.cmd
    echo setx wallet_Solana %wallet_Solana% >> wallets.cmd
    echo set wallet_Avalanche=%wallet_Avalanche% >> wallets.cmd
    echo setx wallet_Avalanche %wallet_Avalanche% >> wallets.cmd
    echo set wallet_Nexa=%wallet_Nexa% >> wallets.cmd
    echo setx wallet_Nexa %wallet_Nexa% >> wallets.cmd
    echo set wallet_RavenCoin=%wallet_RavenCoin% >> wallets.cmd
    echo setx wallet_RavenCoin %wallet_RavenCoin% >> wallets.cmd
    echo set wallet_EnjinCoin=%wallet_EnjinCoin% >> wallets.cmd
    echo setx wallet_EnjinCoin %wallet_EnjinCoin% >> wallets.cmd
    echo set wallet_Raptoreum=%wallet_Raptoreum% >> wallets.cmd
    echo setx wallet_Raptoreum %wallet_Raptoreum% >> wallets.cmd
    echo set wallet_Neoxa=%wallet_Neoxa% >> wallets.cmd
    echo setx wallet_Neoxa %wallet_Neoxa% >> wallets.cmd
    echo call UnLuckyMiner.cmd >> wallets.cmd
call wallets.cmd
)

set /p MINER="What is the name of the miner? (Currently: %MINER%) > "
if "%MINER%"=="x" exit else (
    if "%MINER%"=="r" (
        set Reset_Addresses=true
        setx Reset_Addresses true
        call UnLuckyMiner.cmd
    )
)
set CPU=true
set GPU=false
set AMD=false
set NVIDIA=false
set /p GPU="Are you interested in using the GPU? (Y/N) > "
if "%GPU%"=="Y" ( set GPU=true ) else (
    if "%GPU%"=="y" ( set GPU=true ) else ( 
        if "%GPU%"=="x" exit else (
            if "%GPU%"=="r" (
                set Reset_Addresses=true
                setx Reset_Addresses true
                call UnLuckyMiner.cmd
            ) else ( set GPU=false )
        ) 
    )
)
if %GPU%==true set /p AMD="Are you using AMD GPU? (Y/N) > "
if %GPU%==true (
    set CPU=false
    set NVIDIA=true
    if "%AMD%"=="x" exit else (
        if "%AMD%"=="r" (
            set Reset_Addresses=true
            setx Reset_Addresses true
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
if %GPU%==true (
    set OUTPUT_ALGO=%algo_gpu%
    set OUTPUT_POOL=%pool_gpu%
) else (
    set OUTPUT_ALGO=%algo_cpu%
    set OUTPUT_POOL=%pool_cpu%
)

set /p Use_UnMinable_Pool="Use UnMineable Pools for mining? (Y/N - Currently: %UnMineable%) > "
if "%Use_UnMinable_Pool%"=="x" exit else (
    if "%Use_UnMinable_Pool%"=="r" (
        set Reset_Addresses=true
        setx Reset_Addresses true
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

echo Coins available for mining:
echo -- BTC (Bitcoin)
echo -- BCH (Bitcoin Cash)
echo -- ETH (Ethereum)
echo -- ETC (Ethereum Classic)
echo -- SHIB (Shiba Inu)
echo -- DOGE (Doge Coin)
echo -- KAS (Kaspa)
echo -- ZEPH (Zephyr)
echo -- XMR (Monero)
echo -- SOL (Solana)
echo -- AVAX (Avalanche)
echo -- NEXA (Nexa)
echo -- RVN (Raven Coin)
echo -- ENJ (Enjin Coin)
echo -- RTM (Raptoreum)
echo -- NEOX (Neoxa)
set /p Coin="What Coin would you like to mine? (Coin Tag) > "
set FoundCoin=false
set OUTPUT_CODE=%discount_code%
if "%Coin%"=="x" exit else (
    if "%Coin%"=="r" ( 
        set Reset_Addresses=true
        setx Reset_Addresses true
        call UnLuckyMiner.cmd
    ) else ( 
    if "%Coin%"=="BTC" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Bitcoin%
        if %UnMineable%==true (
            set OUTPUT_WALLET=BTC:%wallet_Bitcoin%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_Bitcoin%
        ) else (
            set FoundCoin=false
        )
    ) else ( 
    if "%Coin%"=="BCH" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_BitcoinCash%
        if %UnMineable%==true (
            set OUTPUT_WALLET=BCH:%wallet_BitcoinCash%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_BitcoinCash%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="ETH" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Ethereum%
        if %UnMineable%==true (
            set OUTPUT_WALLET=ETH:%wallet_Ethereum%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_Ethereum%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="ETC" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_EthereumClassic%
        if %UnMineable%==true (
            set OUTPUT_WALLET=ETC:%wallet_EthereumClassic%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_EthereumClassic%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="SHIB" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_ShibaInu%
        if %UnMineable%==true (
            set OUTPUT_WALLET=SHIB:%wallet_ShibaInu%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_ShibaInu%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="DOGE" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_DogeCoin%
        if %UnMineable%==true (
            set OUTPUT_WALLET=DOGE:%wallet_DogeCoin%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_DogeCoin%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="KAS" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Kaspa%
        if %UnMineable%==true (
            set OUTPUT_WALLET=KAS:%wallet_Kaspa%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_Kaspa%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="ZEPH" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Zephyr%
        if %UnMineable%==true (
            set OUTPUT_WALLET=ZEPH:%wallet_Zephyr%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_Zephyr%
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
            if %global_discount_code%==false set OUTPUT_CODE=%discount_Monero%
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
            if %global_discount_code%==false set OUTPUT_CODE=%discount_Solana%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="AVAX" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Avalanche%
        if %UnMineable%==true (
            set OUTPUT_WALLET=AVAX:%wallet_Avalanche%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_Avalanche%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="NEXA" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_Nexa%
        if %UnMineable%==true (
            set OUTPUT_WALLET=NEXA:%wallet_Nexa%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_Nexa%
        ) else (
            set FoundCoin=false
        )
    ) else (
    if "%Coin%"=="RVN" ( 
        set FoundCoin=true
        set OUTPUT_WALLET=%wallet_RavenCoin%
        if %UnMineable%==true (
            set OUTPUT_WALLET=RVN:%wallet_RavenCoin%
            if %global_discount_code%==false set OUTPUT_CODE=%discount_RavenCoin%
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
            if %global_discount_code%==false set OUTPUT_CODE=%discount_EnjinCoin%
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
            echo -- ERR: Failed to setup GPU Processor!
        )
    ) else (
        set FoundCoin=false
    )))))))))))))))))
)

if %FoundCoin%==false echo -- ERR: A configuration error occurred, Loading default setting!
if %FoundCoin%==false set /p onFail="Default Miner (Currently: '%onFail%') > "
if "%onFail%"=="x" exit else (
    if "%onFail%"=="r" (
        set Reset_Addresses=true
        setx Reset_Addresses true
        call UnLuckyMiner.cmd
    )
)
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
        if %global_discount_code%==false set OUTPUT_CODE=%discount_ShibaInu%
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
            if %global_discount_code%==false set OUTPUT_CODE=%discount_ShibaInu%
        ) else (
            echo -- ERR: Failed to setup GPU Processor!
            pause
            exit
        )
    ) else (
        set CPU=true
        set GPU=false
        set AMD=false
        set NVIDIA=false
        set UnMineable=false
        set use_discount=false
        set Coin=ZEPH
        set OUTPUT_ALGO=rx/0
        set OUTPUT_POOL=%pool_Zephyr%
        set OUTPUT_WALLET=%wallet_Zephyr%   
    ))
)

set OUTPUT_WALLET=%OUTPUT_WALLET%.%MINER%
if %UnMineable%==true (
    if %use_discount%==true set OUTPUT_WALLET=%OUTPUT_WALLET%#%OUTPUT_CODE%
)
set OUTPUT_WALLET=%OUTPUT_WALLET: =%

echo Configuration successfully applied!
echo Rig Name: %MINER%
echo Coin: %Coin%
echo Algorithm: %OUTPUT_ALGO%
set OUTPUT_CPU=CPU
if %GPU%==true set OUTPUT_CPU=GPU
echo Miner Hardware: %OUTPUT_CPU%
set OUTPUT_GPU_TYPE=NVIDIA
if %AMD%==true set OUTPUT_GPU_TYPE=AMD
if %GPU%==true echo GPU Type: %OUTPUT_GPU_TYPE%
if %UnMineable%==true echo Mining with UnMineable Pools!
echo Wallet Address: %OUTPUT_WALLET%
echo Starting a mining process with XMrig.
set CONFIG={ "api": { "id": null, "worker-id": null }, "http": { "enabled": false, "host": "127.0.0.1", "port": 0, "access-token": null, "restricted": true }, "autosave": true, "background": false, "colors": true, "title": "UnLuckyMiner", "randomx": { "init": -1, "init-avx2": 1, "mode": "fast", "1gb-pages": true, "rdmsr": true, "wrmsr": true, "cache_qos": false, "numa": true, "scratchpad_prefetch_mode": 2 }, "cpu": { "enabled": %CPU%, "huge-pages": true, "huge-pages-jit": false, "hw-aes": null, "priority": null, "memory-pool": false, "yield": false, "max-threads-hint": 100, "asm": true, "argon2-impl": null, "cn/0": false, "cn-lite/0": false }, "opencl": { "enabled": %AMD%, "cache": true, "loader": null, "platform": "AMD", "adl": true, "cn/0": false, "cn-lite/0": false }, "cuda": { "enabled": %NVIDIA%, "loader": "%XMrig_Folder%/xmrig-cuda.dll", "nvml": true, "cn/0": false, "cn-lite/0": false }, "donate-level": %Donate%, "donate-over-proxy": %Donate%, "log-file": null, "pools": [{ "enabled": true, "coin": null, "algo": "%OUTPUT_ALGO%", "url": "%OUTPUT_POOL%", "user": "%OUTPUT_WALLET%", "pass": "%Password%", "rig-id": "%MINER%", "nicehash": %NiceHash%, "keepalive": true, "tls": %TLS%, "tls-fingerprint": null, "daemon": false, "socks5": null, "self-select": null, "submit-to-origin": false }], "print-time": 60, "health-print-time": 60, "dmi": true, "retries": 5, "retry-pause": 5, "syslog": false, "tls": { "enabled": false, "protocols": null, "cert": null, "cert_key": null, "ciphers": null, "ciphersuites": null, "dhparam": null }, "dns": { "ipv6": false, "ttl": 30 }, "user-agent": null, "verbose": 0, "watch": true, "pause-on-battery": false, "pause-on-active": false }
echo %CONFIG% > config.json
if exist config.json (
    echo Configuration file created successfully.
) else (
    echo Failed to create configuration file.
)
pause
xmrig.exe 
cmd /k
pause
