def digit_factorial
  digit_factorials = []
  (3..7049).each do |num|
    number = num.to_s.split('')
    number.map! { |digit| digit.to_i }
    factorialized = []
    number.each do |num|
      factorialized << factorial(num)
    end
    self_factorial = factorialized.inject(:+)
    if self_factorial == num
      digit_factorials << num
    end
  end
  digit_factorials
end

def factorial(num)
  if num <= 1
    1
  else 
    num = num * factorial(num - 1)
  end
end

puts digit_factorial
