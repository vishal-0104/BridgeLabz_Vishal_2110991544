=begin
8) Problem Description
You are given a list of n integers, and your task is to calculate the number of distinct values in the list.

Input format
The first input line has an integer n: the number of values.

The second line has n integers x1,x2,…,xn.

Output format
Print number of distinct values in the list.

Sample Input 1
5

2 3 2 2 3

Sample Output 1
2

Explanation
There are two distinct values in the list which are 2 and 3.

Constraints
1 <= n <= 2*10^5

1 <= xi <= 10^9
=end

# << solution >>


def cnt_dist_val(n, arr)
  distinct_values = arr.uniq 
  distinct_values.size       
end


n = gets.to_i


arr = gets.split.map(&:to_i)


puts cnt_dist_val(n, arr)
