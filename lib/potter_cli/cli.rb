class Cli #handling all input and output. pulls together all the rest our classes

    #CLI to alllow user to be able to select whether they want to select by spell.name, spell.type, or spell.effect, or h.house_name = house

    attr_accessor :name, :type, :house_id, :house_name
    def call
        user_input = ""
        
        while user_input != "exit"
            puts "Welcome to Potter House and Spells!"
            puts "To retrieve the book of spells by name, enter 'spell name'."
            puts "To retrieve the book of spells by type, enter 'spell type'."
            puts "To retrieve the book of spells by effect, enter 'spell effect'."
            puts "To visit the Hogwarts houses, enter 'house'."
            puts "To leave Potter House and Spells, enter 'exit'."
            puts "What would you like to do?"
            user_input = gets.strip
                case user_input
                when "spell name"
                    spell_name
                when "spell type"
                    spell_type
                when "spell effect"
                    spell_effect
                when "house"
                    house
                end
        end
    end

    def spell_name
        # binding.pry
        ordered_list = Potter.all.sort_by {|spell| spell.name}
        i = 1
        ordered_list.each do |spell|
            puts "#{i}. #{spell.name}"
            i += 1
            # binding.pry
        end
    end

    def spell_type
        ordered_list = Potter.all.sort_by {|spell| spell.type}
        i = 1
        ordered_list.each do |spell|
            puts "#{i}. #{spell.type}"
            i += 1
            # binding.pry
        end
    end
    
    def spell_effect
        ordered_list = Potter.all.sort_by {|spell| spell.effect}
        i = 1
        ordered_list.each do |spell|
            puts "#{i}. #{spell.effect}"
            i += 1
        end
    end

    def houses
        ordered_list = PotterHouse.all.sort_by {|h| h.house_name}
        house_id  = 1
        ordered_list.each do |h|
            puts "#{house_id}. #{h.house_name}"
            house_id += 1
        end
    end

    def member_id
        characters = Characters.all.select {|id| id.character_id}
    end
end