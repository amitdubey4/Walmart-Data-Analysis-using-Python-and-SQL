use walmart_db;

show tables;
select * from walmart limit 10;
describe walmart;
select count(*) from walmart;

Select Distinct(payment_method) from walmart;

Select payment_method, count(*) as Number_of_Transcation from walmart
Group By payment_method;

Select count(distinct(Branch)) as Unique_Store from walmart;

Select * from walmart
where quantity = (Select Max(quantity) from walmart);


Select payment_method, count(*) as Numbers_of_Transcation, Sum(quantity) as numbers_of_items from walmart
Group By payment_method;

with CTE as (
Select Branch, category, Round(Avg(rating),2) as Avg_Rating, 
	Rank() over(partition by Branch order by Avg(rating) Desc) as rk
from walmart
Group By Branch, category)

select Branch, category, Avg_Rating from CTE where rk =1;

Select * from walmart limit 10;

Alter Table walmart
modify date Date;

Alter Table walmart
modify time Time;

select Branch, Days, Number_of_transcation from (
select Branch, DAYNAME(date) as Days, Count(*) as Number_of_transcation,
	rank() over(partition by Branch order by Count(*) Desc) as rk
from walmart
group by Branch, Days) as t1
where rk = 1;

Select * from walmart limit 10;

Select City, category, Round(Avg(rating),2) as Average_Rating, Round(Min(rating),2) as Min_Rating, Round(Max(rating),2) as Max_Rating from Walmart 
Group by City, category
order by City;

Select category, round(sum(unit_price * quantity * profit_margin),2) as total_profit from walmart
group by category;

select * from (
Select Branch, payment_method, count(*),
		dense_rank() over (partition by Branch order by count(*) desc) as rk
from walmart 
Group by Branch, payment_method
order by Branch) as t1
where rk = 1;

with CTE as( 
SELECT 
    *,
    CASE 
        WHEN time >= '06:00:00' AND time < '12:00:00' THEN 'Morning'
        WHEN time >= '12:00:00' AND time < '18:00:00' THEN 'Afternoon'
        WHEN time >= '18:00:00' AND time < '24:00:00' THEN 'Evening'
        ELSE 'Night'
    END AS shift
FROM walmart)

Select Branch, shift, count(*) as number_of_transcations from CTE
group by Branch, shift
order by Branch;

Select *, Round(((last_yr_rev-curr_yr_rev)/last_yr_rev)*100, 2) as rdr from (
select t1.branch, sum(t1.total) as last_yr_rev, sum(t2.total) as curr_yr_rev
 from 
(select * from walmart
where year(date) = 2022) as t1
join 
(select * from walmart
where year(date) = 2023) as t2
on t1.branch = t2.branch
Group by t1.branch
order by branch) as outter
where curr_yr_rev < last_yr_rev
order by rdr desc;


WITH revenue_2022 AS (
    SELECT 
        branch,
        SUM(total) AS revenue
    FROM walmart
    WHERE YEAR(date) = 2022
    GROUP BY branch
),
revenue_2023 AS (
    SELECT 
        branch,
        SUM(total) AS revenue
    FROM walmart
    WHERE YEAR(date) = 2023
    GROUP BY branch
)
SELECT 
    t1.branch,
    t1.revenue AS last_year_revenue,
    t2.revenue AS current_year_revenue,
    ROUND(((t1.revenue - t2.revenue) / t1.revenue) * 100, 2) AS revenue_decrease_ratio
FROM revenue_2022 AS t1
JOIN revenue_2023 AS t2 ON t1.branch = t2.branch
WHERE t1.revenue > t2.revenue
ORDER BY revenue_decrease_ratio DESC
LIMIT 5;












