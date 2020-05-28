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
    
    attr_reader :house_id, :house_name, :mascot, :house_ghost, :founder, :school, :members, :values, :colors

    @@all = []

    def initialize(house_id, house_name, mascot, house_ghost, founder, school, members, values, colors)
        @house_id = house_id
        @house_name = house_name
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