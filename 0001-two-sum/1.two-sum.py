#
# @lc app=leetcode id=1 lang=python3
#
# [1] Two Sum
#

# @lc code=start
from re import I


class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        numDict = dict()

        x = 0
        while x < len(nums):
            if nums[x] not in numDict:
                numDict[nums[x]] = x
                complement = target - nums[x]

                if complement in numDict:
                    # if the complement is not the value just added, we are done
                    if numDict[complement] != x:
                        return [numDict[complement], x]
                    # else check if the complement exists elsewhere
                    elif complement in nums[x+1:]:
                        return [x, nums[x+1:].index(complement) + (x + 1)]

            x += 1

        return
# @lc code=end

