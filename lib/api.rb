require "pry"
require 'net/http'

class API 

    def self.get_data 
       response = RestClient.get("https://ghibliapi.herokuapp.com/films")  
        
       films_array = JSON.parse(response)
       films_array.each do |films|
        Films.new(films)
       end
    end

    def self.get_data_people
        response = RestClient.get('https://ghibliapi.herokuapp.com/people')  
        people_array = JSON.parse(response)
        people_array.each do |person|
         Person.new(person)
        end
    end 
end


