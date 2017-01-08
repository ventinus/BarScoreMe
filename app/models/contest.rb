# == Schema Information
#
# Table name: contests
#
#  id      :integer          not null, primary key
#  bout_id :integer
#  game_id :integer
#

class Contest < ApplicationRecord
  has_one :game
end
