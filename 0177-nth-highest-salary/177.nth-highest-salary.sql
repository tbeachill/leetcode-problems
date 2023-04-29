--
-- @lc app=leetcode id=177 lang=mysql
--
-- [177] Nth Highest Salary
--

-- @lc code=start
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE O INT DEFAULT N-1;
  RETURN (
      # Write your MySQL query statement below.
        SELECT DISTINCT salary
          FROM Employee
      ORDER BY salary DESC
         LIMIT 1 OFFSET O
  );
END
-- @lc code=end

