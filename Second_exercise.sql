select aaa.first_name, aaa.last_name, bbb.salary
	from employees aaa
	inner join salaries bbb on aaa.salary_id=bbb.id where bbb.salary<30000;

select aaa.first_name, aaa.last_name, bbb.salary, ccc.position_of_employe
	from employees aaa
	inner join salaries bbb on aaa.salary_id=bbb.id 
    inner join positions ccc on aaa.position_id=ccc.id
    where bbb.salary<30000 and ccc.position_of_employe='designer'
    ;
