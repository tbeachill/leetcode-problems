/*
 * @lc app=leetcode id=35 lang=rust
 *
 * [35] Search Insert Position
 */

// @lc code=start
impl Solution {
    pub fn search_insert(nums: Vec<i32>, target: i32) -> i32 {
        let mut left : usize = 0;
        let mut right = nums.len();

        while left < right {
            let mut mid = ((left + right) as f32 / 2.0).floor() as usize;

            if nums[mid] == target {
                return mid as i32;
            } else if nums[mid] < target {
                left = mid + 1;
            } else {
                right = mid;
            }
        }

        return left as i32;
    }
}
// @lc code=end

