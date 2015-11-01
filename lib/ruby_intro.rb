# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  num = 0
  return 0 if array.length == 0
  array.each do |element|
    num += element
  end
  return num
  # YOUR CODE HERE
end

def max_2_sum(array)
  return 0 if array.length == 0
  return array[0] if array.length == 1
  return array[0] + array[1] if array.length == 2
  plus1 = [array[0],array[1]].max
  plus2 = [array[0],array[1]].min
  (2).upto(array.length - 1) do |index|
    if array[index] > plus1
      plus1 = array[index]
    elsif (array[index]<= plus1 && array[index] >= plus2)
      plus2 = array[index]
    end
  
  end
  # YOUR CODE HERE
  return plus1 + plus2
end

def sum_to_n?(array,n)
  # YOUR CODE HERE
  return false if array.length == 0
  return false if array.length == 1
  return array[0] + array[1] == n if array.length == 2
  
  array_sort = array.sort
  first = 0
  last = array.length - 1
  until first == last do
    return true if array_sort[first] + array_sort[last] == n
    first += 1 if array_sort[first] + array_sort[last] < n
    last -= 1 if array_sort[first] + array_sort[last] > n
  end
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(str)
  # YOUR CODE HERE
  return true if /\A[b-df-hj-np-tv-zB-DF-HJ-NP=TV-Z]/.match(str) != nil
  return false
end

def binary_multiple_of_4?(str)
  # YOUR CODE HERE
  #puts /[10]+/.match(str).length
  return false if /\A[10]+/.match(str) == nil
  return false if /\A[10]+/.match(str).string != str
  return true if str.to_i(2) % 4 == 0
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise(ArgumentError) if isbn.length == 0
    raise(ArgumentError) if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    num = '%.2f' % @price
    return "$"+ num
  end
# YOUR CODE HERE

end
