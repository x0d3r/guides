# PostgreSQL Basics Guide

## Clean install
```shell
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" >> /etc/apt/sources.list.d/postgresql.list'

apt-get update
apt-get install postgresql postgresql-contrib
```

## Change passw after install
```shell
# Using shell
su postgres
psql postgres
\password

# Using psql
ALTER USER username WITH ENCRYPTED PASSWORD 'password';
```

## Systemd Services
```shell
systemctl { status, start, restart, reload, stop } postgresql.service
systemctl status postgresql@10-main
ps ax | grep postgres | grep -v postgres:
```

## Basic Config
```shell
# Find config files
locate ph_hba.conf
locate posgtresql.conf

# Config ph_hba.conf
trust	  -- no passw
md5	  -- passwd

local  all   all   			        trust
host   all   all  127.0.0.1/32  trust

# Config postgresql.conf
listen_addresses = '*'
```

## PSQL Constring
```shell
psql -U postgres -h localhost -p 5432 -d dbname
```

## PSQL CLI DB parameters
```sql
show server_version;
show data_directory;
show all;
```

## PSQL CLI - Commands
```shell
\c db		-- connect to db
\du+		-- users
\l+		-- databases
\dn+		-- schemas
\dt		-- tables
\dfd		-- functions
\ds		-- sequences
\q		-- quit
\password user		-- change passwd
```

## Cluster 
```shell
# Create Cluster
pg_createcluster 9.3 main

# Drop cluster
systemctl stop postgresql 
pg_dropcluster 9.3 main

# Upgrade cluster
pg_upgradecluster 9.3 main
pg_lsclusters 
```

## Dump Data
```shell
psql -h localhost -U user 
\copy (select field1, field2 from tname) TO '/home/user/report.csv' DELIMITER '|' CSV HEADER

# To CSV
psql -h localhost -U user -d dbname -t -A -c "select field1, field2 from tname" > report.csv
psql -h localhost -U user -d dbname -q -A -f script.sql > report.csv
psql -h localhost -U user -d dbname -q -A -f script.sql -o report.csv 

# Dump to SQL Inserts 
pg_dump -h localhost -p 5432 -U user -W --table="table-name" --data-only --column-inserts database-name -f table.sql

# Tip - set PG passw (useful for bash scripts)
export PGPASSWORD="pgpassw"
```

## Backup DB
```shell
pg_dump
pg_dumpall -U postgres -h localhost -p 5432 > dbbkp.dump

# Restore from pg_dump file
pg_restore -h localhost -p 5432 -U postgres -Fc -d postgres -f data.dump
```

## SQL 
```sql
ALTER USER my_user_name with password 'my_secure_password';
```

## SQL DB Config
```sql
SELECT * FROM pg_database;
SELECT * FROM pg_databases;
SELECT * FROM pg_tablespace;
SELECT * FROM pg_settings;
SELECT * FROM pg_config;

SELECT relname, relfilenode FROM pg_class WHERE relname = <table_name>; 
SELECT name, setting FROM pg_settings WHERE category = 'File Locations';

SELECT table_schema,table_name FROM information_schema.tables
ORDER BY table_schema,table_name;
```

## Resources
https://www.postgresql.org/docs/11/datatype.html

https://www.postgresql.org/docs/11/sql-createtable.html

http://www.postgresqltutorial.com/postgresql-identity-column/

https://blog.2ndquadrant.com/postgresql-10-identity-columns/
