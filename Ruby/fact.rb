def factorial(n)
  return 1 if n <= 1
  n * factorial(n - 1)
end

print "Enter a number:"
num = gets.chomp.to_i
puts "Factorial of #{num} is #{factorial(num)}"

