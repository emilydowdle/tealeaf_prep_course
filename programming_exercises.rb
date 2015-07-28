#1
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |e|
  puts "#{e}"
end

## other single line

array.each { |e| puts "#{e}" }


#2
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |var|
  if var > 5
    puts "#{var}"
  end
end

3-7

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_array = []

array.select do |var|
  if var % 2 == 1
    odd_array << var
  end
end

odd_array.flatten!
puts odd_array

array << 11
array.unshift(0)
array.insert(4, 3)
array.pop
array.delete_at(4)
array.push(3)
puts array

array2 = [1, 2, 3, 3, 4, 5, 6, 6, 7, 8, 9, 10]

puts array2
puts array2.uniq

8
hash1 = {:4 => 'four'}
hash2 = { 4: 'four'}

9
h = {a:1, b:2, c:3, d:4}
h2 = {e: 5}

puts h[:b]
puts h.merge(h2)

h.select { |k, v| puts v if v < 3.5 }
another way to do it (probably better): h.delete_if { |k, v| v < 3.5}

10
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data2 = Hash[contact_data.each_with_index.map { |value, index| [index, value] }]

# puts contact_data2

merged_contacts = Hash[contacts.each_with_index.map { |k, v| puts k, "#{contact_data2[v]}" if v == nil }]

puts merged_contacts

puts contact_data2

merged_contacts = Hash[contact_data2.map{|k,v| [k, "#{v} #{h2[k]}"]}]

contacts.include(keys)

def merge_data do |k, v|
  if contact_data2[k] == nil


  end


#correct solution hrm? manually entered?
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

12 write a program to do it automatically instead of manually entering data

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


# mapped_contacts = contacts.keys.map.with_index do |k, v|
#   { k => contact_data[v]}
# end
#
# puts mapped_contacts


contacts.keys.map.with_index do |k, v|
  contacts[k] = contact_data[v]
end

puts contacts

solution
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

puts contacts

15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |item| item.start_with?("w") || item.start_with?("s") }

puts arr

16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

b = a.map { |e| e.split(" ").flatten }

puts b

17 what will the following program output? "These hashes are the same!"

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
