#
# @lc app=leetcode id=194 lang=bash
#
# [194] Transpose File
#

# @lc code=start
# Read from the file file.txt and print its transposed content to stdout.
head -1 file.txt | wc -w | xargs seq | xargs -n1 -I{} sh -c "cut -d' ' -f{} file.txt | xargs"
# @lc code=end

