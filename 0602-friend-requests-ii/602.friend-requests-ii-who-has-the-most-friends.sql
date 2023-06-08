--
-- @lc app=leetcode id=602 lang=mysql
--
-- [602] Friend Requests II: Who Has the Most Friends
--

-- @lc code=start
# Write your MySQL query statement below
  SELECT id,
         COUNT(id) AS num
    FROM
        (SELECT requester_id AS id
           FROM RequestAccepted
         UNION ALL
         SELECT accepter_id
           FROM RequestAccepted) a
GROUP BY id
ORDER BY num DESC
   LIMIT 1;
-- @lc code=end

