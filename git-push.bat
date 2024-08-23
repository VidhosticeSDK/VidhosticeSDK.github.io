@echo off

echo Nahraji vse na github
echo.

cd VidhosticeSDK.github.io

git add --all
git commit -m "commit all files"
git push -u origin main

echo.
pause
