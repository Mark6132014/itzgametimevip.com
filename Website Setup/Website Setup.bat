::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdC6DJG6B9lE5PB4UfwGWKXuGMbAe++Hv6qq0p1kIRKw6YIq7
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
echo Loading Website off to Internet Information Services...
%windir%\System32\inetsrv\appcmd add site /in < "A:\Website Setup\website.xml"
timeout /t 2 /nobreak >nul
echo Loading Application Pool off to Internet Information Services...
%windir%\System32\inetsrv\appcmd add apppool /in < "A:\Website Setup\apppool.xml"
timeout /t 2 /nobreak >nul
echo Adding itzgametimevip.com to DNS Settings...
echo. >> "C:\Windows\System32\drivers\etc\hosts"
echo 192.168.50.111 itzgametimevip.com >> "C:\Windows\System32\drivers\etc\hosts"
echo Adding HTTPS, and WWW version of itzgametimevip.com to DNS Settings...
echo 192.168.50.111 www.itzgametimevip.com >> "C:\Windows\System32\drivers\etc\hosts"
if exist "C:\Websites" (
echo Copying Website folder to Websites Folder...
if exist "C:\Websites\itzgametimevip.com" (
xcopy "A:\itzgametimevip.com" "C:\Websites\itzgametimevip.com" /E /I /Y
) else (
md C:\Websites\itzgametimevip.com
timeout /t 2 /nobreak >nul
xcopy "A:\itzgametimevip.com" "C:\Websites\itzgametimevip.com" /E /I /Y
)
timeout /t 2 /nobreak >nul
echo Completed Website! Access it to https://itzgametimevip.com
)
else (
echo Making Websites Directory in C...
md C:\Websites
timeout /t 2 /nobreak >nul
echo Making Website Domain Directory in Websites folder...
md C:\Websites\itzgametimevip.com
echo Copying Website folder to Websites\Domain Folder...
xcopy "A:\itzgametimevip.com" "C:\Websites\itzgametimevip.com" /E /I /Y
timeout /t 2 /nobreak >nul
echo Completed Website! Access it to https://itzgametimevip.com
)