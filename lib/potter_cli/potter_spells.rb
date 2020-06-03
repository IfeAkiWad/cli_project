class PotterSpells
    
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