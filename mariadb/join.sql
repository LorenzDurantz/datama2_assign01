--
-- one-to-many
--
SELECT
    students.id,
    students.stu_fname,
    students.stu_lname,
    students.stu_email,
    CONCAT(employees.emp_fname, ' ', employees.emp_lname) AS instructor_name
FROM
    students
JOIN
    employees
ON
    employees.id = students.employee_id
ORDER BY
    students.id;

--
-- many-to-many
--
SELECT
    students.id,
    students.stu_fname,
    students.stu_lname,
    students.stu_email,
    food.food_nut,
    food.food_aller,
    food.food_type
FROM
    students
LEFT OUTER JOIN
    food_has_students
ON
    students.id = food_has_students.students_stu_id
RIGHT OUTER JOIN
    food
ON
    food.id = food_has_students.food_food_id
ORDER BY
    students.id;
