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

    def self.all
        @@all
    end
end