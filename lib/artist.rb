class Artist
  attr_accessor :name
  attr_accessor :song, :songs

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    @songs
  end

  def save(artist)
    @@all << self
  end

end
