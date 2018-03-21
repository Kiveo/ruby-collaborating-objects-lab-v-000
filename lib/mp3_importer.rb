class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    #load
    @path.
    #convert to mp3s
  end

  def import
    list_of_filenames.each { |filename| Song.new_by_filename(filename) }
  end

end
