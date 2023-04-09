--
-- @lc app=leetcode id=1378 lang=mysql
--
-- [1378] Replace Employee ID With The Unique Identifier
--

-- @lc code=start
# Write your MySQL query statement below
   SELECT u.unique_id,
          e.name
     FROM Employees e
LEFT JOIN EmployeeUNI u ON e.id = u.id;
-- @lc code=end

