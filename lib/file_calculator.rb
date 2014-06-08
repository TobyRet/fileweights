class FileCalculator

	def initialize(request)
		@request = request
	end

	def filenames
		@request['files'].map { |file| file['name'] }
	end

end