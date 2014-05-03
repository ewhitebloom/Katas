def fibonacci
 nums = [1,2]
 i = 1
 n = 0
 sum = 0
 until n >= 4000000
   n = nums[i] + nums[i-1]
   nums << n
   i += 1
 end 
 nums.each do |num|
  if num % 2 == 0 
    sum += num
  end
 end
sum
end

print fibonacci
