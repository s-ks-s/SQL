use shop;
select round(exp(sum(ln(number_of))),0) as multiplication from `numbers`