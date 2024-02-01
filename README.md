# Postgres_fdw vs dblink to transfer data between PostgreSQL instances
This repository represents the test set up.
The [article](https://medium.com/@dikirilovskiy/need-to-transfer-data-between-postgresql-dont-be-in-a-rush-to-use-dblink-df44f676b184) describing the comparison.

## Prerequisites
You need docker and psql installed on your machine. 
You may use both, Unix and Windows machines, although only Unix scripts are provided.

## Algorithm
Copy repository to your local machine and navigate to the folder.

```
git clone https://github.com/dikirilov/pfdw-vs-dblink.git
```

Adjust amount of test data to generate at ***db1/sql/db1_data_generation.sql***. It goes with 1 000 000 records 'out-of-the-box'.
Adjust resource limits for containers at ***compose.yaml***. It goes with 0.5 cpu and 512m of memory for each one.


Execute:
```
docker compose up -d 
chmod +x *.sh
./psql_prep.sh
```

Depending on the adjusted number of records to create it could take a while.

After generation is finished it is set up to conduct tests. 


Execute:
```
./psql_testing.sh
```

It shows each query time taken. 
After test completed you need to erase excessive data by executing:
```
./psql_cleaning.sh
```


If you adjust ***compose.yaml*** between tests, you need to reinitialize containers by executing:
```
docker compose down
docker compose up
```
