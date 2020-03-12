# frozen_string_literal: true

#--
# Task 2.
#
# Implement the function to sort array of numbers by amount of '1' in its
# binary representation. Numbers with identical amount of '1's
# should be ordered
# by decimal representation.
#
# E.g.
# 3 = 11, 7 = 111, 8 = 1000, 9 = 1001.
# sort([3,7,8,9]) => [8,3,9,7]  # 1000, 11, 1001, 111
#++

def sort(array)
  array.sort_by { |digit| [digit.digits(2).count(1), digit] }
end

p sort([3, 7, 8, 9])
