#Find the least expensive product from each category and print the table with category id, name, and price of the product

SELECT C.CAT_ID, C.CAT_NAME, MIN(R.PRICE) FROM CATEGORY AS C
JOIN
(SELECT P.CAT_ID, Q.* FROM PRODUCT AS P
JOIN
(SELECT PRO_ID, MIN(SUPP_PRICE) AS PRICE FROM SUPPLIER_PRICING GROUP BY PRO_ID) AS Q
ON P.PRO_ID = Q.PRO_ID) AS R
ON C.CAT_ID =R.CAT_ID GROUP BY C.CAT_ID; 



