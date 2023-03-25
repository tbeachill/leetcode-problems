--
-- @lc app=leetcode id=1587 lang=mysql
--
-- [1587] Bank Account Summary II
--

-- @lc code=start
# Write your MySQL query statement below
    SELECT u.name, SUM(t.amount) AS balance
      FROM Transactions t
INNER JOIN Users u
        ON t.account = u.account
  GROUP BY u.name
    HAVING balance > 10000;
-- @lc code=end

