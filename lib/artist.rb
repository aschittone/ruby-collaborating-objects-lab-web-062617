require 'pry'

class Artist 
	attr_accessor :name, :MP3Importer, :song

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end

	def save
		self.class.all << self
		self
	end

	def self.all
		@@all
	end

	def add_song(song)
		@songs << song
	end	

	def songs
		@songs
	end
	

	def self.find_or_create_by_name(name)
		artists = self.all		
		artist = artists.find do |artist| 
			artist.name == name
		end
			  # binding.pry

		if artist == nil 
			artist = self.new(name) 
		end
		artist
	end

	def print_songs
		songs.each { |song| puts song.name }
	end


end












