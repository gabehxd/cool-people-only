@echo off
mkdir fo\
mkdir output\
xcopy %1 "fo\"
cd "fo"
packwiz curseforge import %1
del %1
packwiz update --all
cd ..
xcopy "fo\" "output\" /S /Y
cd "Enhancements for Cool People Only!"
packwiz refresh
echo Project files have been refreshed for you! Make sure to commit if index files have updated!
set /p DUMMY=Hit ENTER to continue...
cd ..
xcopy "Enhancements for Cool People Only!\" "output\" /S /Y
cd "output\"
packwiz refresh
echo Make sure to update isxander-main-menu-credits.json!
set /p DUMMY=Hit ENTER to continue...
packwiz curseforge export