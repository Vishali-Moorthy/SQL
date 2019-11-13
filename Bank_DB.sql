create database banking;

use banking;

create table user
(
	account_Number int primary key auto_increment,
	user_Name varchar(30),
    pass_Word varchar(30),
	date_Of_Birth date, 
    age int,
    gender varchar(30),
    phone_No long,
    email varchar(30),
    city varchar(30),
	state varchar(30),
    account_Type varchar(30)
) auto_increment = 1000;

create table account
(
	account_Id int primary key auto_increment,
    account_Number int,
    balance long,
    foreign key(account_Number) references user(account_Number)
);

insert into account values
	(account_Id,"1000",430000),
    (account_Id,"1001",590000);

create table transaction
(
	transaction_Id int primary key auto_increment,
    from_Account int,
	to_Account int,
    transfer_Amount long
);
    

select * from user;
select * from account;
select * from transaction;

drop table user;
drop table account;
drop table transaction;

    