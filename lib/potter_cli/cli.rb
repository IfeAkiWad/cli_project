class Cli #handling all input and output. pulls together all the rest our classes
    def run
        welcome
        Api.get_spells
        main
    end

    def main
        print_all
    end

    def print_all
        #here I want to be able to have the information to be accessible based on how the user inquires
        Potter.all.each do |spell| 
            
            binding.pry
        end
    end

    def welcome
        "Welcome to Potter Spells!"
    end
end