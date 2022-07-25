=begin
You are given an integer array score of size n, where score[i] is the score of the ith athlete in a competition. All the scores are guaranteed to be unique.

The athletes are placed based on their scores, where the 1st place athlete has the highest score, the 2nd place athlete has the 2nd highest score, and so on. The placement of each athlete determines their rank:

The 1st place athlete's rank is "Gold Medal".
The 2nd place athlete's rank is "Silver Medal".
The 3rd place athlete's rank is "Bronze Medal".
For the 4th place to the nth place athlete, their rank is their placement number (i.e., the xth place athlete's rank is "x").
Return an array answer of size n where answer[i] is the rank of the ith athlete.



Example 1:

Input: score = [5,4,3,2,1]
Output: ["Gold Medal","Silver Medal","Bronze Medal","4","5"]
Explanation: The placements are [1st, 2nd, 3rd, 4th, 5th].
Example 2:

Input: score = [10,3,8,9,4]
Output: ["Gold Medal","5","Bronze Medal","Silver Medal","4"]
Explanation: The placements are [1st, 5th, 3rd, 2nd, 4th].
=end
# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
  old = score.clone
  score = score.sort!
  score = score.reverse!
  r = Hash.new()
  n = score.size
  r[score[0]] = "Gold Medal" if n >= 1
  r[score[1]] = "Silver Medal" if n >= 2
  r[score[2]] = "Bronze Medal" if n >= 3
  if n > 3
    (3...n).each do |i|
      r[score[i]] = (i + 1).to_s
    end
  end
  h = []
  old.each do |i|
    h << r[i]
  end
  h
end
def find_relative_ranks(nums)
  rank_hash=Hash.new
  nums.sort.each_with_index {|num,index| rank_hash[num]=(nums.length-index).to_s}
  nums.map do |x|
    case rank_hash[x]
    when "1"
      "Gold Medal"
    when "2"
      "Silver Medal"
    when "3"
      "Bronze Medal"
    else
      rank_hash[x]
    end
  end
end