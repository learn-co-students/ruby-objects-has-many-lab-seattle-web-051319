class Artist 
  
  @@all = []
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
  end
  
  def self.song_count
    total = 0
    @@all.each do |artist|
      total += artist.songs.length
    end
    return total
  end
  
end