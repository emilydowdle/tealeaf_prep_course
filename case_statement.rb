def num_compare(num)
  case num
  when 0..50
    puts "#{number} is between 0 and 50"
  when 51..100
    puts "#{number} is between 51 and 100"
  else
    if num < 0
      puts "You can't enter a negative number!"
    else
      puts "#{number} is above 100"
    end
  end
end

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

num_compare(number)


# puts "What's your lucky number?"
#
# num = gets.chomp.to_i
#
# if num < 0
#   puts "You can't put a number less than 0!"
# elsif num < 49
#   puts "Your lucky number is between 0 and 49."
# elsif num <= 50 || num < 100
#   puts "Your lucky number is between 50 and 99."
# elsif num >= 100
#   puts "Your lucky number is greater than 100."
# else
#   puts "You've got a weird lucky number. Weirdo."
# end
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
# # # # # case_statement.rb
# # # #
# # # # a = 5
# # # #
# # # # answer = case a
# # # # when 5
# # # #   puts "a is 5"
# # # # when 6
# # # #   puts "a is 6"
# # # # else
# # # #   puts "a is neither 5, nor 6"
# # # # end
# # # #
# # # # puts answer
# # # #
# # # # # case_statement.rb <-- refactored with no case argument
# # # #
# # # # a = 5
# # # #
# # # # answer = case
# # # #   when a == 5
# # # #     "a is 5"
# # # #   when a == 6
# # # #     "a is 6"
# # # #   else
# # # #     "a is neither 5, nor 6"
# # # #   end
# # # #
# # # # puts answer
# # #
# # #
# # # b = 5
# # # if a
# # #   puts "how can this be true?"
# # # else
# # #   puts "it is not true"
# # # end
# #
# # (32 * 4) >= 129  #false
# # false != !true #false
# # true == 4  #false
# # false == (847 == '874')
# # (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false  #true
