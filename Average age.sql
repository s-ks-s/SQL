Use shop;
SELECT round(avg(TIMESTAMPDIFF(year, `birthday date`,NOW())),0) as `Average age` from `users`;


