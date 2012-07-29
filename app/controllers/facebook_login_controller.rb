class FacebookLoginController < ApplicationController
  def new
  end
  
  
  def show
    if current_user.nil?
      render 'new'
    else
      
      Friend.fb_friends(current_user)
    end
  end
  
end
