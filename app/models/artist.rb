class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

    def get_genre_of_first_song
        self.songs.first.genre
    end

    def song_count # Returns the number of songs that an artist has
        self.songs.count
    end

    def genre_count #Returns the number of genres associated with the artist.
        self.genres.count
        # self.genres.map do |x|
        #     x.name
        # end.uniq.count
    end
end
