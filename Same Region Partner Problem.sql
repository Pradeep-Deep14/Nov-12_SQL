CREATE TABLE delhivery_partners (
         partner_id INT, 
         partner_name VARCHAR(100), 
         region VARCHAR(50)
     );
     CREATE TABLE blue_dart_partners (
         partner_id INT, 
         partner_name VARCHAR(100), 
         region VARCHAR(50)
     );
     INSERT INTO delhivery_partners VALUES 
         (1, 'Ramesh Kumar', 'Delhi'), 
         (2, 'Anita Roy', 'Mumbai'), 
         (3, 'Siddharth Singh', 'Bangalore');
     INSERT INTO blue_dart_partners VALUES 
         (4, 'Nikhil Pandey', 'Delhi'), 
         (5, 'Sanjay Gupta', 'Chennai'), 
         (6, 'Sunita Sharma', 'Mumbai');


SELECT * FROM DELHIVERY_PARTNERS

SELECT * FROM BLUE_DART_PARTNERS

/*
Match delivery partners from Delhivery and Blue Dart who operate in the same regions.
*/

SELECT D.partner_name AS Delhivery_Partner,
	   B.partner_name AS Blue_Dart_Partner, 
	   D.region 
FROM delhivery_partners D
INNER JOIN blue_dart_partners B ON D.region = B.region;