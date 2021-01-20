use shop;
SELECT DAYNAME(DATE_ADD(`birthday date`, interval (YEAR (CURRENT_DATE) - YEAR(`birthday date`) ) year)) AS `DAY of WEEK`, count(*) as `count` from users
group by `DAY of WEEK`
order by `count` DESC