class FriendsController < ApplicationController
  def new
  end
  
  
  def show
    if current_user.nil?
      render 'new'
    else
      @friends = current_user.friends
    end
  end
  
end
