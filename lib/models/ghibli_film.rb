class GhibliFilm
    attr_accessor :title, :director, :release_date, :description

    @@all = []

    def initialize(title, director, release_date, description)
        self.title = title
        self.director = director
        self.release_date = release_date
        self.description = description

        @@all << self
    end

    def self.all
        @@all
    end

end