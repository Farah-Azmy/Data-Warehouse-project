--QUeary for Book_Dim--
/*
SELECT 
    b.book_id,
    b.title,
    b.isbn13,
    b.num_pages,
    b.publication_date,
    bl.language_id,
    bl.language_name,
    bl.language_code,
    a.author_id,
    a.author_name,
    p.publisher_id,
    p.publisher_name
FROM 
    book b
LEFT JOIN book_author ba 
    ON b.book_id = ba.book_id
LEFT JOIN author a 
    ON ba.author_id = a.author_id
LEFT JOIN book_language bl 
    ON b.language_id = bl.language_id
LEFT JOIN publisher p 
    ON b.publisher_id = p.publisher_id;*/
----------------------------------------------------
--QUeary for customer_Dim--
/*SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    ca.address_id, 
    a.street_number,
    a.street_name,
    a.city,
	co.country_id,
    co.country_name,
    ass.status_id,
    ass.address_status
FROM 
    customer c
LEFT JOIN customer_address ca  
    ON c.customer_id = ca.customer_id
LEFT JOIN address a 
    ON ca.address_id = a.address_id
LEFT JOIN country co 
    ON a.country_id = co.country_id
LEFT JOIN address_status ass 
    ON ca.status_id = ass.status_id;*/

------------------------------------------
--QUeary for order_Dim--
/*
SELECT cust_order.order_id, cust_order.customer_id, cust_order.dest_address_id, shipping_method.method_id, shipping_method.method_name, order_status.status_id, 
order_status.status_value, order_history.status_date
FROM     cust_order INNER JOIN
                  order_history ON cust_order.order_id = order_history.order_id INNER JOIN
                  order_status ON order_history.status_id = order_status.status_id INNER JOIN
                  shipping_method ON cust_order.shipping_method_id = shipping_method.method_id*/

