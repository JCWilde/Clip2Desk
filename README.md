Clip2Desk

Clip2Desk is a Windows command-line tool that captures the contents of the clipboard as an image and saves it to the user's desktop with an automatically incremented filename. This is useful for quickly saving screenshots or other images from the clipboard to the desktop without having to manually paste and save.
Usage

To use Clip2Desk, simply run the provided batch script (Clip2Desk.bat) on your Windows computer. The script is written in Batch and PowerShell scripting languages.

batch

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

The script first sets the default filename to "screenshot.png", the counter to 1, and the save location to the user's desktop. It then enters a loop that checks if a file with the current filename already exists on the desktop. If it does, the counter is incremented and the filename is updated accordingly. The loop continues until a unique filename is found.

Finally, the script uses PowerShell to capture the contents of the clipboard as an image and save it to the desktop with the generated filename. The Add-Type command is used to load the necessary .NET assembly for working with Windows Forms, and the Clipboard class is used to get the image from the clipboard. The Save() method is then called on the image object to save it to the specified location.
License

Clip2Desk is released under the MIT License, which means it is open source and free to use, modify, and distribute. However, please note that the use of the script is at your own risk, and the authors of Clip2Desk do not provide any warranty or support for the script.
