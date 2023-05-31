/*
 * @lc app=leetcode id=2 lang=rust
 *
 * [2] Add Two Numbers
 */

// @lc code=start
// Definition for singly-linked list.
// #[derive(PartialEq, Eq, Clone, Debug)]
// pub struct ListNode {
//   pub val: i32,
//   pub next: Option<Box<ListNode>>
// }
//
// impl ListNode {
//   #[inline]
//   fn new(val: i32) -> Self {
//     ListNode {
//       next: None,
//       val
//     }
//   }
// }
impl Solution {
    pub fn add_two_numbers(l1: Option<Box<ListNode>>, l2: Option<Box<ListNode>>) -> Option<Box<ListNode>> {
        let mut result = Some(Box::new(ListNode::new(0)));
        let mut res_ptr = &mut result;
        let (mut l1, mut l2) = (&l1, &l2);
        let empty = ListNode::new(0);

        loop {
            let list_1 = if let Some(list_1) = l1 { list_1 } else { &empty };
            let list_2 = if let Some(list_2) = l2 { list_2 } else { &empty };

            if let Some(ref mut sum) = res_ptr {
                sum.val += list_1.val + list_2.val;
                if sum.val >= 10 {
                    sum.val -= 10;
                    sum.next = Some(Box::new(ListNode::new(1)));
                } else if list_1.next.is_some() || list_2.next.is_some() {
                    sum.next = Some(Box::new(ListNode::new(0)));
                } else {
                    break;
                }
                res_ptr = &mut sum.next;
            }
            l1 = &list_1.next;
            l2 = &list_2.next;
        }
        result
    }
}
// @lc code=end

