# Data Directory Move on Windows

```
1. Stop the PostgreSQL service

2. Move data 

C:\Program Files\PostgreSQL\9.5\data\ to E:\pg_db\data

3. Modify postgresql.conf (probably not necessary if you move everything to the new location)

data_directory = 'E:\pg_db\data'		# use data in another directory					
hba_file = 'C:\Program Files\PostgreSQL\9.5\data\pg_hba.conf'	# host-based authentication file		
ident_file = 'C:\Program Files\PostgreSQL\9.5\data\pg_ident.conf'	

4. Modify the command that starts PostgreSQL

sc qc postgresql-x64-9.5 1000
sc config postgresql-x64-9.5 binPath= "\"C:\Program Files\PostgreSQL\9.5\bin\pg_ctl.exe\" runservice -N \"postgresql-x64-9.5\" -D \"E:\pg_db\data\" -w"

5. Change permissions for the new data directory

Right-click on it and click Properties. Under the Security Tab click “Edit...” and then “Add...”. Type “Network Service” 
and then click “Check Names”, make sure it has Modify and Full Control permissions and then click OK. 

Equally important PostgreSQL needs to be able to “see” the data-directory (see my ServerFault.StackEx question), 
i.e. it needs to have read access to the parent directories above it. So Right-click on the pg_db folder and 
under the Security Permissions add Network Services again, but this time it only needs Read & Execute as well 
as List folder contents permissions.

6. Restart the Service
```

## Resources
https://radumas.info/blog/tutorial/2016/08/08/Migrating-PostgreSQL-Data-Directory-Windows.html
