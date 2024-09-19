## Automatická synchronizace přes FTP

![gamed_de](gamed_de.png)

Pokud používáte pro dedikovaný server [gamed.de](https://gameserver.gamed.de/) můžete použít script na přepínání
složek s módy **rozšířený o automatickou synchronizaci**.

Synchronizaci zajišťuje program **[WinSCP](https://winscp.net/eng/downloads.php)** a to jeho portable verze, 
která je uložena ve složce `C:\FS22\programs\`

---

Synchronizace probíhá pouze směrem z FTP na lokální disk _(synchronizace nemaže vypnuté módy)_.

##### gamed.cmd

```bash
@echo off
echo FS22 moddir: "%~n0"

rmdir C:\FS22\mods
echo.
mkdir "C:\FS22\mods-%~n0"
if not exist "mods-%~n0\_%~n0_" (
    type nul > "mods-%~n0\_%~n0_"
)
echo.
mklink /j C:\FS22\mods "C:\FS22\mods-%~n0"
echo.

set SERVER=""
set USERNAME=""
set PASSWORD=""

echo Starting WinSCP
echo -------------------------------------------------------------------------------
programs\winscp.com /ini=nul /command ^
    "open ftp://%SERVER% -username=%USERNAME% -password=%PASSWORD%" ^
    "synchronize local ""C:\FS22\mods-%~n0"" /ls2022/gameProfile/mods/" ^
    "exit"
echo -------------------------------------------------------------------------------
echo WinSCP finished

echo.
echo HOTOVO / DONE
REM pause
```

Do tohoto scriptu je potřeba doplnit vaše přístupové FTP údaje:

- IP adresa serveru

  `set SERVER="10.11.12.13"`

- uživatelské jméno

  `set USERNAME="uzivatel123456"`

- přístupové heslo

  `set PASSWORD="tajneheslo123456"`

---

Ke stažení:
- [SynchronizeFTP2local.zip](SynchronizeFTP2local.zip)
