--
-- @lc app=leetcode id=185 lang=mysql
--
-- [185] Department Top Three Salaries
--

-- @lc code=start
# Write your MySQL query statement below
  SELECT d.name AS Department,
         e1.name AS Employee,
         e1.salary AS Salary
    FROM Employee e1
    JOIN Department d ON e1.departmentId = d.Id
   WHERE 3 > (SELECT COUNT(DISTINCT e2.salary)
                FROM Employee e2
               WHERE e2.salary > e1.salary AND e1.departmentId = e2.departmentId)
ORDER BY d.name, e1.salary DESC;
-- @lc code=end

