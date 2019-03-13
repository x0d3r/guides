## Oracle SQL Queries

```sql
-- From raw string to rows
with c_query as
(select replace('
918AGT,918BGU,918BNP,918CUK,3090FSX', chr(10),'') col1 from dual)
  select trim(regexp_substr(col1, '[^,]+', 1, LEVEL)) as result
  from c_query
  connect by instr(col1,',', 1, level - 1) > 0;
```  
