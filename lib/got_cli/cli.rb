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
        name = vailid_name?(name)
        # binding.pry
    end

    def print_all
        Houses.all.each { |prints| puts "#{prints.name}" }
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

    def vailid_?(name)
        if name == houses.all.name
            print_error_message
            main
        end
        name
    end

    def winter 
        puts "Winter is Coming, learn your houses"
    end
   
end