SELECT
  u.name,
  IFNULL(d.distance, 0) as 'travelled_distance'
FROM
  Users u
  LEFT OUTER JOIN (
    SELECT
    SUM(distance) as 'distance',
    user_id
    FROM
      Rides
    GROUP BY
      user_id
  ) d
  ON
    u.id = d.user_id
ORDER BY
  travelled_distance DESC, name ASC