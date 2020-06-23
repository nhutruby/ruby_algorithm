require 'json'
require 'stringio'

# Complete the minimumBribes function below.
def minimumBribes(q)
  bribe = 0
  (q.length - 1).downto(0).each { |j|
    if (q[j] - (j + 1)) > 2
      puts "Too chaotic"
      return
    end

    ([q[j] - 2, 0].max .. j).each { |i|
      if q[i] > q[j]
        bribe += 1
      end
    }

  }
  puts  bribe
end

t = gets.to_i

t.times do |t_itr|
  n = gets.to_i

  q = gets.rstrip.split(' ').map(&:to_i)

  minimumBribes q
end