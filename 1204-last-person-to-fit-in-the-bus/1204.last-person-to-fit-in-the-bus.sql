--
-- @lc app=leetcode id=1204 lang=mysql
--
-- [1204] Last Person to Fit in the Bus
--

-- @lc code=start
# Write your MySQL query statement below
  SELECT person_name
    FROM (SELECT person_name,
                 SUM(weight) OVER (ORDER BY turn) AS weight
            FROM Queue) AS t
   WHERE weight <= 1000
ORDER BY weight DESC LIMIT 1;
-- @lc code=end

