class Cli

    def start
        puts "Welcome, Ghibli Studio lover!"
        puts "Loading..."
        Api.load_data
        main_menu
    end

    def main_menu
        puts "Here is a list of major Ghibli films:"
        list_films
        puts "Please select the Ghibli film (1-20) that you want to know more about, or type 'exit':"
        input = gets.chomp.to_i

        case input
        when (1..20)
            puts "Title: #{GhibliFilm.all[input-1].title}" 
            puts "Director: #{GhibliFilm.all[input-1].director}"
            puts "Release date: #{GhibliFilm.all[input-1].release_date}"
            puts "Description: #{GhibliFilm.all[input-1].description}"
            main_menu
        when 0
            exit_program
        end
    end

    def list_films
        GhibliFilm.all.each.with_index(1) do |film, i|
            puts "#{i}. #{film.title}"
        end
    end

    def exit_program
        puts "Thanks for visiting. Happy Watching!"
        puts "You have exited the program."
    end

    
end