select * from products;

alter table products
add column price_tag TEXT;

update products
set price_tag =
CASE WHEN (price > 1000) then 'Expensive'
WHEN price between 500 and 1000 then 'Moderate'
ELSE 'Cheap'
END;


alter table products
add column stock_available TEXT;

update products
set stock_available =
CASE when (is_available = true) then 'in stock'
ELSE 'out of stock'
END;


alter table products
add column stock_status TEXT;

update products
set stock_status =
CASE when (stock_quantity > 100) then 'High stock'
when stock_quantity between 30 and 100 then 'Medium stock'
ELSE 'Low stock'
END;
