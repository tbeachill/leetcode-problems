#
# @lc app=leetcode id=67 lang=python3
#
# [67] Add Binary
#

# @lc code=start
class Solution:
    def addBinary(self, a: str, b: str) -> str:
        # add two binary numbers
        a, b = list(a), list(b)
        sum = 0
        result = ''

        while a or b or sum:           
            if a:
                sum += int(a.pop())
            if b:
                sum += int(b.pop())

            result = str(sum % 2) + result
            sum //= 2
        
        return result
# @lc code=end

