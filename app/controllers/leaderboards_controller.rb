class LeaderboardsController < ApplicationController
  # GET /leaderboards or /leaderboards.json
  def index
    @users = User.all
  end
end
