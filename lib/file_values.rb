class FileValues

	FILETYPES = {
		video: ['mp4', 'avi'],
		song:['mp3','wav'],
		document: ['pdf', 'doc', 'docx', 'odt'],
		text: ['txt'],
		binary: ['bin']
	}

	def initialize(request)
		@request = request
	end

	def parse
		@request['files'].map do |file|
			[file['name'], file['extension'], file['size']]
		end
	end

	def all_files
		@request['files'].map do |file| 
			["#{ file['name'] }.#{ file['extension'] }", "#{ '%.1f' % (file['size'] / 1000000) }"]
		end
	end

end