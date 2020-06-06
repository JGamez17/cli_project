class Api 
  BASE_URL = 'https://www.anapioficeandfire.com/api/houses/?"name"'

  def self.get_houses
    response = RestClient.get(BASE_URL)
    houses = JSON.parse(response.body)
  
    houses.each do |house|
      name = house["name"]
      region = house["region"]
      coat_of_arms = house["coatOfArms"]
      
      House.new(name, region, coat_of_arms)
   
    end
  end
end

