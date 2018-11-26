require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("The Bronx Zoo", "dumbo")
zoo2 = Zoo.new("The Central Zoo", "brooklyn")
zoo3 = Zoo.new("The Manhattan Zoo", "bushwick")
zoo4 = Zoo.new("The California Zoo", "bushwick")

# animal1= Animal.new("kangaroo", "100", "happy")
animal2= Animal.new("Monkey", 20, "sam", zoo4 )
animal5= Animal.new("Monkey", 20, "bob", zoo4 )
animal1= Animal.new("Monkey", 20, "pup", zoo4 )
animal3= Animal.new("cat", 20, "pup", zoo4 )

binding.pry
puts "done"
