require 'Date'

def leap_year?
  year = gets.chomp.to_i
  puts Date.gregorian_leap?(year)
end

def prompt
puts "Check if this year is a leap year:"
end

prompt
leap_year?