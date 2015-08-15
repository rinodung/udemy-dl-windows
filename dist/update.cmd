@echo off
title Udemy-dl Windows Updater

echo Updating udemy-dl.exe
echo.
IF EXIST udemy-dl.exe.new (
del udemy-dl.exe.new
)
curl --fail https://raw.githubusercontent.com/nishad/udemy-dl-windows/dist/udemy-dl.exe -o udemy-dl.exe.new
IF EXIST udemy-dl.exe.new (
del udemy-dl.exe
ren udemy-dl.exe.new udemy-dl.exe
) ELSE (
echo ERROR : Failed to download latest udemy-dl.exe
)

echo Updating aria2c.exe
echo.
IF EXIST aria2c.exe.new (
del aria2c.exe.new
)
curl --fail https://raw.githubusercontent.com/nishad/udemy-dl-windows/dist/aria2c.exe -o aria2c.exe.new
IF EXIST aria2c.exe.new (
del aria2c.exe
ren aria2c.exe.new udemy-dl.exe
) ELSE (
echo ERROR : Failed to download latest aria2c.exe
)

echo.
echo Updating youtube-dl.exe
IF EXIST youtube-dl.exe.new (
del youtube-dl.exe.new
)
curl --fail https://yt-dl.org/latest/youtube-dl.exe -o youtube-dl.exe.new
IF EXIST youtube-dl.exe.new (
del youtube-dl.exe
ren youtube-dl.exe.new youtube-dl.exe
) ELSE (
echo ERROR : Failed to download latest youtube-dl.exe
)

echo.
echo Updating curl.exe
IF EXIST curl.exe.new (
del curl.exe.new
)
curl --fail https://raw.githubusercontent.com/nishad/udemy-dl/win32/dist/curl.exe -o curl.exe.new
IF EXIST curl.exe.new (
del curl.exe
ren curl.exe.new curl.exe
) ELSE (
echo ERROR : Failed to download latest curl.exe
)

echo.
echo Updating curl-ca-bundle.crt
IF EXIST curl-ca-bundle.crt.new (
del curl-ca-bundle.crt.new
)
curl --fail https://raw.githubusercontent.com/bagder/ca-bundle/master/ca-bundle.crt -o curl-ca-bundle.crt.new
IF EXIST curl-ca-bundle.crt.new (
del curl-ca-bundle.crt
ren curl-ca-bundle.crt.new curl-ca-bundle.crt
) ELSE (
echo ERROR : Failed to download latest curl-ca-bundle.crt
)

echo.
echo Updating cacert.pem
curl --fail https://mkcert.org/generate/ -o cacert.pem.new
IF EXIST cacert.pem.new (
del cacert.pem
ren cacert.pem.new cacert.pem
) ELSE (
echo ERROR : Failed to download latest cacert.pem
)

echo.
echo Updating update.cmd
IF EXIST update.cmd.new (
del update.cmd.new
)
curl --fail https://raw.githubusercontent.com/nishad/udemy-dl-windows/dist/update.cmd -o update.cmd.new
IF EXIST update.cmd.new (
del update.cmd
ren update.cmd.new update.cmd
) ELSE (
echo ERROR : Failed to download latest update.cmd
)

echo Update completed
pause