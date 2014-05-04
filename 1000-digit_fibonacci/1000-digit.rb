def fibonacci
  nums = [1,1]
  i = 2
  num = 0
  until num.to_s.split('').length == 1000
    num = nums[i-2] + nums[i-1]
    nums << num
    i += 1
  end
  i
end
 
puts fibonacci
