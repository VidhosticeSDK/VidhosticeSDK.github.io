@echo off

rem echo.
rem echo Inicializuji mdBook...
rem echo.
rem mdbook init VidhosticeSDK.github.io

echo.
echo mdbook build
echo.
mdbook build VidhosticeSDK.github.io

echo.
echo mdbook serve
echo.
mdbook serve --open VidhosticeSDK.github.io
