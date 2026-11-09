select * from products;

select name, length(sku_code) from products;

select name, upper(substr(sku_code, 1, 3)) from products;

select name, lower(substr(sku_code, 1, 3)) from products;

select name, substr(sku_code, 1, 3) from products;

select name, left(sku_code, 2) from products;

select right(sku_code, 3) from products;

select left(sku_code, 7) from products;

select concat(name,category) from products;

select concat(name, category, ' ', sku_code) from products;

select concat_ws(' ', name, category, sku_code) as product_with_categor from products;

select name, replace(sku_code, left(sku_code, 2), 'GG') from products;
