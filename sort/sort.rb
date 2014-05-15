def bubble_sort(nums)
  sorted = false

  while sorted == false
    sorted = true
    for i in (0..(nums.length - 2)) do
      if nums[i] > nums[i + 1] 
        nums[i], nums[i + 1] = nums[i + 1], nums[i]
        sorted = false
      end
    end
  end
  nums
end

print bubble_sort((0..999).to_a.shuffle!)

