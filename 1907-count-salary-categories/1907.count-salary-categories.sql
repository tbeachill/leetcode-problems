--
-- @lc app=leetcode id=1907 lang=mysql
--
-- [1907] Count Salary Categories
--

-- @lc code=start
# Write your MySQL query statement below
    SELECT 'Low Salary' AS category,
            COUNT(*) AS accounts_count
      FROM Accounts
     WHERE income < 20000
UNION
    SELECT 'Average Salary' AS category,
            COUNT(*) AS accounts_count
      FROM Accounts
     WHERE income BETWEEN 20000 AND 50000
UNION
    SELECT 'High Salary' AS category,
            COUNT(*) AS accounts_count
      FROM Accounts
     WHERE income > 50000;
-- @lc code=end

