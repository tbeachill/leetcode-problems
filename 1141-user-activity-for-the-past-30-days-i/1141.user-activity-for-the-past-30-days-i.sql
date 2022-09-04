--
-- @lc app=leetcode id=1141 lang=mysql
--
-- [1141] User Activity for the Past 30 Days I
--

-- @lc code=start
# Write your MySQL query statement below

  SELECT activity_date AS day,
         COUNT(DISTINCT user_id) AS active_users
    FROM Activity
   WHERE activity_date BETWEEN DATE_ADD('2019-07-27', INTERVAL -29 DAY) AND '2019-07-27'
GROUP BY activity_date;

-- @lc code=end

