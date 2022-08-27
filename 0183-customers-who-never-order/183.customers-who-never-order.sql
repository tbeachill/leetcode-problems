--
-- @lc app=leetcode id=183 lang=mysql
--
-- [183] Customers Who Never Order
--

-- @lc code=start
# Write your MySQL query statement below

SELECT name AS Customers
  FROM Customers c
 WHERE c.id NOT IN (SELECT customerId
                      FROM Orders);

-- @lc code=end

