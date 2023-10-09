--
-- @lc app=leetcode id=262 lang=mysql
--
-- [262] Trips and Users
--

-- @lc code=start
# Write your MySQL query statement below
  SELECT request_at AS Day,
         ROUND(SUM(IF(LEFT(status, 2) = 'ca', 1, 0)) / COUNT(id), 2) AS 'Cancellation Rate'
    FROM Trips
   WHERE client_id IN (SELECT users_id FROM Users WHERE banned = 'No')
     AND driver_id IN (SELECT users_id FROM Users WHERE banned = 'No')
     AND request_at BETWEEN "2013-10-01" AND "2013-10-03"
GROUP BY request_at;
-- @lc code=end

