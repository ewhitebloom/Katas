require 'bigdecimal/math'
require 'bigdecimal'

include BigMath

def square_root_digital_expansion
  root_decimals = (1..100).map { |num| BigDecimal.new(num).sqrt(100).truncate(100).to_s("F").split('') }
  root_decimals.each { |root| root.shift(2) }
  root_decimals.flatten!.map! { |num| num.to_i }
  root_decimals.inject(:+)
end

puts square_root_digital_expansion

