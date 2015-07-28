#regex -- regular expressions
def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")


#experiments with Ruby modules
alpha = Math::PI * 50
puts alpha

beta = Math.sqrt(40)
puts beta
puts beta.round(2)

day = Time.new(1986, 6, 8)
puts day.monday?
puts day.sunday?

#pointers
a = [1, 2, 3, 3]
b = a

p a
p b

c = a.uniq

p a
p c

d = a.uniq!

p b
p a

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
puts a

def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
puts a

#blocks and procs
def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

def take_block(number, &block)
  block.call
end

[1, 2, 3, 4, 5].each do |number|
  take_block number do
    puts "Block being called in the method! #{number}"
  end
end

talk = Proc.new do
  puts "I am talking."
end

talk.call

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)


# exception example
names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)

def greet(person)
  puts "Hello, " + person
end

greet("John")
greet(1)

EXERCISES FOR CHAPTER

def match?(string)
  if /lab/.match(string)
    puts "This word has the substring 'lab'."
  else
    puts "Nope! No 'lab' here!"
  end
end

match?("laboratory")
match?("laboratory")
match?("experiment")
match?("Pans Labyrinth")
match?("elaborate")
match?("polar bear")


array = ["laboratory", "dog"]

does not work, need to figure out why
def match?(array)
  if /lab/.match?(array.each)
    puts "Yep, this word has the substring 'lab'."
  else
    puts "Bummer!"
  end
end

match?(array)


def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
