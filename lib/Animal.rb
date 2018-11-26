class Animal
        attr_reader :species, :nick_name 
        attr_accessor :weight, :zoo

        @@all = []

    def initialize(species, weight, nick_name, zoo)
        @species = species
        @weight = weight
        @nick_name = nick_name
        @zoo = zoo
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.find_by_species(species)
        @@all.select do |animal|
            # binding.pry
            animal.species == species
        end
    end

end
