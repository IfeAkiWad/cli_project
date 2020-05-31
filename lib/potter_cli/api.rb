
class Api
    URL = "https://www.potterapi.com/v1/"
    API_KEY = ENV["API_KEY"]
    
    # def self.get_characters_by_house(house)
    #     binding.pry
    #     # res = RestClient.get("#{URL}characters?key=#{API_KEY}&house=#{house}")
    #     # data = JSON.parse(res.body)
    # end 

    def self.get_spells
        res = RestClient.get("#{URL}spells?key=#{API_KEY}")
        data = JSON.parse(res.body)
        data.each do |spell| 
            name =  spell['spell'] 
            type = spell['type']
            effect = spell['effect']
            Potter.new(name, type, effect)
        end
    end
    
    def self.get_houses
            # binding.pry
        res = RestClient.get("#{URL}houses?key=#{API_KEY}")
        binding.pry
        data = JSON.parse(res.body)
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
    end
end