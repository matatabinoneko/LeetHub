SELECT
    class
FROM
    Courses
GROUP BY
    class
HAVING
    5 <= COUNT(student)