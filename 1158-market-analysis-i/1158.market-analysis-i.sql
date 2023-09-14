--
-- @lc app=leetcode id=1158 lang=mysql
--
-- [1158] Market Analysis I
--

-- @lc code=start
# Write your MySQL query statement below
   SELECT u.user_id AS buyer_id,
          u.join_date,
          IFNULL(COUNT(o.order_date), 0) AS orders_in_2019
     FROM Users u
LEFT JOIN Orders o ON u.user_id = o.buyer_id
      AND YEAR(o.order_date) = 2019
 GROUP BY u.user_id
-- @lc code=end

