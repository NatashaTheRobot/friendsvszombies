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

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
