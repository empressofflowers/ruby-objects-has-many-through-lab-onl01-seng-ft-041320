

class Patient
  attr_reader :name

  @@all = []

  def initialize name
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment
    Appointment.new(date,self, patient)
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def artists
    songs.map {|song| song.artist }
  end
end
