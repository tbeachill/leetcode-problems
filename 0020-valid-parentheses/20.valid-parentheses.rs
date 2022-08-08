/*
 * @lc app=leetcode id=20 lang=rust
 *
 * [20] Valid Parentheses
 */

// @lc code=start
use std::collections::HashMap;

impl Solution {
    pub fn is_valid(s: String) -> bool {
        let par_hash = HashMap::from([
            ('(', ')'),
            ('[', ']'),
            ('{', '}'),
        ]);
        let mut par_stack = Vec::<char>::new();

        for c in s.chars() {
            if "([{".contains(c) {
                par_stack.push(c);
            } else if par_stack.len() > 0 {
                if par_hash[&par_stack.pop().unwrap()] != c {
                    return false;
                }
            }
            else {
                return false;
            }
        }

        if par_stack.len() > 0 {
            return false
        } else {
            return true;
        }
    }
}
// @lc code=end

