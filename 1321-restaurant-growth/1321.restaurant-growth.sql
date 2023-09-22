--
-- @lc app=leetcode id=1321 lang=mysql
--
-- [1321] Restaurant Growth
--

-- @lc code=start
# Write your MySQL query statement below
SELECT visited_on,
       amount,
       ROUND(amount / 7, 2) AS average_amount
  FROM (SELECT DISTINCT visited_on,
               SUM(amount) OVER(ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY   PRECEDING AND CURRENT ROW) AS amount,
               MIN(visited_on) OVER() AS first_date
          FROM Customer) t
 WHERE visited_on >= first_date + 6;
-- @lc code=end

