@ECHO OFF

echo Delete downloaded email attachments which have since been uploaded to Box. 
SET "sourcedir=%USERPROFILE%\Downloads"
rem SETLOCAL ENABLEDELAYEDEXPANSION

rem Including the /s switch prints the full pathname, which results in findstr [rem'd below] failing. 
rem for /f "delims= " %%i in ('dir /b /s /a-d "%sourcedir%" ^| findstr /i "^[1].*-[A-Z].*-.*.[jpg|png]"') do echo del %%i 
for /f "delims= " %%i in ('dir /b /a-d "%sourcedir%" ^| findstr /i "^[1].*-[A-Z].*-.*.[jpg|png]"') do echo del %%i 
echo Done! 