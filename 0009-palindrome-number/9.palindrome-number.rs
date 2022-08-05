/*
 * @lc app=leetcode id=9 lang=rust
 *
 * [9] Palindrome Number
 */

// @lc code=start
impl Solution {
    pub fn is_palindrome(x: i32) -> bool {
        let xStr = x.to_string();
        let xLen = xStr.chars().count();

        for i in 0..(xLen as f32 / 2.0).floor() as usize {
            if xStr.as_bytes()[i] != xStr.as_bytes()[xLen - i-1] {
                return false;
            } 
        }

        return true;
    }
}
// @lc code=end

