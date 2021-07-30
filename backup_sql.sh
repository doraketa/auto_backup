#!/bin/bash
USERNAME_STRING="SQL_NAME"
PASSWORD_STRING="SQL_PASS"
HOMEDIR_STRING="BACKUP_DIR"

case $1 in "backupall")
    cd $HOMEDIR_STRING
    mysqldump --opt --password=$PASSWORD_STRING --user=$USERNAME_STRING --all-databases > all-databases_$(date '+%Y-%m-%d').sql
    tar -zcvf all-databases_$(date '+%Y-%m-%d').tar.gz  all-databases_$(date '+%Y-%m-%d').sql
    rm all-databases_$(date '+%Y-%m-%d').sql;;
*) echo "Others";;
esac
