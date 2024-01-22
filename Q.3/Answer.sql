#Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.


#Get orders worth at least 30000
SELECT CUS_ID FROM `order` WHERE ORD_AMOUNT >= 3000;

#Get Gender for above results

SELECT C.CUS_GENDER AS GENDER, COUNT(C.CUS_GENDER) AS TOTAL_CUSTOMER FROM CUSTOMER AS C
JOIN
(
SELECT CUS_ID FROM `order` WHERE ORD_AMOUNT >= 3000 
) AS P
on C.CUS_ID = P.CUS_ID GROUP BY C.CUS_GENDER;

