=begin
9) Given two arrays A and B, write a function to compute their intersection.

Note: Each element in the result should appear as many times as it shows in both arrays. The result needs to be in sorted order.

Input format

First line contains one integer N denoting the number of elements in array A

Next line contains N integers denoting the elements of array A

Next line contains one integer M denoting the number of elements in array B

Next line contains M integers denoting the elements of array B

Output format
Single line containing the intersection elements of the two arrays in sorted order.

Sample Input 1

4

1 2 2 1

2

2 2

Sample Output 1
2 2

Explanation
Since 2 2 are the only elements present in both the arrays.

Constraints

1<=N,M<=10^5

-10^9<=Ai,Bi<=10^9
=end


# << solution >>


def common_element(arr1, arr2)
  arr1.sort!
  arr2.sort!
  i, j = 0, 0
  result = []


  while i < arr1.size && j < arr2.size
    if arr1[i] == arr2[j]
      result.push(arr1[i])
      i += 1
      j += 1
    elsif arr1[i] < arr2[j]
      i += 1
    else
      j += 1
    end
  end

  result
end



n = gets.to_i

arr1 = gets.split.map(&:to_i)


m = gets.to_i

arr2 = gets.split.map(&:to_i)


puts common_element(arr1, arr2).join(" ")
