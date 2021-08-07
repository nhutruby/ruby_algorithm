=begin
Suppose Andy and Doris want to choose a restaurant for dinner, and they both have a list of favorite restaurants represented by strings.

You need to help them find out their common interest with the least list index sum. If there is a choice tie between answers, output all of them with no order requirement. You could assume there always exists an answer.



Example 1:

Input: list1 = ["Shogun","Tapioca Express","Burger King","KFC"], list2 = ["Piatti","The Grill at Torrey Pines","Hungry Hunter Steakhouse","Shogun"]
Output: ["Shogun"]
Explanation: The only restaurant they both like is "Shogun".
Example 2:

Input: list1 = ["Shogun","Tapioca Express","Burger King","KFC"], list2 = ["KFC","Shogun","Burger King"]
Output: ["Shogun"]
Explanation: The restaurant they both like and have the least index sum is "Shogun" with index sum 1 (0+1).
Example 3:

Input: list1 = ["Shogun","Tapioca Express","Burger King","KFC"], list2 = ["KFC","Burger King","Tapioca Express","Shogun"]
Output: ["KFC","Burger King","Tapioca Express","Shogun"]
Example 4:

Input: list1 = ["Shogun","Tapioca Express","Burger King","KFC"], list2 = ["KNN","KFC","Burger King","Tapioca Express","Shogun"]
Output: ["KFC","Burger King","Tapioca Express","Shogun"]
Example 5:

Input: list1 = ["KFC"], list2 = ["KFC"]
Output: ["KFC"]
=end
def find_restaurants(list1, list2)
  new_arry = list1 & list2
  cals = []
  output = []
  new_arry.each{|v| cals << list1.index(v) + list2.index(v)}
  cals.each_with_index do |v,index|
    output << new_arry[index] if v == cals.min
  end
  output.sort
end
# fast
def find_restaurants2(list1, list2)
  interest = {}
  matches = {}
  list1.each_with_index do |restaurant, index|
    interest[restaurant] = index
  end
  list2.each_with_index do |restaurant, index|
    if interest[restaurant]
      matches[restaurant] = interest[restaurant] + index
    end
  end
  lowest_index_sum = matches.values.min
  matches.keys.select{|match| lowest_index_sum == matches[match]}.sort
end
def find_restaurant3(list1, list2)
  hash1 = {}

  #key is the resturant, value is the index
  list1.each_with_index {|key, value| hash1[key] = value}


  ans = [nil]
  sum = 1.0/0.0 #infinity

  list2.each_with_index do |name, idx|
    if hash1.has_key?(name)
      total = hash1[name] + idx
      if total < sum
        ans.clear
        ans << name
        sum = total
      elsif total == sum
        ans << name
      end
    end
  end

  ans
end
#p find_restaurants(['a','b', 'c'], ['c','a'])
list1 = ["Shogun", "Tapioca Express", "Burger King", "KFC"]
list2 = ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
p find_restaurants(list1, list2)
p find_restaurants2(list1, list2)
list1 = ["Shogun", "Tapioca Express", "Burger King", "KFC"]
list2 = ["KFC", "Shogun", "Burger King"]
p find_restaurants(list1, list2)
p find_restaurants2(list1, list2)
list1 = ["Shogun", "Tapioca Express", "Burger King", "KFC"]
list2 = ["KFC", "Burger King", "Tapioca Express", "Shogun"]
p find_restaurants(list1, list2)
p find_restaurants2(list1, list2)
list1 = ["Shogun", "Tapioca Express", "Burger King", "KFC"]
list2 = ["KNN", "KFC", "Burger King", "Tapioca Express", "Shogun"]
p find_restaurants(list1, list2)
p find_restaurants2(list1, list2)
list1 = ["KFC"]
list2 = ["KFC"]
p find_restaurants(list1, list2)
p find_restaurants2(list1, list2)