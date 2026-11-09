select * from students;

INSERT INTO students (name, age)
VALUES ('Alice Smith', 20),
('Bob Jones', 22),
('Charlie Brown', 19);

alter table students
add column email varchar(100) default 'not provided';

alter table students
rename column name to full_name;

alter table students
alter column age type smallint;

alter table students
alter column age set default 18;

alter table students
alter column age drop default;

alter table students
add constraint age_check check (age >= 0);

alter table students
drop constraint age_check;

alter table students
rename to students_data;