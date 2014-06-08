class FileValues

	def initialize(request)
		@request = request
	end

	def filenames
		@request['files'].map { |file| file['name'] }
	end

	def filesizes
		@request['files'].map { |file| '%.1f' % (file['size'] / 1000000) }

	end

end