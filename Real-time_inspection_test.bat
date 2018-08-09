@echo off
pushd %~dp0
SETLOCAL ENABLEEXTENSIONS
setlocal enabledelayedexpansion
cls

::Chack OS version
set osver=nosupport
ver|system\grep\grep.exe -Eiq "Version 6.1." >Nul 2>Nul
if not %ERRORLEVEL% == 0 set osver=7
ver|system\grep\grep.exe -Eiq "Version 6.(2|3)." >Nul 2>Nul
if not %ERRORLEVEL% == 0 set osver=8
ver|system\grep\grep.exe -Eiq "Version 10.0." >Nul 2>Nul
if not %ERRORLEVEL% == 0 set osver=10
if /I "%osver%" == "nosupport" (
	goto nonos
)

::chack zip file
if not exist system\chack\Real-time_inspection_test (goto chack)

::set system bit
set bit=86
if exist "%SystemRoot%\SysWOW64" do (
set bit=64
)

::Set color
color 0f

::창 사이즈 설정
mode.com con cols=120 lines=40

::타이틀 설정
title 백신 테스트

::Set
set v=V.Alpha
set e=OFFICIAL
set second=0
set zc=Zero_Cleaner

::make 백신테스트 log folder
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
mkdir "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
mkdir "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
mkdir "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
mkdir "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)
set "strtmp=%date% %time%"
set "datetime=%strtmp%"
set "rptdate=%strtmp:-=%"
set "rptdate=%rptdate:/=%"
set "rptdate=%rptdate::=%"
set "rptdate=%rptdate:.=%"
set "rptdate=%rptdate: =%"

::chack and make Zero_Cleaner log folder
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
mkdir "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)

::set log name
set log=%systemdrive%\%zc%_log\Real-time_inspection_test[%rptdate%].log

::Create log
echo %time% Create log>%log%

::Start
echo Start Real-time_inspection_test>>%log%
cls
echo.
echo.   Real-time_inspection_test - %v%_%e%
echo.
echo.                                                   QESASDDS
echo.                                                    .BgK.       
echo.                                                   :BBEE.        
echo.                                               JBQYBBBsPAW          
echo.                                                 EBBPi           
echo.                                               .BBPP.            
echo.                                              vBBgS              
echo.                                             bBBgi               
echo.                                            BBM2:                
echo.                                          iBBPS                  
echo.                                         SBQQr                   
echo.                                        BBBq.                    
echo.                                      :J::L.                     
echo.                                     ru7i.                       
echo.                                    :usJ:                        
echo.                                   .BU..       ..                
echo.                                  :BE       iKBBBBB              
echo.                                  ;'     .dBBBBBBRBK             
echo.                                 /    :vPEbSBBDSjv12             
echo.                       .iv.     / .7IZDZU7. .SYssJv.             
echo.                      :iUQM7   / ::7PUr....  71r.                
echo.                     :...iKgj./ .............                    
echo.                     .....:uE/.  .........                       
echo.                      ....../EbL    ...                          
echo.                       ..  iPBBBB                                
echo.                         .v2uqRBBB:                              
echo.                          sj77IgBBBX                             
echo.                           rJvvIEBBBq                            
echo.                            .jY77rrLq                            
echo.                             .JULJjj.                            
echo.                               :i:.                              
echo.
echo. 
echo. ENTER키를 누르시면 백신 테스트를 시작합니다.
pause>nul
echo.>>%log%
echo --------------- Start Core algorithm --------------->>%log%
echo.>>%log%
cls
echo.
echo. 체크중. . .
echo. 핵심 알고리즘 실행. . .
::Core algorithm
echo X5O^^!P%%^@AP[4\PZX54^(P^^^^)7CC^)7^}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE^^!$H+H* >EICAR.TXT
if not exist EICAR.TXT (goto 0)
timeout/t 1 /nobreak>nul
set /a second1=%second%+1
:test
if not exist EICAR.TXT (goto finish)
set /a second2=%second1%+1
timeout/t 1 /nobreak>nul
if %second2%==10 (goto overtime)
goto test
:finish
echo 백신이 실시간 검사로 가짜 바이러스를 제거했습니다.>>%log%
echo.>>%log%
echo 백신이 가짜 바이러스를 탐지하고 제거하는 시간 : [ %second2% ] 초>>%log%
cls
echo.
echo. 백신이 실시간 검사로 가짜 바이러스를 제거했습니다.
echo.
echo. 백신이 가짜 바이러스를 탐지하고 제거하는 시간 : [ %second2% ] 초
echo. 
echo. ENTER키를 누르시면 프로그램이 종료됩니다.
start %log%
pause>nul
exit
:0
echo 백신의 실시간 검사가 즉각적으로 가짜 바이러스를 제거했습니다.>>%log%
echo.>>%log%
echo 프로그램 오류가 있을 수 있으니 확인해 주세요.>>%log%
echo.>>%log%
echo 프로그램의 오류가 없다면 백신이 가짜 바이러스를 탐지하고 제거하는 시간 : [ 0 ] 초 >>%log%
cls
echo.
echo. 백신의 실시간 검사가 즉각적으로 가짜 바이러스를 제거했습니다.
echo.
echo. 프로그램 오류가 있을 수 있으니 확인해 주세요.
echo.
echo. 프로그램의 오류가 없다면 백신이 가짜 바이러스를 탐지하고 제거하는 시간 : [ 0 ] 초 
echo.
echo. ENTER키를 누르시면 프로그램이 종료됩니다.
start %log%
exit
:overtime
echo 백신이 가짜 바이러스를 잡는데 10초 이상이 걸립니다.>>%log%
echo.>>%log%
echo 백신이 컴퓨터에 없거나 가짜 바이러스를 잡을 수 없는 백신인지 확인하십시오.>>%log%
echo 일부 백신들은 해당 파일을 제거하지 않습니다.>>%log%
cls
echo.
echo. 백신이 가짜 바이러스를 잡는데 10초 이상이 걸립니다.
echo.
echo. 백신이 컴퓨터에 없거나 가짜 바이러스를 잡을 수 없는 백신인지 확인하십시오.
echo. 일부 백신들은 해당 파일을 제거하지 않습니다.
echo.
echo. ENTER키를 누르시면 프로그램이 종료됩니다.
start %log%
exit

:nonos
COLOR 4F
cls
title This OS isn't supported
echo.
echo. This OS isn't supported
echo.
echo. Supported OS : Windows 7~10
echo.
echo. Press the ENTER key to exit the program.
pause>nul
exit

:chack
COLOR 4F
cls
title Please unzip the file properly and execute it.
echo.
echo. Please unzip the file properly and execute it.
echo.
echo. Press the ENTER key to exit the program.
PAUSE>NUL
exit