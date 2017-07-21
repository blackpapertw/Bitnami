@echo off
"C:\Bitnami\wordpress-4.8-0/mysql\bin\mysql.exe" --defaults-file="C:\Bitnami\wordpress-4.8-0/mysql\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"C:\Bitnami\wordpress-4.8-0/mysql\bin\mysql.exe" --defaults-file="C:\Bitnami\wordpress-4.8-0/mysql\my.ini" -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '%1';"
