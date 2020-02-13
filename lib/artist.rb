

class Artist

  attr_accessor :name
  @@all
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist=self
  end

  def add_song(song)
    song.artist= self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  def self.find_or_create_by_name(name)
    singer = self.all.find{|author| author.name ==name}
    singer ||=self.new(name)
  end
  
  def print_songs
    Song.all.each do |song|

    end 
  end
     
  def self.song_count
    Song.all.size
  end
  def self.all
    @@all
  end

end
