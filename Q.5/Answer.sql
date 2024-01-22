#Q5) Display the Supplier details of who is supplying more than one product.

SELECT S.* FROM SUPPLIER AS S
JOIN
(
SELECT SUPP_ID, COUNT(SUPP_ID) AS NO_PRODUCT FROM supplier_pricing GROUP BY SUPP_ID HAVING NO_PRODUCT > 1
) AS P
ON S.SUPP_ID = P.SUPP_ID;

select supplier.* from supplier where supplier.supp_id in 
	(select supp_id from supplier_pricing group by supp_id having 
	count(supp_id)>1) 
group by supplier.supp_id;
