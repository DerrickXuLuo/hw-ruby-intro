# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
        return 0
        elsif arr.length == 1
              return arr[0]
              end
    
    if arr[0] > arr[1]
            first = arr[0]
                  second = arr[1]
                    else
                            first = arr[1]
                                  second = arr[0]
                                    end
      
      for i in 2...arr.length
              if arr[i] > first 
                          second = first
                                    first = arr[i]
                                          elsif arr[i] >= second
                                                      second = arr[i]
                                                            end
                end
        
        return (first + second)  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  dict = {}
    for i in 0..(arr.length-1)
          if dict.key?(arr[i])
                  return true
                      end
              dict[n-arr[i]] = i
                end
      return false
end

# Part 2

def hello(name)
  # YOUR CODE HERIE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  arr = ["A", "E", "I", "O", "U"]
  first = s.to_s[0].upcase
  if arr.include? first
    return false
  end
  if first =~ /[[:alpha:]]/
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
            return false
                end
      
      for i in 0...s.length
                if s[i] != "1" and s[i] != "0"
                              return false
                                      end
                    end
          
          if s.to_i(2) % 4 == 0
                    return true
                        end
              return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
      
      def initialize(isbn,price)
            @isbn = isbn
                @price = price
                    if @price <= 0 or @isbn.empty? 
                            raise ArgumentError
                                end
                      end

      def price_as_string
              return "$#{'%.2f' %  @price}"
                end
end
