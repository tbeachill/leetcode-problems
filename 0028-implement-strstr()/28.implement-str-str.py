#
# @lc app=leetcode id=28 lang=python3
#
# [28] Implement strStr()
#

# @lc code=start
from re import I


class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        n_len = len(needle)

        if n_len == 0:
            return 0

        for i in range(len(haystack) - (n_len - 1)):
            if haystack[i:i+n_len] == needle:
                return i

        return -1
# @lc code=end

