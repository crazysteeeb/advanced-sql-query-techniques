-- Steve Phillips-Ward 20260223

/* 1. [20 points] Find the number of students in each department. Rename the second attribute in the output as number_students. This means the schema of the output is (dept_name, number_students). */

select dept_name, count(*) as number_students from student group by dept_name;

/* 2. [20 points] For departments that have at least three students, find department name and number of students. Rename the second attribute in the output as number_students. Remark: this question is similar to the previous one but the output lists only department that has at least three students. */

select dept_name, count(*) as number_students from student group by dept_name having count(*) >= 3;

/* 3. [20 points] Find the ids of instructors who are also students using a set operation. Assume that a person is identified by her or his id. So, if the same id appears in both instructor and student, then that person is both an instructor and a student. Remember: set operation means union, intersect or set difference.
 */

select ID from instructor intersect select ID from student;

/* 4. [20 points] Find the ids of instructors who are also students using the set membership operator. */

select ID from instructor where ID in (select ID from student);

/* 5. [20 points] Find the ids of instructors who are also students using a set comparison operator. */

select ID from instructor where ID = any (select ID from student);