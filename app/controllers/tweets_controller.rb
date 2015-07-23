class TweetsController < ApplicationController

  def create
    current_user.twitter_client.update(params[:text])
    redirect_to dashboard_path(current_user)
  end

  def update
    # binding.pry
    current_user.twitter_client.favorite(params[:tweet_id])
    redirect_to dashboard_path(current_user)
  end

end
