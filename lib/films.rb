class Films
    attr_accessor :title, :description, :release_date
    @@all = []

    def initialize(title, description,release_date)
        @title = title
        @description = description
        @release_date = release_date
        save 
    end 

    def save
        @@all << self
    end

    def self.all
        @all
    end
    
end