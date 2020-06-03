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

    def house_members
        #for each of the member IDs associated with the house, we want to find that member instance, and save it in a array.
        self.members.map do |member_id|
            Characters.all.find {|c| member_id == c.character_id}
            # binding.pry
        end 
        # binding.pry
    end
    # binding.pry
end
