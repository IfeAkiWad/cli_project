class Cli #handling all input and output. pulls together all the rest our classes

    #CLI to alllow user to be able to select whether they want to select by spell.name, spell.type, or spell.effect, or h.house_name = house

    attr_accessor :name, :type, :house_id, :house_name
    def call
        user_input = gets.strip
        
        while user_input != "exit"
            puts "Welcome to Potter House and Spells!"
            space
            sleep 2
            puts "To retrieve the book of spells by name, enter 'spell name'."
            sleep 2
            puts "To retrieve the book of spells by type, enter 'spell type'."
            sleep 2
            puts "To retrieve the book of spells by effect, enter 'spell effect'."
            sleep 2
            puts "To visit the Hogwarts houses, enter 'house'."
            sleep 2
            puts "To leave Potter House and Spells, enter 'exit'."
            sleep 2
            space
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

    def house
        ordered_list = PotterHouse.all.sort_by {|h| h.house_name}
        house_id  = 1
        ordered_list.each do |h|
            puts "#{house_id}. #{h.house_name}"
            house_id += 1
            # member_id #calling the method
            # binding.pry
        end
    end

    # def member_id #creating a method that will allow me to set matching chracter IDs to the member IDs in Potterhouse, that will be called in the #houses method of the Cli class.
    # #    binding.pry
    #     characters = Characters.all.select {|id| id.character_id}
    #     characters
    #     # binding.pry
    # end

    def space
       puts  " "
    end
end