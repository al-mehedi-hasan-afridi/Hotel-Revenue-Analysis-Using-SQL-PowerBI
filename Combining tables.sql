-- combining 3 tables to make 1 table
-- This query can be run for once. If want to run second time, has to delete "dbo.hotels" table fist.
select *
into hotels
from
(
    select * from dbo.['2018$']
    union
    select * from dbo.['2019$']
    union
    select * from dbo.['2020$']
) as combined;

select * from hotels
