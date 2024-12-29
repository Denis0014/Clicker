class HomeController < ApplicationController
  def index
    @cur = Current.user
    @user = Current.user.email_address
    if Current.user.score
      @score = Current.user.score
      @upgrade = Current.user.upgrade
    else
      @cur.score = 0
      @score = 0
      @cur.upgrade = 1
      @upgrade = 1
      @cur.save
    end
    @cur.save
  end

  def button_click
    @cur = Current.user
    @cur.score = @cur.score + @cur.upgrade
    @score = @cur.score
    @cur.save
    redirect_to root_path
  end

  def upgrade1
    @cur = Current.user
    if @cur.score >= upgrade_cost(@cur.upgrade)
      @cur.score = @cur.score - upgrade_cost(@cur.upgrade)
      @score = @cur.score
      @cur.upgrade = @cur.upgrade + 1
      @upgrade = @cur.upgrade
      @cur.save
    end
    redirect_to root_path
  end

  def upgrade_cost(upgrade)
    50*upgrade
  end
end
