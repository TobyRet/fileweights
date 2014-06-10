class FileValues

	FILETYPES = {
		video: ['mp4'],
		song: ['mp3','wav'],
		document: ['pdf', 'doc', 'docx', 'odt'],
		text: ['txt'],
		binary: ['bin']
	}

	def initialize(request)
		@request = request
	end

	def parse
		@request['files'].map do |file|
			[file['name'], file['extension'], file['size'].to_s]
		end
	end

	def all_files
		@request['files'].map do |file| 
			["#{ file['name'] }.#{ file['extension'] }", "#{ '%.1f' % (file['size'] / 1000000) }"]
		end
	end

	def video
		FILETYPES[:video].map { |ft| parse.map { |file| file.select { |ext| ext if ext.include?(ft) } } }.flatten
	end

end