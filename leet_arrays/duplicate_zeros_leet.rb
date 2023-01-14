#Question
# Given a fixed-length integer array arr, duplicate each occurrence of zero, shifting the remaining elements to the right.
# Note that elements beyond the length of the original array are not written. Do the above modifications to the input array in place and do not return anything.

# Answer
# example of in-place operations in array
def duplicate_zeros(arr)
  (arr.size - 1).downto(0) { |i| arr.insert(i, 0).pop if arr[i].zero? }
end
