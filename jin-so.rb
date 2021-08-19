# @param {Integer} n, n >= 1
# @param {Integer} s, 2 <= S <= n*2
# @return {[Integer[], Integer[]]}
def sum(s, n)
  return [[],[]] if s < 2 or s > n*2 or n == 0
  r1 = []
  r2 = []
  if s <= n + 1
    m = s - 1
    (0...m).each do |i|
      r1 << s - (i + 1)
      r2 << i + 1
    end
  else
    m = 2*n - s + 1
    (0...m).each do |i|
      r1 << s - (n - i)
      r2 << n - i
    end
  end
  [r1,r2]
end

require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

  def test_simple
    # n = 6
    assert_equal(sum(1,6),  [[],[]])
    assert_equal(sum(13,6),  [[],[]])
    assert_equal(sum(2,6),  [[1],[1]])
    assert_equal(sum(3,6),  [[2,1],[1,2]])
    assert_equal(sum(5,6),  [[4,3,2,1],[1,2,3,4]])
    assert_equal(sum(6,6),  [[5,4,3,2,1],[1,2,3,4,5]])
    assert_equal(sum(7,6),  [[6,5,4,3,2,1], [1,2,3,4,5,6]])
    assert_equal(sum(8,6),  [[2,3,4,5,6], [6,5,4,3,2]])
    assert_equal(sum(9,6),  [[3,4,5,6], [6,5,4,3]])
    assert_equal(sum(12,6),  [[6], [6]])
    # n = 4
    assert_equal(sum(4,4),  [[3,2,1],[1,2,3]])
    assert_equal(sum(5,4),  [[4,3,2,1],[1,2,3,4]])
    assert_equal(sum(6,4),  [[2,3,4],[4,3,2]])
    # n = 3
    assert_equal(sum(3,3),  [[2,1],[1,2]])
    assert_equal(sum(4,3),  [[3,2,1],[1,2,3]])
    assert_equal(sum(5,3),  [[2,3],[3,2]])
  end
end

