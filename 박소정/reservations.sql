-- SHOW CREATE TABLE reservations;

-- CREATE TABLE `reservations` (
--    `reservations_id` int NOT NULL AUTO_INCREMENT,
--    `theaters_id` int NOT NULL,
--    `customers_id` int NOT NULL,
--    `date` date NOT NULL,
--    PRIMARY KEY (`reservations_id`),
--    KEY `customers_id_idx` (`customers_id`),
--    KEY `theaters_id_idx` (`theaters_id`),
--    CONSTRAINT `customers_id` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`customers_id`),
--    CONSTRAINT `theaters_id` FOREIGN KEY (`theaters_id`) REFERENCES `theaters` (`theaters_id`)
--  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO reservations
  VALUES (1, 1, 1, '2023-09-21');
  
INSERT INTO reservations
  VALUES (2, 2, 2, '2023-09-23');
  
INSERT INTO reservations
  VALUES (3, 3, 3, '2023-09-23');
  
INSERT INTO reservations
  VALUES (4, 1, 4, '2023-09-24');
  
INSERT INTO reservations
  VALUES (5, 2, 5, '2023-09-25');
  
INSERT INTO reservations
  VALUES (6, 3, 1, '2023-09-26');
  
INSERT INTO reservations
  VALUES (7, 2, 4, '2023-09-30');