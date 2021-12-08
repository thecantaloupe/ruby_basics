# Print "Hello World" to the console
puts 'Hello World'

# Interpolate the adjective variable into the Hello World string using #{}
adjective = 'Big Bad'
puts "Hello #{adjective} World"

# Save "Hello World" to a variable. Without changing the letters in your code manually, permanently change "Hello World" to all uppercased letters.

hewo = 'Hello World'
hewo.upcase!
puts hewo

# Nums Array and Enumerables
# With the following array:
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]
# Use .uniqto print the array with all duplicate entries removed
puts nums.uniq
# Next, use .push and .pop, .shift .unshift and .length on the array as you would with javaScript (if you need to add a number, add 5)
nums.push(5)
nums.pop
nums.shift
nums.unshift(5)
puts nums.length
# Use .include? to check if the array contains the number 8
puts nums.include?(8)
# Use .find_all to find all the numbers greater than 10
puts nums.find_all { |i| i > 10 }
# use .all?to check if all the numbers are greater than 0?
puts nums.all? { |i| i > 0 }
# use any? to check if there are any numbers that are divisible by 8
puts nums.any? { |i| i % 8 == 0 }
# use .countto let you know how many numbers are greater than 4
puts nums.count { |i| i > 4 }
# use .each_with_index to print each item times its index
puts nums.each_with_index { |i, index| puts i * index }
# .find the number that is divisible by 7 and 5 and is greater than 0
puts nums.find { |i| i % 7 == 0 and i % 5 == 0 and i > 0 }
# .find_index of the number that is divisible by 5 and 7 and is greater than 0
puts nums.find_index { |i| i % 7 == 0 and i % 5 == 0 and i > 0 }
# return the .first3 numbers
puts nums.first(3)
# return the .last5 numbers
puts nums.last(5)
# .group_by the modulo of 3 ( % 3)
puts nums.group_by { |i| i % 3 }
# use minmax to return the smallest and largest number
puts nums.minmax
# use .reject to return all the numbers that are NOT divisible by 3
puts nums.reject { |i| i % 3 == 0 }
# use .select to return all the numbers divisible by 5
puts nums.select { |i| i % 5 == 0 }

# Color Array
# With the following array:
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']
# Print out a random color.
puts colors.sample
# Print out the colors array in reverse order.
puts colors.reverse
# Print out all of the colors in the array with all capital letters.
puts colors.map(&:upcase)
# Methods
# Write a method named find_areathat finds the area of a rectangle when given values for width and height
def find_area height, width
    height * width
end
puts find_area(2,5)
# Write a method named multiply_each_by_five that will loop over the given nums array below and print each number multiplied by 5
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five arr
    arr.map { |x| x*5 }
end
puts multiply_each_by_five([5,5,6,6,7])

# Methods With a Hash
# Use the following given hashes to solve the problems below
# Hashes

book = {
    title: 'The Great Gatsby',
    author: 'F Scott Fitzgerald',
    year: 1925,
    price: 10
}
  
lamp = {
    type: 'reading',
    brand: 'Ikea',
    price: 25
}
  
table = {
    type: 'bed side',
    brand: 'Crate & Barrel',
    color: 'birch',
    price: 50
}

# Write a method named print_price that will take in any hash and return the price of the item.
def print_price hsh
    hsh[:price]
end
puts print_price(table)

# Write a method named print_item_sums that will take in two hashes and will return the sum of the prices for the items in the hashes.
def print_item_sums hs1, hs2
    hs1[:price] + hs2[:price]
end
puts print_item_sums(table,lamp)

# Solving Problems with Ruby
# Euler Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
def euler max
    a = (1...max).select { |i| i % 5 == 0 or i % 3 == 0 }
    a.inject(:+)
end 
puts euler(1000)

# Primes
require "prime"
# Write a method called check_prime?that will test whether a number is Prime. The method will return true if Prime, false if not.
def check_prime num
    return false if num < 2
    Prime.prime?(num)
end
puts check_prime(9)

# Write another method called get_primesthat will print all the Primes up to an arbitrary limit. For example, if you invoke your method with get_primes 100, it will print all the Prime numbers up to and including 100.

def get_prime num
    Prime.each(num) do |prime|
        p prime 
    end
end
puts get_prime(100)

# This method can call on the previous check_prime? method.

def both_prime num1, num2
    check_prime(num1) and check_prime(num2)
end
puts both_prime(5,2)