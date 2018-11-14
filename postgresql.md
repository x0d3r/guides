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
trust	-- no passw
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
\c db			-- connect to db
\du+			-- users
\l+				-- databases
\dn+			-- schemas
\dt				-- tables
\ds				-- sequences
\q				-- quit
\password user	-- change passwd
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

## Backup DB
```shell
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
