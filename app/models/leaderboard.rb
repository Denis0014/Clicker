class Leaderboard < ApplicationRecord
  belongs_to :login
  has_one :score
end
