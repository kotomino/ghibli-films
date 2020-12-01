class Api

    URL = "https://ghibliapi.herokuapp.com/"

    def self.load_data
        uri = URI('https://ghibliapi.herokuapp.com/films')
        response = Net::HTTP.get(uri)

        data = JSON.parse(response)
        
    end

end