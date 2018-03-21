class MP3Importer
  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def files
    #load
    #convert to mp3s
  end

  def import(list_of_filenames)
    list_of_filenames.each {|filename|
      Song.new_by_filename(filename)
    }
  end

end
