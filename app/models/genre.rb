class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    
   self.songs.count
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    Artist.all.map do |artist_instance|
      artist_instance.name
    end

    # return an array of strings containing every musician's name
  end
end
