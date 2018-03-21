class Artist
  attr_accessor :name
  attr_accessor :song, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if artist.name.nil?
      artist = self.new(name)
    else
      self.artist.name
    end
  end

  def print_songs
    puts @songs.name
  end

end
