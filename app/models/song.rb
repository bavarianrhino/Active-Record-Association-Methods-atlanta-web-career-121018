class Song < ActiveRecord::Base
    belongs_to :artist
    belongs_to :genre

    def get_genre_name
        self.genre.name
    end

    def drake_made_this # When called, this will assign the song's artist to Drake.
        # self.artist = Artist.find_or_create_by(name: "Drake")
        self.artist = Artist.create(name: "Drake")
    end
end
