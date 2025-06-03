with 
logInfo as (
	select
		'{login}' as login,
		'{server_id}' as server_id
),
rebate_ticket as (
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_0
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_1
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_2
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_3
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_4
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_5
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_6
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_7
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_8
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_9
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_10
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_11
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_12
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_13
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_14
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_15
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_16
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_17
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_18
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_19
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_20
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_21
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_22
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_23
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_24
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_25
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_26
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_27
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_28
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_29
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_30
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_31
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_32
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_33
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_34
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_35
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_36
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_37
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_38
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_39
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_40
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_41
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_42
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_43
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_44
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_45
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_46
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_47
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_48
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_49
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_50
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_51
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_52
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_53
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_54
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_55
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_56
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_57
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_58
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_59
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_60
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_61
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_62
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_63
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_64
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_65
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_66
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_67
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_68
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_69
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_70
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_71
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_72
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_73
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_74
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_75
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_76
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_77
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_78
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
	union all
	select 
		login,
		server_id,
		agent,
		level,
		sum(total_rebate_amount) as total_rebate_amount	
	from crm_v5_api_rebate.v2_rebate_history_79
	where login = (select login from logInfo)
	and server_id = (select server_id from logInfo)
)

select 		
	login,
	server_id,
	agent,
	level,
	sum(total_rebate_amount) as total_rebate_amount	
from rebate_ticket
where login is not null
group by
	login,
	server_id,
	agent,
	level




