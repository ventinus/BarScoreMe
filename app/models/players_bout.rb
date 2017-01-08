# == Schema Information
#
# Table name: players_bouts
#
#  id        :integer          not null, primary key
#  player_id :integer
#  bout_id   :integer
#

class PlayersBout < ApplicationRecord
  belongs_to :player
  belongs_to :bout
end
