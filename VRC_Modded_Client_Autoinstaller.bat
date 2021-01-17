@ECHO off
echo ^    --------------------------------------------------------
echo ^    ^| 		Autoinstaller by HaZe 			^|
echo ^    --------------------------------------------------------


if EXIST Vrchat.exe (
echo Vrchat installation found
echo Cleaning up old installations of MelonLoader and EmmVRC

rem Melonloader
IF EXIST Melonloader rd /S /Q Melonloader
IF EXIST NOTICE.txt del NOTICE.txt
IF EXIST version.dll del version.dll

powershell -Command "Invoke-WebRequest https://github.com/HerpDerpinstine/MelonLoader/releases/latest/download/MelonLoader.zip -Outfile MelonLoader.zip"
powershell -Command "Expand-Archive MelonLoader.zip -DestinationPath ./"

rem EmmVRC

IF NOT EXIST Mods md Mods

IF EXIST emmVRCLoader.dll del emmVRCLoader.dll 
powershell -Command "Invoke-WebRequest https://www.thetrueyoshifan.com/downloads/emmVRCLoader.dll -Outfile ./VRC_Mods/emmVRCLoader.dll


echo.
echo.
echo.
echo.
echo Installation successful, please launch VRchat.exe


)else echo VRchat installation not found, please put in correct directory


pause