=begin
 7) Problem Description
Given a string S containing the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

For an input string to be valid:

Open brackets must be closed by the same type of brackets.( can be closed by ) only

Open brackets must be closed in the correct order. ([]) is valid, ([)] is not.

Note: An empty string is also considered valid.

Input format
One line containing a string with a bracket sequence.

Output format
Return "true" if balanced, false otherwise.

Constraints
0 <= | S | <= 10^5

Sample Input 1
()[]{}

Sample Output 1
true

Explanation 1
The given sequence of brackets is valid as per the rules specified.

Sample Input 2
([)]

Sample Output 2
false

Explanation 2
The given sequence of brackets is invalid as per the rules specified.
 
 
=end


# << Solution >>


def is_valid(s)
  stack = []
  pairs = {'(' => ')', '{' => '}', '[' => ']'}


  s.each_char do |char|
    if pairs.key?(char)
      stack.push(char)
    elsif pairs.values.include?(char)
      return false if stack.empty? || pairs[stack.pop] != char
    end
  end
  

  stack.empty?
end


puts "Enter the string of brackets: "
s = gets.chomp

if is_valid(s)
  puts "true"
else
  puts "false"
end