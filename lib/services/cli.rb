class Cli

    def start
        puts ""
        puts "\t   ---------------------------------------"
        puts "\t   ~~~~ Welcome, Studio Ghibli lover! ~~~~"
        puts "\t   ---------------------------------------"
        puts ""
        puts "\t   ... Loading data from Studio Ghibli ..."
        Api.load_data
        main_menu
    end

    def main_menu
        list_films
        puts "Please select the Ghibli film (1-20) that you want to know more about, or type 'exit':"
        input = gets.chomp
        integer = input.to_i
        puts ""

        if (1..20).include?(integer)
            puts "------------------------------------------------------------------------------------"
            puts "Title: #{GhibliFilm.all[integer-1].title}" 
            puts "Director: #{GhibliFilm.all[integer-1].director}"
            puts "Release date: #{GhibliFilm.all[integer-1].release_date}"
            puts "Description: #{GhibliFilm.all[integer-1].description}"
            puts "------------------------------------------------------------------------------------"
            main_menu
        elsif input.downcase == 'exit'
            exit_program
        else
            puts "Invalid input. Please try again."
            main_menu
        end
    end

    def list_films
        puts ""
        puts "\t\t ~~~ Major Ghibli films ~~~"
        puts ""

        # GhibliFilm.all.each.with_index(1) do |film, i|
        #     puts "#{i}. #{film.title}"
        # end
        # puts ""

        convert_film_title_length

        column1 = 0
        column2 = 10
        while column1 < 10
            puts "#{column1 + 1}. #{GhibliFilm.all[column1].title} \t\t #{column2 + 1}. #{GhibliFilm.all[column2].title}"
            column1 += 1
            column2 += 1
        end
        puts ""
    end

    def exit_program
        puts "Thanks for visiting. Happy Watching!"
        puts "You have exited the program."
    end

    def convert_film_title_length
        GhibliFilm.all.each do |film|
            while film.title.length < 20
                film.title += " "
            end
        end
    end

    
end