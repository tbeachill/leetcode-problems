--
-- @lc app=leetcode id=577 lang=mysql
--
-- [577] Employee Bonus
--

-- @lc code=start
# Write your MySQL query statement below
   SELECT e.name,
          b.bonus
     FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
    WHERE bonus < 1000
       OR bonus IS NULL;
-- @lc code=end

