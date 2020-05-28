class Cli #handling all input and output. pulls together all the rest our classes

    #CLI to alllow user to be able to select whether they want select by spell.name, spell.type, or spell.effect

    # def run
    #     welcome
    #     Api.get_spells
    #     main
    # end

    def call
        user_input = ""
        
        while user input != "exit"
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

    # def spell_name
    # end
    
    # def spell_type
    # end
    
    # def spell_effect
    # end
    
    # def house
    # end






    # def main
    #     print_all
    # end

    # def print_all
    #     i = 1
    #     Potter.all.each do |spell| 
    #         puts spell.name

    #         binding.pry
    #     end
    # end

    # def welcome
    #     "Welcome to Potter Spells!"
    # end
end