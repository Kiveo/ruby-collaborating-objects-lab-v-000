class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    file = Dir.entries(@path).grep(/.mp3/)
  end

  def import
    file.each { |file| Song.new_by_filename(file) }
  end

end
