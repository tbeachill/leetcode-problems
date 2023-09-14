--
-- @lc app=leetcode id=570 lang=mysql
--
-- [570] Managers with at Least 5 Direct Reports
--

-- @lc code=start
# Write your MySQL query statement below
SELECT name
  FROM Employee
 WHERE Id IN (
          SELECT ManagerId
            FROM Employee
        GROUP BY ManagerId
          HAVING COUNT(*) >= 5
)
-- @lc code=end

