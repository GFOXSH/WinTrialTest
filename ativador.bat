Title Ativador Minecraft Bedrock
mode con: cols=62 lines=28
@echo off
echo.
echo.
@chcp 65001
cls
color 03
rem Apresentação 
echo           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo           @                                        @
echo           @             Bem vindo(a)               @
echo           @                  ao                    @
echo           @               Ativador                 @
echo           @                  de                    @
echo           @           Minecraft Bedrock            @
echo           @                                        @
echo           @                           by Pato#1234 @
echo           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo.
echo.
echo           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
echo          @       O que desejas fazer Primeiro?      @
echo           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:menu_principal
color 03
echo.
echo.
echo           $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo          $$    [1] Iniciar ativação                 $$
echo         $$     [2] Fazer Backup da Microsoft Store   $$
echo        $$      [3] Restaurar Backup                   $$
echo         $$     [4] Visitar Autor do Ativador         $$
echo          $$    [5] Sair                             $$
echo           $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.

set /p resposta_do_menu=Digite aqui: 
if %resposta_do_menu% == 1  goto iniciar_ativacao
if %resposta_do_menu% == 2  goto fazer_backup
if %resposta_do_menu% == 3  goto restaurar_backup
if %resposta_do_menu% == 5  goto sair_do_script
if %resposta_do_menu% == 4 goto visitar_autor

:iniciar_ativacao
cls
mode con: cols=72 lines=5
color 04
echo Antes de Iniciar certifique-se de que a Microsoft Store esteja Fechada.
echo.
pause
cls
color 09
echo Ativando Minecraft Bedrock aguarde...
takeown /f C:\Windows\System32\Windows.ApplicationModel.Store.dll >nul
cls
echo Ativando Minecraft Bedrock aguarde...
takeown /f C:\Windows\System32 >nul
cls
echo Ativando Minecraft Bedrock aguarde...
takeown /f C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll >nul
cls
echo Ativando Minecraft Bedrock aguarde...
takeown /f C:\Windows\SysWOW64 >nul
cls
echo Ativando Minecraft Bedrock aguarde...
cacls C:\Windows\System32\Windows.ApplicationModel.Store.dll /E /P %username%:F >nul
cacls C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll /E /P %username%:F >nul
cls 
echo Ativando Minecraft Bedrock aguarde...


md "C:\Arquivos do Ativador Minecraft"
move aria2c.exe "C:\Arquivos do Ativador Minecraft"
cd "C:\Arquivos do Ativador Minecraft"
md a32 
md b64
copy aria2c.exe a32
md b64
move aria2c.exe b64
cls
echo Ativando Minecraft Bedrock aguarde...


cd a32
aria2c https://github.com/oi-eu-sou-linux/MinecraftBedrock/raw/main/System32/Windows.ApplicationModel.Store.dll >nul
cd ..
cd b64
aria2c https://github.com/oi-eu-sou-linux/MinecraftBedrock/raw/main/SysWOW64/Windows.ApplicationModel.Store.dll >nul
move /y Windows.ApplicationModel.Store.dll C:\Windows\SysWOW64>nul
cd ..
cd a32
move /y Windows.ApplicationModel.Store.dll C:\Windows\System32>nul
cd ..
cd ..
cls
rem rd "C:\Arquivos do Ativador Minecraft"
echo.
rem echo Deseja remover arquivos criados pelo ativador?
rem echo S para sim ou N para não
rd /Q /S "Arquivos do Ativador Minecraft"
cls
mode con: cols=62 lines=28
color 05
echo.
echo      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
echo     @    Minecraft Bedrock foi ativado com Sucesso :D    @
echo      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo.
timeout /T 6 | echo Voltando ao Menu Principal...
cls
goto menu_principal

:fazer_backup
color 0A
cls
md "C:\Backup da Microsoft Store"
cd "C:\Backup da Microsoft Store"
md System32
md SysWOW64
copy C:\Windows\System32\Windows.ApplicationModel.Store.dll  "C:\Backup da Microsoft Store\System32"
copy C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll  "C:\Backup da Microsoft Store\SysWOW64"
cls
echo. 
echo.
echo      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
echo     @ Backup da Microsoft Store feito com Sucesso :D @
echo      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
timeout /T 2 > nul
echo.
echo      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
echo     @   Deseja visitar a pasta do Backup (s ou n)?   @
echo     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo.
set /p resposta_do_bakup1=Digite aqui: 

if %resposta_do_bakup1% == s goto abrir_pasta_do_backup
if %resposta_do_bakup1% == n cls && goto menu_principal


:abrir_pasta_do_backup
explorer.exe "C:\Backup da Microsoft Store"
cls
goto menu_principal

:restaurar_backup
color 0B
cls
del C:\Windows\System32\Windows.ApplicationModel.Store.dll
del C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll
copy "C:\Backup da Microsoft Store\System32\Windows.ApplicationModel.Store.dll" C:\Windows\System32
copy "C:\Backup da Microsoft Store\SysWOW64\Windows.ApplicationModel.Store.dll" C:\Windows\SysWOW64
cls
echo.
echo.
echo       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
echo      @        Backup Restaurado com Sucesso :D        @
echo       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
timeout /T 2 > nul 
echo.
timeout /T 3 | echo Voltando ao Menu Principal...
cls
goto menu_principal

:visitar_autor
cls
start https://github.com/oi-eu-sou-linux
goto menu_principal

:sair_do_script
color 06
pause
exit

