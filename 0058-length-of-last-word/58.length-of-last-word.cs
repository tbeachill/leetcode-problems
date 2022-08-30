/*
 * @lc app=leetcode id=58 lang=csharp
 *
 * [58] Length of Last Word
 */

// @lc code=start
public class Solution {
    public int LengthOfLastWord(string s) {
        string[] words = s.Trim().Split(' ');

        return words[words.Length-1].Length;
    }
}
// @lc code=end

