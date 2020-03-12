# frozen_string_literal: true

#--
# Task 1.
#
# Implement the function to find the combination of 4 digits in a
# row which gives the max multiplication.
# If object is not a string or there are no combinations found - return nil.
# If combination is found - return it's multiplication result.
#
# E.g.
# max_multiplication('abc12345def') => 120  # 2*3*4*5
# max_multiplication('a1b2c3d4e') => nil
#++

DIGIT_COMBINATION_LENGTH = 4

def max_multiplication(string)
  return unless string.is_a?(String)

  digits_combinations = string.scan(/(?=(\d{#{DIGIT_COMBINATION_LENGTH}}))/)

  return unless digits_combinations.any?

  digits_combinations.flatten.collect do |digit_group|
    digit_group.split('').collect(&:to_i).inject(&:*)
  end.max
end

p max_multiplication('abc12345def')
p max_multiplication('a1b2c3d4e')
