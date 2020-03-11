class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1

        @@artists.push(artist)
        @@genres.push(genre)
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
        genres_with_songs = {}
        @@genres.each {|genre| genres_with_songs.include?(genre) ? genres_with_songs[genre] += 1 : genres_with_songs[genre] = 1}
        genres_with_songs
    end

    def self.artist_count
        artists_with_songs = {}
        @@artists.each {|artist| artists_with_songs.include?(artist) ? artists_with_songs[artist] += 1 : artists_with_songs[artist] = 1}
        artists_with_songs
    end
    
end



