class Cli

    def start
        puts "Welcome, Ghibli Studio lover!"
        puts "Loading..."
        Api.load_data
        main_menu
    end

    def main_menu
        list_films
        puts "Please select the Ghibli film (1-20) that you want to know more about:"
        input = gets.chomp

        case input
        when "1"
            puts "Title: #{GhibliFilm.all[1]}" 
            puts "director"
            puts "release date"
            puts "description"
        end
    end

    def list_films
        GhibliFilm.all.each.with_index(1) do |film, i|
            puts "#{i}. #{film.title}"
        end
    end

    
end