--
-- @lc app=leetcode id=1407 lang=mysql
--
-- [1407] Top Travellers
--

-- @lc code=start
# Write your MySQL query statement below

   SELECT u.name,
          IFNULL(SUM(r.distance),0) AS travelled_distance
     FROM Users u
LEFT JOIN Rides r
       ON u.id = r.user_id
 GROUP BY r.user_id
 ORDER BY travelled_distance DESC,
          u.name ASC;

-- @lc code=end

