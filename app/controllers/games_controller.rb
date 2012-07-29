class GamesController < ApplicationController
  def new
    if current_user.nil?
      render 'users/new'
    else
      friends = current_user.friends
      @images = friends.collect { |friend| "http://graph.facebook.com/#{friend.fb_id}/picture"}
    end
  end
end
