create sequence employee_seq start with 1 increment by 50;

create table employee
(
    id bigint not null,
    name varchar(255),
    role varchar(255),
    primary key (id)
);