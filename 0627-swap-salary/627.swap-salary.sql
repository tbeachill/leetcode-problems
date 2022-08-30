--
-- @lc app=leetcode id=627 lang=mysql
--
-- [627] Swap Salary
--

-- @lc code=start
# Write your MySQL query statement below

UPDATE Salary
SET sex = IF(sex = 'f', 'm', 'f');

-- @lc code=end

