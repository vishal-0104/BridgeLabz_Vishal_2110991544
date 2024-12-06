max_position = 100
position = 0

while position < max_position
  dice = rand(1..6)
  position += dice

  puts "dice outcome: #{dice}, current posititon is :#{position}"
end
