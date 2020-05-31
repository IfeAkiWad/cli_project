class Potter
    
    attr_reader :name, :type, :effect
   
    @@all = []

    def initialize(name, type, effect)
        @name = name
        @type = type
        @effect = effect
        @@all << self
    end

    def save 
        @@all
    end 

    def self.all
        @@all
    end
end

class PotterHouse
    
    attr_reader :house_id, :house_name, :house_head, :mascot, :house_ghost, :founder, :school, :members, :values, :colors

    @@all = []

    def initialize(house_id, house_name, house_head, mascot, house_ghost, founder, school, members, values, colors)
        @house_id = house_id
        @house_name = house_name
        @house_head = house_head
        @mascot = mascot
        @house_ghost = house_ghost
        @founder = founder
        @school = school
        @members = members
        @values = values
        @colors = colors
        @@all << self
    end

    def save 
        @@all
    end 

    def self.all
        @@all
    end
end

class Characters

    attr_accessor :character_id, :character_name, :character_role, :character_house, :character_school

    @@all = []

    def initialize(character_id, character_name, character_role, character_house, character_school)
       @character_id = character_id 
        @character_name = character_name
        @character_role = character_role
        @character_house = character_house
        @character_school = character_school
        @@all << self
    end

    def save
        @@all
    end

    def self.all
        @@all
    end
end