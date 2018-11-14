## Systemd Services
```shell
systemctl { status, start, restart, reload, stop } postgresql.service
systemctl status postgresql@10-main
ps ax | grep postgres | grep -v postgres:
```

## Config files
```console
locate ph_hba.conf
locate posgtresql.conf
```

## Config ph_hba.conf
```console
trust	-- no passw
md5	  -- passwd

local  all   all   			        trust
host   all   all  127.0.0.1/32  trust
```

## Config postgresql.conf
listen_addresses = '*'

## Constring
```console
psql -U postgres -h localhost -p 5432 -d dbname
```

## PSQL CLI BD parameters
```sql
show server_version;
show data_directory;
show all;
```

## PSQL CLI - Commands
```console
\c db			-- connect to db
\du+			-- users
\l+				-- databases
\dn+			-- schemas
\dt				-- tables
\ds				-- sequences
\q				-- quit
\password user	-- change passwd
```

## Create db 
```console
pg_createcluster 9.3 main

## Drop cluster
systemctl stop postgresql 
pg_dropcluster 9.3 main

## Upgrade cluster
pg_upgradecluster 9.3 main
pg_lsclusters 
```

## Backup database
```console
pg_dump
pg_dumpall -U postgres -h localhost -p 5432 > dbbkp.dump
pg_restore
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
