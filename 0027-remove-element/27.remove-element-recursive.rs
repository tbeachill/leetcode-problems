/*
 * @lc app=leetcode id=27 lang=rust
 *
 * [27] Remove Element
 */

// @lc code=start
impl Solution {
    pub fn remove_element(nums: &mut Vec<i32>, val: i32) -> i32 {
        match nums.iter().position(|&n| n == val) {
            Some(x) => {
                nums.remove(x);
                Self::remove_element(nums, val);
            },
            _ => (),
        }

        return nums.len() as i32;
    }
}
// @lc code=end

