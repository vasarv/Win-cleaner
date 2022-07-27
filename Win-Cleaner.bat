WSReset.exe
TASKKILL /F /IM WinStore.App.exe
ipconfig /flushdns
dism /online /cleanup-image /startcomponentcleanup /resetbase
pushd "C:\Windows\Temp" && (rd /s /q "C:\Windows\Temp" 2>nul & popd)
pushd "C:\Windows\SoftwareDistribution\Download" && (rd /s /q "C:\Windows\SoftwareDistribution\Download" 2>nul & popd)
pushd "C:\Windows\Prefetch" && (rd /s /q "C:\Windows\Prefetch" 2>nul & popd)
pushd "%temp%" && (rd /s /q "%temp%" 2>nul & popd)
powershell.exe -command Clear-RecycleBin
shutdown /r /t 0