class FacebookLoginController < ApplicationController
  def new
  end
  
  def create
    redirect_to '/auth/facebook'
  end
  
  def show
    
  end
end
