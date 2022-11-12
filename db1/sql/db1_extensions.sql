-- installing postgres_fdw

create extension postgres_fdw;

drop server db2_pfdw cascade;

create server db2_pfdw
	foreign data wrapper postgres_fdw
	options (host 'db2', dbname 'postgres', port '5432');
	
create user mapping 
	for admin
	server db2_pfdw
	options (user 'admin', password 'password');

grant usage on foreign server db2_pfdw to admin;

import foreign schema public
	limit to (ch_replica_pfdw_push)
	from server db2_pfdw into db2_public;