def smallest_multiple
  i = 1
  value = false
  while value == false
   value = true
   (1..20).each { |num| if (i % num == 0) == false; value = false; break; end; }
   break if value == true
   i += 1   
  end
 i
end

puts smallest_multiple
