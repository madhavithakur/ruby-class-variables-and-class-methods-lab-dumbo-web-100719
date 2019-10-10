class Song 
  
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1
    @@artists << artist
    @@genres << genre
  end 
  
  def self.count
    @@count
  end 
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.genre_count
    hash = Hash.new(0)
    @@genres.each {|ele| hash[ele] += 1}
    hash
  end
  
  def self.artist_count 
    hash = Hash.new(0)
    @@artists.each {|ele| hash[ele] += 1}
    hash
  end 
  
end 