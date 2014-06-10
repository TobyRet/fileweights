class FileValues

	FILETYPES = {
		videos: ['mp4'],
		songs: ['mp3','wav'],
		documents: ['pdf', 'doc', 'docx', 'odt'],
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

	def videos
		FILETYPES[:videos].map { |ft| parse.map { |file| file.select { |ext| ext if ext.include?(ft) } } }.flatten
	end

	def songs
		FILETYPES[:songs].map { |ft| parse.map { |file| file.select { |ext| ext if ext.include?(ft) } } }.flatten
	end


end