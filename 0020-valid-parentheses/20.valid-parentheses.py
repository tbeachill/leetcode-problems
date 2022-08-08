#
# @lc app=leetcode id=20 lang=python3
#
# [20] Valid Parentheses
#

# @lc code=start
class Solution:
    def isValid(self, s: str) -> bool:
        par_dict = {
            '(' : ')',
            '[' : ']',
            '{' : '}',
        }
        par_stack = []

        for char in s:
            if char in "([{":
                par_stack.append(char)
            elif len(par_stack) > 0:
                if par_dict[par_stack.pop()] != char:
                    return False
            else:
                return False

        if len(par_stack) > 0:
            return False
        else:
            return True
# @lc code=end

