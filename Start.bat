@echo off
:scriptstart
:modelset
echo.
echo 請輸入您蘋果裝置的版本號，例: iPhone8,2 (請使用iTunes來查詢): 
echo.
set /p iDeviceModel= ""
if "%iDeviceModel%"=="iPad4,1" goto :modelwrite
if "%iDeviceModel%"=="iPad4,2" goto :modelwrite
if "%iDeviceModel%"=="iPad4,3" goto :modelwrite
if "%iDeviceModel%"=="iPad4,4" goto :modelwrite
if "%iDeviceModel%"=="iPad4,5" goto :modelwrite
if "%iDeviceModel%"=="iPad4,6" goto :modelwrite
if "%iDeviceModel%"=="iPad4,7" goto :modelwrite
if "%iDeviceModel%"=="iPad4,8" goto :modelwrite
if "%iDeviceModel%"=="iPad4,9" goto :modelwrite
if "%iDeviceModel%"=="iPad5,1" goto :modelwrite
if "%iDeviceModel%"=="iPad5,2" goto :modelwrite
if "%iDeviceModel%"=="iPad5,3" goto :modelwrite
if "%iDeviceModel%"=="iPad5,4" goto :modelwrite
if "%iDeviceModel%"=="iPad6,7" goto :modelwrite
if "%iDeviceModel%"=="iPad6,8" goto :modelwrite
if "%iDeviceModel%"=="iPad6,3" goto :modelwrite
if "%iDeviceModel%"=="iPad6,4" goto :modelwrite
if "%iDeviceModel%"=="iPhone6,1" goto :modelwrite
if "%iDeviceModel%"=="iPhone6,2" goto :modelwrite
if "%iDeviceModel%"=="iPhone7,2" goto :modelwrite
if "%iDeviceModel%"=="iPhone7,1" goto :modelwrite
if "%iDeviceModel%"=="iPhone8,1" goto :modelwrite
if "%iDeviceModel%"=="iPhone8,2" goto :modelwrite
if "%iDeviceModel%"=="iPhone8,4" goto :modelwrite
if "%iDeviceModel%"=="iPhone9,1" goto :modelwrite
if "%iDeviceModel%"=="iPhone9,3" goto :modelwrite
if "%iDeviceModel%"=="iPhone9,2" goto :modelwrite
if "%iDeviceModel%"=="iPhone9,4" goto :modelwrite
if "%iDeviceModel%"=="iPod7,1" goto :modelwrite
echo.
echo 您輸入的裝置版本號並不存在，可能是您輸入有誤（版本號有大小寫區分）或是您輸入的版本號是不支援的32位元裝置。
goto :modelset
:modelwrite
echo.
fart Data\Scripts\ IMODEL %iDeviceModel%
:ecidset
echo. 
echo 接著請輸入您裝置的ECID，例: 123456789ABDC (請使用iTunes來查詢): 
echo.
set /p iDeviceECID= ""
echo.
set /p a=您所輸入的ECID為 %iDeviceECID% ，請您再次檢查確認無誤，並回答Y或N以確認 [Y/N]
if /I "%a%" EQU "Y" goto :ecidwrite
if /I "%a%" EQU "N" goto :ecidset
:ecidwrite
echo.
fart Data\Scripts\ IECID %iDeviceECID%
echo.
echo 請為您裝置專屬的SHSH2資料夾命名，需『使用英文命名』並請注意不要使用以下特殊符號  \ / : * ? " < > | ，不然出意外的話我們不會負責
echo.
set /p iDeviceName= ""
set iDeviceName=%iDeviceName: =-%
mkdir SavedSHSH2
mkdir SavedSHSH2\%iDeviceName%
mkdir SavedSHSH2\%iDeviceName%\NoApnonce
mkdir SavedSHSH2\%iDeviceName%\Apnonce-603be133ff0bdfa0f83f21e74191cf6770ea43bb
mkdir SavedSHSH2\%iDeviceName%\Apnonce-352dfad1713834f4f94c5ff3c3e5e99477347b95
mkdir SavedSHSH2\%iDeviceName%\Apnonce-42c88f5a7b75bc944c288a7215391dc9c73b6e9f
mkdir SavedSHSH2\%iDeviceName%\Apnonce-0dc448240696866b0cc1b2ac3eca4ce22af11cb3
mkdir SavedSHSH2\%iDeviceName%\Apnonce-9804d99e85bbafd4bb1135a1044773b4df9f1ba3
echo.
echo 正在儲存夢寐以求的SHSH2 Bolbs中，請耐心的等待並在完成前勿關閉此視窗，在等待的過程中你可以先去聽首歌來放鬆一下XD
echo 感謝@2klasic讓我們離夢想更近一步!
echo.
pause
echo.
CALL Data\Scripts\ScriptN.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\NoApnonce\"
CALL Data\Scripts\ScriptA1.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\Apnonce-603be133ff0bdfa0f83f21e74191cf6770ea43bb\"
CALL Data\Scripts\ScriptA2.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\Apnonce-352dfad1713834f4f94c5ff3c3e5e99477347b95\"
CALL Data\Scripts\ScriptA3.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\Apnonce-42c88f5a7b75bc944c288a7215391dc9c73b6e9f\"
CALL Data\Scripts\ScriptA4.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\Apnonce-0dc448240696866b0cc1b2ac3eca4ce22af11cb3\"
CALL Data\Scripts\ScriptA5.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\Apnonce-9804d99e85bbafd4bb1135a1044773b4df9f1ba3\"
echo.
echo 再一下下，快完成了，你的電腦正在努力重置腳本!
echo.
fart Data\Scripts\ %iDeviceModel% IMODEL
fart Data\Scripts\ %iDeviceECID% IECID
echo.
echo 宋啦! 你已經成功儲存你現在裝置的Bolbs了，萬事俱備只欠東風，就希望將來有適當的方法來用這些Bolbs哈哈哈~
echo.
echo 此TSSChecker工具是由Sankumatzo所撰寫，並由AppleQ團隊繁體中文化，感謝使用！
echo 更多蘋果技術資訊請見 https://appleq.org/
echo.
set /P c=請問您是否也想幫另一台裝置也提取SHSH2 Bolbs呢? [Y/N]?
if /I "%c%" EQU "Y" goto :scriptstart
if /I "%c%" EQU "N" goto :end
:end