
WITH tmp as (
  SELECT
    id,
    visit_date,
    people,
    lag(people, 1) over() as 'prev1_people',
    lag(people, 2) over() as 'prev2_people',
    lead(people, 1) over() as 'next1_people',
    lead(people, 2) over() as 'next2_people'
  FROM
    Stadium
)

SELECT
  # *
  id,
  visit_date,
  people
FROM
  tmp
WHERE
  people > 99 AND
  ((prev1_people > 99 AND prev2_people > 99) OR
  (next1_people > 99 AND next2_people > 99) OR
  (next1_people > 99 AND prev1_people > 99))
  