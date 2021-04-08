class Films
    attr_accessor :title, :description, :release_date, :original_title, :director
    @@all = []

    def initialize(film_hash)
        #binding.pry
        # @title = title
        # @description = description
        # @release_date = release_date
        film_hash.each do |key, value| 
            self.send("#{key}=", value) if self.respond_to?("#{key}=") #this make sures this only looks for things inside attr
        end 
        save 
    end 

    def save
        @@all << self
    end

    def self.all
        @@all 
    end
    
end