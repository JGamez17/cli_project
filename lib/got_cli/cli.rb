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
        house = find_house?(name)
        print_house_details(home)
    end

    def print_house_details(house)
        #pass in house object if found by find_house
        #puts all of the attributes of that house object
    end

    def print_all
        House.all.each { |prints| puts "#{prints.name}" }
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
        array_of_house_objects = House.all
        house = array_of_house_objects.find{|house| house.name == user_input}
        binding.pry
        if !house
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