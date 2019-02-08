# MySQL Survivor Guide

## Basics
```shell
mysql -h localhost -P 3306 -u user

status;
show status;
show warnings;

show databases;
use dbname;

show tables;
show create table tname;
show create view tview;

show procedure status;
show create procedure xxx;

select user, host from mysql.user;
```

## DDL
```sql
alter table tname auto_increment = 1;
```

## Repair & Optimize
```shell
mysqlcheck -u root -p --auto-repair --optimize dbname
mysqlcheck -u root -p --auto-repair --optimize --all-databases
```

## To CSV
```sql
select * 
into outfile '/home/user/report.csv' 
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n'
from tname;
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
