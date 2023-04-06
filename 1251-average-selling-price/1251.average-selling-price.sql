--
-- @lc app=leetcode id=1251 lang=mysql
--
-- [1251] Average Selling Price
--

-- @lc code=start
# Write your MySQL query statement below
  SELECT p.product_id,
         ROUND((SUM(units * price) / SUM(units)), 2) AS average_price
    FROM Prices p
    JOIN UnitsSold u ON p.product_id = u.product_id
   WHERE u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY product_id;
-- @lc code=end

