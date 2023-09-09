create database pjt;
use pjt;
select * from hrs;

alter table hrs
change column ï»¿id emp_id varchar(20)null;

describe hrs;

select termdate from hrs;

update hrs
set birthdate = case
	when birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate, '%m/%d/%Y'),'%Y-%m-%d')
    when birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate, '%m-%d-%Y'),'%Y-%m-%d')
    else null
end;
    
Alter table hrs
modify column birthdate date;

update hrs
set hire_date = case
	when hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date, '%m/%d/%Y'),'%Y-%m-%d')
    when hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date, '%m-%d-%Y'),'%Y-%m-%d')
    else null
end;

Alter table hrs
modify column hire_date date;

uodate hrs
set termdate = date(str_to_date(termdate, '%Y-%m-%d %H:$i:%s UTC'))
where termdate is not null
 