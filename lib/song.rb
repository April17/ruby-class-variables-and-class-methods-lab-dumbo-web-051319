require "pry"
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  def initialize (name, artist, genre)
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
    count = {}
    @@genres.each do |genre|
      count[genre] = @@genres.count(genre)
    end
    return count
  end
  def self.artist_count
    count = {}
    @@artists.each do |artist|
      count[artist] = @@artists.count(artist)
    end
    return count
  end
end
