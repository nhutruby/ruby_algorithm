# Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).
#
# For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
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
# @return {Boolean}
def is_symmetric(root)
  return isMirror(root, root)
end
def isMirror(t1, t2)
  return true if t1 == nil and t2 == nil
  return false if t1 == nil or t2 == nil
  return t1.val == t2.val && isMirror(t1.right, t2.left) && isMirror(t1.left, t2.right)
end