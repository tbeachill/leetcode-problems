--
-- @lc app=leetcode id=1164 lang=mysql
--
-- [1164] Product Price at a Given Date
--

-- @lc code=start
# Write your MySQL query statement below
SELECT product_id,
       new_price AS price
  FROM Products
 WHERE ( product_id, change_date ) IN ( SELECT product_id,
                                               Max(change_date)
                                          FROM Products
                                         WHERE change_date <= '2019-08-16'
                                      GROUP BY product_id)
UNION
  SELECT product_id,
         10 AS price
    FROM Products
GROUP BY product_id
  HAVING MIN(change_date) > '2019-08-16'
-- @lc code=end

