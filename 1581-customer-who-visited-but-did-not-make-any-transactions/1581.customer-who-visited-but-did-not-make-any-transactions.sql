--
-- @lc app=leetcode id=1581 lang=mysql
--
-- [1581] Customer Who Visited but Did Not Make Any Transactions
--

-- @lc code=start
# Write your MySQL query statement below
  SELECT DISTINCT v.customer_id,
                  COUNT(v.visit_id) AS count_no_trans
    FROM Visits v
   WHERE v.visit_id NOT IN (SELECT t.visit_id FROM Transactions t)
GROUP BY v.customer_id
ORDER BY count_no_trans DESC;
-- @lc code=end

