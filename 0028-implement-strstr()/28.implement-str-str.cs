/*
 * @lc app=leetcode id=28 lang=csharp
 *
 * [28] Implement strStr()
 */

// @lc code=start
public class Solution {
    public int StrStr(string haystack, string needle) {
        if (needle.Length == 0)
            return 0;

        for (int i = 0; i < haystack.Length - (needle.Length - 1); i++)
        {
            if (haystack.Substring(i, needle.Length) == needle)
                return i;
        }

        return -1;
    }
}
// @lc code=end

