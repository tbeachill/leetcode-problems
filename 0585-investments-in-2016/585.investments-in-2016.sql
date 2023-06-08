--
-- @lc app=leetcode id=585 lang=mysql
--
-- [585] Investments in 2016
--

-- @lc code=start
# Write your MySQL query statement below

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
  FROM Insurance
 WHERE tiv_2015 IN
        (  SELECT tiv_2015
             FROM Insurance
         GROUP BY tiv_2015
           HAVING COUNT(*) > 1)
   AND CONCAT(lat, lon) IN
        (  SELECT CONCAT(lat, lon)
             FROM Insurance
         GROUP BY CONCAT(lat, lon)
           HAVING COUNT(*) = 1);
-- @lc code=end

