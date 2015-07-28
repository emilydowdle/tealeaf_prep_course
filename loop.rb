def countdown_odd_numbers(start)
  puts start
  if (start > 0) && (start % 2 == 0)
    countdown_odd_numbers(start -= 1)
  end
end

puts countdown_odd_numbers(10)



# def print_to_100(input)
#   puts input
#   if input < 100
#     print_to_100(input += 1)
#   end
# end
#
# puts print_to_100(20)


# x = gets.chomp.to_i
#
# while
#   x >= 0
#   puts x
#   x -= 1
# end




# x = ["Jon", "Clara", "Emily"]
#
# x.each_with_index { |name, index|
#   print index,':', " ", name, "\n"
# }

# loop do
#   puts "Do you want to stop?"
#   answer = gets.chomp
#   if answer == "STOP"
#     break
#   end
# end



# def print_to_zero(input)
#   puts input
#   if input > 0
#     print_to_zero(input -= 1)
#   end
# end
#
# puts "What number would you like to count down from?"
# x = gets.chomp.to_i
# puts print_to_zero(x)
