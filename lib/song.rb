require 'pry'

class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name=(artist)
    if self.artist.nil?
      self.artist = Artist.new(artist)
    else
      self.artist.name = artist
    end
  end

  def self.new_by_filename(filename)
    artist, name = filename.split(" - ")
    new_song = self.new(name)
    new_song.artist_name = artist
    new_song
    # fileParse = filename.split(" - ")
    # artist = fileParse[0]
    # name = fileParse[1].gsub(".mp3", "")
    # song = self.new(name)
    # song.artist.name = @artist
    # song.name = @name
    # song
  end
end
