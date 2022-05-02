=begin
winning card
in a card game, each player will be given a set of random cards.
players will throw on the table their on winning card, the layer with the highest card wins.
a winning card is the card that only exist once in the set of cards and the highest one

Input cards [[5,7,3,9,4,9,8,3,1], [1,2,2,4,4,1], [1,2,3]]
out put 8
=end
def winning_cards(cards)
  arr_max = []
  cards.each do |i|
    hi = Hash.new(0)
    i.each do |j|
      hi[j] += 1
    end
    imax = []
    hi.each do |k, v|
      imax << k if v == 1
    end
    arr_max << imax.max if imax.size >= 1
  end
  p arr_max
  arr_max.size >= 1 ? arr_max.max : -1
end
p winning_cards([[5,7,3,9,4,9,8,3,1], [1,2,2,4,4,1], [1,2,3]])
p winning_cards([[5,5], [2,2]])