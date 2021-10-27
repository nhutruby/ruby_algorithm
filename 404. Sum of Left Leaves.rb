#Given the root of a binary tree, return the sum of all left leaves.
#
#
#
# Example 1:
#
#
# Input: root = [3,9,20,null,null,15,7]
# Output: 24
# Explanation: There are two left leaves in the binary tree, with values 9 and 15 respectively.
# Example 2:
#
# Input: root = [1]
# Output: 0
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
# @return {Integer}
def sum_of_left_leaves(root)
  return 0 if root == nil
  if root.left != nil and root.left.left == nil and root.left.right == nil
    return root.left.val + sum_of_left_leaves(root.right)
  else
    return sum_of_left_leaves(root.left) + sum_of_left_leaves(root.right)
  end
end