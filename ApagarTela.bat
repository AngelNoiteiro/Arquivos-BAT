@echo off

title  Script apagar tela

cls

echo A seguir de a permissao de Administrador para este script.

net session >nul 2>&1 || (powershell start -verb runas '"%~0"' &exit /b)

cls

echo:
echo:
echo                             _______________________________________________________________
echo                            ^|                 Script feito pelo AngelNoiteiro               ^| 
echo                            ^|                                                               ^|
echo                            ^|      Este script serve para quando voce for dormir ou sair    ^|
echo                            ^|         voce poder apagar so a tela do monitor e deixar       ^|
echo                            ^|       o seu PC/Notebook ligado, para a tela voltar clique     ^|
echo                            ^|        ou mecha com o teclado ou mouse para a tela voltar     ^|
echo                            ^|_______________________________________________________________^|
echo: 
echo:          

pause

powershell (Add-Type '[DllImport(\"user32.dll\")]^public static extern int PostMessage(int hWnd, int hMsg, int wParam, int lParam);' -Name a -Pas)::PostMessage(-1,0x0112,0xF170,2)