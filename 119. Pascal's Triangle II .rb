# @param {Integer} row_index
# @return {Integer[]}
# Given an integer rowIndex, return the rowIndexth row of the Pascal's triangle.
def get_row(row_index)
  result = [1]
  (1..row_index).each do |k|
    p  (row_index - k + 1)
    p result.last
    p k
    p result.last * (row_index - k + 1) / k
    result << result.last * (row_index - k + 1) / k

    p result
  end
  result
end

def get_row1(k)
  [p=1]+(1..k).map{|i|p=p*(k-i+1)/i}
end
p get_row1(0)