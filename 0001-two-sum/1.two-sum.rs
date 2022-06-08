/*
 * @lc app=leetcode id=1 lang=rust
 *
 * [1] Two Sum
 */

// @lc code=start
use std::collections::HashMap;
use std::convert::TryInto;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut numDict = HashMap::<i32, i32>::new();
        let mut complement : i32;
        let mut i = 0;

        for num in &nums {
            if !numDict.contains_key(&num) {
                numDict.insert(*num, i);
                complement = target - num;

                if numDict.contains_key(&complement) {
                    // if the complement is not the value just added, we are done
                    if numDict[&complement] != i {
                        return vec![numDict[&complement], i]
                    // else check if complement exists elsewhere
                    } else if nums[i as usize+1..].contains(&complement) {
                        return vec![i, (nums[i as usize+1..].iter().position(|&r| r == complement).unwrap() + i as usize + 1).try_into().unwrap()]
                    }
                }
            }
            i += 1;
        }
        return vec![0,0]
    }
}
// @lc code=end
