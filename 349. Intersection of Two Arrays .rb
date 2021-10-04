# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
require 'set'
def intersection2(nums1, nums2)
  nums1 = nums1.to_set
  nums2 = nums2.to_set
  r = nums1 & nums2
  r. to_a
end

def set_intersection(hash1, hash2)
  r = []
  hash1.each_pair do |k, v|
     if hash2[k] != 0
       [v,hash2[k]].min.times {r << k}
     end
  end
  r
end
def get_hash(nums)
  r = Hash.new(0)
  nums.each do |i|
    r[i] += 1
  end
  r
end
def intersection(nums1, nums2)
  nums1 = get_hash(nums1)
  nums2 = get_hash(nums2)
  l1 = nums1.length
  l2 = nums2.length
  if l1 < l2
    set_intersection(nums1, nums2)
  else
    set_intersection(nums2, nums1)
  end
end
p intersection([4,4,5,9], [9,4,6,9,4])