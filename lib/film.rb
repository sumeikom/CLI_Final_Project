class Film
    attr_accessor :title, :description, :release_date, :original_title, :director
    @@all = []

    def initialize(film_hash)
        #binding.pry
        film_hash.each do |key, value| 
            self.send("#{key}=", value) if self.respond_to?("#{key}=") #if makes sure we only pull what we want
        end 
        save 
    end 

    def save
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.find_by_selection(film_title)
        self.all.detect do |film| 
            film.title.downcase == film_title.downcase
        end
    end
end
