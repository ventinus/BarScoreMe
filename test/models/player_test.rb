# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  username   :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
