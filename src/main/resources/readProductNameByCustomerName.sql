select o.product_name, c.name as customer_name from ORDERS o
join CUSTOMERS c on o.customer_id = c.id
where lower(c.name) = 'alexey'