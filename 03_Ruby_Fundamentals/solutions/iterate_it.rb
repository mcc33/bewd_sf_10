require 'pry'

<<<<<<< HEAD
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
=======

def the_bee_rockstars
rock_stars = ["Beyonce", "Rihanna", "Drake", "Bob Marley"]
  rock_stars.each do |rock_star|
    puts "#{rock_star}" if rock_star.start_with?("B")
  end
end


def five_char_cars
  cars = ["Tesla", "Ford", "Mercedes", "Toyota"]
  cars.each { |car| puts car if car.length >= 5}
end

#call the methods
the_bee_rockstars
five_char_cars
>>>>>>> cff050ee95a82f6e78b50d759bf7a4dec4b5abb0
