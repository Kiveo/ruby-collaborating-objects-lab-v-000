class Song
  attr_accessor :name, :artist, :filename
  attr_reader :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def new_by_filename(filename)
    song = self.new
    #parse
    song.title = filename.split("-")[1]
    song
  end

end
