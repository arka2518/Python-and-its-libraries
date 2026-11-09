select * from student;
select * from student_profiles;
select * from marks;

select s.student_id, s.name, m.mark_id, m.subject, m.marks 
from student s
join marks m
on s.student_id = m.student_id;

select s.student_id, s.name, m.subject, m.marks
from student s
join marks m
on s.student_id = m.student_id
where s.student_id = 1;

select s.student_id, s.name, m.subject, m.marks
from student s
join marks m
on s.student_id = m.student_id
where m.marks > 80;

select s.student_id, s.name, m.subject, m.marks
from student s
join marks m
on s.student_id = m.student_id
order by m.marks DESC;

select s.student_id, s.name, AVG(m.marks) as avg_marks
from student s
join marks m
on s.student_id = m.student_id
group by s.student_id;
