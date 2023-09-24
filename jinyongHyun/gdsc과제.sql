CREATE table theater (
	theater_id int not null unique primary key auto_increment,
    name varchar(15) not null unique,
    location varchar(15) not null);
    
CREATE table client (
	client_id int not null unique primary key auto_increment,
    name varchar(15) not null unique,
    sex char(2) not null);

CREATE table reservation (
	reservation_id int not null primary key auto_increment,
    theater_name varchar(15) not null,
    client_id int not null,
    client_name varchar(15) not null,
    foreign key(theater_name) references theater(name),
    foreign key(client_id) references client(client_id),
    foreign key(client_name) references client(name));
    
insert into theater(theater_id, name, location) values (1, '용맥', '용산'), (2, '아산야', '구로'), (3, '은가누', '강남');
insert into client(client_id, name, sex) values (1, '문재인', '여성'), (2, '윤석열', '여성'), (3, '모택동', '여성');
insert into reservation(reservation_id, theater_name, client_id, client_name) values (10, '용맥', 1, '문재인'), (20, '아산야', 2, '윤석열'), (30, '은가누', 3, '모택동');

select r.reservation_id "예약번호" , r.client_name "예약자명", r.theater_name "극장명" from reservation r left join theater t on t.name = r.theater_name left join client c on c.client_id = r.client_id;