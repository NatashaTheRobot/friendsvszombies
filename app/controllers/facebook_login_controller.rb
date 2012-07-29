class FacebookLoginController < ApplicationController
  def new
  end
  
  
  def show
    if current_user.nil?
      render 'new'
    end
  end
  
end
