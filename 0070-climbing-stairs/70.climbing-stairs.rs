/*
 * @lc app=leetcode id=70 lang=rust
 *
 * [70] Climbing Stairs
 */

// @lc code=start
impl Solution {
    pub fn climb_stairs(n: i32) -> i32 {
        let mut x = 1;
        let mut y = 1;
        
        for _ in 1..n {
            let z = x + y;
            x = y;
            y = z;
        }
        y
    }
}
// @lc code=end

