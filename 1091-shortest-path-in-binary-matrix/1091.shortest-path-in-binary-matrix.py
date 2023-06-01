#
# @lc app=leetcode id=1091 lang=python3
#
# [1091] Shortest Path in Binary Matrix
#

# @lc code=start
import collections

class Solution:
    def shortestPathBinaryMatrix(self, grid: List[List[int]]) -> int:
        if grid[0][0] == 1:
            return -1

        directions = [(0, 1), (0, -1), (1, 0), (-1, 0),
                      (1, 1), (1, -1), (-1, 1), (-1, -1)]
        queue = collections.deque([(0, 0)])
        grid[0][0] = 1

        while queue:
            x, y = queue.popleft()
            if x == len(grid) - 1 and y == len(grid[0]) - 1:
                return grid[x][y]

            for dx, dy in directions:
                nx, ny = x + dx, y + dy
                if 0 <= nx < len(grid) and 0 <= ny < len(grid[0]) and grid[nx][ny] == 0:
                    queue.append((nx, ny))
                    grid[nx][ny] = grid[x][y] + 1

        return -1
# @lc code=end

