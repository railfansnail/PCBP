@echo off
set user=%username%
set backuptarget=c:\%user%
set backupfolder=c:\PCBPBackup
if not exist C:\PCBPBackup mkdir C:\PCBPBackup
echo.
echo.
echo PCBP ��� ���� �ʱ�ȭ �մϴ�  . . . (0%)
timeout /t 1 /nobreak > NUL
cls
echo.
echo.
echo PCBP ��� ���� �ʱ�ȭ �մϴ� . . . (37%)
timeout /t 1 /nobreak > NUL
cls
echo.
echo.
echo PCBP ��� ���� �ʱ�ȭ �մϴ� . . . (75%)
timeout /t 1 /nobreak > NUL
cls
echo.
echo.
echo PCBP ��� ���� �ʱ�ȭ �մϴ� . . . (100%)
timeout /t 3 /nobreak > NUL
cls
echo.
echo.
timeout /t 3 /nobreak > NUL

:menu
echo ���ϴ� �׸��� �����Ͻʽÿ�.
echo.
echo [1] ���� ���
echo [2] ��� ����
echo [3] ������ ��� ��ġ �˾ƺ���
echo.
choice /c 123 /n /m ""

if errorlevel 3 goto folder
if errorlevel 2 goto exit
if errorlevel 1 goto backup

:backup
color 3F
timeout /t 1 /nobreak > NUL
echo.
echo ����� ���� ����� �����մϴ�.
echo.
timeout /t 2 /nobreak > NUL
echo 1�ܰ�. �ٿ�ε� ������ ����մϴ�.
timeout /t 2 /nobreak > NUL
if not exist C:\PCBPBackup\%date%\downloads mkdir C:\PCBPBackup\%date%\downloads
set source=C:\Users\%user%\downloads
set target=C:\PCBPBackup\%date%\downloads
xcopy %source% %target% /s /e /h /i /y
timeout /t 1 /nobreak > NUL
echo.
echo.

echo 2�ܰ�. ���� ������ ����մϴ�.
timeout /t 2 /nobreak > NUL
if not exist C:\PCBPBackup\%date%\documents mkdir C:\PCBPBackup\%date%\documents
set source=C:\Users\%user%\documents
set target=C:\PCBPBackup\%date%\documents
xcopy %source% %target% /s /e /h /i /y
timeout /t 1 /nobreak > NUL
echo.
echo.

echo 3�ܰ�. ���� ������ ����մϴ�.
timeout /t 2 /nobreak > NUL
if not exist C:\PCBPBackup\%date%\pictures mkdir C:\PCBPBackup\%date%\pictures
set source=C:\Users\%user%\pictures
set target=C:\PCBPBackup\%date%\pictures
xcopy %source% %target% /s /e /h /i /y
timeout /t 1 /nobreak > NUL
echo.
echo.

echo 4�ܰ�. ���� ������ ����մϴ�.
timeout /t 2 /nobreak > NUL
if not exist C:\PCBPBackup\%date%\music mkdir C:\PCBPBackup\%date%\music
set source=C:\Users\%user%\music
set target=C:\PCBPBackup\%date%\music
xcopy %source% %target% /s /e /h /i /y
timeout /t 1 /nobreak > NUL
echo.
echo.

echo 5�ܰ�. ������ ������ ����մϴ�.
timeout /t 2 /nobreak > NUL
if not exist C:\PCBPBackup\%date%\videos mkdir C:\PCBPBackup\%date%\videos
set source=C:\Users\%user%\videos
set target=C:\PCBPBackup\%date%\videos
xcopy %source% %target% /s /e /h /i /y
timeout /t 1 /nobreak > NUL
echo.
echo.

echo 6�ܰ�. ����ȭ�� ������ ����մϴ�.
timeout /t 2 /nobreak > NUL
if not exist C:\PCBPBackup\%date%\desktop mkdir C:\PCBPBackup\%date%\desktop
set source=C:\Users\%user%\desktop
set target=C:\PCBPBackup\%date%\desktop
xcopy %source% %target% /s /e /h /i /y
timeout /t 1 /nobreak > NUL
echo.
echo.
color 2F
echo ����� �������ϴ�. �޴� ȭ������ ���ư��ϴ�.
echo �۾��� �Ϸ��߽��ϴ�. ȭ�鿡 ǥ�õ� �ڵ带 �˾ƺ����� �����ڿ��� �����Ͻʽÿ�.
echo [PCBP-110xS1000]
pause
color 0F
cls
goto menu





:exit
color 6F
timeout /t 1 /nobreak > NUL
echo.
echo ����� �����մϴ�.
echo.
echo.
echo �۾��� �Ϸ��߽��ϴ�. ȭ�鿡 ǥ�õ� �ڵ带 �˾ƺ����� �����ڿ��� �����Ͻʽÿ�.
echo [PCBP-110xC2000]
timeout /t 10 /nobreak > NUL
exit




:folder
color 6F
timeout /t 1 /nobreak > NUL
echo.
echo ���� ��� ������ ����: %backuptarget%
echo.
echo ���� ��� ������ ����Ǵ� ����: %backupfolder%
echo.
echo.
echo �۾��� �Ϸ��߽��ϴ�. ȭ�鿡 ǥ�õ� �ڵ带 �˾ƺ����� �����ڿ��� �����Ͻʽÿ�.
echo [PCBP-310xS1000]
pause
color 0F
cls
goto menu