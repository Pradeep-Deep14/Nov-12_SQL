CREATE TABLE zomato_partners (
         platform_id INT, 
         platform_name VARCHAR(100)
     );
     CREATE TABLE swiggy_partners (
         platform_id INT, 
         platform_name VARCHAR(100)
     );
     INSERT INTO zomato_partners VALUES 
         (1, 'Dominos Pizza'), 
         (2, 'Burger King'), 
         (3, 'McDonalds');
		 
     INSERT INTO swiggy_partners VALUES 
         (1, 'Dominos Pizza'), 
         (2, 'KFC'), 
         (3, 'Burger King');

SELECT * FROM ZOMATO_PARTNERS
SELECT * FROM SWIGGY_PARTNERS

/*
Identify all e-commerce platforms that have collaborated with both Zomato and Swiggy for food delivery services.
*/

SELECT Z.PLATFORM_NAME
FROM ZOMATO_PARTNERS Z
JOIN SWIGGY_PARTNERS S
ON Z.PLATFORM_ID = S.PLATFORM_ID
AND Z.PLATFORM_NAME = S.PLATFORM_NAME