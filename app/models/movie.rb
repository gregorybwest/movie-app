class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :plot, presence: true, length: { in: 6..300 }
end
