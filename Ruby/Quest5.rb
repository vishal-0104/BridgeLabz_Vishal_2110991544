=begin
5) Problem Description
Given an array of n integers and an integer k, rotate the array k times in clockwise order.

Input format
There are three lines of input.

First line contains integer n.

Next line contains n space separated integers.

Next line contains the value of k.

Output format
Print the rotated array.

Sample Input 1
5

1 2 3 4 5

2

Sample Output 1
4 5 1 2 3

Explanation 1
After first rotation array will be 5 1 2 3 4

After second rotation array will be 4 5 1 2 3

Constraints
1 <= n <= 100000

1 <= element of array <= 100000

0 <= k <= 100000

=end

# << solution >>

puts "Enter the size of Array"
n = gets.chomp.to_i

arr = []

puts "Enter elements of Array"
n.times do
  arr << gets.chomp.split.map(&:to_i)
end

puts "Enter how many times to rotate"
k = gets.chomp.to_i

k %=n

rotated_Array = arr.rotate(-k)

puts rotated_Array.join(" ")

