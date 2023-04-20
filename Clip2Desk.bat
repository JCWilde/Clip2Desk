::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFCx9YCCncUebNoEz2NTf4P2JrkIcUPEDcYzU1KfWbfAf/1apfpM0myMM1sIPA3s=
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
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQITJBJEHiCHL2Da
::eg0/rx1wNQPfEVWB+kM9LVsJDCeONXvoIrAP44g=
::fBEirQZwNQPfEVWB+kM9LVsJDCeONXvoIrAP44g=
::cRolqwZ3JBvQF1fEqQITJBJEHiCHL2Da
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFCx9YCCncUebNoEz2NTf4P2JrkIcUPEDW4PSyuaqJfMYig==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal enableDelayedExpansion

set filename=screenshot.png
set counter=1
set saveLocation="%USERPROFILE%\Desktop"

:loop
if exist %saveLocation%\%filename% (
    set /a counter+=1
    set filename=screenshot_!counter!.png
    goto loop
)

Powershell -Command "Add-Type -AssemblyName System.Windows.Forms; $clipImg = [Windows.Forms.Clipboard]::GetImage(); $clipImg.Save('%saveLocation%\%filename%')"