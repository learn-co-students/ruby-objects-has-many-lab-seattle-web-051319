require "pry"
class Artist
    attr_reader :songs
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []

        @@all << self
    end

    def songs
        @songs
    end

    def add_song(song)
        song.artist = self
        @songs << song        
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        @@all.sum {|artist| artist.songs.length}
    end

end
