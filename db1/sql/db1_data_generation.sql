do $$
declare
i int;
contact_id int;
batch_id int;
customer_id int;
campaign_cd varchar(50);
group_cd varchar(50);
segment_cd varchar(50);
channel_cd varchar(10);
dttm timestamp;
template_cd varchar(50);
params jsonb;
begin
    params = '{"personalized": {"offer_type":"offer", "offer_conditions":"conditions"}, "name":"name"}'::json;
    for i in 1..1000000 loop
        batch_id = i % 5000;
        contact_id = i;
        customer_id = i % 10000;
        campaign_cd = concat('retention camp',mod(i,1000)::varchar);
        group_cd = concat(campaign_cd,' group',mod(i,10000)::varchar);
        segment_cd = concat('segment',mod(i,200)::varchar);
        channel_cd = concat('channel',mod(i,5)::varchar);
        dttm = current_timestamp::DATE-3650/i;
        template_cd = concat(channel_cd,'_template',mod(i,50)::varchar);
        insert into contact_history 
        values (contact_id, batch_id, customer_id, campaign_cd, group_cd, segment_cd, channel_cd, 
            dttm, dttm, template_cd, null);
        commit;
    end loop;
end$$;