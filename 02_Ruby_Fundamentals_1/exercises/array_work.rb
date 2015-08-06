food = [ "broccoli", "carrots", "avocado", "spinach", "eggs" ]

games = [ "monopoly", "chess" ]

sports = [ "baseball", "hockey", "soccer" ]

cars = [ "vw", "ford", "toyota" ]

puts "There are #{food.size} foods in my array"
#1 I listed the number of foods in the array
puts "I just added a duplicate food to my food array:"
puts food << "eggs"
#2 I added 'eggs' to my food array
puts "I will remove the following duplicate from the food array:"
puts food.pop
#3 I removed the last element from the food array
puts "I added two games to the following list: #{games.push("clue", "life")}"

#4 I added two games to the games array
puts "I just removed #{sports.shift} from the sports list"

puts "Lets add Tesla to my cars array: #{cars.unshift("Tesla")}"


puts food.uniq

puts sports.include?("soccer")
