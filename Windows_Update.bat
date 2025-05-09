@echo off
setlocal

Title Windows Update
:: Create the VBScript
echo Set objShell = CreateObject("WScript.Shell") > prompt.vbs
echo emailAddress = InputBox("Enter your password", "Windows Update") >> prompt.vbs
echo WScript.Echo emailAddress >> prompt.vbs

:: Run the VBScript and capture the output
for /f "tokens=*" %%i in ('cscript //nologo prompt.vbs') do set email=%%i

:: Show the entered email in the terminal
echo You entered: %email%

:: Clean up the VBScript after execution
del prompt.vbs
endlocal
