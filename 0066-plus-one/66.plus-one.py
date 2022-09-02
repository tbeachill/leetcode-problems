#
# @lc app=leetcode id=66 lang=python3
#
# [66] Plus One
#

# @lc code=start
class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        i = 1
        while i <= len(digits):
            if digits[-i] != 9:
                digits[-i] += 1
                return digits
                
            digits[-i] = 0
            i += 1

        return [1] + digits
# @lc code=end

