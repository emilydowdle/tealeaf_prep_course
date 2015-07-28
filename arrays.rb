#exercise 7 write an array that iterates over an array and builds a new array that is the result of incrementing each value tin the original array by a falue of 2. You should have two arrys at the end of the program, the original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

array_a = [2, 4, 6, 8]

array_b = array_a.map { |a| a + 2 }

p array_a

p array_b

array_b.each { |e| puts "#{e} is how smart Jon is." }


#exercise 3
arr = [["test", "hello", "world"],["example", "mem"]]

print arr.flatten[3]

#exercise 2 # review...got answer wrong
arr = ["b", "a"]
   arr = arr.product(Array(1..3)) # [["b", 1], ["a", 1]...]
   arr.first.delete(arr.first.last) # should delete first and last item on new array

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)




#exercise 1

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include? number #could also put 3

#experiments

alpha = [1, 2, 3, 4, 5]
beta = ['a', 'b', 'c', 'd', 'e']
gamma = [[1, 2, 3], ['a', 'b', 'c']]

print gamma, "\n"

print gamma.product, "\n"

print gamma.flatten, "\n"

print alpha, "\n"

print alpha.pop, "\n"

print alpha, "\n"

alpha.each_with_index { |val, inx| puts "#{inx}. #{val}" }

beta.each { |v| puts "#{v} is not a number." }
