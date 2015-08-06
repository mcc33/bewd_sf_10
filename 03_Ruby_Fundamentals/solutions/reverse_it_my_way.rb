require 'pry'


#Brick by brick: Step one is we need a word to reverse.
def my_reverse(string)
 char = string.downcase.chars #this transform the string into an array of individual characters
 word = "" #creates an empty string for a new word
 until char.length == 0 #until this condition is met, the following code will be executed.
   word << char.pop #removes last element in array and returns letter into the word variable.
 end
 word
end

def is_palindrome?(word)
  if word.downcase.strip == my_reverse(word).downcase
    "YES!! Palindrome!!"
  else
    "Aww. Not quite a palindrome."
  end

end

#call our method below
puts "Give me a word \n"
word = gets.strip

puts is_palindrome?(word)
