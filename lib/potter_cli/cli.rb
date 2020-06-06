class Cli #handling all input and output. pulls together all the rest our classes
    def run
        print_welcome
        Api.get_characters
        main
    end
    
    def main
        prompt_select_characters
        print_characters  
        character_valid?(user_selection)
        print_continue   
    end

    def print_welcome
    puts "Welcome to Potter House!"
    space
    sleep 1
    end 

    def print_error
        space
        puts "invalid selection. Pease try again."
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
       response = Characters.all.find {|c| c.character_name.downcase == user_selection }     
        if response == nil
            print_error
            sleep 1.5
            main
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
    end

    def space
       puts  " "
    end
end