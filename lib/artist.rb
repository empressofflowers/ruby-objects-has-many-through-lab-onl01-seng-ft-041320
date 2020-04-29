

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
    Song.new(self, name, genre)
  end

  def songs
    Song.all.select { |song| self.song == song}
  end

end
