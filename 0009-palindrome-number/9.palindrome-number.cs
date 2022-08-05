/*
 * @lc app=leetcode id=9 lang=csharp
 *
 * [9] Palindrome Number
 */

// @lc code=start
public class Solution {
    public bool IsPalindrome(int x) {
        string xStr = x.ToString();

        for (int i = 0; i < Math.Floor(xStr.Length / 2.0); i++)
        {
            if (xStr[i] != xStr[xStr.Length - i-1])
                return false;
        }

        return true;
    }
}
// @lc code=end

