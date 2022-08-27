--
-- @lc app=leetcode id=586 lang=mysql
--
-- [586] Customer Placing the Largest Number of Orders
--

-- @lc code=start
# Write your MySQL query statement below

  SELECT customer_number
    FROM Orders
GROUP BY customer_number
  HAVING COUNT(order_number) = (
         SELECT MAX(order_count)
           FROM (
                  SELECT COUNT(order_number) order_count
                    FROM Orders
                GROUP BY customer_number
                ) _
         );

-- @lc code=end

