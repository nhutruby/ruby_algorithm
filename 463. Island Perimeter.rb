=begin
You are given row x col grid representing a map where grid[i][j] = 1 represents land and grid[i][j] = 0 represents water.

Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).

The island doesn't have "lakes", meaning the water inside isn't connected to the water around the island. One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.
=end
# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  return 0 if grid.empty?
  height = grid.size
  width = grid[0].size
  answer = 0
  (0...height).each do |i|
    (0...width).each do |j|
      if 1 == grid[i][j]
        perimeter = 4
        # check top
        perimeter -= 1 if i-1 >= 0 && 1 == grid[i-1][j]
        # check right
        perimeter -= 1 if j+1 < width && 1 == grid[i][j+1]
        # check bottom
        perimeter -= 1 if i+1 < height && 1 == grid[i+1][j]
        # check left
        perimeter -= 1 if j-1 >= 0 && 1 == grid[i][j-1]
        answer += perimeter
        p answer
      end
    end
  end

  answer
end
island_perimeter([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]])