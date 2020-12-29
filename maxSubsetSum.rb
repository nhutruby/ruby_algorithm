# Complete the maxSubsetSum function below.
def max (a,b)
  a>=b ? a : b
end

# Complete the maxSubsetSum function below.
def maxSubsetSum(arr)
  excl=0
  incl=arr.first
  for i in 1..arr.length-1 do
    excl_new=max(incl,excl)
    incl=excl+arr[i]
    excl=excl_new
  end
  max(incl,excl)
end