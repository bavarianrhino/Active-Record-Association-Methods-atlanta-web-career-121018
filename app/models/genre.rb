class Genre < ActiveRecord::Base
    has_many :songs
    has_many :artists, through: :songs

    def song_count # Counts the number of songs within a genre
        self.songs.count
    end

    def artist_count # When called, this will return the number of artists associated with a certain genre.
        self.artists.count
    end

    def all_artist_names #When called, this will return an array of every musician's name.
        self.artists.map do |x|
            x.name
        end
    end
end
