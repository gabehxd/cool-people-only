@echo off
mkdir fo\
mkdir output\
xcopy %1 "fo\"
cd "fo"
packwiz.exe curseforge import %1
cd ..
xcopy "fo\" "output\" /S /Y
xcopy "Cool People Only!\" "output\" /S /Y
cd "output\"
del %1
packwiz.exe refresh
echo Make sure to update isxander-main-menu-credits.json!
set /p DUMMY=Hit ENTER to continue...
packwiz update --all
packwiz.exe curseforge export