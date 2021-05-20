class Bookmark < ApplicationRecord
  validates :comment, presence: true,  length: { minimum: 6 }
  # and the [movie, list] pairings should be unique.
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id, message: "Already in list!" }
end
