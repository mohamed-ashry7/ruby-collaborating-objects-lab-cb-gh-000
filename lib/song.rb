

class Song
  attr_accessor :artist , :name
  @@all = []
  def initialize (name )
    self.name = name
    @@all << self
  end
  def artist_name
    self.artist.name if artist
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    names = filename.split(" - ")
    song = self.new(names[1])

end
