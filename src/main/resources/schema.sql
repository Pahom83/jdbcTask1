create table CUSTOMERS(
                          id int unique,
                          name varchar(30) not null,
                          surname varchar(30),
                          age int not null
                              check ( age>=18 and age<130),
                          phone_number int not null,
                          primary key (id)
);

create table ORDERS(
                       id int,
                       date date default current_date,
                       customer_id int,
                       product_name varchar(50),
                       amount int,
                       primary key(id),
                       foreign key(customer_id) references CUSTOMERS(id)
);

insert into CUSTOMERS values (1, 'Ivan', 'Ivanov', '30', '111111');
insert into CUSTOMERS values (2, 'Petr', 'Petrov', '25', '222222');
insert into ORDERS values (1, default, 1, 'milk', 1);
insert into ORDERS values (2, default, 1, 'water', 2);
insert into ORDERS values (3, default, 2, 'water', 2)
