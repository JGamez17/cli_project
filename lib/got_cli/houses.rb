class House
    attr_accessor :name, :region, :coat_of_arms
    @@all = []

    def initialize(name, region, coat_of_arms)
        @name = name
        @region = region
        @coat_of_arms = coat_of_arms
        @@all << self 
    end

    def self.all
        @@all
    end
end