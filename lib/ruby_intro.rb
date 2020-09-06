# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  return arr.sort[-2,2].sum
end

def sum_to_n? arr, n
  return false if arr.length < 2
  arr.sort!
  lower = 0
  upper = arr.length - 1
  while lower < upper
    sum = arr[lower] + arr[upper]
    return true if sum == n
    lower+=1 if sum < n
    upper-=1 if sum > n
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  return false if s.length == 0
  return not(s.match?(/^[aeiou\W\d].*/i))
end

def binary_multiple_of_4? s
  return false if not(s.match(/^[01]+$/))
  return "0".concat(s)[-2,2] == "00"
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn,price)
    raise ArgumentError unless !isbn.empty? and price > 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f" % price
  end
end
