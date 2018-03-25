class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    @@artists << @artist unless @@artists.include?(@artist)
    @@genres << @genre unless @@genres.include?(@genre)

  end

  def Song.count
    @@count
  end

  def Song.artists
    @@artists
  end

  def Song.genres
    @@genres
  end

end
