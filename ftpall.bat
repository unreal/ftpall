:: ftpall.bat
:: - grabs file backup from all controllers
::
:: %1 - first argument is new directory for the backups
:: program assumes that backups is 1 directory up from ftpall.bat
@ECHO OFF

set startdir=%CD%


@echo entering backups dir
CD ..\backups

:: create new directory and enter
@echo creating %1 directory
mkdir %1
@echo entering %1 directory
cd %1

chdir
@echo starting loop
FOR /F "usebackq tokens=1,2" %%i IN ("%startdir%.\ftpall.dat") do (
        :: %%i is ip
        :: %%j is robname
	
	@echo Setting up %%j
        mkdir %%j
	cd %%j

	@echo ftp connecting to %%i
        ftp -v -s:"%startdir%.\ftpall.ftp" %%i

        cd ..
	
)

GOTO END


:END
cd %startdir%