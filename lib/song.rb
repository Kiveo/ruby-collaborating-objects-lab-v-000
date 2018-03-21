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

  def self.new_by_filename(filename) #class method
    song = self.new #something to parse onto
    song.title = filename.split(" - ")[1] #parse
    song #new song from filename
  end

end
