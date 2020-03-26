use czf;
-- 一、创建主键的三种方法 
-- 第一种 
create table stu(id int  primary key auto_increment,name varchar(40) not null);
drop table stu;
-- 第二种 
create table stu(id int  auto_increment,name varchar(40) not null, primary key(id));
create table stu(id int ,name varchar(40) not null);
-- 第三种  
alter table stu add primary key(id);
-- 删除主键 
alter table stu  drop primary key;
-- 二、自动增长的操作 
-- 设置自动增长
-- alter table (表名) modify id int auto_increment;   
alter  table stu modify id int auto_increment;
-- 修改自动增长的开始值 
alter table stu auto_increment=100;
insert  into stu(name) values('第三代');
select * from stu;
-- 删除自动增长 
alter  table stu modify id int not null;
-- 三、表的重命名 
-- alter table rename to/as new_tablename;
alter table  stu rename  to stu2;
alter table stu2 rename to stu;
-- 四、字段的操作  
-- 1、修改字段的数据类型  
-- alter  table table1 modify  column column1  decimal(10,1) DEFAULT
  alter table stu modify column name char(60);
-- 2、给字段重新命名 
-- ALTER  TABLE 表名 CHANGE 旧字段名 新字段名 新数据类型;
 alter table stu  change name stu_name varchar(40);
 -- 3、给字段添加默认值 
-- alter  table table1 change column1 column1 varchar(100) DEFAULT 1.2
alter table stu change stu_name stu_name varchar(50) default '刘虎';
 -- 4、添加一个字段 
 -- alter table  表名 add  column 字段名 字段类型
 alter table stu add column address varchar(60);
 -- 5、删除一个字段 
 alter table stu drop column address;
 -- 五、外键的操作 
 -- 第一种方法 创建外键 
 drop table result;
 create table result(id int primary key,score int ,stu_id int
 -- foreign key(stu_id) references stu(id)
 );
 -- 第二种方法创建外键 
 alter table result add constraint abc foreign key(stu_id)  references stu(id);
 -- 删除外键 
 alter table result drop foreign key abc;

-- 如果两个表存在主外关系，一定要先删除外表里数据，才可以删除主表中的对应的数据
select *from stu;
insert into stu(stu_name) values('黄第二日'),('地方的'),('是的撒');

select * from result;
insert into result(id,score,stu_id) values(1,78,100),(2,67,104),(3,89,102),(4,100,103);
delete from  stu where id=104;
-- 先删除从表中所有的104的值
delete from result where stu_id=104;


select sysdate();
select now();
select current_date();
select current_time();



 
 
 