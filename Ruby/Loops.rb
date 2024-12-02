#for loop

arr = [1,2,3,4,5,6]

for i in arr
  print i
  print " "
end

# each loop

arr = [1,2,3,4,5]

arr.each do |i|
  puts i
end

# while loop

n =0
while n<10
  puts n
  n +=1
end

# do while

loop do
  puts "VishalKanojia"

  val = '7'

  if val == '7'
    break
  end

end


# until 
var = 1

until var == 5 do
  puts var
  var +=1
end