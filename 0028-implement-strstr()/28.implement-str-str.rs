/*
 * @lc app=leetcode id=28 lang=rust
 *
 * [28] Implement strStr()
 */

// @lc code=start
use std::cmp::Ordering;

impl Solution {
    pub fn str_str(haystack: String, needle: String) -> i32 {
        let h_len = haystack.len();
        let n_len = needle.len();
        
        match (n_len, h_len < n_len) {
            (0, _) => return 0,
            (_, true) => return -1,
            _ => {},
        }

        let diff = h_len - (n_len - 1);
        for i in 0..diff {
            if &haystack[i..i+n_len] == &needle {
                return i as i32;
            }
        }
        
        return -1;
    }
}
// @lc code=end

