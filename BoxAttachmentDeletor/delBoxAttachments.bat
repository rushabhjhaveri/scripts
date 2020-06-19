@ECHO OFF

echo Delete downloaded email attachments which have since been uploaded to Box. 
SET "sourcedir=%USERPROFILE%\Downloads"

for /f "delims=" %%i in ('dir /b /s /a-d %sourcedir% ^| findstr /i /r /c:"^.*-[A-Za-z][A-Za-z][0-9][0-9][0-9][0-9]-.*.jpg$" 
/c:"^.*-[A-Za-z][A-Za-z][A-Za-z][0-9][0-9]-.*.jpg$" /c:"^.*-[A-Za-z][A-Za-z][A-Za-z][0-9][0-9][0-9]-.*.jpg$" /c:"^.*-[A-Za-z][A-Za-z][A-Za-z][0-9]-.*.jpg$"
/c:"^.*-[A-Za-z][A-Za-z][A-Za-z][0-9][0-9]-.*.jpg$" 
/c:"^.*-[A-Za-z][A-Za-z][0-9][0-9][0-9][0-9]-.*.png$" /c:"^.*-[A-Za-z][A-Za-z][A-Za-z][0-9][0-9]-.*.png$" /c:"^.*-[A-Za-z][A-Za-z][A-Za-z][0-9][0-9][0-9]-.*.png$" 
/c:"^.*-[A-Za-z][A-Za-z][A-Za-z][0-9]-.*.png$" /c:"^.*-[A-Za-z][A-Za-z][A-Za-z][0-9][0-9]-.*.png$"') do del "%%i"

echo Done! 