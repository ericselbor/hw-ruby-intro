# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  add = 0
	len = arr.length
	for index in 0..len-1
		add += arr[index]
	end
	return add
end

def max_2_sum arr
  sorted = arr.sort {|x, y| y <=> x}
	len = arr.length

	if len == 0
		return 0
	elsif len == 1
		return sorted[0]
	else
		return sorted[0] + sorted[1]
	end
end

def sum_to_n? arr, n
  len = arr.length
	
	if len == 0
		return false
	end
	
	index = 0
	result = false
	
	while index < len
		start = index + 1
		for ind in start..len-1
			if n == arr[index] + arr[ind]
				result = true
				break
			end
			
		end
		
		index += 1
		if result == true
			break
		end
	end
	
	return result
end

# Part 2

def hello(name)
  str = String.new("Hello, ")
	str.concat(name)
	return str
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  
  array = s.split(/\s*/) #separate characters from string
	first_letter = array[0] #get first character
	lowerCase = first_letter.downcase #lowercase of first character

	if (/[a-z]/ =~ lowerCase) != 0 #check if character is a letter
		return false
	else
		const = (lowerCase =~ /[^aeiou]/) #check if character is a consonant
		return const == 0
	end
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  end
  
  str = s.split(//)
	len = str.length
	val = 0
	for index in 0..len-1
  
        #verify binary number:
		if str[index] =~ /[10]/
            
            #calulate decimal value:
			if str[index] == 1.to_s
				val += 2**(len-1-index)
			end
            
		else #if not a valid binary value
			return false
		end
	end
    
	mod = val % 4 #see if divisible by 4
    
	return mod == 0
end

# Part 3

class BookInStock
  def initialize isbn, price
	
		#raise exception for empty isbn string:
		raise ArgumentError.new("ISBN is invalid") if isbn.empty? 
		@isbn = isbn
		
		#raise exception for price less than or equal to zero:
		raise ArgumentError.new("Price is invalid") if price <= 0
		@price = price
  end
	
	#getters:
	def isbn
		@isbn
	end
	
	def price
		@price
	end
	
	#setters:
	def isbn=(set_isbn)
		@isbn = set_isbn
	end
	
	def price=(set_price)
		@price = set_price
	end
	
	def price_as_string
		return sprintf("$%2.2f", @price)
	end
end
