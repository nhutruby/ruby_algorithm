# Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.
#
# Note: A leaf is a node with no children.
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
  return false if root.nil?

  if (sum - root.val) == 0 && root.left == nil && root.right == nil
    return true
  end

  has_path_sum(root.left, sum - root.val) || has_path_sum(root.right, sum - root.val)
end