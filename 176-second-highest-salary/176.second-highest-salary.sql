--
-- @lc app=leetcode id=176 lang=mysql
--
-- [176] Second Highest Salary
--

-- @lc code=start
# Write your MySQL query statement below
   (SELECT salary AS SecondHighestSalary
      FROM Employee
     WHERE salary < (SELECT MAX(salary) FROM Employee)
  ORDER BY salary DESC
     LIMIT 1)
UNION
   (SELECT NULL)
LIMIT 1;
-- @lc code=end

