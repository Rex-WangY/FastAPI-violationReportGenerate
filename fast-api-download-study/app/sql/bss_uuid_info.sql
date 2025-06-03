with
userId as (
	select 
	'{uuid}' as uuid
)
,fix_uuid as (
	select
		case 
			when fxbo_uuid is null
			then bss_uuid
			else fxbo_uuid
		end as uuid,
		login,
		`group`,
		bss_server_id
	from
		dp__dbt_mt.fct_mt_account_detail fmad
	where
		bss_server_id in (
			'6038-9372f58cf',
			'6fda-7278f511e',
			'7300-9ba858b5c',
			'ee95-b03a6311e',
			'a135-385a5a11e',
			'adc8-ac989d11e',
			'wtbl-2rgjlednl',
			'wkc8-8gg8cb6cg'
		)
		and (
			bss_uuid = (select uuid from userId)
		)
)

select
	fudb.uuid,
	fmad.login,
	fmad.bss_server_id as server_id,
	fmad.`group`,
	fudb.agent_uuid,
	fudb.sales_uuid,
	fudb.sales_team_id,
	fudb.master_uuid,
	fudb.country_name_en
from 
	fix_uuid fmad
	inner join dp__dbt_user.fct_user_detail_bss fudb on fmad.uuid = fudb.uuid
where 
	audit_status = 'pass'
	and user_type = 'client'
	and fudb.uuid = (select uuid from userId)
	and LEFT(fmad.`group`,3) in ('DPL','DPO','L6L','L6O','L7L','L7O')
	
		
		
-- select * from dp__dbt_mt.fct_mt_account_detail fmad
-- where bss_uuid = 'A5896548'
-- 
-- select * from dp__dbt_user.fct_user_detail_bss where uuid = 'A5896548'