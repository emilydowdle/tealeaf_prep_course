#exercise 7
x = "hi there"
my_hash = {x: "some value"} #new syntax for ruby 1.9 and newer
my_hash2 = {x => "some value"} #old syntax




#exercise 6
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
#answer
result = {}

words.each do |word|
  key = word.split().sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "-----"
  p v
end




loop

words.each { |e.contains?| e[0], e[1], e[2], e[3] }

order1 = words.each {|e| print e[0], e[1], e[2], e[3] + "\n" }

words.each { |e| e.eql? }



reverse = words.map { |e| e.reverse }

puts reverse




words.each do |x|
  puts x.reverse
end


create 4 arrays with 4 orders of letters


#exercise 5
family = {human: "jon", dog: "loki", baby: "clara"}

puts family.value?("jon")


#exercise 4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person.fetch(:name)

#exercise 3
family = {human: "jon", dog: "loki", baby: "clara"}

family.each do |k, v|
  puts k
end

family.each_key { |value| puts value }

family.each { |key, value| puts "#{value.capitalize} is a #{key}." }


#exercise 2
alpha = {jam: "bread", cookie: "butter"}
beta = {tea: "sandwiches", cake: "flour"}

puts alpha.merge({soda: "water"})
puts alpha

puts beta.merge!({coffee: "sugar"})
puts beta




#exercise 1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
          }

puts family.select{ |k, v| k == :sisters || k == :brothers }
