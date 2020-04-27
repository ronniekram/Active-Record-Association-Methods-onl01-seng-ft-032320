class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Genre.song.count
  end

  def artist_count
    Genre.artist.count
  end

  def all_artist_names
    Genre.where("artist = ?")
  end
end