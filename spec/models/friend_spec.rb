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

require 'spec_helper'

describe Friend do
  pending "add some examples to (or delete) #{__FILE__}"
end
