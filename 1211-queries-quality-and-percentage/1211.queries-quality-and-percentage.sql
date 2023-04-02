--
-- @lc app=leetcode id=1211 lang=mysql
--
-- [1211] Queries Quality and Percentage
--

-- @lc code=start
# Write your MySQL query statement below
  SELECT query_name,
         ROUND(AVG(rating / position), 2) AS quality,
         ROUND((SUM(rating < 3) / COUNT(*)) * 100, 2) AS poor_query_percentage
    FROM Queries
GROUP BY query_name;
-- @lc code=end

