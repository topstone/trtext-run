@echo off
if exist ..\..\dosvaxj3\current\dosboxj.conf goto :dosboxj_conf_exist
echo ..\..\dosvaxj3\current\dosboxj.conf was not found.
goto :end

:dosboxj_conf_exist
if not exist dosboxj.conf copy ..\..\dosvaxj3\current\dosboxj.conf+mount_list.txt dosboxj.conf
if not exist japanese.lng copy ..\..\dosvaxj3\current\japanese.lng japanese.lng
if not exist jp.kl copy ..\..\dosvaxj3\current\jp.kl jp.kl
..\..\dosvaxj3\current\dosboxj.exe

:end
