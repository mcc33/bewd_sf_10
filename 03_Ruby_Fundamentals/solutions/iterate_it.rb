require 'pry'

rock_stars = ["Beyonce," "Bob Marley", "Drake," "Rihanna"]
cars = ["Tesla", "Mercedes", "Toyota"]

def the_bee_rockstars
  rock_stars = ["Beyonce," "Bob Marley", "Drake," "Rihanna"]
  cars = ["Tesla", "Mercedes", "Toyota"]
  rock_stars.each do |rock_star| #in between || is an element's pseudoname to iterate through
    puts "#{rock_star}" if rock_star.start_with?("B")#iteration performs a function on each element in the array.
      end
end

def five_letters?
  cars = ["Tesla", "Mercedes", "Toyota", "Ford"]
  cars.each do |car|
    puts "#{car}" if car.length >= 5
  end
end

the_bee_rockstars
five_letters?
