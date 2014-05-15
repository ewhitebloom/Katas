require 'pry'

def recursion
 puts "What's your favorite color"
 input = gets.chomp 
 if input.downcase == 'green'
   'Good Choice!'
 elsif input.downcase == 'red'
   'Good Choice!'
 else
   puts 'Your color sucks, please choose a different favorite color:'
   recursion
 end
end

def sort(unsorted,sorted)
  if unsorted[0] != nil 
    addition = unsorted[0]    
    if sorted[0] != nil
      if addition > sorted[-1]
        sorted << addition
        unsorted.shift
        sort(unsorted,sorted)
      end
      i = 0
      while i <= sorted.length
        if addition <= sorted[i]
          sorted.insert(i,addition)
          break
        end
        i += 1
      end
    else 
      sorted << addition
    end
    unsorted.shift
    sort(unsorted,sorted)
  else
    sorted  
  end
end

def factorial(num)
  if num <= 1
    1
  else
    num * factorial(num-1)
  end
end

#puts factorial(300)
print sort((1..7000).to_a.shuffle,[])

