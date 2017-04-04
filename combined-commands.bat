sort md5.txt /+34 /o md5sorteddata.txt

timeout /t 2 /nobreak

@echo off > md5sorteddata_1.txt & setLocal enableDELAYedeXpansioN
for /f "tokens=1* delims=]" %%a in ('find /N /V "" ^<md5sorteddata.txt') do (
    SET "str=%%b"
    for /l %%i in (1,1,100) do if "!str:~-1!"==" " set "str=!str:~0,-1!"
    >>md5sorteddata_1.txt SET /P "l=!str!"<nul
    >>md5sorteddata_1.txt echo.
)

timeout /t 5 /nobreak

fc /c A:\mediapreserve_test\vendormd5edited.txt  A:\mediapreserve_test\md5sorteddata_1.txt
pause