--Get all customers and their addresses.
select * from customers 
join addresses
on  addresses.customer_id = customers.id;
--Get all orders and their line items.
select * from orders
join line_items
on line_items.order_id= orders.id;
--Which warehouses have cheetos?
select * from warehouse
join warehouse_product
on warehouse.id = warehouse_product.warehouse_id
join products
on products.id = warehouse_product.product_id
where products.id=5;
--Which warehouses have diet pepsi?
select * from warehouse
join warehouse_product
on warehouse.id = warehouse_product.warehouse_id
join products
on products.id = warehouse_product.product_id
where products.id=6;
--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
select first_name,count(*)
from customers
join addresses 
on addresses.customer_id = customers.id
join orders on orders.address_id = addresses.id
group by first_name;
--How many customers do we have?
select count  (*)  as number_of_customers
from customers;
--How many products do we carry?
select count  (*)  as number_of_products
from products;
--What is the total available on-hand quantity of diet pepsi?
select sum (on_hand) 
from warehouse_product
join products
on warehouse_product.product_id=products.id
where products.id = 6;

