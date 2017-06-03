::@echo off

::force UTF-8 support
::chcp 65001

::----------------------------------------------------::
:: make sure to browse the path to your `node.exe`,   ::
:: show properties, under compatibilities set "ON"    ::
:: the checkbox for run as admin.                     ::
::----------------------------------------------------::
set _NODE=C:\nodejs32\node.exe

set _PATH=%~dp0
set _SCPT=_builder.js

::cleanup
rmdir ".\build\" /s /q
mkdir ".\build\"

call "%_NODE%" "%_PATH%%_SCPT%"
pause
