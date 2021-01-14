# Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
#
# The number of elements initialized in nums1 and nums2 are m and n respectively. You may assume that nums1 has enough space (size that is equal to m + n) to hold additional elements from nums2.
#
#
#
# Example 1:
#
# Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
# Output: [1,2,2,3,5,6]
# Example 2:
#
# Input: nums1 = [1], m = 1, nums2 = [], n = 0
# Output: [1]
# Brute force
# O((n+m)log(n+m)) time
# O(1) space
def merge(nums1, m, nums2, n)
  nums1[m..-1] = nums2
  nums1.sort!
end
# Optimal
# O(N) time
# O(1) space

def merge(nums1, m, nums2, n)
  iter = nums1.length - 1
  m -= 1
  n -= 1

  while n >= 0
    if m >= 0 && nums1[m] > nums2[n]
      nums1[iter] = nums1[m]
      m -= 1
    else
      nums1[iter] = nums2[n]
      n -= 1
    end

    iter -= 1
  end
end