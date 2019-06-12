create table if not exists crosstable (
	id int unsigned not null auto_increment primary key,
    chief_id int not null,
    subordinate_id int not null
);

insert into crosstable ( id, chief_id, subordinate_id ) values ( null, 2, 1 );
insert into crosstable ( id, chief_id, subordinate_id ) values ( null, 3, 1 );
insert into crosstable ( id, chief_id, subordinate_id ) values ( null, 3, 2 );
insert into crosstable ( id, chief_id, subordinate_id ) values ( null, 4, 2 );
insert into crosstable ( id, chief_id, subordinate_id ) values ( null, 4, 3 );
insert into crosstable ( id, chief_id, subordinate_id ) values ( null, 5, 2 );
insert into crosstable ( id, chief_id, subordinate_id ) values ( null, 5, 3 );
insert into crosstable ( id, chief_id, subordinate_id ) values ( null, 5, 4 );

select aaa.first_name, aaa.last_name
from employees aaa
inner join crosstable bbb on aaa.id=bbb.subordinate_id where bbb.chief_id=5;