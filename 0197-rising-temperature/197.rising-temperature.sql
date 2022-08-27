--
-- @lc app=leetcode id=197 lang=mysql
--
-- [197] Rising Temperature
--

-- @lc code=start
# Write your MySQL query statement below

SELECT t.id
FROM Weather t, Weather y
WHERE t.temperature > y.temperature
AND DATEDIFF(t.recordDate, y.recordDate) = 1;

-- @lc code=end

