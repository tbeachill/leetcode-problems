--
-- @lc app=leetcode id=1633 lang=mysql
--
-- [1633] Percentage of Users Attended a Contest
--

-- @lc code=start
# Write your MySQL query statement below
  SELECT contest_id,
         ROUND(COUNT(contest_id) / (SELECT COUNT(DISTINCT user_id)
                                      FROM Users)
               * 100, 2) AS percentage
    FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;
-- @lc code=end

