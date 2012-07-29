class UsersController < ApplicationController
  def new
  end
  
  
  def show
    if current_user.nil?
      render 'new'
    else
      friends = current_user.friends
      @images = friends.collect { |friend| "http://graph.facebook.com/#{friend.fb_id}/picture"}
    end
  end
  
end
