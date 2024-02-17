


-- Create the Meta_Control_fact_table
CREATE TABLE Meta_Control_fact_table (
    id INT PRIMARY KEY,
    order_line VARCHAR(50),
    Last_load_date DATETIME,
    Last_Load_order_line_BK INT
);

INSERT INTO Meta_Control_fact_table (id, order_line, Last_load_date, Last_Load_order_line_BK)
VALUES 
    (1, 'order_line', '1999-01-10 00:00:00', 0);
