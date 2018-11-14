# SQLite Survivor Guide

```shell
# Install
apt-get install sqlite3 libsqlite3-dev

# SQLite CLI
.help
.show 
.stats
.echo on off
.mode  
	csv, column, html, insert, list, line, tabs

.exit
.quit

# Structure
.databases
.tables 
.table '%es'
.indexes 
.schema table
.fullschema 
.dump

# Databases
sqlite3 file00.db
.open /home/xxx/file01.db
ATTACH DATABASE /home/xxx/file02.db as DB02;

# Datatypes
NULL, TEXT, NUMERIC, INTEGER, REAL, BLOB

# Output Query
.output csvquery.txt
select * from xxx;

# Input Query from File
.mode column
.read /home/xxx/query.sql

# CSV Import
.mode csv
.separator "|"
.import /home/xxx/file.csv t_table

# CSV Export
.mode csv
.header on
.once /home/xxx/output.csv

# Excel Export
.excel
select * from xxx;

# Maintenance
.selftest --init
vacuum main

# Resources
https://sqlite.org/cli.html

```

# SQL 
```sql
alter table xxx rename to xx01;
alter table xxx add column id integer;

create unique index empidx on xxx(empid);

drop table if exists xxx;
```
