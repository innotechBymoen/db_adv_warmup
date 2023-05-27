insert into student(name, address, date_of_birth) 
values 
('Student One', '123 Fake Street', '2000-01-01'),
('Student Four', '127 Fake Street', '2001-01-01'),
('Student Two', '124 Fake Street', '2002-01-01'),
('Student Three', '125 Fake Street', '2000-03-01'),
('Student Five', '126 Fake Street', '2001-02-01');

insert into course(name, start_time, end_time) 
values 
('Math', '9:00', '9:50'),
('Science', '10:00', '10:50'),
('Language Arts', '11:00', '11:50'),
('Social Studies', '13:00', '13:50'),
('Gym', '14:00', '14:50');

insert into enrollment(student_id, course_id, grade_achieved)
values
(1,5,90),
(1,4,85),
(1,3,92),
(2,2,70),
(2,1,72),
(2,5,78),
(3,4,60),
(3,3,61),
(3,2,64),
(4,1,90),
(4,5,87),
(4,4,40),
(5,3,40),
(5,2,45),
(5,1,52);

select name from student order by date_of_birth asc limit 1;

select s.name, c.name, e.grade_achieved 
from student s inner join enrollment e on s.id = e.student_id 
inner join course c on c.id = e.course_id
where e.grade_achieved > 90;

select c.name, avg(e.grade_achieved)
from course c inner join enrollment e on c.id = e.course_id
group by c.id;

select s.name, avg(e.grade_achieved)
from student s  inner join enrollment e on s.id = e.student_id
group by s.id
order by avg(e.grade_achieved) asc
limit 3;

select c.name, avg(e.grade_achieved)
from course c inner join enrollment e on c.id = e.course_id
group by c.id
order by avg(e.grade_achieved) desc
limit 1;

select count(e.id), e.course_id 
from enrollment e 
group by e.course_id;

