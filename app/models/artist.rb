class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Artist.genres.first
  end

  def song_count
    Artist.songs.count
  end

  def genre_count
    Artist.genres.count
  end
end