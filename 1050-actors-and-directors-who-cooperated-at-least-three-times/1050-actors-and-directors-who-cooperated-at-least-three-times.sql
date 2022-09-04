SELECT
  actor_id, director_id
FROM
  ActorDirector
GROUP BY
  actor_id, director_id    
HAVING
  3 <= COUNT(timestamp)