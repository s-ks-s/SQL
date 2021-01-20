use shop;
Select user_name as 'user' ,sum(`count`*price) as 'total price'from `order`
inner join order_products on order_products.order_id = `order`.id
inner join product on product.id = order_products.product_id
where order.id = 1
UNION
Select user_name,sum(`count`*price) as 'total price'from `order`
inner join order_products on order_products.order_id = `order`.id
inner join product on product.id = order_products.product_id
where order.id = 2

-- или 

use shop;
Select `order`.user_name, sum(`count`*price) as 'total price', count(*) as 'number of products', sum(`count`) as 'total number' from `order`
inner join order_products on order_products.order_id = `order`.id
inner join product on product.id = order_products.product_id
group by `order`.user_name 
having user_name like '%к%'