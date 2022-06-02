/*
 * @lc app=leetcode id=1 lang=csharp
 *
 * [1] Two Sum
 * 
 * Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 * You may assume that each input would have exactly one solution, and you may not use the same element twice.
 * You can return the answer in any order.
 * 
 * Example:
 * Input: nums = [2,7,11,15], target = 9
 * Output: [0,1]
 * Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 * 
 */

// @lc code=start
public class Solution {
    public int[] TwoSum(int[] nums, int target) {
        // Dictionary<value, index>
        Dictionary<int, int> numDict = new Dictionary<int, int>();
        int complement;

        for (int x = 0; x < nums.Length; x++)
        {
            if (!numDict.ContainsKey(nums[x]))
            {
                numDict.Add(nums[x], x);
                complement = target - nums[x];

                if (numDict.ContainsKey(complement))
                {
                    // if the complement is not the value just added, we are done
                    if (numDict[complement] != x)
                    {
                        return new int[2] {numDict[complement], x};
                    }
                    // else check if complement exists elsewhere
                    else if (Array.IndexOf(nums[(x+1)..], complement) > -1)
                    {
                        return new int[2] {x, Array.IndexOf(nums[(x+1)..], complement) + (x + 1)};
                    }
                }
            }
        }
        return null;
    }
}
// @lc code=end
