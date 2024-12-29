class LeaderboardsController < ApplicationController
  # GET /leaderboards or /leaderboards.json
  def index
    @users = User.all
    @user = Current.user.email_address
  end
end
