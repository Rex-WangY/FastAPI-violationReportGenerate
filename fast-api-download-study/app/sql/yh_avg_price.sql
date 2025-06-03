select 
    symbol,
    avg(fmtMarketPrice) as avg_price
from longproserh.market_data
where symbol = '{symbol}'
group by symbol