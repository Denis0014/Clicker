class HomeController < ApplicationController
  def index
    @cur = Current.user
    @user = Current.user.email_address
    if Current.user.score
      @score = Current.user.score
    else
      @cur.score = 0
      @score = 0
      @cur.save
    end
  end

  def button_click
    @cur = Current.user
    @cur.score = @cur.score + 1
    @score = @cur.score
    @cur.save
    redirect_to root_path
  end
end
