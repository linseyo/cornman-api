class Score < ApplicationRecord
  # validates :username, :score, presence: true
  # validates :username, length: { minimum: 1 }
  # validates :username, length: { maximum: 10 }
  validates :score, presence: true
end
