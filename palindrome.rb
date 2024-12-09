def palindrome_number?(num)
  original = num
  reverse = 0


  while num > 0
    digit = num % 10
    reverse = reverse * 10 + digit
    num /= 10
  end

  reverse == original
end


puts "Enter the number"
num = gets.chomp.to_i

if palindrome_number?(num)
  puts "#{num} : is palindrome"
else
  puts "#{num} : is not palindrome"
end