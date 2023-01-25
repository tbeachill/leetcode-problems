/*
 * @lc app=leetcode id=67 lang=rust
 *
 * [67] Add Binary
 */

// @lc code=start
impl Solution {
    pub fn add_binary(a: String, b: String) -> String {
        let mut a = a.as_bytes();
        let mut b = b.as_bytes();
        let mut carry = 0;
        let mut result = Vec::new();

        while !a.is_empty() || !b.is_empty() || carry != 0 {
            let mut sum = carry;

            if let Some(&x) = a.last() {
                sum += x - b'0';
                a = &a[..a.len() - 1];
            }
            if let Some(&x) = b.last() {
                sum += x - b'0';
                b = &b[..b.len() - 1];
            }

            carry = sum / 2;
            result.push((sum % 2 + b'0') as char);
        }

        result.into_iter().rev().collect()
    }
}
// @lc code=end

