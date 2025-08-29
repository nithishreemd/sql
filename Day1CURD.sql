create database nithi_sql;
show databases
use nithi_sql;
create table skills_list(sno int, skills_name varchar(100));
insert into skills_list(sno, skills_name) values(1,'Java');
insert into skills_list(sno, skills_name) values(2,'Java');
insert into skills_list(sno, skills_name) values(3,'Python');
insert into skills_list(sno, skills_name) values(4,'JS');
insert into skills_list(sno, skills_name) values(5,'Java');
ALTER TABLE skills_list ADD PRIMARY KEY (sno);
update skills_list
set skills_name = 'SQL'
 where sno = 2;
 delete from skills_list where sno =5;
 truncate table skills_list;
 drop table skills_list;
select*from skills_list;