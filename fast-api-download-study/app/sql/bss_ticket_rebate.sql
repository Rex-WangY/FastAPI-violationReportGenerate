with
uuid_info as (
	SELECT
    '{uuid}' as uuid
)

select
	serial as 'Order',
	ticket as 'MT Order',
	login as 'Account',
	server_id,
	uuid as 'Client ID',
	direct_agent as 'Rebate Account ID',
	acc_type_id,
	sub_acc_type_id,
	trade_symbol as 'Symbol',
	basic_rebate_amount as 'Basic Rebate Amount(USD)',
	commission_rebate_amount as 'Commission Rebate Amount(USD)',
	point_rebate_amount as 'Point Rebate Amount(USD)',
	total_rebate_amount as 'Total Rebate Amount(USD)',
	rebate_time as 'Approval Time'
from
	dp__dbt_rebate.fct_rebate_ticket_history_bss_v2 frthb
where uuid = (select uuid from uuid_info)