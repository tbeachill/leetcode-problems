--
-- @lc app=leetcode id=550 lang=mysql
--
-- [550] Game Play Analysis IV
--

-- @lc code=start
# Write your MySQL query statement below
   SELECT ROUND(COUNT(DISTINCT a2.player_id) / COUNT(DISTINCT a1.player_id), 2) AS fraction
     FROM (  SELECT player_id,
                    MIN(event_date) AS first_login
               FROM Activity
           GROUP BY player_id) AS a1
LEFT JOIN Activity a2
       ON a1.player_id = a2.player_id
      AND a1.first_login = DATE_SUB(a2.event_date, INTERVAL 1 DAY);
-- @lc code=end
