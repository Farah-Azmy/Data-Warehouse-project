

--select last_order_line--
select max(line_id) as update_last_order_line
from Fact_Table

--Update last_order_line and Datw--
update Meta_Control_fact_table 
set Last_load_date= ?,
Last_Load_order_line_BK= ?
where order_line='order_line'
