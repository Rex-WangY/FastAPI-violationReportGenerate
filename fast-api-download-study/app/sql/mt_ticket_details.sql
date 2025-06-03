-- with
-- login_info as (
-- 	select 
-- 		'{login}' as login,
-- 		'{server_id}' as server_id
-- )

-- select
-- 	ticket as 'Deal',
-- 	open_time as 'Open Time',
-- 	login as 'Login',
-- 	server_id,
-- 	type as 'Type',
-- 	symbol as 'Symbol',
-- 	lot_usd as 'Lots' ,
-- 	open_price as 'Open Price',
-- 	close_time as 'Close Time',
-- 	close_price as 'Close Price',
-- 	commission_usd as 'Commission',
-- 	swap_usd as 'Swap',
-- 	profit_usd as 'Profit',
-- 	comment as 'Comment',
-- 	net_profit_usd as 'Net Profit'
-- from dp__dbt_mt.fct_mt_mt4_closed_trade_v2 mt4
-- where 
-- 	login = (select login from login_info )
-- 	and server_id = (select server_id from login_info )
-- union all
-- select 
-- 	ticket as 'Deal',
-- 	open_time as 'Open Time',
-- 	login as 'Login',
-- 	server_id,
-- 	type as 'Type',
-- 	symbol as 'Symbol',
-- 	lot_usd as 'Lots' ,
-- 	open_price as 'Open Price',
-- 	close_time as 'Close Time',
-- 	close_price as 'Close Price',
-- 	commission_usd as 'Commission',
-- 	swap_usd as 'Swap',
-- 	profit_usd as 'Profit',
-- 	comment as 'Comment',
-- 	net_profit_usd as 'Net Profit'
-- from dp__dbt_mt.fct_mt_mt5_closed_trade_v2 mt5
-- where
-- 	login = (select login from login_info )
-- 	and server_id = (select server_id from login_info )
with
login_info as (
	select 
		'{login}' as login,
		'{server_id}' as server_id
)

select
	ticket,
	open_time,
	login,
	server_id,
	type,
	symbol,
	lot_usd,
	open_price,
	close_time,
	close_price ,
	commission_usd ,
	swap_usd,
	profit_usd,
	comment,
	net_profit_usd
from dp__dbt_mt.fct_mt_mt4_closed_trade_v2 mt4
where 
	login = (select login from login_info )
	and server_id = (select server_id from login_info )
union all
select 
	ticket,
	open_time,
	login,
	server_id,
	type,
	symbol,
	lot_usd,
	open_price,
	close_time,
	close_price ,
	commission_usd ,
	swap_usd,
	profit_usd,
	comment,
	net_profit_usd
from dp__dbt_mt.fct_mt_mt5_closed_trade_v2 mt5
where
	login = (select login from login_info )
	and server_id = (select server_id from login_info )
