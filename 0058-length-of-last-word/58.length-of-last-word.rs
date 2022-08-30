/*
 * @lc app=leetcode id=58 lang=rust
 *
 * [58] Length of Last Word
 */

// @lc code=start
impl Solution {
    pub fn length_of_last_word(s: String) -> i32 {
        match s.trim().split_ascii_whitespace().last() {
            Some(word) => return word.len() as i32,
            None => return 0,
        }
    }
}
// @lc code=end

