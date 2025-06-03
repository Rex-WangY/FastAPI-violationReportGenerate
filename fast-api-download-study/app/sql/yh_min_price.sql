select 
    symbol,
    min(fmtMarketPrice) as min_price
from longproserh.market_data
where symbol = '{symbol}'
group by symbol