/*
 * @lc app=leetcode id=21 lang=csharp
 *
 * [21] Merge Two Sorted Lists
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public int val;
 *     public ListNode next;
 *     public ListNode(int val=0, ListNode next=null) {
 *         this.val = val;
 *         this.next = next;
 *     }
 * }
 */
public class Solution {
    public ListNode MergeTwoLists(ListNode list1, ListNode list2) {
        ListNode head = new ListNode(), pos = head;

        while (list1 != null && list2 != null)
        {
            if (list1.val < list2.val)
            {
                pos.next = list1;
                list1 = list1.next;
            }
            else
            {
                pos.next = list2;
                list2 = list2.next;
            }

            pos = pos.next;
        }

        pos.next = list1 ?? list2;

        return head.next;
    }
}
// @lc code=end

