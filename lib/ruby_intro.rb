# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0;
  if arr.empty?
    return sum
  else
    for x in arr
      sum = sum + x
    end
    return sum
  end  
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum = 0
  if arr.empty?
    return sum
  elsif arr.one?
    for x in arr
      sum = sum + x
    end
    return sum
  else 
    return arr.sort.last(2).sum
  end
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr.empty?
    return false
  elsif arr.one?
    return false
  else  
   return !!arr.combination(2).detect { |x, y| x + y == n }
  end  
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  var = "Hello, " + name
  
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) != nil
    return true
  else
    return false
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
 
  if s =~ /[^01]|^$|\s+/ 
    return false
  elsif s.to_i(2) % 4 == 0
    return true
  end  
end

# Part 3

class BookInStock
# YOUR CODE HERE

  attr_accessor :isbn
	attr_accessor :price
 
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf("$%.2f", @price)
  end  
  
end
