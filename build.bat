@echo off
xcopy %1 "Fabulously Optimized\"
cd "Fabulously Optimized"
packwiz.exe curseforge import %1
cd ..
xcopy "Cool People Only!\" "output\"
xcopy s:\ z:\ /S /Y /D "Fabulously Optimized\" "output\"