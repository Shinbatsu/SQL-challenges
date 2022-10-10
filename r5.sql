with tab as (select code, point, date, inc summa
             from income
             union all
             select code, point, date, -out
             from outcome)

select dense_rank() over(order by datediff(mm, 0, date)) num,
       replace(convert(varchar, dateadd(month, datediff(month, 0, date), 0), 102), '.', '-') startDate,
       replace(convert(varchar, dateadd(dd, -1, dateadd(month, datediff(month, 0, date) + 1, 0)), 102), '.', '-') endDate,
       code, point, date, summa
from tab
where date < dateadd(month, datediff(month, 0, (select max(date) from tab)) - 2, 0)
