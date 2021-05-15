@ECHO off
cls
ECHO Bem vindo(a) ao Crack Minecraft Bedrock!
ECHO.
ECHO.
ECHO [1] Iniciar Crack
ECHO [2] Sair

set /p opcao=Digite a opcao desejada:

if "%opcao%" == "1" goto op1
if "%opcao%" == "2" goto op2

:op1 
wget https://github.com/oi-eu-sou-linux/MinecraftBedrock/raw/main/Unlock/UnlockerPortable.zip
cls
ECHO Agora é sua vez de por a mão na massa!
ECHO.
ECHO.
ECHO Extraia o arquivo zipado e execute o arquivo UnlockerPortable.exe
ECHO Agora é sua vez de por a mão na massa
ECHO No UnlockerPortable.exe, navegue até a pasta:
ECHO C:\Windows\System32, e clique sobre o arquivo Windows.ApplicationModel.Store.dll e clique em Ok
ECHO Na nova aba aberta no lugar de "Nenhuma ação" selecione "Apagar" e clique em Ok
ECHO.
ECHO.
ECHO A mesma coisa será feita na pasta SysWOW64
ECHO Inicie novamente o UnlockerPortable.exe 
ECHO Navegue até a pasta C:\Windows\SysWOW64
ECHO clique sobre Windows.ApplicationModel.Store.dll, clique em Ok
ECHO Na nova aba aberta no lugar de "Nenhuma ação" selecione "Apagar" e clique em Ok
ECHO.
ECHO.
ECHO Terminou? (vc só pode passar para  a proxima fase se tiver terminado)
ECHO.
set /p resposta= Se Terminou tecle y: 
if "%reposta%" == y goto idem

:idem
cls
mkdir System32
mkdir SysWOW64
cd System32
wget https://github.com/oi-eu-sou-linux/MinecraftBedrock/raw/main/System32/Windows.ApplicationModel.Store.dll > nul
cd ..
cd SysWOW64
wget https://github.com/oi-eu-sou-linux/MinecraftBedrock/raw/main/SysWOW64/Windows.ApplicationModel.Store.dll > nul
move Windows.ApplicationModel.Store.dll C:\Windows\SysWOW64
cd ..
cd System32
move Windows.ApplicationModel.Store.dll C:\Windows\System32
cd ..
cls
ECHO.
ECHO.
ECHO Pronto :D Seu Minecraft Windows 10 jé está ativado!! Divirta-se :D
set /p sai=Pressine x pra sair...
if "%sai%" == x goto saindo
:saindo 
exit
