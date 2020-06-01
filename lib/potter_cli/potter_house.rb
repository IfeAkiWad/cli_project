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

    def self.house_members(house_id)
        #for each of the member IDs associated with the house, we want to find that member instance, and save it in a array.
        members = []
        house = PotterHouse.all.find {|h| h.house_id}
        house.members.each do |member|
            members.push(Characters.all.find(member))
        end 
        members
    end
end
