class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Genre.songs.count
  end

  def artist_count
    Genre.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
  end
end