# Given an array where elements are sorted in ascending order, convert it to a height balanced BST.
#
# For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return nil if nums.empty?

  index = nums.size / 2
  node = TreeNode.new(nums[index])

  if index != 0
    node.left  = sorted_array_to_bst(nums[0..index-1])
    node.right = sorted_array_to_bst(nums[index+1..-1])
  end

  node
end