# mdBook


- nápověda: [https://rust-lang.github.io/mdBook/](https://rust-lang.github.io/mdBook/)
- zdrojáky: [https://github.com/rust-lang/mdBook](https://github.com/rust-lang/mdBook)
- `mdbook.exe` [mdbook-v_._.__-x86_64-pc-windows-msvc.zip](https://github.com/rust-lang/mdBook/releases)

##### mdbook-build_and_serve.bat

```bash
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
```


# github


##### git-clone.bat

```bash
@echo off

echo Klonuji repositar VidhosticeSDK.github.io
echo.
git clone https://github.com/VidhosticeSDK/VidhosticeSDK.github.io

echo.
pause
```

##### git-push.bat

```bash
@echo off

echo Nahraji vse na github
echo.

cd VidhosticeSDK.github.io

git add --all
git commit -m "commit all files"
git push -u origin main

echo.
pause
```
