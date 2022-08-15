#
# @lc app=leetcode id=26 lang=python3
#
# [26] Remove Duplicates from Sorted Array
#

# @lc code=start
class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        x, y = 0, 1
        while y < len(nums):
            if nums[x] == nums[y]:
                nums.pop(y)
            else:
                x += 1
                y += 1

        return len(nums)
# @lc code=end

