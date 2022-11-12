insert into ch_replica_dblink_pull
	select * from dblink('db1_dblink', 'select * from contact_history')
	as x
	(
		contact_id int8,
		customer_id int8,
		batch_id int8,
		campaign_cd varchar(50),
		group_cd varchar(50),
		segment_cd varchar(50),
		channel_cd varchar(10),
		contact_dttm timestamp,
		insert_dttm timestamp,
		template_cd varchar(50),
		params jsonb
	);