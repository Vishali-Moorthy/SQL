create database stockManagement;

use stockManagement;

create table stock_Table
(
	stock_Id int primary key,
    stock_Name varchar(45),
    quantity int,
    price double,
    brokerage int
);

create table user_table
(
	user_Id int primary key,
    user_Name varchar(30)
);

insert into user_Table values
	(1,"Visha"),
    (2,"Sambavi"),
    (3,"Mahi");

create table orders_Table
(
	buy_Id int primary key auto_increment,
    user_Id int,
    stock_id int,
    stock_Name varchar(30),
    qty_Ord int,
    price double,
    brokerage int,
    total_Price double,
    foreign key (user_Id) references user_table(user_Id)
);

insert into stock_Table values
	(1,"Mouse",43,299,5),
    (2,"Keyboard",13,599,5),
    (3,"Laptop",56,56000,5),
    (4,"Mobile",27,8200,5),
    (5,"Speaker",84,1500,5),
    (6,"Pendrive",32,600,5),
    (7,"Desktop",12,67800,5),
    (8,"Television",44,100000,5),
    (9,"Camera",21,54000,5),
    (10,"Tablet",35,7000,5);
    
select * from stock_Table;
select * from orders_Table;
select * from user_Table;


drop table stock_Table;
drop table orders_Table;

