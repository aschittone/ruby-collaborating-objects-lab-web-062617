require 'pry'

class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file)
		song = self.new(file)
	  	split_song_name = file.split(" - ")
	  	song_artist = Artist.find_or_create_by_name(split_song_name[0])
	  	
	  	song.artist = song_artist
	  	
	  	song.name = split_song_name[1]
	  	# binding.pry
	  	song_artist.add_song(song)
	  	
	  	song
	end

end