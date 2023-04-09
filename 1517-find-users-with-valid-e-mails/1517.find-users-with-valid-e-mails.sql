--
-- @lc app=leetcode id=1517 lang=mysql
--
-- [1517] Find Users With Valid E-Mails
--

-- @lc code=start
# Write your MySQL query statement below
SELECT *
  FROM Users
 WHERE mail REGEXP '^[:alpha:]{1}[[:alnum:]|._-]*@leetcode[.]com';
-- @lc code=end

