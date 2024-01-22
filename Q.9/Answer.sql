# display supplier id, name, Rating(Average rating of all the products sold by every customer) and 
#Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average 
#Service” else print “Poor Service”. Note that there should be one rating per supplier.

DELIMITER //
CREATE PROCEDURE PROCEDURE()
BEGIN
SELECT A.SUPP_ID, A.SUPP_NAME, AVG(R.RAT_RATSTARS), 
CASE 
	WHEN AVG(R.RAT_RATSTARS) = 5 THEN "Excellent Service"
	WHEN AVG(R.RAT_RATSTARS) > 4  THEN "Good Service" 
    WHEN AVG(R.RAT_RATSTARS) > 2 THEN "Average Service"
    ELSE "Poor Service"
END AS Type_of_service
FROM RATING AS R
INNER JOIN
(
	SELECT Q.SUPP_ID, P.SUPP_NAME, Q.ORD_ID FROM SUPPLIER AS P 
	INNER JOIN
		(
			SELECT O.ORD_ID, S.SUPP_ID FROM `ORDER` AS O
			INNER JOIN 
			SUPPLIER_PRICING AS S
			ON O.PRICING_ID = S.PRICING_ID
		) AS Q
	ON P.SUPP_ID = Q.SUPP_ID
)AS A
ON R.ORD_ID = A.ORD_ID GROUP BY A.SUPP_ID
END 
DELIMITER ;

CALL PROC();



