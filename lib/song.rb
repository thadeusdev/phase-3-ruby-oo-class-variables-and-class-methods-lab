class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1

        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres #contain only unique genres — no duplicates!
        @@genres.uniq
    end

    def self.artists #contain unique artists––no repeats!
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}

        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1 
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}

        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end
end


# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# p ninety_nine_problems.name

# p ninety_nine_problems.artist

# p ninety_nine_problems.genre

Song.new("Lucifer", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")

p Song.genre_count
p Song.artist_count