class PotterHouse
    
    attr_reader :id, :house_name, :house_head, :mascot, :house_ghost, :founder, :school, :values, :colors

    @@all = []

    def initialize(id, house_name, house_head, mascot, house_ghost, founder, school, values, colors)
        @id = id
        @house_name = house_name
        @house_head = house_head
        @mascot = mascot
        @house_ghost = house_ghost
        @founder = founder
        @school = school
        # @members = members[Characters.all.each{|c| c.character_id}]
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

    # def house_members
    #     #for each of the member IDs associated with the house, we want to find that member instance, and save it in a array.
    #     # self.map do |id|
    #     #     Characters.all.find {|c| id << c.character_id}
    #         # binding.pry
    #     # @members = Characters.all.select {|c| c.character_id == self.members}
    #     members = []
    #     members = Character.all.map{|c|c.character_id}
    #     PotterHouse << members
    #     binding.pry
    # end
end
