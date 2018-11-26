class Zoo
    attr_reader :name, :location, :find_by_location
    attr_writer
    
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end 

    def self.all
        @@all
    end
    
    def animals
        Animal.all.select do  |animal|
            animal.zoo == self 
        end
    end

    #revise here ************************************
    def animal_species
        unique = animals.map do |animal|
            animal.species 
        end
        unique.uniq
    end
    
    def find_by_species(species)
        @animals.select do |type|
            type == species
        end
    end

    def self.find_by_location(location)
        selected_zoos = @@all.select do  |zoo|
            zoo.location == location
        end
        zoo_names= selected_zoos.map do |zoo|
                zoo.name
        end
        return zoo_names
    end


    def find_by_species (species)
        animals.select do |animal|
            animal.species == species
        end
    end 

        def animal_nicknames
            animals.map do |el|
                el.nick_name
            end
        end
end


#yes 