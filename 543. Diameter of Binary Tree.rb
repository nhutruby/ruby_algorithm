=begin
Given the root of a binary tree, return the length of the diameter of the tree.

The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

The length of a path between two nodes is represented by the number of edges between them.
Example 1:

Input: root = [1,2,3,4,5]
Output: 3
Explanation: 3 is the length of the path [4,2,1,3] or [5,2,1,3].
Example 2:

Input: root = [1,2]
Output: 1
=end
def diameter_of_binary_tree(root)
  return 0 if root.nil?

  @ans = 0
  depth(root)
  return @ans
end

def depth(node)
  return 0 if node.nil?
  l = depth(node.left)
  r = depth(node.right)
  @ans = [l + r, @ans].max
  return [l, r].max + 1
end