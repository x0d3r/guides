# MariaDB Guide

```shell
# Get Repo
https://downloads.mariadb.org/mariadb/

# Install
sudo apt-get update
sudo apt-get install mariadb-server mariadb-client

mysql_secure_installation

	Change the root password? [Y/n] <-- y
	New password: <-- Enter a new MySQL root password
	Re-enter new password: <-- Repeat the MySQL root password
	Remove anonymous users? [Y/n] <-- y
	Disallow root login remotely? [Y/n] <-- y
	Remove test database and access to it? [Y/n] <-- y
	Reload privilege tables now? [Y/n] <-- y

```
