-- installing dblink
create extension dblink;

create foreign data wrapper dblink_fdw;

create server db1_dblink
	foreign data wrapper dblink_fdw
	options (host 'db1', dbname 'postgres', port '5432');

create user mapping 
	for admin
	server db1_dblink
	options (user 'admin', password 'password');

grant usage on foreign server db1_dblink to admin;

-- installing postgres_fdw

create extension postgres_fdw;

create server db1_pfdw
	foreign data wrapper postgres_fdw
	options (host 'db1', dbname 'postgres', port '5432');


create user mapping 
	for admin
	server db1_pfdw
	options (user 'admin', password 'password');

grant usage on foreign server db1_dblink to admin;

import foreign schema public
	limit to (contact_history)
	from server db1_pfdw into db1_public;
