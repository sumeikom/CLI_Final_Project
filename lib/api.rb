require "pry"

class API 
    def self.get_data 
        api_path = RestClient.get('https://ghibliapi.herokuapp.com')
    binding.pry
    end
end