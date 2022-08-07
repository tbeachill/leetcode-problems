#
# @lc app=leetcode id=14 lang=python3
#
# [14] Longest Common Prefix
#

# @lc code=start
class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        shortest_len = len(min(strs, key=len))

        prefix = ""
        i = 0
        while i < shortest_len:
            for string in strs:                
                if string[i] != strs[0][i]:
                    return prefix

            prefix += string[i]
            i += 1

        return prefix
# @lc code=end

