def is_prime?(num)
  return false if num <= 1
  (2..Math.sqrt(num)).each do |i|
    return false if num % i == 0
  end
  true
end

def nearest(number)
  dist = 1

  loop do
   
    l = number - dist
    r = number + dist

    
    return l if l > 1 && is_prime?(l)
    return r if is_prime?(r)

    dist += 1
  end
end


print "Enter a number: "
number = gets.chomp.to_i


near = nearest(number)


puts "The nearest prime number is #{near}"
