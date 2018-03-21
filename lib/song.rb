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

  def self.new_by_filename(filename)
    artist_name, song_name = filename.split(" - ")
    song = self.new(song_name)
    song.artist_name = artist_name
    song
  end

end
