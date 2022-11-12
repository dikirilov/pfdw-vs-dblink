#testing

#1 local:
psql -h localhost -p 5435 -d postgres -U admin -a -c '\timing' -f 'db1/sql/db1_test_local.sql'

#2 postgres_fdw push:
psql -h localhost -p 5435 -d postgres -U admin -a -c '\timing' -f 'db1/sql/db1_test_pfdw_push.sql'

#3 postgres_fdw pull:
psql -h localhost -p 5436 -d postgres -U admin -a -c '\timing' -f 'db2/sql/db2_test_pfdw_pull.sql'

#4 dblink pull:
psql -h localhost -p 5436 -d postgres -U admin -a -c '\timing' -f 'db2/sql/db2_test_dblink_pull.sql'