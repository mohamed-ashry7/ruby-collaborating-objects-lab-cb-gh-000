

class MP3Importer

  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    Dir["#{path}/mp3s/*.mp3"].map do |f|
      File.basename f
    end
  end

  def import
    self.files.each do |filename|

    end

end
