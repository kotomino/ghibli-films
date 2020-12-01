class GhibliFilm
    attr_accessor :title, :director, :release_date, :description

    @@all = []

    def initialize(data)
        self.title = data["title"]
        self.director = data["director"]
        self.release_date = data["release_date"]

        @@all << self
    end

    def self.all
        @@all
    end

end