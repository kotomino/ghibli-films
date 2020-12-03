class Cli

    def start
        puts ""
        puts "\t -------------------------------------------"
        puts "\t   ~~~~ Welcome, Studio Ghibli lover! ~~~~"
        puts "\t -------------------------------------------"
        puts ""
        puts "\t   ... Loading data from Studio Ghibli ..."
        puts "\t\t _____"
        puts "\t\t/     \\"
        puts "\t\tvvvvvvv /|___/|"
        puts "\t\t   I  /O = O  |"
        puts "\t\t   I /_____   |      /|/|"
        puts "\t\t   J/^ ^ ^ \\  |    /00  |    _//|"
        puts "\t\t   |^ ^ ^ ^ |W|   |/^^\\ |   /oo |"
        puts "\t\t    \\m___m__|_|    \\m_m_|   \\mm_|"
        puts ""
       
        Api.load_data
        main_menu
    end

    def main_menu
        list_films
        print "Please select the Ghibli film that you want to know more about (1-20): "
        input = gets.chomp.to_i
        puts ""

        if (1..20).include?(input)
            puts "------------------------------------------------------------------------------------"
            puts "Title: #{GhibliFilm.all[input-1].title}" 
            puts "Director: #{GhibliFilm.all[input-1].director}"
            puts "Release date: #{GhibliFilm.all[input-1].release_date}"
            puts "Description: #{GhibliFilm.all[input-1].description}"
            puts "------------------------------------------------------------------------------------"
            puts ""
            sub_menu
        else
            puts "*** Invalid input. Please try again. ***"
            main_menu
        end
    end

    def list_films
        puts ""
        puts "\t\t ~~~ Major Ghibli films ~~~"
        puts ""

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

    def sub_menu
        print "Continue to learn about more films? (Y/N): "
        input = gets.chomp
        puts ""
        case input.downcase
        when "y"
            main_menu
        when "n"
            exit_program
        else
            puts "*** Invalid input. Please try again. ***"
            puts ""
            sub_menu
        end

    end

    def exit_program
        puts ""
        puts "            ,.  ,."
        puts "            ||  ||"
        puts "           ,''--''."
        puts "          : (.)(.) :"
        puts "         ,'        `. \t Thanks for visiting! You have exited the program."
        puts "         :          :"
        puts "         :          :"
        puts "         `._m____m_,' "
        puts ""
    end

    def convert_film_title_length
        GhibliFilm.all.each do |film|
            while film.title.length < 20
                film.title += " "
            end
        end
    end

end