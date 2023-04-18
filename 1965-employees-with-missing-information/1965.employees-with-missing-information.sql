--
-- @lc app=leetcode id=1965 lang=mysql
--
-- [1965] Employees With Missing Information
--

-- @lc code=start
# Write your MySQL query statement below
  SELECT employee_id
    FROM (   SELECT employee_id
               FROM Employees
          UNION ALL
             SELECT employee_id
               FROM Salaries) id
GROUP BY employee_id
  HAVING COUNT(employee_id) != 2
ORDER BY employee_id ASC;
-- @lc code=end

