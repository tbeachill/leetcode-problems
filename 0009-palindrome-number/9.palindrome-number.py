#
# @lc app=leetcode id=9 lang=python3
#
# [9] Palindrome Number
#

# @lc code=start
class Solution:
    def isPalindrome(self, x: int) -> bool:
        x_str = str(x)

        i = 0
        while i < len(x_str) // 2:
            if x_str[i] != x_str[len(x_str) - i-1]:
                return False
            i += 1
        
        return True
# @lc code=end

