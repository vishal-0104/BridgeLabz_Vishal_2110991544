def armstrong_number?(num)
  digits = num.to_s.chars.map(&:to_i)
  power = digits.length

  sum = 0

  for digit in digits
    sum += digit**power
  end


  sum == num
end


puts "Enter the number :"
num = gets.chomp.to_i

if armstrong_number?(num)
  puts "#{num} : is Armstrong Number"
else
  puts "#{num} : is not a Armstrong Number"
end