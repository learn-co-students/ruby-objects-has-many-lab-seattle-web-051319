class Artist
  attr_accessor :name
  @@all = []

def initialize(name)
  @name = name
  @songs = [] #stores an array of all the songs by one particular artist.
end

def songs
  @songs #calls on all the songs.
end

def add_song(song)
  @songs << song #adds an individual song to the songs array.
  song.artist = self #tells the song that it belongs to a certain artist.
  @@all << song
end

def add_song_by_name(song_name)
  song = Song.new(song_name) #setting a variable 'song' equal to the creation of a new song with a parameter of the song's name.
  @songs << song #adds the new song to an array of songs by a particular artist.
  @@all << song #adds song to the array of all the songs.
  song.artist = self #tells the song it belongs to a certain artist.
end

def self.song_count
  @@all.length
end


end
