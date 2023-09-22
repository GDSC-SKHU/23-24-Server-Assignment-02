
CREATE TABLE 예약 (
    예약ID INT PRIMARY KEY,
    극장ID INT,
    고객ID INT,
    예약일 DATE
);


CREATE TABLE 극장 (
    극장ID INT PRIMARY KEY,
    극장명 VARCHAR(255),
    위치 VARCHAR(255)
);

CREATE TABLE 고객 (
    고객ID INT PRIMARY KEY,
    이름 VARCHAR(255),
    이메일 VARCHAR(255)

);


-- 예약 테이블 (외래키 추가)
ALTER TABLE 예약
ADD FOREIGN KEY (극장ID) REFERENCES 극장(극장ID);

ALTER TABLE 예약
ADD FOREIGN KEY (고객ID) REFERENCES 고객(고객ID);


-- 극장 데이터 삽입
INSERT INTO 극장 (극장ID, 극장명, 위치)
VALUES (1, '극장 A', '서울'), (2, '극장 B', '대구'), (3, '극장 C', '부산');

-- 고객 데이터 삽입
INSERT INTO 고객 (고객ID, 이름, 이메일)
VALUES (1, '고객1', 'customer1@example.com'),
       (2, '고객2', 'customer2@example.com'),
       (3, '고객3', 'customer3@example.com');

-- 예약 데이터 삽입
INSERT INTO 예약 (예약ID, 극장ID, 고객ID, 예약일)
VALUES (101, 1, 1, '2023-09-20'),
       (102, 2, 2, '2023-09-21'),
       (103, 3, 3, '2023-09-22');



SELECT 예약.예약ID, 극장.극장명, 고객.이름, 예약.예약일
FROM 예약
JOIN 극장 ON 예약.극장ID = 극장.극장ID
JOIN 고객 ON 예약.고객ID = 고객.고객ID;

