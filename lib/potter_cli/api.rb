
class Api
    URL = "https://www.potterapi.com/v1/"
    API_KEY = ENV["API_KEY"]

    # uri = URI(url) 
    # response = Net::HTTP.get(uri)
    
    def self.get_spells
        response = RestClient.get("#{URL}spells?key=#{API_KEY}")
        data = JSON.parse(response.body)
        data.each do |spell| 
            name =  spell['spell'] 
            type = spell['type']
            effect = spell['effect']
            Potter.new(name, type, effect)
        end
    end
    
    def self.get_houses
        response = RestClient.get("#{URL}houses?key=#{API_KEY}")
        data = JSON.parse(response.body)
        data.each do |house|         
            house_id = house['_id']
            house_name = house['name']
            house_head = house['headOfHouse']
            mascot = house['mascot']
            house_ghost = house['houseGhost']
            founder = house['founder']
            school = house['school']
            members = house['members']
            values = house['values']
            colors = house['colors']
            PotterHouse.new(house_id, house_name, house_head, mascot, house_ghost, founder, school, members, values, colors) 
        end
        binding.pry
    end

    def self.get_characters
        # binding.pry
        response = RestClient.get("#{URL}characters?key=#{API_KEY}")
        data = JSON.parse(response.body)
        binding.pry
        data.each do |character| 
            character_id = character['_id']
            character_name = character['name']
            character_role = character['role']
            character_house = character['house']
            character_school = character['school']
            Characters.new(character_id, character_name, character_role, character_house, character_school)
            # binding.pry
        end
    end 
end