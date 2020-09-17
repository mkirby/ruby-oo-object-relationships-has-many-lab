require "pry"

class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name_string)
        new_song = Song.new(song_name_string)
        new_song.artist = self
    end

    def self.song_count
        #why are we pulling a count of all songs?
        #"existing artists" is confusing language
        Song.all.count

    end

#binding.pry
end
