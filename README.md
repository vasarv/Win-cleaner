# Win-cleaner

    WSReset.exe
#Отвечает за очистку кеша Microsoft Store

    TASKKILL /F /IM WinStore.App.exe
#Отвечает за завершение процесса Microsoft Store

    ipconfig /flushdns
#Отвечает за очистку кеша сопоставителя DNS

    dism /online /cleanup-image /startcomponentcleanup /resetbase
#Отвечает за запуск системы DISM

    pushd "C:\Windows\Temp" && (rd /s /q "C:\Windows\Temp" 2>nul & popd)
#Отвечает за очистку папки temp

    pushd "C:\Windows\SoftwareDistribution\Download" && (rd /s /q "C:\Windows\SoftwareDistribution\Download" 2>nul & popd)
#Отвечает за очистку кеша обновлений windows

    pushd "%temp%" && (rd /s /q "%temp%" 2>nul & popd)
#Отвечает за очистку папки temp

    pushd "C:\Windows\Prefetch" && (rd /s /q "C:\Windows\Prefetch" 2>nul & popd)
#Отвечает за очистку папки Prefetch

    powershell.exe -command Clear-RecycleBin
#Отвечает за очистку корзины

    shutdown /r /t 0
#Отвечает за мгновенную перезагрузку системы
