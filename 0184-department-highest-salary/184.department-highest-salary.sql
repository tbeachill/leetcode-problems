--
-- @lc app=leetcode id=184 lang=mysql
--
-- [184] Department Highest Salary
--

-- @lc code=start
# Write your MySQL query statement below
   SELECT d.name AS Department,
          e.name AS Employee,
          e.salary
     FROM Employee e
LEFT JOIN Department d ON e.departmentId = d.id
    WHERE (e.departmentId, e.salary) IN (
          SELECT departmentId, MAX(salary)
            FROM Employee
        GROUP BY departmentId
)
-- @lc code=end

