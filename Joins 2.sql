CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category TEXT,
  price NUMERIC(10,2),
  stock_quantity INT,
  is_available BOOLEAN,
  added_on DATE
);
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  product_id INT,
  quantity INT,
  order_date DATE,
  customer_name VARCHAR(50),
  payment_method VARCHAR(50),
  CONSTRAINT fk_product FOREIGN KEY (product_id)
  REFERENCES products(product_id) ON DELETE CASCADE
);

select * from products;
select * from orders;

-- Q1
select o.order_id, p.product_name, p.price, o.customer_name
from products p
inner join orders o
on p.product_id = o.product_id;
-- Q2
select p.product_name, p.price, o.order_id
from products p
left join orders o
on p.product_id = o.product_id;
-- Q3
select p.product_id, o.order_id, p.product_name, p.price, p.category
from products p
right join orders o
on p.product_id = o.product_id
where p.category = 'Electronics';
-- Q4
select p.product_id, p.product_name, p.price
from products p
join orders o
on p.product_id = o.product_id
order by p.price DESC;
-- Q5
select p.product_name, COUNT(o.order_id) as number_of_orders
from products p
left join orders o
on p.product_id = o.product_id
group by p.product_name;
-- Q6
select p.product_name, SUM(p.price * o.quantity) as total_revenue
from products p
join orders o
on p.product_id = o.product_id
group by p.product_name;
-- Q7
select p.product_name, SUM(p.price * o.quantity) as revenue
from products p
join orders o
on p.product_id = o.product_id
group by p.product_name
having SUM(p.price * o.quantity) > 2000;
-- Q8
select distinct o.customer_name, p.product_name, p.product_id
from orders o
join products p
on p.product_id = o.product_id
where p.category = 'Fitness';