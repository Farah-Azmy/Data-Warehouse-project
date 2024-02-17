--meta_control_fact_table--
/*
select Last_Load_order_line_BK from Meta_Control_fact_table
where order_line='order_line'*/



/*select Last_load_date from Meta_Control_fact_table
where order_line='order_line'*/

SELECT
    b.book_id AS book_id_BK,
    co.order_id AS order_id_BK,
    c.customer_id AS Customer_id_BK,
	ol.line_id,
    co.order_date,
    ol.price,
    sm.cost
FROM
    book b
INNER JOIN order_line ol ON b.book_id = ol.book_id
INNER JOIN cust_order co ON ol.order_id = co.order_id
INNER JOIN customer c ON co.customer_id = c.customer_id
INNER JOIN shipping_method sm ON co.shipping_method_id = sm.method_id;
where Last_Load_order_line_BK >?


SELECT
    b.book_id AS book_id_BK,
    co.order_id AS order_id_BK,
    c.customer_id AS Customer_id_BK,
    ol.line_id,
    co.order_date,
    ol.price,
    sm.cost
FROM
    book b
INNER JOIN order_line ol ON b.book_id = ol.book_id
INNER JOIN cust_order co ON ol.order_id = co.order_id
INNER JOIN customer c ON co.customer_id = c.customer_id
INNER JOIN shipping_method sm ON co.shipping_method_id = sm.method_id;
where ol.line_id >?


