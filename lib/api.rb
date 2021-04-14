require "pry"
require 'net/http'

class API 

    def self.get_data 
       response = RestClient.get("https://ghibliapi.herokuapp.com/films")  
       film_array = JSON.parse(response)
       film_array.each do |film|
        Film.new(film)
       end
    end

    def self.get_data_people
        response = RestClient.get('https://ghibliapi.herokuapp.com/people')  
        people_array = JSON.parse(response)
        people_array.each do |person|
         Person.new(person)
         # binding.pry
        end
    end 
 end


