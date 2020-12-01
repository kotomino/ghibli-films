class Api

    URL = "https://ghibliapi.herokuapp.com/"

    def self.get_data
        uri = URI(URL + "films")
        response = Net::HTTP.get(uri)
        response.body
        binding.pry
    end

end