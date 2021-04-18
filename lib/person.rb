class Person
    attr_accessor :name, :gender, :age, :eye_color, :hair_color
    @@all = []

    def initialize(person_hash)
        person_hash.each do |key, value| 
            self.send("#{key}=", value) if self.respond_to?("#{key}=") 
        end 
        save 
    end 

    def save
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.find_by_selection(people_attributes)
        self.all.detect do |person| 
            person.name.downcase == people_attributes.downcase
        end
    end
end