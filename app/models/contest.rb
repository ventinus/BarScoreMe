# == Schema Information
#
# Table name: contests
#
#  id      :integer          not null, primary key
#  bout_id :integer
#

class Contest < ApplicationRecord
  belongs_to :game
end
