class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Artist.genre.first
  end

  def song_count
    Artist.song.count
  end

  def genre_count
    Artist.genre.count
  end
end