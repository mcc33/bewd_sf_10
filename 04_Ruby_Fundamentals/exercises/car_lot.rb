#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, is_electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  cars.each do |car|
    puts "This is a #{car[:brand]}. The model is #{car[:model]}"
    puts "The car is electric" unless car[:is_electric?] == false
    #Returns car is electirc unless the is_electric key evaluates to false
  end
end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars) # the asterisk means it accepts an unlimited number of arguments 
  all_cars
end

tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric?: true}
vw = {brand: "Volkswagen", model: "Jetta", year: 2005, price: 40000, is_electric?: false}
ford = {brand: "Ford", model: "Probe", year: 1989, price: 2000, is_electric?: false}
toyota = {brand: "Toyota", model: "Camry", year: 2007, price: 25000, is_electric?: false}
porsche = {brand: "Porsche", model: "Escape", year: 1955, price: 250000, is_electric?: false}

#APPROACH A:
#cars = [] #empty array
#cars.push(tesla, ford, porsche, vw, toyota)
#push method can add multiple elements into the empty array, in this case hashes
#show_all_cars(cars)

#APPROACH B
cars = add_cars(tesla, ford, porsche, vw, toyota)
show_all_cars(cars)
