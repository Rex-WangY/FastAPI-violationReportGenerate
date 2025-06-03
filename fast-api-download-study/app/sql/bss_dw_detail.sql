with 
uuid_info as (
	select
		'{uuid}' as uuid
)
select
	uuid,
	sum(
		case 
			when operation_type = 'deposit' then usd_balance_change else 0
		end
		) as deposit,
	sum(
		case 
			when operation_type = 'withdrawal' then usd_balance_change else 0
		end
		) as withdrawal
from dp__dbt_fund.fct_fund_flow_transaction fffb
where 
	utype = 'client'
	and uuid = (select uuid from uuid_info)
group by uuid 