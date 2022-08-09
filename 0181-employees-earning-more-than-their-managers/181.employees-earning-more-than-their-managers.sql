--
-- @lc app=leetcode id=181 lang=mysql
--
-- [181] Employees Earning More Than Their Managers
--

-- @lc code=start
# Write your MySQL query statement below

SELECT e.name AS "Employee"
FROM Employee e
WHERE e.salary > (
    SELECT m.salary
    FROM Employee m
    WHERE e.managerId = m.id
);

-- @lc code=end

