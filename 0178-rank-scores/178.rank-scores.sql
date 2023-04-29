--
-- @lc app=leetcode id=178 lang=mysql
--
-- [178] Rank Scores
--

-- @lc code=start
# Write your MySQL query statement below
  SELECT s1.score,
         COUNT(s2.score) AS 'rank'
    FROM Scores s1,
         (SELECT DISTINCT score FROM Scores) s2
   WHERE s1.score <= s2.score
GROUP BY id
ORDER BY score DESC;
-- @lc code=end

