--
-- @lc app=leetcode id=1174 lang=mysql
--
-- [1174] Immediate Food Delivery II
--

-- @lc code=start
# Write your MySQL query statement below
SELECT ROUND(AVG(order_date = customer_pref_delivery_date) * 100, 2) AS immediate_percentage
  FROM Delivery
 WHERE (customer_id, order_date) IN (  SELECT customer_id,
                                              MIN(order_date)
                                         FROM Delivery
                                     GROUP BY customer_id);
-- @lc code=end

