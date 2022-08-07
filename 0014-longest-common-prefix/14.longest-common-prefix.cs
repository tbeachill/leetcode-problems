/*
 * @lc app=leetcode id=14 lang=csharp
 *
 * [14] Longest Common Prefix
 */

// @lc code=start
public class Solution {
    public string LongestCommonPrefix(string[] strs) {
        int shortestLen = strs.OrderBy(x => x.Length).FirstOrDefault().Length;

        string prefix = "";

        if (strs.Length == 1)
        {
            return strs[0];
        }
        else
        {
            for (int i = 0; i < shortestLen; i++)
            {
                foreach (string s in strs)
                {
                    if (s[i] != strs[0][i])
                    {
                        return prefix;
                    }   
                }
                prefix += strs[0][i];
            }
        }
        
        return prefix;
    }
}
// @lc code=end

