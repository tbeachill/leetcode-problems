--
-- @lc app=leetcode id=1148 lang=mysql
--
-- [1148] Article Views I
--

-- @lc code=start
# Write your MySQL query statement below

  SELECT DISTINCT author_id AS id
    FROM Views
   WHERE viewer_id = author_id
ORDER BY id ASC;

-- @lc code=end

