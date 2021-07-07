class Song
    attr_reader :name 
    attr_accessor :artist

    # @@all is a collection of all the songs ever made
    @@all = []

    # initialize songs with title name
    def initialize(name)
        @name = name
        @artist = nil
    
    # push all initialized songs into the @@all collection
        @@all << self
    end

    def self.all
        @@all
    end
    
    def artist_name
        self.artist.name if artist
    end
end