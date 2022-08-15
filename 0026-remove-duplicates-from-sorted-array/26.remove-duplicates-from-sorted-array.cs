/*
 * @lc app=leetcode id=26 lang=csharp
 *
 * [26] Remove Duplicates from Sorted Array
 */

// @lc code=start
public class Solution {
    public int RemoveDuplicates(int[] nums) {
        int i = 1;
        for (int j = 1; j < nums.Length; j++)
        {
            if (nums[j] > nums[j-1])
            {
                nums[i++] = nums[j];
            }
        }

        return i;
    }
}
// @lc code=end

