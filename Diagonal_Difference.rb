def diagonalDifference(arr)
  # Write your code here
  primDiag = 0
  secDiag = 0
  n = arr.length
  j = n -1
  (0..n-1).each do |i|
    primDiag += arr[i][i]
    secDiag += arr[i][j]
    j -=1
  end

  return (primDiag - secDiag).abs
end