

class Api 
  BASE_URL = 'https://www.anapioficeandfire.com/api/houses/?"name"'

  def self.get_houses
    response = RestClient.get(BASE_URL)
    houses = JSON.parse(response.body)
    # binding.pry
    houses.each do |house|
      puts house["name"]
      name = house["name"]
      
      House.new(name)
   
    end
  end
end

