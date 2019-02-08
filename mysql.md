# MySQL Survivor Guide

## Repair & Optimize
```shell
mysqlcheck -u root -p --auto-repair --optimize dbname
mysqlcheck -u root -p --auto-repair --optimize --all-databases
```

## Backup
```
mysqldump -u user dbname > backup.sql
mysqldump -u user -C dbname > backup.sql.tgz
mysqldump -u user --all_databases > backup.sql

mysqldump -u user --no-data dbname > backup.sql
mysqldump -u user --no-create-db --no-create-info dbname > backup.sql
mysqldump -u user dbname table1 table2 > backup.sql

mysqldump -h localhost -u user dbname > backup.sql
```

## Restore Backup
```shell
mysql -h localhost -u user  -p database_name < backup.sql
mysqlimport -h localhost -u user  -p database_name < backup.sql
```
