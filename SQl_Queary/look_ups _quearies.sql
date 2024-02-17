--look_ups _quearies--


--look_up_DIMDATE--
select DateSK, Date from DimDate
------------------------------
--look_up_Customers_Dim--
select Cust_ID_SK ,Customer_id_BK from Customers_Dim
where is_current=1
-------------------------------
--look_up_Books_Dim--
select book_id_SK,book_id_BK from Books_Dim
where is_current=1
-----------------------------
--look_up_orderss_Dim--
SELECT order_id_SK, order_id_BK
FROM     Orders_Dim
where is_current=1