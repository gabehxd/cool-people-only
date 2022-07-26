@echo off
mkdir fo\
xcopy %1 "fo\"
cd "fo"
packwiz.exe curseforge import %1
cd ..
xcopy "fo\" "output\" /S /Y
xcopy "Cool People Only!\" "output\" /S /Y
cd "output\"
del %1
packwiz.exe refresh
packwiz.exe update --all
echo Make sure to update isxander-main-menu-credits.json!