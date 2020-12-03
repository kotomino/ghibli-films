# Project 1 - Studio Ghibli Films CLI

## Overview 

This CLI program lists out all available Studio Ghibli films from the Ghibli API. Then it gives the user the option to learn more information about the movie that he/she selects. 

### Gemfile

These files set up some tools and gems for our project and can mostly be
ignored. Make sure to run `bundle` before starting this project so that you have
all the required gems.

### `bin/run`

This is our main executable and will be how we initialize and start the program. Run `./bin/run` in the terminal to start the program.

### `lib/models/ghibli_film.rb`

Our main `GhibliFilm` class is defined here.

### `lib/services/api.rb`

The API endpoint that the program is using to load the Ghibli Studio films' data is defined here. The Api class takes the url and pulls in the data as a string, and then parses it into an array of hashes. From there, the class iterates through each film data hash and initializes them as objects in the Ghibli Film class.

### `lib/services/cli.rb`

The Cli class has all the logic required to run through the program. 



## Helper Methods

The next bunch of methods we will be describing are helper methods - methods
that will be called by other methods in your code. This keeps our code [DRY] and
well encapsulated &mdash; each method has a single responsibility &mdash; which
makes the code easier to maintain and expand.

[DRY]: https://en.wikipedia.org/wiki/Don%27t_repeat_yourself

### `#main_menu`

This method is called within the #start method, after the API data is loaded. It initially calls the #list_films method and prompts the user for an input. If the input is a number in the range between 1 to 20, the program will display the title, director, release date, and description for the associated Ghibli film. Then the user is directed to the "sub menu." 

If the user's input is invalid, the #main_menu method circles back and calls itself, prompting the user to input another value again.

### `list_films`

This method lists out all 20 movies, while splitting the list into 2 separate columns. It calls the #convert_film_title_length method so that the list is not shifted due to differences in title length.

### `sub_menu`

This method is called after the user puts in a valid input in the #main_menu. They are prompted to either learn about another movie, or to exit the program. Notice that the user can only exit through the #sub_menu and not in the #main_menu, forcing the user to input a valid value (1-20) at least once.





