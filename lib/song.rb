class Song

    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre.downcase
        @@artists << artist
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
        g_c = {}
        genres.each do |g|
            g_c[g] = @@genres.find_all { |x| x == g }.length
        end
        g_c
    end

    def self.artist_count
        a_c = {}
        artists.each do |a|
            a_c[a] = @@artists.find_all { |x| x == a }.length
        end
        a_c
    end
    
end