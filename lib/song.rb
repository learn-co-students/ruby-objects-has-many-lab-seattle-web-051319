class Song
  attr_accessor :name, :artist
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def artist_name
  if @artist
    @artist.name #telling the artist called in attr_accessor that it has a name.
  else
    nil
  end
end

end
