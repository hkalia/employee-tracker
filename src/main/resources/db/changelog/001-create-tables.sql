create sequence employee_seq start with 1 increment by 50;

create table department
(
    id          bigint not null,
    name        varchar(255),
    description varchar(255),
    primary key (id)
);

create table employee
(
    id            bigint not null,
    department_id bigint,
    name          varchar(255),
    salary        double precision,
    primary key (id),
    constraint fk_employee_department
        foreign key (department_id) references department (id)
);