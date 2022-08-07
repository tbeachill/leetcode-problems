/*
 * @lc app=leetcode id=13 lang=rust
 *
 * [13] Roman to Integer
 */

// @lc code=start
use std::collections::HashMap;

impl Solution {
    pub fn roman_to_int(s: String) -> i32 {
        let rom_hash = HashMap::from([
            (b'I', 1),
            (b'V', 5),
            (b'X', 10),
            (b'L', 50),
            (b'C', 100),
            (b'D', 500),
            (b'M', 1000),
        ]);

        let mut total = 0;
        let rom_bytes = s.as_bytes();
        let mut i = 0;
        while i < s.len() {
            if i != s.len() - 1 && rom_hash[&rom_bytes[i+1]] > rom_hash[&rom_bytes[i]] {
                total += rom_hash[&rom_bytes[i+1]] - rom_hash[&rom_bytes[i]];
                i += 2;
            } else {
                total += rom_hash[&rom_bytes[i]];
                i += 1;
            }
        }

        return total;
    }
}
// @lc code=end

