/*
 * @lc app=leetcode id=20 lang=csharp
 *
 * [20] Valid Parentheses
 */

// @lc code=start
public class Solution {
    public bool IsValid(string s) {
        var parDict = new Dictionary<char, char>(){
            {'(', ')'},
            {'[', ']'},
            {'{', '}'}
        };
        Stack<char> parStack = new Stack<char>();

        foreach (char c in s)
        {
            if ("([{".Contains(c))
            {
                parStack.Push(c);
            }
            else if (parStack.Count > 0)
            {
                if (parDict[parStack.Pop()] != c)
                    return false;
            }
            else return false;
        }

        if (parStack.Count > 0) return false;
        else return true;
    }
}
// @lc code=end

