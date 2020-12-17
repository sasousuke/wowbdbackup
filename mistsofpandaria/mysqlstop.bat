@echo off
REM Datos para mimismo
REM El usuario del servidor es root sin password
REM El script se copia en la carpeta donde están los binarios del servidor

SET D=%date:~-10,2%
SET A=%date:~-4%
SET M=%date:~-7,2%

cd server\mysql\bin

echo Salvando mis recuerdos

echo Salvando BD RealmBD
mysqldump --user=root p2_auth > p2_auth.sql

echo Salvando BD CharacterBD
mysqldump --user=root p2_characters > p2_characters.sql

REM Moviendo las BD salvadas al directorio ruta destino
move /Y p2_auth.sql ../../../../salvabd/p2_auth-%D%-%M%-%A%.sql
move /Y p2_characters.sql ../../../../salvabd/p2_characters-%D%-%M%-%A%.sql

mysqladmin -u root shutdown
