insert into department (id, name, description)
values (1, 'HR', 'Handles recruitment, employee relations, and company policies');

insert into department (id, name, description)
values (2, 'IT', 'Manages company technology infrastructure and software development');

insert into department (id, name, description)
values (3, 'Finance', 'Oversees budgeting, accounting, and financial planning');


insert into employee (id, name, salary, department_id)
values (nextval('employee_seq'), 'Alice Johnson', 5500.00, 1);

insert into employee (id, name, salary, department_id)
values (nextval('employee_seq'), 'Bob Smith', 5500.00, 1);

insert into employee (id, name, salary, department_id)
values (nextval('employee_seq'), 'Carol Davis', 5300.00, 1);

insert into employee (id, name, salary, department_id)
values (nextval('employee_seq'), 'David Wilson', 7000.00, 2);

insert into employee (id, name, salary, department_id)
values (nextval('employee_seq'), 'Eve Brown', 7200.00, 2);

insert into employee (id, name, salary, department_id)
values (nextval('employee_seq'), 'Frank Miller', 7100.00, 2);

insert into employee (id, name, salary, department_id)
values (nextval('employee_seq'), 'Grace Taylor', 7300.00, 2);

insert into employee (id, name, salary, department_id)
values (nextval('employee_seq'), 'Henry And', 6500.00, 3);

insert into employee (id, name, salary, department_id)
values (nextval('employee_seq'), 'Ivy Thomas', 6700.00, 3);

insert into employee (id, name, salary, department_id)
values (nextval('employee_seq'), 'Jack White', 6400.00, 3);
