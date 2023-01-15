# Questions
# Given an integer n, return the number of positive integers in the range [1, n] that have at least one repeated digit.

# Answers

# @param {Integer} n
# @return {Integer}

def num_dup_digits_at_most_n(n)
  [*1..n].select { |num| "#{num}".split('').uniq != "#{num}".split('') }.count
end

####################################################################################

def num_dup_digits_at_most_n(n)
  count = 0

  [*1..n].each do |num|
    next if "#{num}".split('').uniq == "#{num}".split('') }
    count += 1
  end

  count
end

####################################################################################
# Error: Time complexity
