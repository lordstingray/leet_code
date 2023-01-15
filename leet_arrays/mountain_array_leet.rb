# Question

# Given an array of integers arr, return true if and only if it is a valid mountain array.
# Recall that arr is a mountain array if and only if:
#   arr.length >= 3
#   There exists some i with 0 < i < arr.length - 1 such that:
#   arr[0] < arr[1] < ... < arr[i - 1] < arr[i]
#   arr[i] > arr[i + 1] > ... > arr[arr.length - 1]

# Answer
# @param {Integer[]} arr
# @return {Boolean}
# def valid_mountain_array(arr)
#   return false if arr.length < 3
#   return false if arr.max == arr.last || arr.max == arr.first
# end
arr = [1,7,9,5,4,1,2]
max = arr.max
max_index = arr.index(max)

# arr_fh.any? { |a| a <= arr_fh[-1] if a != arr_fh[-1] } && arr_sh.any? { |a| a > arr_sh[-1] if a != arr_sh[-1] }

# result = arr.all? do |a|
#   i = arr.index(a)

#   if i < max_index
#     a < arr[i+1]
#   elsif max_index < i
#     a > arr[i+1]
#   end
# end
fh = arr[0..(max_index-1)]
sh = arr[(max_index+1)..arr.length]

fh.each_cons(2).all?{|l, r| l <= r}
sh.each_cons(2).all?{|l, r| r <= l}
debugger
