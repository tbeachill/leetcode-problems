/*
 * @lc app=leetcode id=14 lang=rust
 *
 * [14] Longest Common Prefix
 */

// @lc code=start
impl Solution {
    pub fn longest_common_prefix(mut strs: Vec<String>) -> String {
        let shortest_word = strs.iter().map(|x| (x.len(), x)).min().unwrap().1;
        
        let mut i = 0;
        for char in shortest_word.chars() {
            for s in &strs {
                if s.chars().nth(i).unwrap() != char {
                    return shortest_word[0..i].to_string();
                }
            }
            i += 1;
        }
        
        return shortest_word[0..i].to_string();
    }
}
// @lc code=end

