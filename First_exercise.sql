create database if not exists my_corporation;
use my_corporation;
create table if not exists employees (
	id int unsigned not null auto_increment primary key,
    first_name varchar(30) not null,
    last_name varchar (30) not null
);
create table if not exists positions (
	id int unsigned not null auto_increment primary key,
    position_of_employe varchar (30) not null
);
create table if not exists salaries (
	id int unsigned not null auto_increment primary key,
    salary int not null
);
insert into employees ( id, first_name, last_name) values ( null, 'Ivan', 'Ivanov');
insert into employees ( id, first_name, last_name) values ( null, 'Grigoriy', 'Sheps');
insert into employees ( id, first_name, last_name) values ( null, 'Petr', 'Petuhov');
insert into employees ( id, first_name, last_name) values ( null, 'Jason','Voorhees');
insert into employees ( id, first_name, last_name) values ( null, 'Vladimir', 'Mutin');

insert into positions ( id, position_of_employe ) values ( null, 'designer');
insert into positions ( id, position_of_employe ) values ( null, 'manager');
insert into positions ( id, position_of_employe ) values ( null, 'killer');

insert into salaries ( id, salary ) values ( null, 20000 );
insert into salaries ( id, salary ) values ( null, 35000 );
insert into salaries ( id, salary ) values ( null, 45000 );
insert into salaries ( id, salary ) values ( null, 1000000);

alter table employees add position_id int not null;
alter table employees add salary_id int not null;

update employees set position_id=1 where id in (1,2);
update employees set position_id=2 where id in (3,5);
update employees set position_id=3 where id=4;

update employees set salary_id=1 where id=1;
update employees set salary_id=2 where id=2;
update employees set salary_id=3 where id in (3,4);
update employees set salary_id=4 where id=5;
