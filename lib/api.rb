require "pry"
require 'net/http'

class API 

    def self.get_data 
       response = RestClient.get("https://ghibliapi.herokuapp.com/films")  
        
       films_array = JSON.parse(response)
       films_array.each do |films|
       binding.pry
        Films.new(films)
        
       end
    #    binding.pry
    end
end



# uri = URI('https://ghibliapi.herokuapp.com/films')
# Net::HTTP.get(uri) # => String