=begin
Given an array of integers arr, return true if and only if it is a valid mountain array.

Recall that arr is a mountain array if and only if:

arr.length >= 3
There exists some i with 0 < i < arr.length - 1 such that:
arr[0] < arr[1] < ... < arr[i - 1] < arr[i]
arr[i] > arr[i + 1] > ... > arr[arr.length - 1]
=end
# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
  i = 0
  n = arr.size - 1
  j = n
  while i < n and arr[i] < arr[i + 1]
    i += 1
  end
  while j > 0 and arr[j] < arr[j - 1]
    j -= 1
  end
  i != 0 and j != n and j == i
end