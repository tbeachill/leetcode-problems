/*
 * @lc app=leetcode id=67 lang=csharp
 *
 * [67] Add Binary
 */

// @lc code=start
public class Solution {
    public string AddBinary(string a, string b) {
        List<char> result = new List<char>();
        int i = a.Length - 1;
        int j = b.Length - 1;
        int carry = 0;

        while (i >= 0 || j >= 0) {
            int sum = carry;

            if (i >= 0) {
                sum += a[i] - '0';
                i--;
            }
            if (j >= 0) {
                sum += b[j] - '0';
                j--;
            }

            result.Add((char)(sum % 2 + '0'));
            carry = sum / 2;
        }

        if (carry != 0) {
            result.Add((char)(carry + '0'));
        }
        
        result.Reverse();

        return new string(result.ToArray());
    }
}
// @lc code=end

