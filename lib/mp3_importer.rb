class MP3Importer
	attr_accessor :path, :song, :artist

	def initialize(path)
		@path = path
	end

	def files
		Dir.entries("#{self.path}").select {|f| !File.directory? f}
	end


	def import
		files.each { |file| Song.new_by_filename(file) }
	end

end