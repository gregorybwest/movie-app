class Movie < ApplicationRecord
  
  
  validates :title, presence: true
  validates :year, presence: true
  validates :plot, presence: true, length: { in: 6..300 }

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  
end
