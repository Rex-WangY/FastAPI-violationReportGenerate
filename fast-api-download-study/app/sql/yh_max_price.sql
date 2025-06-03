select 
    symbol,
    max(fmtMarketPrice) as max_price
from longproserh.market_data
where symbol = '{symbol}'
group by symbol