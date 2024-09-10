-- put this query to Power BI while getting the data. 
--join hotels and market_segment$ and meal_cost$ tables
select *
from hotels 
left join market_segment$
on hotels.market_segment = market_segment$.market_segment
left join meal_cost$
on hotels.meal = meal_cost$.meal