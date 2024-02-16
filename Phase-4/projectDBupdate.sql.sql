----------- UPDATES ---------
-- Updating the Proice of the Food Items in the MENU table.
UPDATE SPRING23_S003_21_MENU M 
SET M.PRICE = 10
WHERE M.FOOD_ID IN(10,12,15,16);


-- Inserting the Employees from various departments, a new Kitchen, and new Region.
INSERT INTO Spring23_S003_21_Employee VALUES (99,'John','Danny','Manager','johndanny@example.com','Euless',2125551212,'Male',TO_DATE('2022-01-01','YYYY-MM-DD'),TO_DATE('2023-01-01','YYYY-MM-DD'),'123-85-6789','Administration');
INSERT INTO Spring23_S003_21_Employee VALUES (100,'Samy','Doe','Facilities management','johndoe@example.com','Euless',2125551212,'Male',TO_DATE('2022-01-01','YYYY-MM-DD'),TO_DATE('2023-01-01','YYYY-MM-DD'),'125-45-6789','Facilities management');
INSERT INTO Spring23_S003_21_Employee VALUES (101,'John','Deep','Cook','johndoe@example.com','Euless',4578123256,'Male',TO_DATE('2022-01-01','YYYY-MM-DD'),TO_DATE('2023-01-01','YYYY-MM-DD'),'453-45-6789','Cooking');
INSERT INTO Spring23_S003_21_Employee VALUES (102,'Tommy','Doe','Delivery','johndoe@example.com','Euless',2124751212,'Male',TO_DATE('2022-01-01','YYYY-MM-DD'),TO_DATE('2023-01-01','YYYY-MM-DD'),'923-45-6789','Delivery team');
INSERT INTO Spring23_S003_21_Employee VALUES (105,'Samantha','Doe','Regional manager','samanthadoe@example.com','Euless',2124751212,'Female',TO_DATE('2022-01-01','YYYY-MM-DD'),TO_DATE('2023-01-01','YYYY-MM-DD'),'923-45-6789','Regional manager');
INSERT INTO Spring23_S003_21_Kitchen VALUES (10, 7864578523, 'Euless.kithcen@gmail.com', 99, 75096, 'Euless', 'TX', 105);
INSERT INTO Spring23_S003_21_Region  VALUES (5, 105, 'Region_5');




-- Deleting the records from the Orders for the Quarter 2 for 2022. 
DELETE FROM Spring23_S003_21_ORDER
WHERE EXTRACT(MONTH FROM ORDER_TIME) BETWEEN 4 AND 6 AND EXTRACT(YEAR FROM ORDER_TIME) = 2022


-- Updating the Avaialability of the Menu for the Kitchens fr the selected Kitchen and Food Items.
UPDATE Spring23_S003_21_DISPLAYS_MENU
SET MENU_AVAILABILITY = 1
WHERE FOOD_ID IN (15,22,7) AND KITCHEN_ID = 2;

