# if Statement
a = 20

if a>=18
  puts "You are eligible"
end

#if else Statement

b = 18
if b>=18
  puts "You are eligible"
else
  puts "You are not eligible"
end


# if elsif Statement

a = 78 
if a  < 50  
  puts "Student is failed" 
  
elsif a >= 50 && a <= 60  
  puts "Student gets D grade" 
  
elsif a >= 70 && a <= 80  
  puts "Student gets B grade"
   
elsif a >= 80 && a <= 90  
  puts "Student gets A grade"
    
elsif a >= 90 && a <= 100  
  puts "Student gets A+ grade"   
end


# Ternary Statement

var = 5
a = (var > 2) ? true : false 
puts a