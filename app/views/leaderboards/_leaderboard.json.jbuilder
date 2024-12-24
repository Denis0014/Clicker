json.extract! leaderboard, :id, :user, :score, :created_at, :updated_at
json.url leaderboard_url(leaderboard, format: :json)
