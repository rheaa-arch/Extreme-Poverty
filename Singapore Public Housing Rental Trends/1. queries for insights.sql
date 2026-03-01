--average monthly rent changed over time
select
  EXTRACT(year FROM rent_date)  AS year,
  EXTRACT(month FROM rent_date) AS month,
  COUNT(*) AS approvals,
  AVG(monthly_rent) AS avg_rent,
  SUM(monthly_rent) AS total_rent
from rent_data
group by year, month
order by year, month;

--seasonal patterns?
select
	extract(year from rent_date) as Year,
	extract(month from rent_date) as Month,
	trim(to_char(rent_date, 'Month')) as Month_name,
	avg(monthly_rent) as avg_rent, --seasonal pricing
	count(*) as rent_count, --seasonal demand
	sum(monthly_rent) as price --seasonal revenue
from rent_data
group by 
	extract(year from rent_date),
	extract(month from rent_date),
	trim(to_char(rent_date, 'Month'))
	
--Which towns have the highest / lowest rents?
with town_avg as (
  select
    town,
    avg(monthly_rent) as avg_rent
  from rent_data
  group by town
)
select *
from town_avg
where avg_rent = (select max(avg_rent) from town_avg)
   or avg_rent = (select min(avg_rent) from town_avg);

--How large is the gap between towns?
with town_avg as (
  select
    town,
    avg(monthly_rent) as avg_rent
  from rent_data
  group by town
)
select
  max(avg_rent) as highest_avg_rent,
  min(avg_rent) as lowest_avg_rent,
  MAX(avg_rent) - min(avg_rent) as rent_gap
from town_avg;

--How does rent differ by flat type
select 
	flat_type, 
	avg(monthly_rent) avg_flat 
from rent_data
group by flat_type;

--Which flat types show the fastest growth?
select 
	flat_type, 
	extract(year from rent_date) as rent_year,
	avg(monthly_rent)
from rent_data
group by flat_type,extract(year from rent_date);

select
  a.flat_type,
  a.rent_year,
  a.avg_rent,
  b.avg_rent as prev_year_avg_rent
from (
  select
    flat_type,
    EXTRACT(year from rent_date) as rent_year,
    avg(monthly_rent) as avg_rent
  from rent_data
  group by flat_type, extract(year from rent_date)
) a
join (
  select
    flat_type,
    extract(year from rent_date) as rent_year,
    avg(monthly_rent) as avg_rent
  from rent_data
  group by flat_type, extract(year from rent_date)
) b
on a.flat_type = b.flat_type
and a.rent_year = b.rent_year + 1;

--Which towns show stable vs volatile rent trends?
--Where are prices fluctuating unusually?
select 
	extract(year from rent_date) year_num,
	trim(to_char(rent_date, 'Month')) month_name,
	town,
	avg(monthly_rent) avg_rent,
	variance(monthly_rent)AS std_rent
from rent_data
group by year_num, month_name, town
order by year_num asc;
