#array input by << operator and push

arr = [1,2,3]

arr << 4
arr.push(5)

puts arr.inspect

arr.each do |n|
  puts "array : #{n}"
end

ascend =arr.sort
descend = arr.sort.reverse

puts ascend.inspect
puts descend.inspect