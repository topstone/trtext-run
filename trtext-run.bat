@echo off
if exist trtext_path1.txt del /Q trtext_path1.txt
if exist trtext_path2.txt del /Q trtext_path2.txt
if exist trtext_path3.txt del /Q trtext_path3.txt
call scoop prefix trtext > trtext_path1.txt
if "%ERRORLEVEL%"=="0" goto :scoop_exist
echo Scoop was not found.
goto :end

:scoop_exist
setlocal enabledelayedexpansion
for /f "delims=" %%a in (trtext_path1.txt) do (
  set line=%%a
  echo !line:\current=\current\! >> trtext_path2.txt
)
for /f "delims=" %%a in (trtext_path1.txt) do (
  set line=%%a
  echo !line:\trtext\current=\! >> trtext_path3.txt
)
if exist ..\..\dosvaxj3\current\dosboxj.conf goto :dosboxj_conf_exist
echo ..\..\dosvaxj3\current\dosboxj.conf was not found.
goto :end

:dosboxj_conf_exist
if not exist dosboxj.conf copy ..\..\dosvaxj3\current\dosboxj.conf+mount1.txt+trtext_path3.txt+mount2.txt+trtext_path2.txt dosboxj.conf
if not exist japanese.lng copy ..\..\dosvaxj3\current\japanese.lng japanese.lng
if not exist jp.kl copy ..\..\dosvaxj3\current\jp.kl jp.kl
..\..\dosvaxj3\current\dosboxj.exe

:end
