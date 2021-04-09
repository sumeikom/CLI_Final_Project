class Films
    attr_accessor :title, :description, :release_date, :original_title, :director
    @@all = []

    def initialize(film_hash)
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

    def self.find_by_selection(film_title)
        self.all.detect do |film| 
            film.title.downcase == film_title.downcase
        end
    end
end
