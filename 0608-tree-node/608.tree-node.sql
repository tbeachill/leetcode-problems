--
-- @lc app=leetcode id=608 lang=mysql
--
-- [608] Tree Node
--

-- @lc code=start
# Write your MySQL query statement below
SELECT DISTINCT id,
  CASE
      WHEN p_id IS NULL THEN 'Root'
      WHEN id IN (SELECT p_id FROM tree) THEN 'Inner'
      ELSE 'Leaf'
  END AS type
 FROM Tree;
-- @lc code=end
