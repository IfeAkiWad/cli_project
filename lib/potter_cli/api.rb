
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
        data.each do |spell| #giant array of hashes. each hash is a spell--spell will be our argument.
            name =  spell['spell'] # reading the values of each key: spell, type, and effect
            type = spell['type']
            effect = spell['effect']
            Potter.new(name, type, effect)
        end
        binding.pry
    end
end