@echo off
REM กำหนดตัวแปรสำหรับตำแหน่งของโปรแกรม
SET AIS_PATH="C:\Program Files (x86)\Advanced IP Scanner\advanced_ip_scanner_console.exe"

REM กำหนดช่วง IP ที่ต้องการสแกน (เช่น วง LAN 192.168.1.x)
SET IP_RANGE=192.168.1.1-254

REM กำหนดชื่อไฟล์ผลลัพธ์ (จะถูกสร้างในโฟลเดอร์เดียวกับไฟล์ .bat)
SET RESULT_FILE=%~dp0Scan_Result_%DATE:/=-%.csv

REM --- คำสั่งรันการสแกน ---
echo เริ่มการสแกนเครือข่าย %IP_RANGE%...
echo กรุณารอสักครู่ (หน้าต่างอาจจะว่างเปล่าสักพัก)

REM คำสั่งเรียกใช้ Console
%AIS_PATH% /range:%IP_RANGE% /save:%RESULT_FILE%

echo.
echo การสแกนเสร็จสมบูรณ์!
echo ผลลัพธ์ถูกบันทึกที่: %RESULT_FILE%
echo.

pause
