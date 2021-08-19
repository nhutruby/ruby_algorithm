# frozen_string_literal: true

# implement a function to calculate the average distance between three points in a single plane where the coordinates of these points are (x1, y1), (x2, y2), and (x3, y3)
# @param [Object] x1
def two_points_distance(x1, y1, x2, y2)
  Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
end

def average_distance(x1, y1, x2, y2, x3, y3)
  d1 = two_points_distance(x1, y1, x2, y2)
  d2 = two_points_distance(x2, y2, x3, y3)
  d3 = two_points_distance(x3, y3, x1, y1)
  d = (d1 + d2 + d3) / 3
end
p average_distance(2,2,3,3,4,4)