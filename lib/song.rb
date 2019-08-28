
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
    @@artists << self.artist
    @@genres << self.genre
    @@count += 1

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

  def self.all
    @@all
  end

  def self.genre_count
    tally_hash = {}
    @@genres.each do |genre|
      if tally_hash[genre] == nil
        tally_hash[genre] = 1

      else
        tally_hash[genre] += 1
      end
    end
    tally_hash
  end


    # self.all.each do |song|
    #   if tally_hash[song.genre] == nil
    #
    #     tally_hash[song.genre] = 1
    #
    #   else
    #
    #     tally_hash[song.genre] += 1
    #
    #   end
    # end
    # tally_hash


  def self.artist_count
    tally_hash = {}

    @@artists.each do |artist|
      if tally_hash[artist] == nil
        tally_hash[artist] = 1

      else
        tally_hash[artist] += 1
      end
    end
    tally_hash
  end

end

# song1 = Song.new("Hi", "Britney", "Pop")
# song2 = Song.new("Bye", "Kanye", "Rap")
# song3 = Song.new("Bye", "Kanye", "Rap")
