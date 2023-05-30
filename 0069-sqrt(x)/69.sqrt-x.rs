/*
 * @lc app=leetcode id=69 lang=rust
 *
 * [69] Sqrt(x)
 */

// @lc code=start
impl Solution {
    pub fn my_sqrt(x: i32) -> i32 {
        let mut n = x;
        let mut c = 0;
        let mut d = 1 << 30;

        while d > n {
            d >>= 2;
        }

        while d != 0 {
            if n >= c + d {
                n -= c + d;
                c = (c >> 1) + d;
            } else {
                c >>= 1;
            }
            d >>= 2;
        }
        c
    }
}
// @lc code=end

