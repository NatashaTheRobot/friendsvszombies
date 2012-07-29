class FacebookLoginController < ApplicationController
  def new
  end
  
  def create
    User.create_with_omniauth(request.env['omniauth.auth'])
    render "show"
  end
  
  def show
    
  end
end
