create table ch_replica_pfdw_push
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

create table ch_replica_pfdw_pull
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

create table ch_replica_dblink_pull
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

create schema db1_public;