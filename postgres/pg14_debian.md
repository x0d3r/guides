## PG14 installation on Debian 10

```sh
#!/bin/bash

apt update -qq -y 

apt install lsb-release wget gnupg2 curl -qq -y

echo "Installing PostgreSQL"

sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

echo "Update package lists"

apt update -qq && apt install postgresql-14 -qq -y

systemctl status postgresql

systemctl stop postgresql
```

## Config

```sh
vi /etc/postgresql/14/main/pg_hba.conf
vi /etc/postgresql/14/main/postgresql.conf

:%s/localhost/6.40.23.4/g
```

## Set PG password

```sh
su - postgres
psql 
\password
```

## Load BKP

```sh
pg_restore -h 192.168.10.120 -p 5432 -U postgres -d postgres -Fc -f dump.backup
```
