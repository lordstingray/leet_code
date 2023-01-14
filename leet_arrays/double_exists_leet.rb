# Question
# Given an array arr of integers, check if there exist two indices i and j such that :
#   i != j
#   0 <= i, j < arr.length
#   arr[i] == 2 * arr[j]

# Answer
# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  (arr.count(0) > 1) || (arr & arr.map { |x| x*2 if x != 0 }).any?
end

# ruby include? method can also be used
