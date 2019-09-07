# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements.
  sum = 0
  
  arr.each do |number|
    sum = sum + number
  end

  return sum
end

def max_2_sum arr
  #Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero.
  #For an array with just one element, it should return that element.
  sorted_array = arr.sort
  sorted_array = sorted_array.reverse
  puts sorted_array
  if sorted_array.length == 0
    return 0
  elsif sorted_array.length == 1
    return sorted_array[0]
  else
    return sorted_array[0] + sorted_array[1]
  end
end

def sum_to_n? arr, n
  #define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n,
  # as arguments and returns true if any two elements in the array of integers sum to n. sum_to_n?([], n) should return false for any value of n, by definition.
  arr.length.times do |i|
    one_val = arr[i]
    two_index = arr.index(n-one_val)
    if two_index != nil && two_index != i and two_index >= 0
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length < 1
    return false
  else
    first_char = s[0]
    first_char = first_char.downcase()
    consonants = "bcdfghjklmnpqrsvwxyz"
    if consonants.include? first_char
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  #since 0 is a multiple of 4
  if s == "0"
    return true
  end
  #makes sure it is atleast 4 or more
  if s.length < 2
    return false
  end

  #makes sure its only binary
  chars = s.split('')
  chars.each do |letter|
    if letter != "0" && letter != "1"
      return false
    end
  end

  #determines if last two numbers are 00, aka multiple of 4
  last_two_digits = s[s.length-2, s.length]
  if last_two_digits == "00"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if price <= 0.0
      raise ArgumentError.new("Invalid Price")
    end
    if isbn.length == 0
      raise ArgumentError.new("Invalid ISBN")
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$#{'%.02f' % @price}"
  end

end
