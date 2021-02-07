# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  result = 0;
    if arr.empty?
        return 0
    end
    
    if arr.length == 1
        return arr[0]
    end
    max1 = arr.max();
    index = arr.index(max1)
    arr.delete_at(index)
    max2 = arr.max();
    result = max1 + max2
    return result
end


def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  end
  
  for i in arr do 
    remainder = n - i
    arr.delete(i)
    if arr.include?(remainder)
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, "
  str.concat(name)
  return str
end


def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0 
    return false
  end
  alphabets = ('A'..'Z')
  if alphabets.include?(s[0].upcase)
    arr = ['A', 'E', 'I', 'O', 'U']
    if arr.include?(s[0].upcase)
      return false
    end
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  rev = s.reverse
  chars = rev.split('')
  sum = 0
  power = 0
  for i in chars do 
    if i == '1'
      sum = sum + 2**power
    end
    power = power + 1
    if i!= '0' && i!= '1'
      return false
    end
  end
  if sum%4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  #This accessor generates the automatic Getter & Setter method for the given item.
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = price 
    if price <= 0
      raise ArgumentError.new("price is null")
    end
    if isbn.empty?
      raise ArgumentError.new("price is empty")
    end
  end
  
  def price_as_string()
    price = "$"+ '%.2f' % @price
    return price
  end
end
