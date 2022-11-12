#preparation

#db1 
psql -h localhost -p 5435 -d postgres -U admin -a -c '\timing' -f 'db1/sql/db1_extensions.sql'

#db2 
psql -h localhost -p 5436 -d postgres -U admin -a -c '\timing' -f 'db2/sql/db2_extensions.sql'

#db1 
psql -h localhost -p 5435 -d postgres -U admin -a -c '\timing' -f 'db1/sql/db1_data_generation.sql'