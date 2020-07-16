# Complete the activityNotifications function below.
def activityNotifications(expenditures, d)
  count = 0
  # Frequence array to cover all expense amounts $0-200
  freqs = Array.new(201) {0}
  # Queue to calculate the median for d trailing days only
  queue = []

  expenditures.each_with_index do |exp, i|
    # To start (before d items), populate the queue and freq table only
    if i < d
      queue << exp
      freqs[exp] += 1
    else
      # Get median and increase count if necessary
      count += 1 if exp >= 2 * median(freqs, d)

      # Removing outgoing element from queue and freq array
      freqs[queue.shift] -= 1

      # Add incoming element to queue and freq array
      queue << exp
      freqs[exp] += 1
    end
  end

  count
end

def median(freqs, d)
  center = 0
  middle = nil

  freqs.each_with_index do |freq, index|
    # Tally frequencies until we reach the middle of the distribution
    center += freq

    # Grab the center-most index in case we need to compare two middle values
    middle = index if center >= d / 2 unless middle

    # Once middle reached, if odd number return current index, otherwise average
    return d % 2 == 1 ? index : ((middle + index) / 2.0) if center > d / 2
  end
end