# == Schema Information
#
# Table name: friends
#
#  id         :integer         not null, primary key
#  fb_id      :integer
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Friend < ActiveRecord::Base
  attr_accessible :fb_id, :name
  has_and_belongs_to_many :users
  
  def self.fb_friends(user)
    fb_user = FbGraph::User.fetch(user.fb_id, access_token: user.token)
    fb_user.friends.each do |friend|
      new_friend = Friend.new
      new_friend.name = friend.raw_attributes["name"]
      new_friend.fb_id = friend.identifier.to_i
      new_friend.users = [user]
      new_friend.save
    end
  end
end
