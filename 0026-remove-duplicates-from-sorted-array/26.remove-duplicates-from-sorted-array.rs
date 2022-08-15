/*
 * @lc app=leetcode id=26 lang=rust
 *
 * [26] Remove Duplicates from Sorted Array
 */

// @lc code=start
impl Solution {
    pub fn remove_duplicates(nums: &mut Vec<i32>) -> i32 {
        let mut seen : Vec<i32> = Vec::new();
        
        nums.retain(|x| match seen.contains(x) {
            true => false,
            _ => {
                seen.push(x.clone());
                true
            }
        });

        return nums.len() as i32;
    }
}
// @lc code=end

