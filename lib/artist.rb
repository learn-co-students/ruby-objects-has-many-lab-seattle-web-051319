class Artist
	attr_reader :name, :songs
	
	@@count = 0
	
	def initialize(name)
		@name = name
		@songs = []
	end
	
	def add_song(song)
		song.artist = self
		@songs.push(song)
		@@count += 1
	end
	
	def add_song_by_name(song)
		item = Song.new(song)
		self.add_song(item)
	end
	
	def self.song_count
		@@count
	end
end