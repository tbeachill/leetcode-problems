#
# @lc app=leetcode id=58 lang=python3
#
# [58] Length of Last Word
#

# @lc code=start
class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        word_list = [word for word in s.split(" ") if word != '']

        return len(word_list[-1])
        
# @lc code=end

