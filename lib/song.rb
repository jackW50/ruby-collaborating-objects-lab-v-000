require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def artist_name=(name)
    new_artist = Artist.find_or_create_by_name(name)
    
    self.artist = new_artist
    #binding.pry
    new_artist.add_song(self)
  end 
    
    

  def self.new_by_filename(file_name)
    #binding.pry
    file = file_name.split(" - ")
    song = self.new(file[1])
    #binding.pry
    song.artist_name=(file[0])
    #song.artist = new_artist
    #song.artist.name 
    #song.artist = file[0]
    #song.artist = Artist.find_or_create_by_name(file[0])
    #song.artist = artist
    #song.artist.name = file[0]
    #song.artist.name
  end

end 