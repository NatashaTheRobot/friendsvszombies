# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  expires_at :integer
#  token      :string(255)
#  first_name :string(255)
#  last_name  :string(255)
#  fb_id      :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :expires_at, :fb_id, :first_name, :last_name, :token
  
  validates_uniqueness_of :fb_id, :token
  has_and_belongs_to_many :friends
  
  def self.create_with_omniauth(fb_info)
    user = User.new
    
    #facebook credentials
    credentials = fb_info['credentials']
    user.token = credentials['token']
    user.expires_at = credentials['expires_at']
    
    #facebook user info
    user_info = fb_info['extra']['raw_info']
    user.first_name = user_info['first_name']
    user.last_name = user_info['last_name']
    user.fb_id = user_info['id']
    user.save
    
    return user
  end
  
end
