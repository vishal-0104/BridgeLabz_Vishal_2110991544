=begin
4) Given a matrix of dimensions n x n having elements 1 to n*n distinct elements, check whether the matrix is magic square or not.

Magic square is a square that has the same sum along all rows, columns and diagonals.

Input format
There are n + 1 lines of input.

First line contains integer n.

The next n lines contain n space separated elements.

Output format
Print "Yes" if it is a magic square , "No" otherwise.

Sample Input 1
3

4 9 2

3 5 7

8 1 6

Sample Output 1
Yes

Explanation 1
All rows, columns and diagonals have sum 15.

Constraints
1 <= n <= 100

1 <= element of matrix <= n x n


=end

# << solution >>

puts "Enter the size of matrix"

n = gets.chomp.to_i

matrix = []

n.times do
  matrix << gets.chomp.split.map(&:to_i)
end

magicSquareSum = matrix[0].sum

def is_magic_square?(matrix,n,magicSquareSum)
  (0...n).each do |i|
    return false if matrix[i].sum != magicSquareSum
    return false if matrix.map {|row| row[i]}.sum != magicSquareSum
  end

  return false if (0...n).map { |i| matrix[i][i] }.sum != magicSquareSum

  return false if (0...n).map {|i| matrix[i][n-i-1]}.sum != magicSquareSum
  
  true
end

puts is_magic_square?(matrix, n, magicSquareSum) ? "Yes" : "No"