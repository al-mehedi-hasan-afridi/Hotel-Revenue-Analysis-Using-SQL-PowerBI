-- 1. Is the hotel revenue growing by year?
select arrival_date_year, hotel, round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue -- adr = daily rate
from hotels
group by arrival_date_year, hotel
-- The hotel revenue is growing. 2020 year has some invalid data so we need to look at the year 2018 and 2019 revenue. 