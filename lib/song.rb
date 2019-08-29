class Song
    attr_accessor :name, :artist, :genre
    #attr_reader :genres, :artists, :count, :songs, :artist_count, :genre_count
    @@artists = []    
    @@genres = []
    @@count = 0
    @@songs = []
    @@artist_count = {}
    @@genre_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        if !@@genres.include?(genre)
            @@genre_count[genre] = 1
        else
            @@genre_count[genre] += 1
        end
        
        if !@@artists.include?(artist)
            @@artist_count[artist] = 1
        else
            @@artist_count[artist] += 1
        end             
        
        @@genres.push(genre)
        @@artists.push(artist)  
    end

    def Song.count()
        return @@count
    end

    def Song.artists()
        return @@artists.uniq()
    end

    def Song.genres()
        return @@genres.uniq()
    end
  
    def Song.genre_count()
        return @@genre_count
    end

    def Song.artist_count()
        return @@artist_count
    end
end
