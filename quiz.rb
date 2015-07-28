advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")

puts advice


puts (10..100).include?(42)

num = Range.new(10,100)
puts num.include?(42)

famous_words = "and seven years ago..."
first_section = "Four score "

puts famous_words.insert(0, "Four score ")

puts first_section + famous_words

first_section << famous_words

puts first_section

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

eval how_deep

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!
puts flintstones


flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
#best way // solution
puts flintstones.assoc("Barney")

#first try // works but not pretty and convoluted
flintstones_new = flintstones.map.with_index { |key, value| key }

# puts flintstones_new

just_barney = flintstones_new.select { |key, value| key == "Barney" }

puts just_barney


flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_new = Hash.new{}

flintstones.each_with_index{|i, v| flintstones_new[i] = v}

puts flintstones_new

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.include?("Spot")

puts ages.value?("Spot")

puts ages.has_value?("Spot")

puts ages.has_key?("Spot")

puts ages.key?("Spot")

puts ages.member?("Spot")


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

puts ages.values.reduce:+ #inject and reduce do the same thing

beta = ages.each_value { |v| puts v }

ages.each { |a| sum += a }


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.keep_if { |k, v| v < 100 }

puts ages


munsters_description = "The Munsters are creepy in a good way."

# puts munsters_description
puts munsters_description.swapcase
puts munsters_description
puts munsters_description.swapcase!
puts munsters_description

puts munsters_description.downcase
puts munsters_description.upcase


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

puts ages



ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


puts ages.values.sort

ages.sort_by { |a, b| b}



advice = "Few things in life are as important as house training your pet dinosaur."

if advice.include?("dino")
  puts "This includes this substring."
else
  puts "Nope!"
end

if advice =~ /dino/
  puts "This includes this substring."
else
  puts "Nope!"
end

p advice =~ /dino/

puts advice.match("dino")


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones

puts flintstones.find_index("Betty")

p flintstones.index { |name| name[0, 2] == "Be" }


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.map{ |e| e[0..2] }

flintstones.map!{ |e| e[0, 3] }
puts flintstones

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#
# flintstones << "Dino"

puts flintstones

flintstones2 = ["Dino", "Hoppy"]
flintstones.push(flintstones2)
puts flintstones

advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.slice!(0, 39)
puts advice

statement = "The Flintstones Rock!"
puts statement.count('t')

title = "Flintstone Family Members"
puts title.center(40, '-')


10.times{ |x| puts "The Flintstones Rock!".rjust(x + 23) + "\n" }

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }


statement = "The Flintstones Rock"

count = statement.downcase.split('')
count.delete(' ')

alpha = Hash[count.group_by(&:chr).map { |k, v| [k, v.size] }]

puts alpha

#their solutionresult = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

str = "this is the title of a book."

str_split = str.split(' ')
str_split.map! {|x| x.capitalize}

puts str_split.join(' ')


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, demo|
  case demo["age"]
  when  0..17
    demo ["age_group"] = "Kid"
  when  18..65
    demo ["age_group"] = "Adult"
  else
    demo ["age_group"] = "Senior"
  end
end

puts munsters

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

# munster_men = Hash.new[munsters.each.map { |name, demo| puts name, demo["age"] if demo["gender"] == "male" }]
#
# puts munster_men.each_values.sum

munster_men_age = 0

munsters.each do |name, demo|
  munster_men_age += demo["age"] if demo["gender"] == "male"
end

puts munster_men_age

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each.map { |name, demo| puts "#{name} is a #{demo["age"]}-year-old #{demo["gender"]}." }


sentence = "Humpty Dumpty sat on a wall."

puts sentence.split(' ').reverse.join(' ')

def color_valid(color)
    color == "blue" || color == "green"
end

puts color_valid("green")

fail whale for creating uuid method
def uuid()
  p SecureRandom.uuid
end

puts uuid()

#correct answer
def generate_UUID
    characters = []
    (0..9).each { |digit| characters << digit.to_s }
    ('a'..'f').each { |digit| characters << digit }

    uuid = ""
    sections = [8, 4, 4, 4, 12]
    sections.each_with_index do |section, index|
      section.times { uuid += characters.sample }
      uuid += '-' unless index >= sections.size - 1
    end

    uuid
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break if !is_a_number?(word)
  end
  return true
end

dot_separated_words = 0
p dot_separated_ip_address?("10.4.5.11")
