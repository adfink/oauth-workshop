class DashboardController < ApplicationController

  def show
    # require 'pry'; binding.pry
    @user = User.find(params[:id])

  end

  def tweet
    # binding.pry
    current_user.twitter_client.update(params[:tweet])
  end


end
