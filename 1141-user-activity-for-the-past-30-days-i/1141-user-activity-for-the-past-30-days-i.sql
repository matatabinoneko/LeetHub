SELECT
  activity_date as 'day', 
  COUNT(activity_date) as 'active_users'
FROM
  (
  SELECT 
    # user_id, COUNT(activity_date) as 'active_users'
    user_id, activity_date
  FROM
    Activity
  # WHERE
  #   DATE_ADD(DATE('2019-07-27'), INTERVAL -30 DAY) < activity_date AND DATE('2019-07-27') < activity_date
  GROUP BY
    activity_date, user_id
  ) A
WHERE
  DATE_ADD(DATE('2019-07-27'), INTERVAL -30 DAY) < activity_date AND activity_date <= DATE('2019-07-27')
GROUP BY
  activity_date