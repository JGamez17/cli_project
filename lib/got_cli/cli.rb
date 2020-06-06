puts "Cli class loaded"
class Cli 
 
    def call
        winter
        Api.get_houses
        main
    end

    def main
        print_all
        print_selection_prompt
        name = prompt_selection
        house = find_house?(name.to_i - 1)
        print_house_details(house)
    end

    def print_house_details(house)
        system "clear"
            puts "NAME: #{house.name}"
            puts "REGION: #{house.region}"
            puts "COATOFARMS: #{house.coat_of_arms}"
    end

    def print_all
        House.all.each_with_index { |prints, index| puts  "#{index + 1}.) #{prints.name}"}
    end

    def print_selection_prompt
        puts "Please select a house by name for more information"
    end

    def print_error_message
        puts "House not found, please try again"
    end

    def prompt_selection
        gets.chomp
    end

    def find_house?(user_input)
        house = House.all[user_input]
        if !house #if user enters invalid num, house data will not load and error message prints
            print_error_message
            main
        else
            house
        end
    end

    def winter 
        puts "Winter is Coming, learn your houses"
    end
   
end