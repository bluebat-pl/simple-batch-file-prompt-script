@echo off
set "appLocation=notepad.exe"
set "login=203-u"
set "pass=1234"
set "helloText=Czesc Mat"
set "loginText=Login: "
set "loginConfirmationText=Podales login:"
set "loginError=Login nie jest poprawny!"
set "loginSuccess=Gratulacje! Login poprawny"
set "passText=Podaj haslo: "
set "passConfirmationText=Podales login:"
set "passError=Haslo nie jest poprawne!"
set "passSuccess=Gratulacje! Haslo jest poprawne"

ECHO %helloText%
CALL :loginFunction
CALL :passFunction
CALL %appLocation%
PAUSE
EXIT /B 0

:loginFunction
SET /P l=%loginText%
ECHO %loginConfirmationText% "%l%"
IF %l% NEQ %login% (
ECHO %loginError%
CALL :loginFunction
) ELSE (
ECHO %loginSuccess%
)
EXIT /B 0

:passFunction
SET /P p=%passText%
ECHO %passConfirmationText% "%p%"
IF %p% NEQ %pass% (
ECHO %passError%
CALL :passFunction
) ELSE (
ECHO %passSuccess%
)
EXIT /B 0
