CREATE SCHEMA `assignment02` ; /*스키마 생성 */

CREATE TABLE `assignment02`.`user` (  /*user 테이블 생성 */
  `id` INT NOT NULL, /*id는 널값을 가질수 없음 값이 무조건 있음 because 기본키라서*/
  `user_name` VARCHAR(45) NULL, /*user_name을 char형태로 받음 */ 
  `user_phone` VARCHAR(45) NULL,
  `user_address` VARCHAR(45) NULL,
  PRIMARY KEY (`id`)); /* 기본키 id로 지정*/

INSERT INTO `assignment02`.`user` (`id`, `user_name`, `user_phone`, `user_address`) VALUES ('1', '김우진', '1111-1234', '대전'); /* id, 이름, 휴대폰번호, 주소를 데이터 삽입*/
INSERT INTO `assignment02`.`user` (`id`, `user_name`, `user_phone`, `user_address`) VALUES ('2', '인상진', '2222-1234', '상봉');
INSERT INTO `assignment02`.`user` (`id`, `user_name`, `user_phone`, `user_address`) VALUES ('3', '허남규', '3333-1234', '구마대');
INSERT INTO `assignment02`.`user` (`id`, `user_name`, `user_phone`, `user_address`) VALUES ('4', '김주하', '4444-1234', '파주');



CREATE TABLE `assignment02`.`theater` ( /* user 테이블과 동일*/
  `th_id` INT NOT NULL,
  `th_location` VARCHAR(45) NULL,
  `th_name` VARCHAR(45) NULL,
  `th_isimax` TINYINT NULL, /*isimax를 tinyint값으로 imax 유무를 구별했음 */
  PRIMARY KEY (`th_id`));

INSERT INTO `assignment02`.`theater` (`th_id`, `th_location`, `th_name`, `th_isimax`) VALUES ('1', '안양', '안양cgv', '0');
INSERT INTO `assignment02`.`theater` (`th_id`, `th_location`, `th_name`, `th_isimax`) VALUES ('2', '강화도', '강화cgv', '0');
INSERT INTO `assignment02`.`theater` (`th_id`, `th_location`, `th_name`, `th_isimax`) VALUES ('3', '파주', '파주cgv', '1');
INSERT INTO `assignment02`.`theater` (`th_id`, `th_location`, `th_name`, `th_isimax`) VALUES ('4', '역곡', '역곡cgv', '1');




CREATE TABLE `assignment02`.`reservation` (
  `re_id` INT NOT NULL,
  `re_title` VARCHAR(45) NULL,
  `user_id` INT NULL,
  `theater_id` INT NULL,
  PRIMARY KEY (`re_id`),
  CONSTRAINT `fk_user_id` /*제약 조건 필드 지정*/
    FOREIGN KEY (`user_id`) /*user_id는 외래키로 지정*/
    REFERENCES `assignment02`.`user` (`id`) /*user테이블에 id와 연결*/
    ON DELETE NO ACTION /*제약조건에 맞게 참조하는 이곳에서 데이터를 업데이트 하거나 삭제할 수 없음*/
    ON UPDATE NO ACTION, 
  CONSTRAINT `fk_theater_id`
    FOREIGN KEY (`theater_id`)
    REFERENCES `assignment02`.`theater` (`th_id`)
    ON DELETE NO ACTION /*위와 동일*/
    ON UPDATE NO ACTION);
    
    /*join*/
select re_id, re_title, th_name, user_id, user_name /*보여줄 데이터 목록*/
from reservation, theater, user /*예약, 극장, 유저로부터 데이터 받아온다는 것을 명시*/
where user_id = user.id and theater_id = theater.th_id; /*reservation에 있는 user_id는 user에 있는 id와 같은 value로 지정 reservation에 있는 theater_id는 theater에 있는 th_id와 같은 value로 지정*/
    

INSERT INTO `assignment02`.`reservation` (`re_id`, `re_title`, `user_id`, `theater_id`) VALUES ('1', '인간 허남규', '1', '1'); 
INSERT INTO `assignment02`.`reservation` (`re_id`, `re_title`, `user_id`, `theater_id`) VALUES ('2', '인간 김우진', '2', '2');
INSERT INTO `assignment02`.`reservation` (`re_id`, `re_title`, `user_id`, `theater_id`) VALUES ('3', '인생극장', '3', '3');
INSERT INTO `assignment02`.`reservation` (`re_id`, `re_title`, `user_id`, `theater_id`) VALUES ('4', '데베 다큐멘터리', '4', '4');

