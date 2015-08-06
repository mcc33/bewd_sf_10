
def reverse_it(word)
  string = ""
word.downcase.chars.sort_by! { |string| }
#Word is taken as an argument to the method, and below is accepted via the gets and chomp methods.
#I use sort_by to pass a block that will reverse the array, based on the indices of each respective value in the array
end

puts "Please enter a word to reverse"
word = gets.chomp

puts reverse_it(word)
