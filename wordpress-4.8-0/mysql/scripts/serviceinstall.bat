@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Bitnami\wordpress-4.8-0/mysql\bin\mysqld.exe" --install "wordpressMySQL-1" --defaults-file="C:\Bitnami\wordpress-4.8-0/mysql\my.ini"

net start "wordpressMySQL-1" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "wordpressMySQL-1" >NUL
"C:\Bitnami\wordpress-4.8-0/mysql\bin\mysqld.exe" --remove "wordpressMySQL-1"

:end
exit
