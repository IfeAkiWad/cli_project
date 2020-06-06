
class Api
    URL = "https://www.potterapi.com/v1/"
    API_KEY = ENV["API_KEY"]
    
    # def self.get_spells #requesting GET from url for spells array
    #     response = RestClient.get("#{URL}spells?key=#{API_KEY}")
    #     data = JSON.parse(response.body)
    #     data.each do |spell| 
    #         name =  spell['spell'] 
    #         type = spell['type']
    #         effect = spell['effect']
    #         PotterSpells.new(name, type, effect)
    #     end
    # end
    
    # def self.get_houses #requesting GET from url for houses array
    #     response = RestClient.get("#{URL}houses?key=#{API_KEY}")
    #     data = JSON.parse(response.body)
    #     data.each do |house|         
    #         id = house['_id']
    #         house_name = house['name']
    #         house_head = house['headOfHouse']
    #         mascot = house['mascot']
    #         house_ghost = house['houseGhost']
    #         founder = house['founder']
    #         school = house['school']
    #         # members = house['members']
    #         values = house['values']
    #         colors = house['colors']
    #         PotterHouse.new(id, house_name, house_head, mascot, house_ghost, founder, school, values, colors) 
    #     end
    # end

    def self.get_characters #requesting GET from url for characters array
        response = RestClient.get("#{URL}characters?key=#{API_KEY}")
        data = JSON.parse(response.body)
        data.each do |character| 
            character_id = character['_id']
            character_name = character['name']
            if character['role'] == nil
                character_role = "This character does not have a role."
            else
                character_role = character['role']
            end
            if character['house'] == nil
                character_house = "This character is not a part of a House."
            else
                character_house = character['house']
            end
            if character['school'] == nil
                character_school = "This character does not belong to a School."
            else
                character_school = character['school']
            end
            Characters.new(character_id, character_name, character_role, character_house, character_school)
        end
    end 
end