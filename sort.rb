# Sort the array from lowest to highest
#in ruby, sort works by repeatedly comparing two elements 
#and figuring out which one comes before the other
def sort(arr)
  #arr.sort
  #ascending order
  arr.sort do |a,b| a <=> b end
end

def sort(arr)
  arr.sort do |a,b| b <=> a end
end

# Find the maximum 
def maximum(arr)
  #sort(arr).last
  arr.reduce {|largest,num| if num > largest then num else largest end }
end

def minimum(arr)
  #sort(arr).first
  arr.reduce {|smallest,num| if num < smallest then num else smallest end}
end

#expect a chnage
 
# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = minimum([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"

 
# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"
result = minimum([])
puts "min on empty set is: #{result.inspect}"
 
result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"
 
result = maximum([6])
puts "max of just 6 is: #{result}"