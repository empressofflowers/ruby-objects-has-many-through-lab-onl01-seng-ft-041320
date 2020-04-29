

class Artist
  attr_reader :name

  @@all = []

  def initialize name
    @name = name
  end

  def self.all
    @@all
  end

  def new_song name, genre
    self.new(name, genre)
  end

end
