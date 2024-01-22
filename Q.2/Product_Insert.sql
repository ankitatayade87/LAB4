INSERT INTO PRODUCT VALUES(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM", (select CAT_ID from category where CAT_NAME = "GAMES"));
INSERT INTO PRODUCT VALUES(2,"TSHIRT","SIZE-L with Black, Blue and White variations", (select CAT_ID from category where CAT_NAME = "CLOTHES"));
INSERT INTO PRODUCT VALUES(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",(select CAT_ID from category where CAT_NAME = "ELECTRONICS"));
INSERT INTO PRODUCT VALUES(4,"OATS","Highly Nutritious from Nestle",(select CAT_ID from category where CAT_NAME = "GROCERIES"));
INSERT INTO PRODUCT VALUES(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",(select CAT_ID from category where CAT_NAME = "BOOKS"));
INSERT INTO PRODUCT VALUES(6,"MILK","1L Toned MIlk",(select CAT_ID from category where CAT_NAME = "GROCERIES"));
INSERT INTO PRODUCT VALUES(7,"Boat EarPhones","1.5Meter long Dolby Atmos",(select CAT_ID from category where CAT_NAME = "ELECTRONICS"));
INSERT INTO PRODUCT VALUES(8,"Jeans","Stretchable Denim Jeans with various sizes and color",(select CAT_ID from category where CAT_NAME = "CLOTHES"));
INSERT INTO PRODUCT VALUES(9,"Project IGI","compatible with windows 7 and above",(select CAT_ID from category where CAT_NAME = "GAMES"));
INSERT INTO PRODUCT VALUES(10,"Hoodie","Black GUCCI for 13 yrs and above",(select CAT_ID from category where CAT_NAME = "CLOTHES"));
INSERT INTO PRODUCT VALUES(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",(select CAT_ID from category where CAT_NAME = "BOOKS"));
INSERT INTO PRODUCT VALUES(12,"Train Your Brain","By Shireen Stephen",(select CAT_ID from category where CAT_NAME = "BOOKS"));

