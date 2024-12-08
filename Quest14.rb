=begin
14) Problem Description
Given a number n, you have to calculate the factorial of that number.

Note : No inbuilt function to be used

Input format
First line contains an integer - n.

Output format
Print the factorial of the given number.

Sample Input 1
3

Sample Output 1
6

Explanation 1
3! = 3.2.1 = 6

Constraints
0 <= n <= 10
=end


# << solution >>


def factorial(n)
  
  return 1 if n == 0

  
  n * factorial(n - 1)
end


puts "Enter the value of n:"
n = gets.to_i


puts factorial(n)
