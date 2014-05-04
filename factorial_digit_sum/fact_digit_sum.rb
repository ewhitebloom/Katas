def factorial_digit_sum(number)
  products = []
  until number == 0
    products << number
    number -= 1
  end
  factorial = products.inject(:*)
  digits = factorial.to_s.split('').map { |number| number.to_i }
  digits.inject(:+)
end

puts factorial_digit_sum(100)
