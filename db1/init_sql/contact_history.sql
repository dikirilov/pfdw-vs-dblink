create table contact_history
(
	contact_id int8 primary key,
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

create table ch_replica_local
(
	contact_id int8 primary key,
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

create schema db2_public;