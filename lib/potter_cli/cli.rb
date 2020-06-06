class Cli #handling all input and output. pulls together all the rest our classes
    def run
        print_welcome
        Api.get_characters
        main
    end
    
    def main
        prompt_select_characters
        print_characters  
        #character_name = user_selection
        character_valid?(user_selection)
        #binding.pry 
        print_continue   
        # exit
    end

    def print_welcome
    puts "Welcome to Potter House!"
    space
    sleep 1
    end 

    def print_error
        space
        puts "invalid selection. Pease try again (maybe try capitalizing your selection)."
    end

    def print_characters
        i = 1
        Characters.all.each do |c|
            puts "#{i}. #{c.character_name}"
            i += 1
        end
        space
    end

    def print_character_details(response)
        puts "#{response.character_name}"
        puts "#{response.character_role}"
        puts "#{response.character_house}"
        puts "#{response.character_school}"
        
    end

    def prompt_select_characters
        puts "Search through the list of characters for more details, and then enter name below."
        space
    end

    def user_selection
        puts "Enter here:"
        gets.chomp.downcase
        

    end

    def character_valid?(user_selection)
        # user_input = user_selection
       response = Characters.all.find {|c| c.character_name.downcase == user_selection }     
        #binding.pry
        if response == nil
            print_error
            sleep 1.5
            main
            #binding.pry
        else
            print_character_details(response)
        end

    end

    def print_continue
        puts "Would you like to search again? (y/n)"
        response = gets.chomp
        if response == "y" || response == "yes"
            main
        elsif response == "n" || response == "no"
            exit
        else
            print_error
            print_continue
        end
    end

    def exit
        puts "'Until the very end' – Harry Potter and the Deathly Hallows."
        sleep 1
        puts "Goodbye."
        break
    end

    def space
       puts  " "
    end

        # def call
    #     user_input = gets.chomp
        
    #     while user_input != "exit"
    #         # puts "To retrieve the book of spells by name, enter 'spell name'."
    #         # sleep 2
    #         # puts "To retrieve the book of spells by effect, enter 'spell effect'."
    #         # sleep 2
    #         puts "To visit the Hogwarts houses, enter 'house'."
    #         sleep 2
    #         puts "To leave Potter House, enter 'exit'."
    #         space
    #         puts "What would you like to do?"
    #         user_input = gets.chomp
    #             case user_input
    #             # when "spell name"
    #             #     spell_name
    #             # when "spell effect"
    #             #     spell_effect
    #             when "house"
    #                 print_houses
    #             when "exit"
    #                 exit
    #             end
    #     end
    # end

    # def spell_name
    #     puts "Words are, in my not so humble opinion, our most inexhaustible source of magic, capable of both influencing injury, and remedying it."
    #     space
    #     sleep 2
    #     i = 1
    #     ordered_list = PotterSpells.all.sort_by {|spell| spell.name}
    #     ordered_list.each_with_index do |spell|
    #         puts "#{i}. #{spell.name}"
    #     i += 1
    #     end
    # end

    
    # def spell_effect
    #     puts "I mean, it’s sort of exciting, isn’t it, breaking the rules?"
    #     space
    #     sleep 2
    #     i = 1
    #     ordered_list = PotterSpells.all.sort_by {|spell| spell.effect}
    #     ordered_list.each_with_index do |spell|
    #         puts "#{i}. #{spell.effect}"
    #     i += 1
    #     end
    # end


    #     # def find_house(selection)
#     # def find_house
#     #     # index = selection.to_i - 1
#     #     # PotterHouse.all[index]
#     # end

#     # def member_id #creating a method that will allow me to set matching chracter IDs to the member IDs in Potterhouse, that will be called in the #houses method of the Cli class.
#     #     characters = Characters.all.select {|id| id.character_id}
#     #     characters
#     # end

#         # find_house
#         # print_house_details


end