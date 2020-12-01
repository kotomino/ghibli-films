class Api

    URL = "https://ghibliapi.herokuapp.com/"

    def self.load_data
        uri = URI('https://ghibliapi.herokuapp.com/films')
        response = Net::HTTP.get(uri) # This is response.body in string form

        data = JSON.parse(response) # This is an array of hashes
        
        data.each do |ghibli_film_data|
            GhibliFilm.new(ghibli_film_data["title"], ghibli_film_data["director"], ghibli_film_data["release_date"], ghibli_film_data["description"])
        end
    end

end