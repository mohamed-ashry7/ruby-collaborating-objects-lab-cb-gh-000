

class MP3Importer

  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    names = Dir["#{path}/mp3s/*.mp3"]

end
