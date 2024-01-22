#Display all the orders along with product name ordered by a customer having Customer_Id=2


#Select order having cutomer id = 2
SELECT `ORDER`.* from `ORDER` WHERE CUS_ID = 2; 

SELECT P.PRO_NAME, Q.* FROM PRODUCT AS P
JOIN
(
SELECT O.*  FROM Supplier_pricing AS S
JOIN
(
SELECT `ORDER`.* from `ORDER` WHERE CUS_ID = 2
) AS O ON O.PRICING_ID = S.PRICING_ID
) AS Q ON P.PRO_ID = Q.PRO_ID;
