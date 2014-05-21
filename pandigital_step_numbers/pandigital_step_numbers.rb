def pandigital_step_numbers
  step_count = 0
  (123456789..10**40).each do |num|
    digits = num.to_s.split('').map { |number| number.to_i }
    if digits.uniq.size == 10
      i = 0
      step = true
      while i <= digits.length - 2
        if (digits[i] - digits[i + 1]).abs != 1
          step = false
          break
        end
        i += 1
      end
      if step == true
        step_count += 1
      end
    end
  end
 step_count
end

print pandigital_step_numbers
