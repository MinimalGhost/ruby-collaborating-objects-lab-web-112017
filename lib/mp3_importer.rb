require 'pry'

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir.foreach(@path).select { |x| File.file?("#{@path}/#{x}") }
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
