class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    self.all.detect do |artist|
      artist.name == artist
    end
  end

  def self.find_or_create_by_name(name)
    self.all.detect do |artist|
      if artist.name == artist
        artist.name
      else
        self.new(name)
      end
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
