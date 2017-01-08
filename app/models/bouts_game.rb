# == Schema Information
#
# Table name: bouts_games
#
#  id      :integer          not null, primary key
#  bout_id :integer
#  game_id :integer
#

class BoutsGame < ApplicationRecord
  belongs_to :bout
  belongs_to :game
end
