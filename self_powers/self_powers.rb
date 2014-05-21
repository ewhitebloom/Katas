
def self_powers
  sum = (1..1000).inject { |sum,n| sum + n**n }
  array = sum.to_s.split('')
  array.last(10).map { |n| n.to_i }.join
end

print self_powers
