require 'pry'

def get_love_interest
  puts "Who do you love? \n"
  love_interest = gets.strip
  capture_love_interest_response(love_interest)
end

def capture_love_interest_response(love_interest)
  puts "Do you think about #{love_interest} ? \n"
  puts "Answer 'Yes' or 'No' \n"
  user_answer = gets.strip.downcase
  puts "My response is #{user_answer}"
  puts get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest)
  case user_answer
    when "yes"
      puts "Cool"
    when "no"
      puts "Yikes"
    else
      puts "That's no good \n"
      puts "Please answer 'Yes' or 'No' \n"
      capture_love_interest_response(love_interest)
    end
end

### This is where we call methods to run our script
get_love_interest
