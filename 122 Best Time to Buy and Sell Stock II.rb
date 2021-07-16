# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  maxprofit = 0
  n = prices.size
  (1...n).each do |i|
    maxprofit += prices[i] - prices[i-1] if prices[i] > prices[i-1]
  end
  maxprofit
end